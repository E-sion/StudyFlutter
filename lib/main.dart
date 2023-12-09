import 'package:flutter/material.dart';

// 结构目录图: main->runAPP->MaterialApp->home/title...->Scaffold->appBar/body...
// 第二层，可以额外进行定义处理的组件结构StatelessWidget；
// class name extends StatelessWidget 定义好一个组件的类，然后再深度自定义内容
// Center->child（单个子界面）->Container(设置一个容器)->(自定义容器内部的参数)->容器内新建child—>Text/OR MORE...


void main() {
  runApp(MaterialApp( //MaterialApp 用来包裹所有组件
    home: Scaffold( // home设置的参数需要为Scaffold组件
      appBar: AppBar(title: const Text('你好Flutter'),), //appBar，body组件为Scaffold函数定义
      body: const ClipIMG(),
    ),
  ));
}

// 把每个组件都制作成一个类，然后再进行调用
class MyBodyApp extends StatelessWidget{
  const MyBodyApp({super.key});
  final appCode =  const Center(
    child:
    Text('我是一个自定义组件',
      textDirection: TextDirection.ltr,
      style:  TextStyle(
        color: Colors.red, // Color.formRGBO(244,244,123,1)
        fontSize: 11.2,
      ),),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return appCode;
  }
}

class TestWidget extends StatelessWidget{
  const TestWidget({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Center(
        child: Container( //Container为一个容器
          alignment: Alignment.topLeft,
          // 配置容器内组件的对齐方式
          width: 100,
          height: 200,
          decoration:
          BoxDecoration( //配置边框的颜色和宽度和圆角，以及容器的背景，boxshadow为配置阴影颜色以及淡开距离
            color: Colors.red,
            border: Border.all(color: Colors.black,width: 2),
            borderRadius:BorderRadius.circular(5),
            boxShadow: const [BoxShadow(color: Colors.yellow,blurRadius: 20.0)],
          ),
          // 设置背景填充颜色为红色
          child: const Text('测试组件里面的文本，位于Container容器内', // Text组件
            style: TextStyle( // Text内的style设置文本样式
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      );
  }
}

// 制作一个按钮
class PushButton extends StatelessWidget{
  const PushButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        alignment:Alignment.center,// 设置组件的对齐方式
        decoration:BoxDecoration(
          color: Colors.blue, // 设置背景颜色
          borderRadius:BorderRadius.circular(20), // 设置圆角
        ),
        height: 80,
        width: 160,
        child:const Text(
          '显示时间',
          style: TextStyle(color: Colors.pink,fontSize:16),
        ),
      ),
    );
  }

}

// 圆形显示图片
class WebIMG extends StatelessWidget{
  const WebIMG({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75), // 设置容器的一个圆角大小，设置为圆形
          image: const DecorationImage(
            image: NetworkImage('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
            fit: BoxFit.cover, // fit为裁剪，常用cover
          )
        ),
      ),
    );
  }
}

// 显示本地圆形图片，使用ClipOval组件
// 图片需要放置在文件目录下，同时还需要修改项目的pubspec.yaml文件，修改内容如下:
// assets:
//   - images/img.jpeg
class ClipIMG extends StatelessWidget{
  const ClipIMG({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ClipOval(
        child: Image.asset('images/img.jpeg',
          width: 120,
          height: 120,
          fit: BoxFit.cover),
      ),
    );
  }

}
















