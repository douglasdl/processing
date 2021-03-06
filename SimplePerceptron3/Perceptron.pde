// The Activation Function
int sign(float n) {
  if(n >= 0) {
    return 1;
  } else {
    return -1;
  }
}

class Perceptron {
  float[] weights;
  float learning_rate = 0.1;
  
  // Constructor
  Perceptron(int n) {
    weights = new float[n];
    // Initialize the weights randomly
    for(int i = 0; i < weights.length; i++) {
      weights[i] = random(-1, 1);  
    }
  }
  
  int guess(float[] inputs) {
    float sum = 0;
    for(int i = 0; i < weights.length; i++) {
      sum += inputs[i] * weights[i];
    }
    int output = sign(sum);
    return output;
  }
  
  void train(float[] inputs, int target) {
    int guess = guess(inputs);
    int error = target - guess;
    
    // Tune all the weights
    for(int i = 0; i < weights.length; i++) {
      weights[i] += error * inputs[i] * learning_rate; 
    } 
  }
  
  float guessY(float x) {
    float w0 = weights[0];
    float w1 = weights[1];
    float w2 = weights[2];
    
    float m = w1 / w0;
    float b = w2;
    return -(w2/w1) - (w0/w1) * x;
  }
}
