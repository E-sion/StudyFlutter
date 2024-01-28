import 'package:flutter/material.dart';
import 'pages/News.dart';
import 'pages/Likes.dart';
import 'pages/home.dart';
// 普通路由跳转解释：

// 设置命名路由解释器
// 导入类，然后在MaterialApp那层写routes，配置不同的路由跳转地址和其对应会调用的类
// routes中默认的界面为'/'，调用方法很简单，只需要在其导入的类里面写调用方法
// Navigator.pushNamed(context, '/xxx');

// 命名路由传值方法
// 文件1: 修改路由总文件
// 把原先在MaterialApp写的routes去掉，在方法里面定义好routes的值，然后在MaterialApp内部第一层写onGenerateRoute,onGenerateRoute 的内容暂时固定写法
// 文件2: 默认跳转界面
// 调用方式:
// ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/change',arguments: {'命名路由传递参数实例,这里是传递的参数'});}, child: const Text("change")),
// 文件3: 路由跳转到的文件
//  0. final Map arguments; 新建一个变量来接受传递的数值
//  1. 先配置接受函数
//  2. widget.arguments 即可输出传递值



void main(){
  runApp(NavigatorTest());
}

class NavigatorTest extends StatefulWidget {

  @override
  _NavigatorTestState createState() {
    return _NavigatorTestState();
  }
}

class _NavigatorTestState extends State<NavigatorTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '命名路由测试',
      routes: {
        '/':(context)=>ChooseButtons(),
        '/likes':(context)=>Likes(),
        '/news':(context)=>News(),
      },

    );
  }
}







