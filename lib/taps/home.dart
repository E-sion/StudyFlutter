import 'package:flutter/material.dart';


// 因为其他文件的调用之后是会显示在Scaffold的body组件里面，所以方法只需要直接返回可以放在body里面的内容就可以了
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("主页",style: TextStyle(fontSize: 40),textAlign:TextAlign.center),
    );
  }
}

//
class NewHomePage extends StatefulWidget {
  @override
  State<NewHomePage> createState() => _newHomePage();
}

// 使用SingleTickerProviderStateMixin
class _newHomePage extends State<NewHomePage> with SingleTickerProviderStateMixin{
  // 初始化变量
  late TabController _tabController ;
  // 写生命周期函数
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar( // 定义TabBar
          controller: _tabController, // 传入_tabController
          tabs: const [
            Tab(child: Text('我的')),
            Tab(child: Text('你的')),
          ],
        ),
      ),
      body: TabBarView( // 在body里面需要使用TabBarView来展示Tab对应的body内容
        controller: _tabController, // 第二个需要传入_tabController 的位置
        children: const [
          ListTile(title: Text('这是我的界面')),
          ListTile(title: Text('这是你的界面')),
          ],
      ),
    );
  }
}