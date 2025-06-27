class Bear{
  int numberOfFish;
  int hoursOfSleep;
  int weightGain;

  Bear(this.numberOfFish, this.hoursOfSleep) : weightGain = 0;
  int eatFish(int numberOfFish) => numberOfFish;
  int sleepAfterEating(int hoursOfSleep) => hoursOfSleep;
  int weightGaining(int weightGain) => weightGain = numberOfFish * hoursOfSleep;
  

}

