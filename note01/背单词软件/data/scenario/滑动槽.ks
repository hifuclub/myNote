*警告
[jump target=*滑动条 cond="tf.警告次数>1"]
@layopt layer=2 visible="true"
[image storage=滑动条警告.png page=fore layer=2 visible="true" left=40 top=400]
[eval exp="tf.警告次数=tf.警告次数+1"]
*滑动条
[locate x=300 y=527]
[slider value="kag.bgmvolume" base=滑动槽 width=189 height=5 normal=滑动槽按钮]
[locate x=265 y=530]
[button normal="小喇叭"  target=*返回][wait time=4500]
*返回
[trans method="crossfade" time=2]
[wt]
[image storage=播放器.png page=fore layer=1 visible="true" left=20 top=480]

[call storage=图库.ks target=*分选]


[jump target=*词库模式 cond="tf.词库!=0"]
*0
[jump target=*学习 cond="tf.mode=='学习'"]
@jump storage=听写.ks target=*界面
*学习
@jump storage=学习.ks target=*last



*词库模式
[jump target=*学习-词库模式 cond="tf.mode=='学习-词库模式'"]
@jump storage=听写-词库模式.ks target=*界面
*学习-词库模式
@jump storage=学习-词库模式.ks target=*last




