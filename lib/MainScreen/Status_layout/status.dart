import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: backgroundColor,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                     const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/1.jpg'),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: const Icon(
                          Icons.add,
                          color: backgroundColor,
                          size: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Tap to add status update"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: backgroundColor,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
                      ),
                    ),
                    title: Text(
                      "Areeb Ahmad",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 20:16 PM"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
