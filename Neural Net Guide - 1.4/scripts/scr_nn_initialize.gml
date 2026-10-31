///scr_nn_initialize()

//Weights for hidden layer
    for(var i=0; i<hl; i++){    
        bias[i] = random_range(-1.0, 1.0);
        for(var j=0; j<il; j++){
            weights[i, j] += random_range(-1.0, 1.0);
        }
    }
    
//Weights for output
    for(var i=0; i<ol; i++){      
        output_bias[i] = random_range(-1.0, 1.0);
        for(var j=0; j<hl; j++){
            output_weights[i, j] += random_range(-1.0, 1.0);
        }
    }  
