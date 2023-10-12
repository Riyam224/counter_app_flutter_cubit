import 'dart:io';

import 'package:basket_app_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointerCounter());
}

class PointerCounter extends StatelessWidget {
  const PointerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'points counter',
          ),
          backgroundColor: Color(0xff6F61C0),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'player 1',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                      style: TextStyle(fontSize: 120),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'A', btnNumber: 1);
                      },
                      child: Text('add 1 point'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'A', btnNumber: 2);
                      },
                      child: Text('add 2 points'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'A', btnNumber: 3);
                      },
                      child: Text('add 3 points'),
                    ),

                    //  todo first column
                  ],
                ),
                // todo divider

                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                // todo second column

                Column(
                  children: [
                    Text(
                      'player 2',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                      style: TextStyle(fontSize: 120),
                    ),

                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'B', btnNumber: 1);
                      },
                      child: Text('add 1 point'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'B', btnNumber: 2);
                      },
                      child: Text('add 2 points'),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6F61C0),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .teamIncrement(team: 'B', btnNumber: 3);
                      },
                      child: Text('add 3 points'),
                    ),

                    //  todo first column
                  ],
                ),
              ],
            ),
            // todo
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6F61C0),
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                // BlocProvider.of<CounterCubit>(context).teamAPoints;
                // BlocProvider.of<CounterCubit>(context).teamBPoints;
                // BlocProvider.of<CounterCubit>(context)
                //     .teamIncrement(team: 'A', btnNumber: 0);
                // BlocProvider.of<CounterCubit>(context)
                //     .teamIncrement(team: 'B', btnNumber: 0);
              },
              child: Text('reset'),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      );
    }, listener: (context, state) {
      // if (state is CounterAIncrement) {
      // } else {}
    });
  }
}
