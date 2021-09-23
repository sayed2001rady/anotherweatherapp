
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather1/model/tempmodel.dart';
import 'package:weather1/screens/second_screen.dart';
import 'package:weather1/slider.dart';
class home_screen extends StatefulWidget {

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int _currentpage = 0;
  String? img;
  pageslider(int index)
  {
    setState(() {
      _currentpage = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    if(locationList[_currentpage].weatherType=='Night')
      img="images/8c28e2598591a3e1961cef77a5cbdf2f.jpg";
    else if(locationList[_currentpage].weatherType=='Sunny')
      img="images/1-1407832.jpg";
    else if(locationList[_currentpage].weatherType=='Rainy')
      img="images/90634e974743ed9409f527e3b2f24852.jpg";
    else if(locationList[_currentpage].weatherType=='Cloudy')
      img="images/3489248.jpg";
    else
      img="images/thunderstorm.png";


    return SafeArea(
        child:  Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: (){},icon: Icon(Icons.search),iconSize: 30,color: Colors.white,
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu),color:Colors.white,iconSize: 30,)
            ],
          ),
          body: Container(
            child: Stack(
              children: [
                Image.asset("$img",fit: BoxFit.cover,height: MediaQuery.of(context).size.height,),
                Container(color: Colors.black38,),
                Container(
                  margin: EdgeInsets.only(top: 75,left: 10),
                  child: Row(
                    children: [
                      for(int i=0;i<locationList.length;i++)
                        if(i == _currentpage)
                          slider(true)
                        else
                          slider(false)

                    ],
                  ),
                ),
                PageView.builder(
                  onPageChanged: pageslider,
                  scrollDirection: Axis.horizontal,
                  itemCount: locationList.length,
                  itemBuilder: (BuildContext context, int index) {
                  return  second_screen(index);
                },)

              ],
            ),
          ),

        )
    );
  }
}
