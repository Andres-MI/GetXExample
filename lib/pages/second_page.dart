import 'package:estados/controllers/user_controller.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              child: Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userController
                    .loadUser(User(name: 'Andrés Melenchón', age: 33));
              }),
          MaterialButton(
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userController.editAge(30);
              }),
          MaterialButton(
              child: Text('Añadir Profesion',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                userController.addJob('Retired digeridoo player');
                userController.addJob('Flutter expert');
              }),
          MaterialButton(
              child: Text('Cambiar Tema',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                Get.isDarkMode ? Get.changeTheme(ThemeData.light()) : Get.changeTheme(ThemeData.dark());
              }),
        ],
      )),
    );
  }
}
