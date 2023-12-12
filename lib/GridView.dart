import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('学习网格布局')),
      body: const Column(
        children: [
          GridViewCount(),
          Divider(),
          GridViewExtent(),
          Divider(),
          GridViewD()
        ],
      )
     ),
    )
  );
}

// 使用限制单行元素限制(GridView.count)制作一个网格布局
class GridViewCount extends StatelessWidget{
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GridView.count(
        crossAxisCount: 2, // 设置网格布局单行可以显示多少个元素
        childAspectRatio: 1, // 设置网格布局的宽高比例
        children: const [  // 用于显示网格布局里面的元素
          Text('GridView.count 网格布局'),
          Icon(Icons.assistant_direction),
          Icon(Icons.assistant_direction),
          Icon(Icons.assistant_direction),
          Icon(Icons.assistant_direction),
          Icon(Icons.assistant_direction),
        ],
      ),
    );
  }
}

// 使用限制单行宽度来限制(GridView.extent)制作一个网格布局
class GridViewExtent extends StatelessWidget{
  const GridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.extent(
        maxCrossAxisExtent: 80,
        childAspectRatio:1.0,
        children: const [
          Icon(Icons.icecream_outlined),
          Icon(Icons.icecream_outlined),
          Icon(Icons.icecream_outlined),
          Icon(Icons.icecream_outlined),
        ],
      ),
    );
  }
}

// 动态生成网格布局
class GridViewD extends StatelessWidget{
  const GridViewD({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child:
          GridView.count(
              crossAxisCount:7,
              childAspectRatio:1.0,
              children:_initDate()
          )
    );
  }
}

// 返回类型为List的方法
List<Widget> _initDate(){
  List<Widget> list = [];
  for (var i = 0; i<7 ;i++){
    list.add(Container(
        decoration:const BoxDecoration(
          color: Colors.blue
        ),
        child:Column(
          children: [
            Text(dataSet[i]['title']),
            Image.network(dataSet[i]['imageUrl']),
          ],
        )
      )
    );
  }
      return list;
}

// 数据集
List dataSet = [
  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },
  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },  {
    "title":'猫咪',
    'imageUrl':'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
  },
];