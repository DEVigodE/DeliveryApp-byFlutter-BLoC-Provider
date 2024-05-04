class Env {
  static Env? _instance;
  // Avoid self instance
  Env._();
  static Env get instance => _instance ??= Env._();

  String get devBaseUrl => 'http://192.168.31.190:8080';
  String get prdBaseUrl => 'http://192.168.31.190:8080';
}
