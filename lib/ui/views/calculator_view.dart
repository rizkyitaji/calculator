part of 'views.dart';

class CalculatorView extends StatefulWidget {
  final String view;

  CalculatorView(this.view);

  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'), backgroundColor: blue),
      body: SafeArea(
        child: Column(
          children: [
            widget.view == 'Cubit'
                ? CounterCubitView()
                : CounterControllerView(),
            CalculatorButtons(),
          ],
        ),
      ),
    );
  }
}
