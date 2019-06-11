*听写模式
[clickskip enabled=false;禁止通过点击跳过]


@call storage=macro.ks
;@call storage=logo.ks
@call storage=图库.ks target=*选图
;@call storage=曲库.ks target=*选曲
*选词
[history enabled="false" output="false"]


@layopt layer=1

[image storage=播放器.png page=fore layer=1 visible="true" left=20 top=480]



[eval exp="tf.sx"] 

[position layer="message0" frame="glass" visible="true" left="0"  page=back]

[call storage=词库.ks target=*词库模式]

*界面
@nowait


@layopt layer=1

[image storage=播放器.png page=fore layer=1 visible="true" left=20 top=480]


@menul
[eval exp="tf.mode='听写-词库模式'"]
@layopt layer=2 visible="true"
[image storage=听写背景.png page=fore layer=2 left=40 top=180]
总正确数：[emb exp="f.y"]  本次正确数：[emb exp="tf.单次正确"][r]
总错误数：[emb exp="f.n"]  本次错误数：[emb exp="tf.单次错误"][r]
换词次数：[emb exp="tf.换词"]  [link target=*恢复 storage=听写.ks hint=恢复崩溃前记录]崩溃后记录恢复[endlink]  

@layopt layer=0 visible="true"

@endnowait



[locate x=125 y=526]
[button normal="上一曲" storage=听写-词库模式.ks target=*上一曲 enterse="page" recthit=true]

[locate x=210 y=524]
[button normal="下一曲" storage=听写-词库模式.ks target=*下一曲 enterse="page" recthit=true]


[jump target=*暂停中 storage=听写-词库模式.ks cond="tf.播放==0"]
[jump target=*播放中 storage=听写-词库模式.ks cond="tf.播放==1"]
*暂停中
[locate x=168 y=519]
[button normal="播放" storage=听写-词库模式.ks target=*播放 enterse="page" recthit=true][jump target=*选择结束]
*播放中
[locate x=164 y=520]
[button normal="暂停" storage=听写-词库模式.ks target=*暂停 enterse="page" recthit=true]
*选择结束


[locate x=265 y=530]
[button normal="小喇叭" storage=滑动槽.ks]


@nowait
[locate x=125 y=485]
[emb exp="tf.曲名"]
@endnowait
[locate x=550 y=222]
[button normal="确认" storage=听写-词库模式.ks target=*验证 clickse="l4" enterse="page" recthit=true]
[locate x=620 y=220]
[button normal="换词" storage=听写-词库模式.ks target=*换词 clickse="l4" enterse="page" recthit=true]
[locate x=550 y=500]
;[button normal="离开" storage=听写-词库模式.ks target=*end storage=first.ks clickse="l4" enterse="page" recthit=true]



@nowait
[locate x=500 y=10]
[link target=*save storage=听写-词库模式.ks hint=保存此次成绩到存档]保存成绩[endlink]    
[link target=*load storage=听写-词库模式.ks hint=读取上次成绩从存档]读取成绩[endlink]
[locate x=500 y=45]
[link target=*选图 storage=听写-词库模式.ks hint=从背景库中随机选择一张]更换背景[endlink]    
[link target=*关闭背景 storage=听写-词库模式.ks hint=背景将为黑色]关闭背景[endlink]   



[locate x=100 y=340]
[link hint=到达次数的词不再出现]剩余次数：[endlink]
[emb exp="f[tf.英文]"]
@endnowait



@nowait
[locate x=230 y=207]

翻译：[emb exp="tf.中文"]

[locate x=100 y=245]
单词：[edit name="tf.sx" length=370]
@endnowait

[s]


*验证

[commit]
[jump target=*y cond="tf.英文== tf.sx"]
[jump target=*n cond="tf.英文!= tf.sx"]
@s

*y
[jump target=*yy cond="f[tf.英文]>1"]
[eval exp="f[tf.中文]=1"]

*yy
[save place=备份存档 ask=false]
@nowait
[locate x=200 y=280]正确,3秒后继续
[eval exp="delete tf.sx"]
@endnowait
[eval exp="f.y=f.y+1"][eval exp="tf.单次正确=tf.单次正确+1"]
[wait time=1500][eval exp="f[tf.英文]=f[tf.英文]-2"]
[jump storage=听写-词库模式.ks target=*选词]
*n
@nowait
[locate x=200 y=280]错误,正确为：[emb exp="tf.英文"]
[locate x=200 y=330]点击屏幕继续
[eval exp="delete tf.sx"]
@endnowait 
[eval exp="f[tf.英文]=f[tf.英文]+2"]
[eval exp="f.n=f.n+1"][eval exp="tf.单次错误=tf.单次错误+1"][p]
[jump storage=听写-词库模式.ks target=*选词]

*save
[save place=0 ask=false]
[jump storage=听写-词库模式.ks target=*界面]
*load
[load place=0 ask=false]
[jump storage=听写-词库模式.ks target=*界面]
*选图
@call storage=图库.ks target=*选图
[jump storage=听写-词库模式.ks target=*界面]

*上一曲
[call storage=曲库.ks target=*上一曲]
[jump storage=听写-词库模式.ks target=*界面]
*下一曲
[call storage=曲库.ks target=*下一曲]
[jump storage=听写-词库模式.ks target=*界面]

*播放
[jump storage=听写-词库模式.ks target=*初回播放 cond="tf.初回播放==0"]
@resumebgm
[eval exp="tf.播放=1"] 
[jump storage=听写-词库模式.ks target=*界面]
*初回播放
[eval exp="tf.初回播放=1"][eval exp="tf.播放=1"] 
@call storage=曲库.ks target=*选曲
[jump storage=听写-词库模式.ks target=*界面]
*暂停
@pausebgm
[eval exp="tf.播放=0"] 
[jump storage=听写-词库模式.ks target=*界面]

*换词
[eval exp="tf.换词=tf.换词+1"][save place=备份存档 ask=false] 
[jump storage=听写-词库模式.ks target=*选词]


*学习
[eval exp="tf.mode='学习'"] 
@layopt layer=2 visible="false"
[jump storage=first.ks target=*更换模式]


*关闭背景
[image storage=glass.png page=fore layer=0]
[jump storage=听写-词库模式.ks storage=听写.ks target=*界面]
*恢复
[load place=备份存档 ask=false]