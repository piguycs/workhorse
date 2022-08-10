class Time {
  int seconds, minutes, hours;
  Time(this.seconds, this.minutes, this.hours) {
    seconds = (minutes * 60) + (hours * 3600) + seconds;
  }

  List<int> getTime() {
    int secondsRemaining = seconds;

    int totalHours = secondsRemaining ~/ 3600;
    secondsRemaining = secondsRemaining % 3600;

    int totalMinutes = secondsRemaining ~/ 60;
    secondsRemaining = secondsRemaining % 60;

    return [secondsRemaining, totalMinutes, totalHours];
  }
}
