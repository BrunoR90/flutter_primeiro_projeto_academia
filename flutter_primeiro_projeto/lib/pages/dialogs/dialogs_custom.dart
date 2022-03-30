import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context)
  : super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
    // ignore: sized_box_for_whitespace
    child: Container(
      width: 300,
      height: 300,
      child: Column(children: [ const
        Padding(
          padding: EdgeInsets.all(10.0
          ),
          child: Text('Título X'
          ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Fechar Dialog'
          ),
          ),
      ],
      ),
    ),
  );
}