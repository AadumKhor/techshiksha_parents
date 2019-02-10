import 'package:flutter/material.dart';

class DrawerItem {
  String iconPath;
  String itemName;

  DrawerItem({this.iconPath, this.itemName});
}

class SignIn {
  final String name;
  final String gmailId;

  SignIn({this.name, this.gmailId});
}

final List<DrawerItem> drawerItems = [DrawerItem()];

final List<SignIn> credentials = [SignIn()];

class Panel extends StatefulWidget {
  final AnimationController controller; // controller for this animation

  Panel({this.controller}); //constructor to be used in StartScreen()

  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  static const header_height = 32.0;

  Animation<RelativeRect> getAniamtionPanel(BoxConstraints constraints) {
    final height = constraints.biggest.height;
    final top = height - header_height;
    final frontPanelHeight = -header_height;

    return new RelativeRectTween(
      begin: RelativeRect.fromLTRB(0.0, top, 0.0, frontPanelHeight),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(
        new CurvedAnimation(parent: widget.controller, curve: Curves.linear));
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);

    return new Container(
      child: new Stack(
        children: <Widget>[
          //***********************************
          //This is the container that appears after we click on the drawer icon.
          //It contains the various options our user will have to navigate our app.
          //Color is set ot theme color for uniformity
          //*********************************
          new Container(
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.green[100], Colors.teal[100]])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //this Container contains the sign in info of the parent
                  //it will show the image fetched from sign in if any
                  //and will also show the name and id of the parent
                  new Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: new BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.green[100], Colors.blue[100]])),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),

                  //the various options begin from here
                  //we can modify these options later on
                  //TODO: Make them better if possible
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new FlatButton(                    
                      child: new Text(
                        'Test Score',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new FlatButton(                    
                      child: new Text(
                        'Test Score',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new FlatButton(                    
                      child: new Text(
                        'Test Score',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new FlatButton(                    
                      child: new Text(
                        'Test Score',
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  )
                ],
              )),
          PositionedTransition(
            rect: getAniamtionPanel(constraints),
            child: new Material(
              elevation: 12.0,
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: new Column(
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    height: header_height,
                    child: new Center(
                      child: Text(
                        'Feed',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: new Container(
                      decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.pink[200], Colors.blue[200]])),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            // Expanded(
                            Container(
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),
                            ),
                            //)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}
