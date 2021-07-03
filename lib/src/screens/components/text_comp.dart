import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  TextComp({this.title, this.desc});

  String title;
  String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
        
        alignment: Alignment.topLeft,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(250, 239, 61, 0.4),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
      minWidth: 300.0,
      maxWidth: MediaQuery.of(context).size.width,
      minHeight: 30.0,
      maxHeight: 200,

          ),
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    alignment: Alignment.topLeft, child: Text(title ?? '')),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  child: AutoSizeText(
                  
                    desc ??
                        "Heavan on earth , one of the most desirable place on earth",
                     style: TextStyle(fontSize: 17),
                     maxLines: 8,
                      minFontSize: 15,
                  ),
                ),
              ),

              //
            ],
          ),
        ));
  }
}
