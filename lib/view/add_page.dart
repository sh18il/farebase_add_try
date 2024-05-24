import 'package:faiju_fire/model/model.dart';
import 'package:faiju_fire/service/service.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: nameCtrl,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            TextFormField(
              controller: emailCtrl,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  add();
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }

  add() async {
    String id = randomNumeric(10);
    StModel ssmodel =
        StModel(name: nameCtrl.text, email: emailCtrl.text, id: id);
    await StService().addData(ssmodel);
  }
}
