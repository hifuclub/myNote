两天后软约,正在为新的软约制作新的项目
从淘宝上买到了C4D机器人的机器人模型,模型需要自己绑骨,蒙皮,动画
项目一开始很顺利,也按照预期的日程进行
在制作完骨骼动画导入unity之后却出现了奇怪的问题
模型渲染后无法显示正面
上网一番查找,后来发现是因为淘宝买的模型,在制作胳膊使用镜像后导致一侧身体的法线翻转指向内部

![Image text](https://github.com/zzuljs/CppLearning/blob/master/CppLearning/raw/master/Itachi.jpg)

在重新倒入C4D后,选择错误的控件,翻转法线,成功解决了该问题