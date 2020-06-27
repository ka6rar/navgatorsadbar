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
  double minwdth = 75;
  bool  isCollapsed = false ;

  AnimatedContainer _animatedContainer ;
  Animation<double> widtAnimation ;
  
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.black,
        child: Column(
          children: <Widget>[
            // SizedBox(height: 20,),
            Expanded (
              child: ListView.builder(
                padding: EdgeInsets.only(top: 40),
              itemBuilder:  (context ,index )  {
                return CollapsingListTile(
                  icon:  navigaticonItems[index].icon,
                  title: navigaticonItems[index].title,
                );
              } ,
              itemCount: navigaticonItems.length,
            ) ,
            ),
            InkWell( 
             onTap: (){
                setState(() {
                  isCollapsed =! isCollapsed ;
                  });
             } ,

          
            )
          ],
        ),
      
    );
  }
}