import 'package:flutter/material.dart';
import 'package:navgatorsadbar/models/navigation_model.dart';
import 'Collapsing.dart';


class NavigatorDrawer extends StatefulWidget {
  @override
  _NavigatorDrawerState createState() => _NavigatorDrawerState();
}

class _NavigatorDrawerState extends State<NavigatorDrawer> with SingleTickerProviderStateMixin  {
  @override
 
  double maxWidth = 250 ;
  double minwdth = 65;
  bool  isCollapsed = false ;

  
  AnimationController _animatedContainer ;
  Animation<double> widtAnimation ;
  
 @override
void initState() { 
  super.initState();
  _animatedContainer = AnimationController(vsync: this , duration: Duration(milliseconds: 1000));
  widtAnimation  = Tween<double> (begin: maxWidth , end: minwdth).animate(_animatedContainer);
}


  Widget build(BuildContext context) {
    return AnimatedBuilder( 
      animation: _animatedContainer,
      builder: (context , index) {
        return getwidget(context , widget);

      },
    );
  }


  Widget getwidget(context , widget) {
    return  Container(
       width: widtAnimation.value ,
      color: Colors.black,
        child: Column(
          children: <Widget>[
           SizedBox(height: 30,),
            Expanded (
              child: ListView.builder(
                // padding: EdgeInsets.only(top: 40),
              itemBuilder:  (context ,index )  {
                return CollapsingListTile(
                  icon:  navigaticonItems[index].icon,
                  title: navigaticonItems[index].title,
                 animatedContainer: _animatedContainer,
                );
              } ,
              itemCount: navigaticonItems.length,
            ) ,
            ),
            InkWell( 
             onTap: (){
                setState(() {
                  isCollapsed =! isCollapsed ;
                  isCollapsed ? _animatedContainer.forward() : _animatedContainer.reverse();
                  });
             } ,
             child: Icon(Icons.arrow_back ,color: Colors.white,),
          
            )
          ],
        ),
      
    );
  }
}