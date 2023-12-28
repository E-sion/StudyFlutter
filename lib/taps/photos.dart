import 'package:flutter/material.dart';


// 因为其他文件的调用之后是会显示在Scaffold的body组件里面，所以方法只需要直接返回可以放在body里面的内容就可以了
class PhotosPage extends StatelessWidget{
  const PhotosPage({super.key});

  // 使用Stack来配置显示有浮动标题栏的图片列表
  // Stack.children -> Positioned
  @override
  Widget build(BuildContext context) {
    // 获取设备屏幕宽度
    final sizeLocal = MediaQuery.of(context).size;

    return Stack(
      children: [
        ListView(
          children: [
            Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
            Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
            Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
            Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
          ]),
        Positioned(
            top: 0,
            width: sizeLocal.width,
            height: 50,
            child: const Text('照片墙'))
      ],
    );
  }
}