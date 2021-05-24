part of 'views.dart';

class CounterCubitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) => Container(
        width: double.infinity,
        height: (context.height - kToolbarHeight) * 1 / 3,
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
}
