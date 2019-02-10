import 'package:flutter/material.dart';
import 'package:techshiksha_parents/panels.dart';

class StartScreen extends StatefulWidget {
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  @override
  void initState() { 
    super.initState();
    controller = new AnimationController(vsync: this , duration: Duration(milliseconds: 100),value: 1.0);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible{
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed || status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          title: new Text('TechShiksha'),
          leading: IconButton(
            onPressed: (){
              controller.fling(velocity: isPanelVisible?-1.0:1.0);
            },
            icon: new AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: controller.view,
            ),
          ),

        ),
      body: Panel(controller: controller,),
    );
  }
}