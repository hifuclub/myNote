
*右键菜单


[position layer="message0" frame="glass" visible="true" left=0 top=0 page=back]
[image layer=2 page="back" storage="右键菜单背景" visible="true" left=0 top=0 ]
[trans method="crossfade" time=700]
[wt]

[jump target=*返回学习 cond="tf.右键菜单==1"]
[eval exp="tf.右键菜单=1"]
[locate x=50 y=50 ]
[button normal=返回学习  target=*返回学习 enterse=bt1]
[locate x=50 y=140 ]
[button normal=更换模式  enterse=bt1 target=*更换模式 ]
[locate x=50 y=230 ]
[button normal=选择词库  enterse=bt1 target=*选择词库 ]
[locate x=50 y=320]
[button normal=更换壁纸  enterse=bt1 target=*更换壁纸]
[locate x=50 y=410 ]
[button normal=关闭壁纸  enterse=bt1 target=*关闭壁纸]
[locate x=50 y=500]
[button normal=退出学习  exp="kag.shutdown()" enterse=bt1 ]
[s]


*返回学习
[eval exp="tf.右键菜单=tf.右键菜单-1"]
[call storage=图库.ks target=*分选]
[jump target=*词库模式2 cond="tf.词库!=0"]
[jump target=*学习1 cond="tf.mode=='学习'"]
@jump storage=听写.ks target=*界面
*学习1
@jump storage=学习.ks target=*last

*词库模式2
[jump target=*学习-词库模式2 cond="tf.mode=='学习-词库模式'"]
[jump storage=听写-词库模式.ks target=*界面]
*学习-词库模式2
[jump storage=学习-词库模式.ks target=*last]





*更换模式
[eval exp="tf.右键菜单=tf.右键菜单-1"]
[call storage=图库.ks target=*分选]




[jump target=*词库模式1 cond="tf.词库!=0"]
*0
[jump target=*学习 cond="tf.mode=='听写'"]
[eval exp="tf.mode='听写'"][jump storage=听写.ks]
*学习
[eval exp="tf.mode='学习'"][jump storage=学习.ks]



*词库模式1
[jump target=*学习-词库模式1 cond="tf.mode=='听写-词库模式'"]
[eval exp="tf.mode='听写-词库模式'"][jump storage=听写-词库模式.ks]
*学习-词库模式1
[eval exp="tf.mode='学习-词库模式'"][jump storage=学习-词库模式.ks]



*更换壁纸
[eval exp="tf.右键菜单=tf.右键菜单-1"]
[call storage=图库.ks target=*分选]
[jump target=*学习3 cond="tf.mode=='学习'"]
@jump storage=听写.ks target=*选图
*学习3
@jump storage=学习.ks target=*选图

*关闭壁纸
[eval exp="tf.右键菜单=tf.右键菜单-1"]
[call storage=图库.ks target=*分选]
[jump target=*学习4 cond="tf.mode=='学习'"]
@jump storage=听写.ks target=*关闭背景
*学习4
@jump storage=学习.ks target=*关闭背景



*选择词库
[eval exp="tf.右键菜单=tf.右键菜单-1"]
[menul]
[image layer=2 page="back" storage="opt1" visible="true" left=0 top=0 ]
[trans method="crossfade" time=1000]
[wt]
[locate x=640 y=222]
[button normal="确认" target=*验证 clickse="l4" enterse="page" recthit=true]
@nowait
[locate x=100 y=245]
请输入词库编号：[edit name="tf.词库" length=340][r]
[locate x=100 y=275]
（目前支持词库1—5，填入0返回所有词库随机）
@endnowait
[s]


*验证
[commit]
[jump target=*词库模式 cond="tf.词库!=0"]
*0
[jump target=*学习 cond="tf.mode=='学习'"]
[eval exp="tf.mode='听写'"][jump storage=听写.ks]
*学习
[eval exp="tf.mode='学习'"][jump storage=学习.ks]



*词库模式
[jump target=*学习-词库模式 cond="tf.mode=='学习'"]
[jump target=*学习-词库模式 cond="tf.mode=='学习-词库模式'"]
[eval exp="tf.mode='听写-词库模式'"][jump storage=听写-词库模式.ks]
*学习-词库模式
[eval exp="tf.mode='学习-词库模式'"][jump storage=学习-词库模式.ks]















