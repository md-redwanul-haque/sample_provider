import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
        builder: (context, controller, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('HomePage'),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('${controller.count}',style: TextStyle(fontSize: 40),)),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    controller.increment();
                  }, child: Text('Add'))
                ],
              ),
            ),
          );
        }
    );
  }
}
