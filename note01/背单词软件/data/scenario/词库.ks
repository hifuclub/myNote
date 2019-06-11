*单词库管理
;请在等号后填写启用的单词库数(目前最多支持5个)
[eval exp="tf.启用的单词库=2"]
*分选
[eval exp="tf.dc= intrandom(1 ,5)"]
[jump target=*分选 cond="tf.dc>tf.启用的单词库"]
[eval exp="tf.自动词库=1"]
[jump storage=词库01.ks cond="tf.dc==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库02.ks cond="tf.dc==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库03.ks cond="tf.dc==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库04.ks cond="tf.dc==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库05.ks cond="tf.dc==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]


*词库模式
[eval exp="tf.自动词库=1"]
[jump storage=词库01.ks cond="tf.词库==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库02.ks cond="tf.词库==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库03.ks cond="tf.词库==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库04.ks cond="tf.词库==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump storage=词库05.ks cond="tf.词库==tf.自动词库"][eval exp="tf.自动词库=tf.自动词库+1"]
[jump target=*单词库管理]