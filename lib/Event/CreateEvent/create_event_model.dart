import 'package:flutter/material.dart';

class CreateEventModel extends ChangeNotifier {
  TextEditingController createEventDescriptionController =
      TextEditingController();

  var selectEventDate = DateTime.now();
  var currDt = DateTime.now();

  Future pickEventDate(context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: new DateTime(1900),
      lastDate: DateTime(currDt.year + 1),
    );
    selectEventDate = picked!;
    notifyListeners();
  }

  attachFile() async {
    //   print('file accjcj');
    //   FilePickerResult result = await FilePicker.platform.pickFiles();
    //
    //   if (result != null) {
    //     File file = File(result.files.single.path);
    //   } else {
    //     // User canceled the picker
    //   }
    // }
  }
}
