import 'package:flutter/material.dart';
import 'package:study/taps/setting.dart';

// 普通路由跳转解释：
// Navigator -》 push ->MaterialPageRoute -》 return xxxx

// Navigator.of(context).push(
//  MaterialPageRoute(builder: (context){
//    return const SearchPage();
// })


// 返回上一级目录：
// Navigator -》 pop
void main(){
  runApp(MaterialApp(
    home: NavigatorTest(),
    )
  );
}

class NavigatorTest extends StatefulWidget{
  @override
  State<NavigatorTest> createState()=> _navigatorText();
}

class _navigatorText extends State<NavigatorTest>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('路由组件学习-路由即页面跳转组件'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
           Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
                return const SettingPage(); // 这里写需要跳转到的界面
             })
           );
          }, child: const Text('普通路由跳转'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context); // pop用于返回上一级目录
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
