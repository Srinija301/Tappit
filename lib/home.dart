import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'button.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final now = DateTime.now();
  List<String> locations = ['10', '20', '30'];
  String selectedLocation;
  String title = '>';
  DateTime pickedDate;
  int price = 531;

  int number = 5;

  void decrement() {
    setState(() {
      if (number != 0) number--;
    });
  }

  void increment() {
    setState(() {
      if (number != 0) number++;
    });
  }

  String quantity() {
    if (selectedLocation == null) {
      return '30 Deliveries';
    } else {
      return '$selectedLocation Deliveries';
    }
  }

  int calculateTotal() {
    return (price * int.parse(selectedLocation) * number);
  }

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey[400]))),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                      ),
                      Text('Create Description',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                  ),
                  height: 120,
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/tata.jpg'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Tata Tea Gold (1 kg)',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: RichText(
                              text: new TextSpan(
                                text: 'Rs.$price',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: 'Rs.625',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  new TextSpan(
                                    text: '. 1Pkt ',
                                    style: new TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey[400]))),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.event_note,
                        size: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(' Quantity ',
                                style: TextStyle(color: Colors.grey[600])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text('per Day',
                                style: TextStyle(color: Colors.grey[600])),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 125.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: const Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.teal,
                                ),
                                onPressed: decrement,
                              ),
                              Text('$number'),
                              IconButton(
                                padding: EdgeInsets.all(0),
                                icon: const Icon(Icons.add,
                                    size: 15, color: Colors.teal),
                                onPressed: increment,
                              ),
                            ],
                          ),
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50.0),
                                right: Radius.circular(50.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey[400]))),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.sync_outlined,
                        size: 25,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 30, bottom: 0),
                                child: RichText(
                                  text: new TextSpan(
                                    text: 'Repeat ',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                    children: <TextSpan>[
                                      new TextSpan(
                                        text: 'DAILY',
                                        style: new TextStyle(
                                          color: Colors.teal[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Button(
                                        text: Text('M',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('T',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('W',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('T',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('F',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('S',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                    Button(
                                        text: Text('S',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          setState(() {});
                                        }),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey[400]))),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.restore,
                        size: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Recharge / TopUp',
                                style: TextStyle(color: Colors.grey[600])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.1),
                            child: Text(
                              quantity(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 102.0, top: 25),
                            child: DropdownButton(
                              icon: Icon(Icons.arrow_right),
                              value: selectedLocation,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedLocation = newValue;
                                });
                              },
                              items: locations.map((location) {
                                return DropdownMenuItem(
                                  child: new Text(location),
                                  value: location,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.grey[400]))),
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Start Date',
                                style: TextStyle(color: Colors.grey[600])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Tomorrow",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 155.0, top: 25),
                            child: IconButton(
                              icon: Icon(Icons.arrow_right),
                              onPressed: _pickDate,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.teal)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Deliver Once"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.teal,
                              )),
                          child: ElevatedButton(
                            onPressed: () {
                              int orderValue = calculateTotal();
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Cart Total'),
                                  content: Text(orderValue.toString()),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Ok'),
                                      child: const Text(''),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text("Subscribe"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (date != null)
      setState(() {
        pickedDate = date;
      });
  }
}
