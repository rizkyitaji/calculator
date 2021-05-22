part of 'views.dart';

class CalculatorView extends StatefulWidget {
  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  double height() {
    return MediaQuery.of(context).size.height - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'), backgroundColor: blue),
      body: SafeArea(
        child: Column(
          children: [
            calculatorState(),
            calculatorButtons(),
          ],
        ),
      ),
    );
  }

  Widget calculatorState() {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) => Container(
        width: double.infinity,
        height: height() * 1 / 3,
        padding: EdgeInsets.all(16),
        color: white,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                '',
                maxLines: 1,
                style: blackFont18,
                textAlign: TextAlign.end,
                overflow: TextOverflow.clip,
                textDirection: TextDirection.ltr,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text('+', style: blackFont18),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '0',
                    maxLines: 1,
                    style: blackFont18,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.clip,
                    textDirection: TextDirection.ltr,
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text('=', style: blackFont18),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '0',
                    maxLines: 1,
                    style: blackFont18,
                    textAlign: TextAlign.end,
                    overflow: TextOverflow.clip,
                    textDirection: TextDirection.ltr,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget calculatorButtons() {
    return BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
      return Container(
        width: double.infinity,
        height: height() * 2 / 3,
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
                  onTap: () {},
                  text: 'C',
                ),
                FunctionKey(
                  onTap: () {},
                  text: '%',
                ),
                FunctionKey(
                  onTap: () {},
                  text: '/',
                ),
                FunctionKey(
                  onTap: () {},
                  icon: Icons.backspace,
                ),
              ],
            ),
            Row(
              children: [
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '7',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '8',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '9',
                ),
                FunctionKey(
                  onTap: () {},
                  text: 'x',
                ),
              ],
            ),
            Row(
              children: [
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '4',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '5',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '6',
                ),
                FunctionKey(
                  onTap: () {},
                  text: '+',
                ),
              ],
            ),
            Row(
              children: [
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '1',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '2',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '3',
                ),
                FunctionKey(
                  onTap: () {},
                  text: '-',
                ),
              ],
            ),
            Row(
              children: [
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '.',
                ),
                FunctionKey(
                  onTap: () {},
                  color: white,
                  text: '0',
                ),
                FunctionKey(
                  onTap: () {},
                  text: '=',
                  flex: 2,
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
