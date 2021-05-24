part of 'views.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            menu(context, Colors.amber, 'Bloc'),
            menu(context, blue, 'Cubit'),
            menu(context, Colors.red, 'GetX'),
          ],
        ),
      ),
    );
  }

  Widget menu(BuildContext context, Color color, String title) {
    return InkWell(
      onTap: () => Get.to(CalculatorView(title)),
      child: Container(
        width: double.infinity,
        height: (context.height - 120) / 3,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(title, style: blackFont18),
      ),
    );
  }
}
