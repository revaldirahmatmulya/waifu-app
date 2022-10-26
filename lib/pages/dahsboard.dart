import 'package:flutter/material.dart';
import '../data/data.dart';
import '../components/starButton.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Waifu App')),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: listWaifu.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                  child: ListTile(
                      title: Text(listWaifu[index].name),
                      subtitle: Text(listWaifu[index].sub),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(listWaifu[index].img)),
                      trailing: Container(
                        child: const StarButton(),
                      ))),
              onTap: () {
                Navigator.pushNamed(context, '/detail',
                    arguments: Waifu(
                        name: listWaifu[index].name,
                        img: listWaifu[index].img,
                        sub: listWaifu[index].sub,
                        desc: listWaifu[index].desc));
              },
            );
          }),
    );
  }
}
