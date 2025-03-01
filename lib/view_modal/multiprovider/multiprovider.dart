import 'package:provider/provider.dart';

import '../generalProvider/generalController.dart';

final MultiProviders = [
  ChangeNotifierProvider(create: (_) => GeneralProvider()),
];
