import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier
{
  int TeamA = 0 ;
  int TeamB = 0 ;
  AddOnePointToTeamA ()
  {
    TeamA++;
    notifyListeners();
  }
  AddOnePointToTeamB ()
  {
    TeamB++;
    notifyListeners();
  }
  AddTwoPointsToTeamA ()
  {
    TeamA = TeamA + 2;
    notifyListeners();
  }
  AddTwoPointsToTeamB ()
  {
    TeamB = TeamB + 2;
    notifyListeners();
  }

  AddThreePointsToTeamA ()
  {
    TeamA = TeamA + 3;
    notifyListeners();
  }
  AddThreePointsToTeamB ()
  {
    TeamB = TeamB + 3;
    notifyListeners();
  }

  Reset()
  {
    TeamA = 0;
    TeamB = 0;
    notifyListeners();

  }

}