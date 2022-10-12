import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.alarm_add_sharp),
              title: Text("Sales"),
              subtitle: Text("Sales of the week"),
              trailing: Text("3500"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.alarm_add_sharp),
                backgroundColor: Colors.amberAccent,
              ),
              title: Text("Customer"),
              subtitle: Text("Sales of the week"),
              trailing: Text("3500"),
              onTap: () {},
              tileColor: Colors.brown.shade100,
            ),
            ListTile(
              leading: Icon(Icons.alarm_add_sharp),
              title: Text("Profit"),
              subtitle: Text("Sales of the week"),
              trailing: Text("3500"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                child: Text("C"),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "Nostrud sit Lorem duis dolor et. Occaecat sunt eu eiusmod magna laboris quis. Id pariatur eu minim ad. Ad laborum cillum fugiat sunt. Fugiat sunt cillum dolore aliquip eu. Eiusmod officia ea nulla mollit quis elit magna fugiat. Esse minim cupidatat do magna non labore pariatur ad.Labore elit velit cillum quis Lorem fugiat quis ea. Lorem est aute dolore proident esse deserunt in non velit adipisicing cupidatat sit voluptate. Et enim exercitation aute voluptate officia magna ad consequat. Ad ad est dolor proident laborum.Exercitation nostrud cupidatat aute ad fugiat mollit anim esse. Est ullamco adipisicing tempor incididunt magna est. Cupidatat sunt enim ullamco incididunt anim ipsum consequat do magna Lorem labore adipisicing velit. Reprehenderit magna labore sit adipisicing consequat duis fugiat voluptate aliqua ea. Ex excepteur culpa in voluptate veniam non ea occaecat magna amet commodo minim in ipsum. Sunt esse non eiusmod id eu adipisicing incididunt amet eiusmod commodo consequat. Laborum laboris ad cillum irure est minim quis.Aliquip cillum cillum deserunt laborum culpa commodo incididunt eiusmod non et anim. Sit eu mollit enim nostrud. Ad reprehenderit esse eu deserunt sit adipisicing tempor irure exercitation occaecat. Ad quis elit exercitation culpa elit consectetur ullamco. Ut nostrud in excepteur in.Cillum ea do officia eiusmod. Culpa id pariatur non ea tempor proident laborum. Laboris nulla id Lorem pariatur ipsum adipisicing exercitation adipisicing culpa amet Lorem velit. Aute amet proident commodo magna excepteur nisi enim incididunt quis velit non irure duis enim. Laboris eu labore consequat laborum eiusmod magna anim ipsum magna voluptate non.Aliquip excepteur eiusmod nulla duis incididunt consectetur mollit. Pariatur consectetur cillum velit excepteur sit ex do incididunt pariatur ea est ex fugiat consequat. Ullamco occaecat ipsum occaecat minim enim dolor aliqua ullamco fugiat.Pariatur ullamco tempor pariatur occaecat tempor non. Sit esse incididunt mollit veniam ipsum est qui magna magna anim consequat ea magna. Reprehenderit incididunt cupidatat nulla dolor quis cupidatat dolor officia eiusmod aute. Est tempor adipisicing mollit consequat enim nulla labore minim fugiat qui irure ipsum. Aute nisi excepteur laboris ut.Laborum cillum sint ipsum et id ullamco irure dolore velit. Dolor magna est nostrud fugiat ad. Sit dolore eu est Lorem ea magna sit duis labore ex ad eiusmod.Non occaecat officia consectetur enim magna. Consequat sint cupidatat Lorem excepteur et aliquip ullamco proident excepteur. Lorem anim labore nisi deserunt veniam nisi proident deserunt ullamco labore pariatur ex deserunt voluptate. Non voluptate irure nostrud tempor enim nulla velit fugiat ullamco aute eu consequat labore.In quis mollit aliquip elit in duis velit consequat ipsum. Est laboris culpa laboris laboris adipisicing occaecat consectetur reprehenderit cillum. Eu laboris laborum officia occaecat."),
            )
          ],
        ),
      ),
    );
  }
}
