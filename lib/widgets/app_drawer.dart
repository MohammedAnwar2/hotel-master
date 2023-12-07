import 'package:flutter/material.dart';
import 'package:untitled2/screens/evaluation.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  Widget buildListTile(
      String title, IconData icon, void Function()? onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.purple,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).hintColor,
            child: Text(
              'دليلك لتأجير البيوت',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'البيوت',
            Icons.home,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'تقييم',
            Icons.event_available_outlined,
            () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => EvaluationScreen()));
              //EvaluationScreen()
            },
          ),
        ],
      ),
    );
  }
}
