import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'app/delivery_app.dart';

void main() {
  runZonedGuarded(() async {
    runApp(DeliveryApp());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack, name: 'main.dart');
    throw error;
  });
}
