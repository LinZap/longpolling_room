longpolling_room
================

這是一個實作 Long polling 機制的 web 程式
沒有多餘不相干的功能，純粹唯一的 comet programming 基本範例

Long polling 的介紹可參考維基百科

================

## 程式介紹

# index.php   為主程式進入點
# allmsg.php 	為第一次程式進入，抓取所有訊息
#	connect.php 資料庫連接，統一函式
#	logout.php  清除 SESSION 達到登出的效果 
#	longpolling.php  程式反覆存取這隻程式，已取得最新資料，反映到畫面
#	sendmsg.php  使用者藉這隻程式，將訊息傳送出去，並保存於資料庫
#	signin.php   使用者第一次需要先登入(只要求輸入姓名)

================

## 資料庫 架構介紹

本系統的資料庫架構十分簡易，資料表與欄位如下

# user (uid,name) 儲存使用者基本資料
# msg (id,content,send,time) 儲存使用者傳送的訊息
# notify (name,isnews,time) 記錄使用者抓取資料的最後時間，藉由存取該資料表，判斷是否有新資料，藉此撈取該訊息


================

## 架構 與 Demo

# 本程式全部由 php 撰寫
# 資料庫使用 MySQL 5.4
# 後端Server位於 ueuo.com
# Live Demo : http://zaplin.ueuo.com/index.php
