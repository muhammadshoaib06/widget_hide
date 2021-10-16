import 'package:flutter/material.dart';

import 'constants.dart';

class OpacityTab extends StatefulWidget {
  const OpacityTab({Key? key}) : super(key: key);

  @override
  _OpacityTabState createState() => _OpacityTabState();
}

class _OpacityTabState extends State<OpacityTab> {
  double? _opacity = 0.5;

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
            'Opacity Widget:',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          )),
          Expanded(
              flex: 2,
              child: Opacity(
                opacity: _opacity!,
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
                      opacityText!,
                      style: const TextStyle(fontSize: 18.0),
                    )),
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Move the slider to chang the opacity of widget.\nOpacity value: ${_opacity!.toStringAsFixed(1)}',
                  style: const TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.w400),
                ),
              )),
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.center,
                  child: Slider(
                    min: 0.0,
                    max: 1.0,
                    value: _opacity!,
                    label: 'Opacity of Widget!',
                    onChanged: (double newOpacityValue) {
                      setState(() {
                        _opacity = newOpacityValue;
                      });
                    },
                  )))
        ],
      ),
    );
  }
}
