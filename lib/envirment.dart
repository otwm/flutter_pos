class Environment {
  static const String env = String.fromEnvironment('env', defaultValue: 'dev');
  static const String apiDomain = String.fromEnvironment('api',
      defaultValue: 'https://api-server-bay-five.vercel.app');
}
