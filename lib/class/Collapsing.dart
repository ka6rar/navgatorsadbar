import 'package:flutter/material.dart';


class CollapsingListTile extends StatefulWidget {
final String title;
final IconData icon ;
CollapsingListTile({this.title , this.icon});


  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: ),
      child: Row(
        children: <Widget>[
          Icon(widget.icon , color: Colors.white),
          SizedBox(width: 10,),
          Text(widget.title , style: TextStyle(color: Colors.white , fontSize: 20),)
        ],
      ),
    );
  }
}