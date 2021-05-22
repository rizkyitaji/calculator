part of 'views.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  double width() {
    return MediaQuery.of(context).size.width;
  }

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
    return Container(
      width: double.infinity,
      height: height() * 1 / 3,
      padding: EdgeInsets.all(16),
      color: white,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              '0',
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
    );
  }

  Widget calculatorButtons() {
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
              functionKey(
                onTap: () {},
                text: 'C',
              ),
              functionKey(
                onTap: () {},
                text: '%',
              ),
              functionKey(
                onTap: () {},
                text: '/',
              ),
              functionKey(
                onTap: () {},
                icon: Icons.backspace,
              ),
            ],
          ),
          Row(
            children: [
              functionKey(
                onTap: () {},
                color: white,
                text: '7',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '8',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '9',
              ),
              functionKey(
                onTap: () {},
                text: 'x',
              ),
            ],
          ),
          Row(
            children: [
              functionKey(
                onTap: () {},
                color: white,
                text: '4',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '5',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '6',
              ),
              functionKey(
                onTap: () {},
                text: '+',
              ),
            ],
          ),
          Row(
            children: [
              functionKey(
                onTap: () {},
                color: white,
                text: '1',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '2',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '3',
              ),
              functionKey(
                onTap: () {},
                text: '-',
              ),
            ],
          ),
          Row(
            children: [
              functionKey(
                onTap: () {},
                color: white,
                text: '.',
              ),
              functionKey(
                onTap: () {},
                color: white,
                text: '0',
              ),
              functionKey(
                onTap: () {},
                text: '=',
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget functionKey(
      {Function onTap, String text, IconData icon, Color color, int flex}) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        height: ((height() * 2 / 3) - 145) / 5,
        margin: EdgeInsets.all(12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color ?? lightBlue,
            onPrimary: blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
          ),
          child: icon == null
              ? Text(text, style: blackFont18)
              : Icon(icon, color: black),
          onPressed: onTap,
        ),
      ),
    );
  }
}
