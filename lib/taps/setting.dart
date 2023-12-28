import 'package:flutter/material.dart';


// 因为其他文件的调用之后是会显示在Scaffold的body组件里面，所以方法只需要直接返回可以放在body里面的内容就可以了
class SettingPage extends StatelessWidget{
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("删除界面",style: TextStyle(fontSize: 40),textAlign:TextAlign.center),
    );
  }
}