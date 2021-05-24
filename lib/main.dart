import 'package:calculator/package.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: MainView(),
      ),
    );
  }
}
