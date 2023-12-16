import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Card组件")),
      body: const CardList()
      ),
    )
  );
}

List cardData = [
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },
  {
    'Telephone' : '+1 15473275',
    'Name' : 'Lain',
    'Pic' : 'https://s2.loli.net/2023/09/12/kcprXWNbOvw9iKh.png',
    'Background' : 'https://s2.loli.net/2023/07/12/XSHxVR58th2zcKY.png',
  },

];

// 动态生成卡片数据
class CardList extends StatelessWidget{
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardData.length,
      itemBuilder: (BuildContext context, int index){
        return Card(
          child: Column(
            children: [
              AspectRatio(  // AspectRatio 是一个专门设置长宽的组件
                aspectRatio: 16/4,
                child: Image.network(cardData[index]['Background']), // todo 添加图片
              ),
              ListTile(
                leading: ClipOval(
                    child: Image.network(
                      cardData[index]['Pic'], // todo 头像
                      fit:BoxFit.cover,
                      height: 50,
                      width: 50,)),
                title: Text("${cardData[index]['Name']}"), // todo 名称
                subtitle: Text('${cardData[index]['Telephone']}'), // todo 电话
              )
            ],
          ),
        );
      }
    );
  }
}