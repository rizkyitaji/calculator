part of 'widgets.dart';

class CalculatorButtons extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: (context.height - kToolbarHeight) * 2 / 3,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: white,
        border: Border(top: BorderSide(color: lightBlue)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              FunctionKey(
                onTap: () {
                  counterController.clear();
                },
                text: 'C',
              ),
              FunctionKey(
                onTap: () {
                  counterController.percent();
                },
                text: '%',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setMark('/');
                },
                text: '/',
              ),
              FunctionKey(
                onTap: () {
                  counterController.delete();
                },
                icon: Icons.backspace,
              ),
            ],
          ),
          Row(
            children: [
              FunctionKey(
                onTap: () {
                  counterController.setNumber(7);
                },
                color: white,
                text: '7',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(8);
                },
                color: white,
                text: '8',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(9);
                },
                color: white,
                text: '9',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setMark('x');
                },
                text: 'x',
              ),
            ],
          ),
          Row(
            children: [
              FunctionKey(
                onTap: () {
                  counterController.setNumber(4);
                },
                color: white,
                text: '4',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(5);
                },
                color: white,
                text: '5',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(6);
                },
                color: white,
                text: '6',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setMark('+');
                },
                text: '+',
              ),
            ],
          ),
          Row(
            children: [
              FunctionKey(
                onTap: () {
                  counterController.setNumber(1);
                },
                color: white,
                text: '1',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(2);
                },
                color: white,
                text: '2',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(3);
                },
                color: white,
                text: '3',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setMark('-');
                },
                text: '-',
              ),
            ],
          ),
          Row(
            children: [
              FunctionKey(
                onTap: () {
                  counterController.decimalSeparator();
                },
                color: white,
                text: ',',
              ),
              FunctionKey(
                onTap: () {
                  counterController.setNumber(0);
                },
                color: white,
                text: '0',
                flex: 2,
              ),
              FunctionKey(
                onTap: () {
                  counterController.getResult();
                },
                text: '=',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
