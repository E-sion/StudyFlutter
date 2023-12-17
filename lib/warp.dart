import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Search(),
    ),
  ));
}

// warp 组件可以让多个组件自动以横列或者竖列来排列
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeLocal = MediaQuery.of(context).size;

    return Column(
      children: [
        // 搜索栏
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {
                        print('点击返回');
                      },
                      icon: const Icon(Icons.arrow_back))),
              Expanded(
                flex: 8,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text('笔记本')),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('搜索'),
                  ))
            ],
          ),
        ),
        // 小标题
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(8),
          child: const Text('热搜', style: TextStyle(fontSize: 18)),
        ),
        const Divider(), // 分割线
        // Warp 组件
        Padding(
          padding: EdgeInsets.all(8),
          child: Wrap(
            spacing: 5,
            runSpacing: 10,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('女装')),
              ElevatedButton(onPressed: () {}, child: const Text('童装')),
              ElevatedButton(onPressed: () {}, child: const Text('女装')),
              ElevatedButton(onPressed: () {}, child: const Text('男装')),
              ElevatedButton(onPressed: () {}, child: const Text('女装')),
              ElevatedButton(onPressed: () {}, child: const Text('男装')),
              ElevatedButton(onPressed: () {}, child: const Text('男装')),
              ElevatedButton(onPressed: () {}, child: const Text('童装')),
            ],
          ),
        ),
        // 小标题
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(8),
          child: const Text('历史记录', style: TextStyle(fontSize: 18)),
        ),
        const Divider(),
        Expanded(
            child: Stack(
          children: [
            ListView(
              children: [
                // 小标题
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(18),
                  child: const Text('cos服'),
                ),
                const Divider(),
                // 小标题
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(18),
                  child: const Text('外套'),
                ),
              ],
            ),

            Positioned(
                left: sizeLocal.width/2,
                bottom: 50,
                child: OutlinedButton.icon(
                  onPressed: () {
                    print('点击删除按钮');
                  },
                  label: const Text('删除'),
                  icon: const Icon(Icons.delete),
                ))
          ],
        ))
      ],
    );
  }
}
