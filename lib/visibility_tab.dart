import 'package:flutter/material.dart';

import 'constants.dart';

class VisibilityTab extends StatefulWidget {
  const VisibilityTab({Key? key}) : super(key: key);

  @override
  _VisibilityTabState createState() => _VisibilityTabState();
}

class _VisibilityTabState extends State<VisibilityTab> {
  bool? _visible = true;

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
            'Visibility Widget:',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          )),
          Expanded(
              flex: 2,
              child: Visibility(
                visible: _visible!,
                child: Align(
                  alignment: Alignment.topCenter,
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
                      visibilityText!,
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
                      _visible = !_visible!;
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
