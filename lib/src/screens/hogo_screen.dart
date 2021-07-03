import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hodomojo/src/model/main_component.dart';
import 'package:hodomojo/src/riverpod/state_manager.dart';
import 'package:hodomojo/src/screens/components/img_comp.dart';
import 'package:hodomojo/src/screens/components/text_comp.dart';

class HogoScreen extends ConsumerWidget {
  bool yes = false;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<Data> data = watch(DataStateFuture);
    return SafeArea(
        child: Scaffold(
      //  appBar: AppBar(title: const Text("HELLO")),
      body: data.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text(err.toString())),
          data: (data) {
            return Scrollbar(
                          child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                //  borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: NetworkImage(data.coverUrl ??
                                        "https://i.pinimg.com/originals/b1/40/89/b1408967d217016afdc8c2911b36fe1f.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              bottom: 40.0,
                              left: 20.0,
                              child: Text(
                                data.title ?? 'Title',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      TextComp(
                        title: data.components[index+1].title,
                        desc: data.components[index+1].desc,
                      ),
                      SizedBox(height: 15),
                      ImgComponent(
                        url: data.components[index].url,
                      )
                    ]);
                  }),
            );
          }),
    ));
  }
}
