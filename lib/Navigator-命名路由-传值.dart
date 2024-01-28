import 'package:flutter/material.dart';
import 'package:study/pages/Change.dart';
import 'pages/home.dart';


//
//

void main(){
  runApp(NavigatorTest());
}

class NavigatorTest extends StatefulWidget {

  @override
  _NavigatorTestState createState() {
    return _NavigatorTestState();
  }
}

class _NavigatorTestState extends State<NavigatorTest> {

  // 1. 外部配置routes
  Map routes = {
    '/':(context)=>ChooseButtons(),
    '/change':(context,{arguments})=>Change(arguments:arguments),
  };
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '命名路由测试',
      // 2. 配置onGenerateRoute
      onGenerateRoute: (RouteSettings settings) {
        final String? name = settings.name;
        final Function? pageContentBuilder = routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
        return null;
      },
    );
  }
}







