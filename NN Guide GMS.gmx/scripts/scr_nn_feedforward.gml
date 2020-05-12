///scr_nn_feedforward()

//Hidden Layer
    for(var i=0; i<array_length_1d(neurons); i++){        
        neurons[i] = 0;
        for(var j=0; j<array_length_1d(inputs); j++){
            neurons[i] += inputs[j]*weights[i, j]+bias[i];
        }
        
        //Activation function
        neurons[i] = tanh(neurons[i]);
    }

//Output Node    
    for(var i=0; i<array_length_1d(outputs); i++){
        outputs[i] = 0;
        for(var j=0; j<array_length_1d(neurons); j++){
            outputs[i] += neurons[j]*output_weights[i, j]+output_bias[i];
        }
        
        //Activation function
        outputs[i] = tanh(outputs[i]);
    }
