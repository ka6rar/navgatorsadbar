import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CollapsingListTile extends StatefulWidget {
final String title;
final IconData icon ;
AnimationController animatedContainer ;
CollapsingListTile({this.title , this.icon , this.animatedContainer});


  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {

  Animation<double> _widthAnmation  , sizedBoxAnimation ;
  @override
  void initState() { 
    super.initState();
    _widthAnmation = Tween<double> (begin: 230 , end: 55).animate(widget.animatedContainer);
    sizedBoxAnimation = Tween<double> (begin: 10 , end: 0).animate(widget.animatedContainer);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(left: 10),
      width: _widthAnmation.value,
      child: Row(
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50,),
          Icon(
            widget.icon , color: Colors.white  ,
            size: 35,
          ),
          SizedBox(width: 10,),
          (_widthAnmation.value >= 220 ) ? 
          Text(widget.title , style: TextStyle(color: Colors.white , fontSize: 20),)
          : 
          Container(), 
        ],
      ),
    );
  }
}