import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'constants.dart';

class OffstageTab extends StatefulWidget {
  const OffstageTab({Key? key}) : super(key: key);

  @override
  _OffstageTabState createState() => _OffstageTabState();
}

class _OffstageTabState extends State<OffstageTab> {
  bool? _offstage = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              child: Text(
            'Offstage Widget:',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          )),
          Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: Offstage(
                  offstage: _offstage!,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(0, 3)),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Center(
                        child: Text(
                      offstageText!,
                      style: const TextStyle(fontSize: 18.0),
                    )),
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () => setState(() {
                      _offstage = !_offstage!;
                    }),
                    child: const Text(
                      'Click here!',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  )))
        ],
      ),
    );
  }
}
