import 'package:flutter/material.dart';

class ChooseButtons extends StatefulWidget {

  @override
  _ChooseButtonsState createState() {
    return _ChooseButtonsState();
  }
}

class _ChooseButtonsState extends State<ChooseButtons> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/likes');}, child: Text('喜欢界面')),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/news');}, child: Text('新闻界面')),
              ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/change',arguments: {'Text':'命名路由传递参数实例'});}, child: const Text("change")),
            ],
          )
        ],
      ),
    );
  }
}