

import 'package:flutter/material.dart';

class ImgComponent extends StatelessWidget {
  ImgComponent({this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      const Icon(Icons.person),
                      Column(
                        children: [
                          Text("Zostal"),
                          Text("@ZostalHostal"),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("The 'm' in the work from stands for"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(15.0),
                  child: Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image:  DecorationImage(
                            image:  NetworkImage(
                                url??"https://picsum.photos/250?image=9"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            );
  }
}