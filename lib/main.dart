import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      title: 'Choose Your Adventure Game',
      home: AdventureGame(),
    ));

class AdventureGame extends StatefulWidget {
  @override
  _AdventureGameState createState() => _AdventureGameState();
}

class _AdventureGameState extends State<AdventureGame> {
  int _currentStep = 1;
  bool key1 = false;
  bool key2 = false;
  bool key3 = false;
  bool key4 = false;

  void _selectOption(int option) {
    setState(() {
      _currentStep = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Choose Your Adventure Game'),
          actions: const <Widget>[
            IconButton(onPressed: SystemNavigator.pop, icon: Icon(Icons.close))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              _currentStep == 1
                  ? 'Entrance'
                  : _currentStep == 2
                  ? 'Foyer'
                  : _currentStep == 3
                  ? 'Storage'
                  : _currentStep == 4
                  ? 'Trap!'
                  : _currentStep == 5
                  ? 'Dining Room'
                  : _currentStep == 6
                  ? 'Hallway'
                  : _currentStep == 7
                  ? 'The Door'
                  : _currentStep == 8
                  ? 'Foyer'
                  : _currentStep == 9
                  ? 'Storage'
                  : _currentStep == 10
                  ? 'Dining Room'
                  : _currentStep == 11
                  ? 'Hallway'
                  : _currentStep == 12
                  ? 'The Door'
                  : _currentStep == 13
                  ? 'Victory!'
                  : 'The Void',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              _currentStep == 1
                  ? 'You are standing in front of the door to a large, lavish mansion. You have heard rumors that it is haunted, but surely those are not true... right? Head north to enter the mansion.'
                  : _currentStep == 2
                  ? 'You are standing in a large foyer. It is very overly decorated, but also a bit dusty. There are doors to your east and west, and stairs to your north. You can also go south back through the front door.'
                  : _currentStep == 3
                  ? 'You are standing in a storage room. All around you are shelves and trunks full of useless trash, and in front of you is a golden treasure chest! There is a room to your east.'
                  : _currentStep == 4
                  ? 'You enter a suspiciously empty room. Before you can react, the ceiling falls and crushes you! You are dead, and the game is over.'
                  : _currentStep == 5
                  ? 'You are standing in a dining room. The extremely large table is completely barren, save for a single covered platter. There are rooms to your south and east.'
                  : _currentStep == 6
                  ? 'You are standing in a hallway. Along the wall are paintings of people you do not know, and some vases sitting on small tables. There are rooms to your east, south, and west.'
                  : _currentStep == 7
                  ? 'You enter the room and see a large door with four keyholes in it. You briefly ponder how someone made a door like that, and why. You get the feeling whatever you came for must be behind it.'
                  : _currentStep == 8
                  ? 'You see a key sitting on the floor and pick it up. Why was it there?'
                  : _currentStep == 9
                  ? 'You open the chest and find a key inside! Huh, that seems backwards.'
                  : _currentStep == 10
                  ? 'You take the cover off the platter and find no food, but instead a key! Does whoever lives here eat keys? Probably not, actually.'
                  : _currentStep == 11
                  ? 'You look inside one of the vases and find a key. The paintings silently judge you for rifling through their things.'
                  : _currentStep == 12
                  ? 'The door is locked tight. You wonder if the Lockpicking Lawyer could help you out here, but you left your phone at home so you have no way to find out. Seems the only way through this door is to find all of its keys.'
                  : _currentStep == 13
                  ? 'You slot each key into the door and it opens! Walking through the large door, you feel a sense of pride and accomplishment. Unfortunately, the game ends here and you will never find out what was on the other side.'
                  : 'Oops! You seem to have fallen into the void somehow. Its endless space closes in on you as you realize you are trapped here forever.',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            _currentStep == 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            _selectOption(2);
                          },
                          child: Text('North'))
                    ],
                  )
                : _currentStep == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    _selectOption(5);
                                  },
                                  child: Text('North'),
                                ),
                              ],
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      _selectOption(3);
                                    },
                                    child: Text('West'),
                                  ),
                                  if (key1 == false)
                                    ElevatedButton(
                                      onPressed: () {
                                        key1 = true;
                                        _selectOption(8);
                                      },
                                      child: Text('Pick up Key'),
                                    )
                                  else
                                    SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      _selectOption(4);
                                    },
                                    child: Text('East'),
                                  ),
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      _selectOption(1);
                                    },
                                    child: Text('South'),
                                  )
                                ])
                          ])
                    : _currentStep == 3
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    _selectOption(2);
                                  },
                                  child: Text('East')),
                              if (key2 == false)
                                ElevatedButton(
                                  onPressed: () {
                                    key2 = true;
                                    _selectOption(9);
                                  },
                                  child: Text('Pick up Key'),
                                )
                            ],
                          )
//                        : _currentStep == 4
//                            ? SizedBox()
                        : _currentStep == 5
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        _selectOption(2);
                                      },
                                      child: Text('South')),
                                  ElevatedButton(
                                      onPressed: () {
                                        _selectOption(6);
                                      },
                                      child: Text('East')),
                                  if (key3 == false)
                                    ElevatedButton(
                                      onPressed: () {
                                        key3 = true;
                                        _selectOption(10);
                                      },
                                      child: Text('Pick up Key'),
                                    )
                                ],
                              )
                            : _currentStep == 6
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ElevatedButton(
                                          onPressed: () {
                                            _selectOption(5);
                                          },
                                          child: Text('West')),
                                      ElevatedButton(
                                          onPressed: () {
                                            _selectOption(4);
                                          },
                                          child: Text('South')),
                                      ElevatedButton(
                                          onPressed: () {
                                            _selectOption(7);
                                          },
                                          child: Text('East')),
                                      if (key4 == false)
                                        ElevatedButton(
                                          onPressed: () {
                                            key4 = true;
                                            _selectOption(11);
                                          },
                                          child: Text('Pick up Key'),
                                        )
                                    ],
                                  )
                                : _currentStep == 7
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                            ElevatedButton(
                                                onPressed: () {
                                                  _selectOption(6);
                                                },
                                                child: Text('West')),
                                            ElevatedButton(
                                                onPressed: () {
                                                  if (key1 == true &&
                                                      key2 == true &&
                                                      key3 == true &&
                                                      key4 == true) {
                                                    _selectOption(13);
                                                  } else {
                                                    _selectOption(12);
                                                  }
                                                },
                                                child: Text('Open Door'))
                                          ]
                                      )
                                    : _currentStep == 8
                                        ? Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: <Widget>[
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        _selectOption(5);
                                                      },
                                                      child: Text('North'),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          _selectOption(3);
                                                        },
                                                        child: Text('West'),
                                                      ),
                                                      SizedBox(height: 10),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          _selectOption(4);
                                                        },
                                                        child: Text('East'),
                                                      ),
                                                    ]
                                                ),
                                                Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          _selectOption(1);
                                                        },
                                                        child: Text('South'),
                                                      )
                                                    ]
                                                )
                                              ]
                                          )
                                        : _currentStep == 9
                                            ? Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        _selectOption(2);
                                                      },
                                                      child: Text('East'))
                                                ],
                                              )
                                            : _currentStep == 10
                                                ? Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            _selectOption(2);
                                                          },
                                                          child: Text('South')),
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            _selectOption(6);
                                                          },
                                                          child: Text('East'))
                                                    ],
                                                  )
                                                : _currentStep == 11
                                                    ? Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: <Widget>[
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                _selectOption(5);
                                                              },
                                                              child:
                                                                  Text('West')),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                _selectOption(4);
                                                              },
                                                              child: Text(
                                                                  'South')),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                _selectOption(7);
                                                              },
                                                              child:
                                                                  Text('East'))
                                                        ],
                                                      )
                                                    : _currentStep == 12
                                                        ? Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: <Widget>[
                                                                ElevatedButton(
                                                                    onPressed: () {
                                                                      _selectOption(6);
                                                                    },
                                                                    child: Text('West')),
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      if (key1 == true &&
                                                                          key2 == true &&
                                                                          key3 == true &&
                                                                          key4 == true) {
                                                                        _selectOption(13);
                                                                      } else {
                                                                        _selectOption(12);
                                                                      }
                                                                    },
                                                                    child: Text('Open Door'))
                                                              ]
                                                            )
                                                        : SizedBox(),
          ],
        ),
      ),
    );
  }
}
