import 'package:flutter/material.dart';

void main(){
 runApp(const MaterialApp(
   home: appBarStudy()
  )
 );
}

class appBarStudy extends StatefulWidget{
  const appBarStudy({super.key});

  @override
  State<StatefulWidget> createState() => _appBarStudy();
}

class _appBarStudy extends State<appBarStudy>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar组件学习"), // 设置appbar的标题
        leading: IconButton( // 设置最左边的组件（可以是图标，或者按钮）
          icon: const Icon(Icons.list_sharp),
          onPressed: (){print('你点击了左侧图标，正确侧边栏应该使用Drawer来实现');},
        ),
        actions: [ //  设置右边的组件
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever)),
        ],
      ),
    );
  }
}
