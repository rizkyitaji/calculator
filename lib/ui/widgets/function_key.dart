part of 'widgets.dart';

class FunctionKey extends StatelessWidget {
  final int flex;
  final Color color;
  final IconData icon;
  final String text;
  final Function onTap;

  FunctionKey({
    this.flex,
    this.color,
    this.icon,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        height: (((context.height - kToolbarHeight) * 2 / 3) - 145) / 5,
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
