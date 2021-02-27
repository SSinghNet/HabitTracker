import "package:flutter/material.dart";
import "package:percent_indicator/percent_indicator.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .4,
              child: Column(
                children: [
                  Text(
                    "Tuesday, January 5th",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Spacer(),
                  CircularPercentIndicator(
                    radius: 100,
                    percent: 5 / 12,
                    header: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Today's Progress",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    center: Text(
                      "5/12",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    footer: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        ((5 / 12) * 100).round().toString() + "% Done!",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(25),
            ),
          ],
        ),
        Column(
          children: [
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2030),
              onDateChanged: (DateTime dt) {},
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("To-Do", style: Theme.of(context).textTheme.bodyText1),
                    CheckboxListTile(
                      value: false,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text("Completed",
                        style: Theme.of(context).textTheme.bodyText1),
                    CheckboxListTile(
                      value: true,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: true,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: true,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                    CheckboxListTile(
                      value: true,
                      title: Text(
                        "Task 1",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      onChanged: (bool b) {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
