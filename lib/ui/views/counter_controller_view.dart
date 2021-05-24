part of 'views.dart';

class CounterControllerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetX<CounterController>(
      init: CounterController(),
      builder: (state) => Container(
        width: double.infinity,
        height: (context.height - kToolbarHeight) * 1 / 3,
        padding: EdgeInsets.all(16),
        color: white,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                state.firstNumber,
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
                Text(state.mark, style: blackFont18),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    state.mark == '' ? '' : state.secondNumber,
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
                    state.result.toString(),
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
