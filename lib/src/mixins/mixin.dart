import 'dart:async';

class MixinLoginScreen {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains("@gmail.com")) {
        sink.add(email);
      } else {
        sink.addError("Enter a valid email");
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {},
  );
}
