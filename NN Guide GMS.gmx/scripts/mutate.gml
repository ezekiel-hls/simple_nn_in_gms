///mutate(x, rate)

//Init
    var _val = argument0;
    var _rate = argument1;
    var _chance = irandom(100);
    
//Randomize    
    if(_chance < 10*_rate){              //Flip sign
        _val *= -1;
    } else if(_chance < 20*_rate){       //Reroll
        _val = random_range(-1, 1); 
    } else if(_chance < 45*_rate){      //Increase(0% to 100%)
        _val = random_range(_val, _val*2); 
    } else if(_chance < 70*_rate){      //Decrease(0% to 100%)
        _val = random_range(0, _val); 
    }
    
//Return Val    
    return(_val);
