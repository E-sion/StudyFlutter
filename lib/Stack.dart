import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text(' Stack组件学习')),
      body: const StackP(),
    ),
  ));
}

// Stack 是一个重叠组件，让两个组件重叠在一起,是相对与外部容器定位，没有外部容器则相对与屏幕进行定位
// Container.child -> Stack.children -> Positioned(or more)
// 在容器里面添加Stack，然后再到Positioned里面添加组件，并且把设定该组件相对于容器的位置
class StackHome extends StatelessWidget{
  const StackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      decoration: const BoxDecoration(color:Colors.blue),
      child: const Stack(
        children: [
          Positioned(
            top: 10,
            height: 100,
            width: 100,
            child: Text('Stack和Positioned组件'),
          )
        ],
      ),
    );
  }
}

// 使用column来实现配置堆
class StackList extends StatelessWidget{
  const StackList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
          ],
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.yellow),
              child: const Text('二级导航栏'),
            )
          ],
        )
      ],
    );
  }
}

// 使用Positioned来配置堆
class StackP extends StatelessWidget{
  const StackP({super.key});

  // 获取设备的长宽
  @override
  Widget build(BuildContext context) {
    // 获取设备屏幕宽度
    final sizeLocal = MediaQuery.of(context).size;

    return Stack(children: [
      ListView(children: const [
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
            Text('Stack列表'),
          ]),
      Positioned(
        width: sizeLocal.width,
        top: 0,
        height: 100,
        child: Container(
          color: Colors.lightBlue,
          child: const Text('二级导航'),
          ),
        )
      ]
    );
  }
}