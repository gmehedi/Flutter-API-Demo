import 'package:flutter/cupertino.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

dynamic showCustomSnackBar({required BuildContext context}) {
  final overlayState = Overlay.of(context);

  if (overlayState == null) {
    throw FlutterError(
      'No Overlay widget found in the widget tree. Ensure that you are calling this function in a context with an Overlay.',
    );
  }
  

  return showTopSnackBar(
    overlayState,
    const CustomSnackBar.error(
      message:
          "Something went wrong. Please check your Internet Connection and try again",
    ),
  );
}
