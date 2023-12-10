import 'package:flutter/material.dart';

// 结构目录图: main->runAPP->MaterialApp->home/title...->Scaffold->appBar/body...
// 第二层，可以额外进行定义处理的组件结构StatelessWidget；
// class name extends StatelessWidget 定义好一个组件的类，然后再深度自定义内容
// Center->child（单个子界面）->Container(设置一个容器)->(自定义容器内部的参数)->容器内新建child—>Text/OR MORE...


void main() {
  runApp(MaterialApp( //MaterialApp 用来包裹所有组件
      home: Scaffold( // home设置的参数需要为Scaffold组件
          appBar: AppBar(title: const Text('你好Flutter'),), //appBar，body组件为Scaffold函数定义
          body: const Column(
            children: [
              ListViewVertical(),
              Divider(), // 横线
              ListViewNew(),
              Divider(),
              ListViewH(),
            ],
      )
      )
  ),
  );
}


// 制作一个列表组件，垂直
class ListViewVertical extends StatelessWidget{
  const ListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox( // 需要使用sizebox容器来限制住List，否者list会默认占全屏大小。
          height: 100.0,
          child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.timer), // leading 会显示在最前面，内容可以是任意
                  title: Text('闹钟'),
                  trailing: Icon(Icons.chevron_right_rounded), // trailing 会显示在最末尾，内容也是随意的组件
                )
              ],
        )
    );
  }
}

// 制作类似新闻播报的列表组件
class ListViewNew extends StatelessWidget{
  const ListViewNew({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      SizedBox(
          height: 100.0,
          child: ListView(
              children: [ ListTile(
                leading: Image.network('https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png'),
                title: const Text('2023年春晚名单！震惊！新闻测试'),
                subtitle: const Text('小编也感到很震惊，快来看看春晚的名单都有哪些你认识的明星吧'),
              )
  ]
        )
      );
  }
}

// 制作横向水平的列表组件

class ListViewH extends StatelessWidget{
  const ListViewH({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [ // 为了可以单独控制每个元素的大小，再嵌套一个容器
          Container(
            width: 100.0,
            child: Column(
              children: [ // 避免图片撕裂，可以再为图片嵌套一个Container，为该Container设置一个高度，以限制图片的高宽，避免撕裂
                Container(
                  width: 50,
                  child: Column(
                    children: <Widget>[
                      Image.network('https://s2.loli.net/2023/09/12/dJqvKwX8PUEOmrh.png',fit: BoxFit.cover),
                      const Text('横向列表'),],
                  ),

                )
              ],
            ),
          ),
          Container(
            width: 100,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
//     return SizedBox(
//         height: 180,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[ // 在ListView里面以容器的形式存放显示单个组件
//             Container(width: 180.0,
//               color: Colors.red,
//             ),
//             Container(
//               width: 180.0,
//               color: Colors.orange,
//               child: Column(
//                 children: <Widget>[
//                   Image.network('https://s2.loli.net/2023/09/12/tR27icWnhuzA8Ld.png'),
//                   const Text('我是一个文本')
//                 ],
//               ),
//             ),
//             Container(
//               width: 180.0,
//               color: Colors.blue,
//             ),
//             Container(
//               width: 180.0,
//               color: Colors.deepOrange,
//             ),
//             Container(
//               width: 180.0,
//               color: Colors.deepPurpleAccent,
//             ),
//             ],
//           ),
//     );
//   }
// }
