longpolling_room
================

這是一個實作 Long polling 機制的 web 程式
沒有多餘不相干的功能，純粹的 comet programming 基本範例

Long polling 的介紹可參考維基百科


## 程式介紹

1. index.php   為主程式進入點
2. allmsg.php 	為第一次程式進入，抓取所有訊息
3.	connect.php 資料庫連接，統一函式
4.	logout.php  清除 SESSION 達到登出的效果 
5.	longpolling.php  程式反覆存取這隻程式，已取得最新資料，反映到畫面
6.	sendmsg.php  使用者藉這隻程式，將訊息傳送出去，並保存於資料庫
7.	signin.php   使用者第一次需要先登入(只要求輸入姓名)


## 資料庫 架構介紹

本系統的資料庫架構十分簡易，資料表與欄位如下

### Schema 介紹
1. user (uid,name) 儲存使用者基本資料
2. msg (id,content,send,time) 儲存使用者傳送的訊息
3. notify (name,isnews,time) 記錄使用者抓取資料的最後時間，藉由存取該資料表，判斷是否有新資料，藉此撈取該訊息

### 建立資料庫 SQL 語法

    CREATE TABLE msg (  
    
    id int(11) NOT NULL auto_increment,  
    
    content varchar(500) default NULL,  
    
    send varchar(50) NOT NULL,  
    
    time datetime NOT NULL,  
    
    PRIMARY KEY  (id)  
    
    ) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;  

* * *
  
    CREATE TABLE notify (  
 
    name varchar(50) NOT NULL,  
    
    isnews tinyint(4) NOT NULL,  
    
    time datetime NOT NULL  
    
    ) ENGINE=MyISAM DEFAULT CHARSET=utf8;  
    
* * *
  
    CREATE TABLE user (  
  
    uid int(11) NOT NULL auto_increment,  
    
    name varchar(50) NOT NULL,  
    
    PRIMARY KEY  (uid)  
    
    ) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;


## 架構 與 Demo

1. 本程式全部由 php 撰寫
2. 資料庫使用 MySQL 5.4
3. 後端Server位於 ueuo.com
4. Live Demo : http://zap.comze.com/longpolling_room/
