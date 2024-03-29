The geoelectric model and the corresponding forward modeling response data require a simple format conversion.

Python code:
```python
mtdata = np.load('')                           # Read geoelectric model data 
forwarddata = np.load('')                      # Read forward modeling data 
'''
forwarddata = forwarddata[:, :, :, 0]          # If want to get the apparent resistivity
forwarddata = forwarddata[:, :, :, 1]          # If want to get the impedance phases
'''
mtdata = mtdata.transpose((1, 2, 0))
forwarddata = forwarddata.transpose((1, 0, 2))
forwarddata = forwarddata[:, ::-1, ::-1]
# The above operation will make mtdata correspond to forwarddata
```
The geoelectric model visualisation method is shown in the Matlab code: Visualisation.m
