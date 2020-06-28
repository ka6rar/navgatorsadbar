import 'package:flutter/material.dart';


class CollapsingListTile extends StatefulWidget {
final String title;
final IconData icon ;
AnimationController animatedContainer ;
CollapsingListTile({this.title , this.icon , this.animatedContainer});


  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {

  Animation<double> _widthAnmation;
  @override
  void initState() { 
    super.initState();
    _widthAnmation = Tween<double> (begin: 250 , end: 65).animate(widget.animatedContainer);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: ),
      width: _widthAnmation.value,
      child: Row(
        children: <Widget>[
          Icon(widget.icon , color: Colors.white),
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