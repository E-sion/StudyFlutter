import 'package:flutter/material.dart';

void main (){
  runApp(const MaterialApp(
    home: Full(),
    )
  );
}
class Full extends StatefulWidget {
  const Full({super.key});
  @override
  State<Full> createState() => _FullState();

}

class _FullState extends State<Full> {

  List listView = [{'我是一个列表'}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget组件学习'),),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){
          setState(() { // setState 的作用很大，动态显示的内容需要写在这里面
            listView.add(' ');
          });
        },
      ),
      body: ListView.builder(
        itemCount: listView.length,
        itemBuilder: (BuildContext context,int index){
            return Text(listView[0].toString());
        })
      );
  }
}