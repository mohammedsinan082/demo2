import 'package:flutter/material.dart';

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 90,
              width: 392,
              color: Colors.black54,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Good Evening",style: TextStyle(
                    fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                  SizedBox(width: 128,),
                       Icon(Icons.notifications_active_outlined,color: Colors.white,size: 27,),
                       SizedBox(width: 8,),
                       Icon((Icons.timelapse_outlined),color: Colors.white,size: 27,),
                       SizedBox(width: 8,),
                       Icon(Icons.settings,color: Colors.white,size: 27,),



                ],
              ),
            ),

            Row(
              children: [
                Container(
                  height: 43,
                  width: 210,
                  color: Colors.black,
                  child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 26,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Music",style: TextStyle(
                            fontSize: 12,color: Colors.white,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      height: 27,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade900,borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Podcast & Shows",style: TextStyle(
                            fontSize: 12,color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ],
                )
                ),
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 62,
                      width: 192,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/Malayalam.jpg"),),
                          SizedBox(width: 10,),
                          Text("Malayalam",style: TextStyle(
                            fontWeight: FontWeight.w700,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 62,
                      width: 192,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/Hindi.jpg")),
                          SizedBox(width: 10,),
                          Text("Hindi",style: TextStyle(
                              fontWeight: FontWeight.w700,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 62,
                      width: 192,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/Tamil.jpg")),
                          SizedBox(width: 10,),
                          Text("Tamil",style: TextStyle(
                              fontWeight: FontWeight.w700,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 62,
                      width: 192,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/Telungu2.jpg")),
                          SizedBox(width: 10,),
                          Text("Telungu",style: TextStyle(
                              fontWeight: FontWeight.w700,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 62,
                          width: 192,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade900,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            children: [
                              Image(image: AssetImage("assets/images/English1.jpg")),
                              SizedBox(width: 10,),
                              Text("English",style: TextStyle(
                                  fontWeight: FontWeight.w700,color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 62,
                      width: 192,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage("assets/images/Rap.jpg")),
                          SizedBox(width: 10,),
                          Text("Rap",style: TextStyle(
                              fontWeight: FontWeight.w700,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Episodes For You",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23
                    ),)
                  ],
                )
            //    Image(image: image)

              ],
            ),



          ],
        ),
      ),
    );
  }
}
