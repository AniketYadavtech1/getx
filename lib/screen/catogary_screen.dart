import 'package:flutter/material.dart';
import 'package:getx_complete_tutorial/model/appmodel.dart';
import 'package:getx_complete_tutorial/res/button.dart';
import 'package:getx_complete_tutorial/res/custom_appbar.dart';
import 'package:getx_complete_tutorial/res/text_formfield.dart';
import 'package:getx_complete_tutorial/service/appservice.dart';

class CatogaryScreen extends StatefulWidget {
  const CatogaryScreen({super.key});

  @override
  State<CatogaryScreen> createState() => _CatogaryScreenState();
}

class _CatogaryScreenState extends State<CatogaryScreen> {
  late Future<List<AppModel>> _feturePhotos;

  @override
  void initState() {
    _feturePhotos = AppService().fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.pink,
            ),
            Positioned(
                top: 1.0, left: 0.0, right: 0.0, child: CustomAppbar()),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: Button(
                      btnName: 'Login',
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      callback: () {
                        print('Logged in !!');
                      },
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 150,
                    child: Button(
                      btnName: 'play',
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      callback: () {
                        print('Logged in !!');
                      },
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: CustomTextField(
                      labelText: 'Enter Your Email',
                      hintText: 'Enter Your Email',
                      suffixIcon: Icons.email,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
