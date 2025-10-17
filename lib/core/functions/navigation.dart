import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

void customNavigate(BuildContext context, String path) {
  GoRouter.of(context).push(path);
}

void customReplacementNavigate(BuildContext context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
