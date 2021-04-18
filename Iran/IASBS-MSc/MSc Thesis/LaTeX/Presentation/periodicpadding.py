class PeriodicPadding2D(layers.Layer):
  ...
  def wrap_pad(self, input, size):
    M1 = tf.concat([
           input[:,:, -size:], 
           input, input[:,:, 0:size]
           ], 2)
    M1 = tf.concat([
           M1[:,-size:, :], 
           M1,
           M1[:,0:size, :]
           ], 1)
    return M1   
  ...
