import 'package:estados/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Obx(() => userController.userExists.value
          ? UserInfo(
              user: userController.user.value,
            )
          : NoUser()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        //onPressed: () => Navigator.pushNamed(context, '/page2')
        ///onPressed: () => Get.to(SecondPage())
        onPressed: () =>
            Get.toNamed('/page2', arguments: {'name': 'Andrés', 'age': 33}),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(title: Text('Nombre: ${user.name}')),
          ListTile(title: Text('Edad: ${user.age}')),
          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ...user.jobs.map((job) => ListTile(
                title: Text(job),
              ))
        ],
      ),
    );
  }
}

class NoUser extends StatelessWidget {
  const NoUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No hay usuario seleccionado'),
      ),
    );
  }
}
