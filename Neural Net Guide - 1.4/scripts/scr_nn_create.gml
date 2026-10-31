///scr_nn_create()

il = 1; //How many input nodes
hl = 3; //How many hidden layer neuron
ol = 1; //How many output layer neuron
    
//Input Layer
    for(var i=0; i<il; i++){
        inputs[i] = 0;
    }
    
//Hidden Layer    
    for(var i=0; i<hl; i++){    
        neurons[i] = 0;
        bias[i] = 0;
        for(var j=0; j<il; j++){
            weights[i, j] = 0;
        }
    }
    
//Output Layer    
    for(var i=0; i<ol; i++){
        outputs[i] = 0;
        output_bias[i] = 0;
        for(var j=0; j<hl; j++){
            output_weights[i, j] = 0;
        }
    }
