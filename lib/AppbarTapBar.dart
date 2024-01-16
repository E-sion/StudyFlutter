import 'package:flutter/material.dart';

// appbar中的button组件，可以搭配TabBar组件，实现顶端界面切换

// 思路清理

// StatefulWidget 配置 with SingleTickerProviderStateMixin
// 在方法里面新建一个TabController类型的变量 -> 重写initState方法并在方法里面配置变量的基本信息

// Scaffold -> appbar -> bottom 按照固定格式配置TabController以及tab列表
// Scaffold -> body 配置一个列表，列表元素会和bottom里面的tab列表相匹配，一样序号的会绑定在一起。

void main(){
  runApp(MaterialApp(
    home: tabBar(),
    )
  );
}

class tabBar extends StatefulWidget{
  @override
  State<tabBar> createState() => _TabBar();
}

// 需要混入 SingleTickerProviderStateMixin
class _TabBar extends State<tabBar> with SingleTickerProviderStateMixin {

  // 新建一个TabController变量
  late TabController _tabController;


  // 重写生命周期函数，程序每次都会自动执行
  @override
  void initState(){
    super.initState();
    // 给新建的_tabController赋值，length是显示几个tab,vsync默认this
    _tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar组件学习'), // 配置标题
        actions: const [ // 配置右侧组件
          Icon(Icons.rocket),
          Icon(Icons.stacked_line_chart),
        ],
        bottom: TabBar(
          controller: _tabController, // 配置tabcontroller
          tabs: const [  // 以列表的形式来配置tab需要展示的内容
            Tab(cshild: Text('附近')),
            Tab(child: Text('主页')),
            Tab(child: Text('朋友')),
          ],),
      ),
      body:
        TabBarView( // body的显示内容使用[TabBarView]来配置，其中需要为0的会和tabs序号为0的绑定在一起
        controller: _tabController,   // 需要配置controller
        children: const [
          ListTile(title: Text('附近界面'),),
          ListTile(title: Text('主页界面'),),
          ListTile(title: Text('朋友界面'),),
        ],
      ),
    );
  }
}