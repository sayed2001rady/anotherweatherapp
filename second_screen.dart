import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather1/model/tempmodel.dart';
class second_screen extends StatelessWidget {
final int i ;

second_screen(this.i);

@override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 90,),
                      Text(locationList[i].city,style: TextStyle(color: Colors.white,fontSize: 30),),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(locationList[i].dateTime,style: TextStyle(color: Colors.white,fontSize: 8),),
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 280,),
                      Row(
                        children: [
                          Text(locationList[i].temparature,style: TextStyle(color: Colors.white,fontSize: 30),),
                          Text("°C",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(locationList[i].iconUrl,height: 30,width: 30,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text(locationList[i].weatherType,style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                        height: 30,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Wind",style: TextStyle(fontSize: 12,color: Colors.white),),
                              Text("${locationList[i].wind}",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Text("%",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Stack(
                                children: [
                                  Container(
                                    height: 5,
                                    width: 25,
                                    color: Colors.grey,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 4,
                                    color: Colors.green,
                                  )
                                ],
                              )

                            ],
                          ),
                          Column(
                            children: [
                              Text("rain",style: TextStyle(fontSize: 12,color: Colors.white),),
                              Text("${locationList[i].rain}",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Text("%",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Stack(
                                children: [
                                  Container(
                                    height: 5,
                                    width: 25,
                                    color: Colors.grey,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 3,
                                    color: Colors.red,
                                  )
                                ],
                              )

                            ],
                          ),
                          Column(
                            children: [
                              Text("Humidy",style: TextStyle(fontSize: 12,color: Colors.white),),
                              Text("${locationList[i].humidity}",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Text("%",style: TextStyle(fontSize: 10,color: Colors.white),),
                              Stack(
                                children: [
                                  Container(
                                    height: 5,
                                    width: 25,
                                    color: Colors.grey,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 3,
                                    color: Colors.red,
                                  )
                                ],
                              )

                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}

