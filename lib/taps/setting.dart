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

//
class NewSettingPage extends StatefulWidget{
  @override
  State<NewSettingPage> createState() => _newSettingPage();
}

// with SingleTickerPro viderStateMixin
class _newSettingPage extends State<NewSettingPage> with SingleTickerProviderStateMixin{

  // 初始化
  late TabController _tabController;

  // 生命周期函数
  @override
  void initState(){
    super.initState();
    // 在生命周期函数里面进行赋值
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         bottom: TabBar(
           controller: _tabController, // 第一个_tabController
           tabs: const [
             Tab(child: Text('收藏'),), // tab列表里面的内容需要使用Tab来制作，同时Tab还需要配置child里面的内容
             Tab(child: Text('已删除'),)], // tab列表里面的内容需要使用Tab来制作，同时Tab还需要配置child里面的内容
         ),),
       body: TabBarView(
         controller: _tabController, // body里面显示tab有关的内容需要使用到TabBarView，
         children: const [ // children 放置需要展示的内容，可以直接写组件，不需要再 嵌套 Tab
           ListTile(title: Text('这是收藏界面')),
           ListTile(title: Text('这是已删除的界面')),
         ],
       ),
     );
  }
}