*学习模式
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



*界面

[menul]
[eval exp="tf.mode='学习-词库模式'"]
@layopt layer=2 visible="true"
[image storage=学习背景.png page=fore layer=2 left=-10 top=-10]
*单词1
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=90 y=70]
中文：[emb exp="tf.中文"][eval exp="tf.中文1=tf.中文"]
 
[locate x=90 y=110]
单词：[emb exp="tf.英文"][eval exp="tf.英文1=tf.英文"]  
[link target=*1 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait
*单词2
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=90 y=210]

中文：[emb exp="tf.中文"][eval exp="tf.中文2=tf.中文"]

[locate x=90 y=250]
单词：[emb exp="tf.英文"][eval exp="tf.英文2=tf.英文"]  
[link target=*2 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait


*单词3
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=90 y=350]

中文：[emb exp="tf.中文"][eval exp="tf.中文3=tf.中文"]

[locate x=90 y=390]
单词：[emb exp="tf.英文"][eval exp="tf.英文3=tf.英文"]  
[link target=*3 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait


*单词4
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=390 y=70]

中文：[emb exp="tf.中文"][eval exp="tf.中文4=tf.中文"]

[locate x=390 y=110]
单词：[emb exp="tf.英文"][eval exp="tf.英文4=tf.英文"]  
[link target=*4 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink] 
@endnowait
*单词5
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=390 y=210]

中文：[emb exp="tf.中文"][eval exp="tf.中文5=tf.中文"]

[locate x=390 y=250]
单词：[emb exp="tf.英文"][eval exp="tf.英文5=tf.英文"]  
[link target=*5 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink] 
@endnowait
*单词6
[call storage=词库.ks target=*词库模式]
@nowait
[locate x=390 y=350]

中文：[emb exp="tf.中文"][eval exp="tf.中文6=tf.中文"]

[locate x=390 y=390]
单词：[emb exp="tf.英文"][eval exp="tf.英文6=tf.英文"]  
[link target=*6 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink] 
@endnowait


[jump target=*jump]

*last

[menul]

@layopt layer=message0 visible="flose"
[image storage=学习背景.png page=fore layer=2]
[menul]
*单词1
@nowait
[locate x=90 y=70]

中文：[emb exp="tf.中文1"]

[locate x=90 y=110]
单词：[emb exp="tf.英文1"]  [link target=*1 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink] 
@endnowait
*单词2

@nowait
[locate x=90 y=210]

中文：[emb exp="tf.中文2"]

[locate x=90 y=250]
单词：[emb exp="tf.英文2"]  [link target=*2 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait
*单词3

@nowait
[locate x=90 y=350]

中文：[emb exp="tf.中文3"]

[locate x=90 y=390]
单词：[emb exp="tf.英文3"]  [link target=*3 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait
*单词4

@nowait
[locate x=390 y=70]

中文：[emb exp="tf.中文4"]

[locate x=390 y=110]
单词：[emb exp="tf.英文4"]  [link target=*4 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait
*单词5

@nowait
[locate x=390 y=210]

中文：[emb exp="tf.中文5"]

[locate x=390 y=250]
单词：[emb exp="tf.英文5"]  [link target=*5 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait
*单词6

@nowait
[locate x=390 y=350]

中文：[emb exp="tf.中文6"]

[locate x=390 y=390]
单词：[emb exp="tf.英文6"]  [link target=*6 storage=学习-词库模式.ks hint=更换单个词语]换词[endlink]
@endnowait




*jump

@layopt layer=1

[image storage=播放器.png page=fore layer=1 visible="true" left=20 top=480]


[image storage=学习背景.png page=fore layer=2]

@nowait


@layopt layer=0 visible="true"

@endnowait



[locate x=125 y=526]
[button normal="上一曲" storage=学习-词库模式.ks target=*上一曲 enterse="page" recthit=true]

[locate x=210 y=524]
[button normal="下一曲" storage=学习-词库模式.ks target=*下一曲 enterse="page" recthit=true]


[jump target=*暂停中 storage=学习-词库模式.ks cond="tf.播放==0"]
[jump target=*播放中 storage=学习-词库模式.ks cond="tf.播放==1"]
*暂停中
[locate x=168 y=519]
[button normal="播放" storage=学习-词库模式.ks target=*播放 enterse="page" recthit=true][jump target=*选择结束]
*播放中
[locate x=164 y=520]
[button normal="暂停" storage=学习-词库模式.ks target=*暂停 enterse="page" recthit=true]
*选择结束


[locate x=265 y=530]
[button normal="小喇叭" storage=滑动槽.ks]


@nowait
[locate x=125 y=490]
[emb exp="tf.曲名"]
@endnowait
;[locate x=550 y=222]
;[button normal="确认" storage=学习-词库模式.ks target=*验证 clickse="l4" enterse="page" recthit=true]
[locate x=650 y=350]
[button normal="换词" storage=学习-词库模式.ks target=*换词 clickse="l4" enterse="page" recthit=true]
[locate x=550 y=500]
;[button normal="离开" storage=学习-词库模式.ks target=*end storage=first.ks clickse="l4" enterse="page" recthit=true]



@nowait
[locate x=510 y=10] 
[link target=*选图 storage=学习-词库模式.ks hint=从背景库中随机选择一张]更换背景[endlink]  
[link target=*关闭背景 storage=学习-词库模式.ks hint=背景将为黑色]关闭背景[endlink]
@endnowait

[s]





*save
[save place=0 ask=false]
[jump storage=学习-词库模式.ks target=*last]
*load
[load place=0 ask=false]
[jump storage=学习-词库模式.ks target=*last]
*选图
@call storage=图库.ks target=*选图
[jump storage=学习-词库模式.ks target=*last]

*上一曲
[call storage=曲库.ks target=*上一曲]
[jump storage=学习-词库模式.ks target=*last]
*下一曲
[call storage=曲库.ks target=*下一曲]
[jump storage=学习-词库模式.ks target=*last]

*播放
[jump storage=学习-词库模式.ks target=*初回播放 cond="tf.初回播放==0"]
@resumebgm
[eval exp="tf.播放=1"] 
[jump target=*last]
*初回播放
[eval exp="tf.初回播放=1"][eval exp="tf.播放=1"] 
@call storage=曲库.ks target=*选曲
[jump storage=学习-词库模式.ks target=*last]

*暂停
@pausebgm
[eval exp="tf.播放=0"] 
[jump storage=学习-词库模式.ks target=*last]

*换词
[jump storage=学习-词库模式.ks target=*选词]


*关闭背景
[image storage=glass.png page=fore layer=0]
[jump storage=学习.ks target=*last]




*1
@jump storage=换词-词库模式.ks target=*1

*2
@jump storage=换词-词库模式.ks target=*2

*3
@jump storage=换词-词库模式.ks target=*3

*4
@jump storage=换词-词库模式.ks target=*4

*5
@jump storage=换词-词库模式.ks target=*5

*6
@jump storage=换词-词库模式.ks target=*6


