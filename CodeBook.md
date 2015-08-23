# Code Book for the tidy dataset

The tidy dataset (tidy_data.txt) - which will be created in *your_working_dir/tidyData/* after running the run_analysis.R - will be created in the standard space separated format by using the write.table function, and can be read back in to R using the following code:

    tidyData <- read.table("tidy_data.txt")

## Variable Names
The variables included in the tidy dataset are only a subset of the variables of the original data. Please refer the features_info.txt file included with the original dataset for an overview of each variable and how they are collected and calculated.

The list below describes the variables included in the tidy dataset:

1. **Subject** - [factor] - The ID of the test subject who performed the activities
2. **Activity** - [factor] - The activity which was measured 
3. **Body-Acceleration-Average-X-Axis** - [numeric] - The average of the acceleration of the Body over the X axis
4. **Body-Acceleration-Average-Y-Axis** - [numeric] - The average of the acceleration of the Body over the Y axis
5. **Body-Acceleration-Average-Z-Axis** - [numeric] - The average of the acceleration of the Body over the Z axis
6. **Gravity-Acceleration-Average-X-Axis** - [numeric] - The average of the acceleration of the Gravity Acceleration over the X axis
7. **Gravity-Acceleration-Average-Y-Axis** - [numeric] - The average of the acceleration of the Gravity Acceleration over the Y axis
8. **Gravity-Acceleration-Average-Z-Axis** - [numeric] - The average of the acceleration of the Gravity Acceleration over the Z axis
9. **Body-Acceleration-Jerk-Average-X-Axis** - [numeric] - The average of the linear acceleration of the Body derived in time to obtain Jerk signals over the X axis
10. **Body-Acceleration-Jerk-Average-Y-Axis** - [numeric] - The average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Y axis
11. **Body-Acceleration-Jerk-Average-Z-Axis** - [numeric] - The average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Z axis
12. **Body-Gyro-Average-X-Axis** - [numeric] - The average of the gyroscopic value of the Body over the X axis
13. **Body-Gyro-Average-Y-Axis** - [numeric] - The average of the gyroscopic value of the Body over the Y axis
14. **Body-Gyro-Average-Z-Axis** - [numeric] - The average of the gyroscopic value of the Body over the Z axis
15. **Body-Gyro-Jerk-Average-X-Axis** - [numeric] - The average of the gyroscopic value of the Body derived in time to obtain Jerk signals over the X axis
16. **Body-Gyro-Jerk-Average-Y-Axis** - [numeric] - The average of the gyroscopic value of the Body derived in time to obtain Jerk signals over the Y axis
17. **Body-Gyro-Jerk-Average-Z-Axis** - [numeric] - The average of the gyroscopic value of the Body derived in time to obtain Jerk signals over the Z axis
18. **Body-AccelerationMagnitude-Average** - [numeric] - The average of the magnitude of the acceleration of the Body
19. **Gravity-AccelerationMagnitude-Average** - [numeric] - The average of the magnitude of the Gravity acceleration
20. **Body-Acceleration-JerkMagnitude-Average** - [numeric] - The average of the magnitude of the acceleration of the Body Jerk signals
21. **Body-GyroMagnitude-Average** - [numeric] - The average of the magnitude of the gyroscopic value of the Body
22. **Body-Gyro-JerkMagnitude-Average** - [numeric] - The average of the magnitude of the gyroscopic value of the Body Jerk signals
23. **FFT-Body-Acceleration-Average-X-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the acceleration of the Body over the X axis
24. **FFT-Body-Acceleration-Average-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the acceleration of the Body over the Y axis
25. **FFT-Body-Acceleration-Average-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the acceleration of the Body over the Z axis
26. **FFT-Body-Acceleration-Jerk-Average-X-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the X axis
27. **FFT-Body-Acceleration-Jerk-Average-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Y axis
28. **FFT-Body-Acceleration-Jerk-Average-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Z axis
29. **FFT-Body-Gyro-Average-X-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the gyroscopic value of the Body over the X axis
30. **FFT-Body-Gyro-Average-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the gyroscopic value of the Body over the Y axis
31. **FFT-Body-Gyro-Average-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the average of the gyroscopic value of the Body over the Z axis
32. **FFT-Body-AccelerationMagnitude-Average** - [numeric] - Fast Fourier Transformation applied to the average of the magnitude of the acceleration of the Body
33. **FFT-Body-Acceleration-JerkMagnitude-Average** - [numeric] - Fast Fourier Transformation applied to the average of the magnitude of the acceleration of the Body Jerk signals
34. **FFT-Body-GyroMagnitude-Average** - [numeric] - Fast Fourier Transformation applied to the average of the magnitude of the gyroscopic value of the Body
35. **FFT-Body-Gyro-JerkMagnitude-Average** - [numeric] - Fast Fourier Transformation applied to the average of the magnitude of the acceleration of the Body Jerk signals
36. **Body-Acceleration-StandardDeviation-X-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Body over the X axis
37. **Body-Acceleration-StandardDeviation-Y-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Body over the Y axis
38. **Body-Acceleration-StandardDeviation-Z-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Body over the Z axis
39. **Gravity-Acceleration-StandardDeviation-X-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Gravity Acceleration over the X axis
40. **Gravity-Acceleration-StandardDeviation-Y-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Gravity Acceleration over the Y axis
41. **Gravity-Acceleration-StandardDeviation-Z-Axis** - [numeric] - Standard Deviation of the average of the acceleration of the Gravity Acceleration over the Z axis
42. **Body-Acceleration-Jerk-StandardDeviation-X-Axis** - [numeric] - Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the X axis
43. **Body-Acceleration-Jerk-StandardDeviation-Y-Axis** - [numeric] - Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Y axis
44. **Body-Acceleration-Jerk-StandardDeviation-Z-Axis** - [numeric] - Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Z axis
45. **Body-Gyro-StandardDeviation-X-Axis** - [numeric] - Standard Deviation of the average of the gyroscopic value of the Body over the X axis
46. **Body-Gyro-StandardDeviation-Y-Axis** - [numeric] - Standard Deviation of the average of the gyroscopic value of the Body over the Y axis
47. **Body-Gyro-StandardDeviation-Z-Axis** - [numeric] - Standard Deviation of the average of the gyroscopic value of the Body over the Z axis
48. **Body-Gyro-Jerk-StandardDeviation-X-Axis** - [numeric] - Standard Deviation of the gyroscopic value of the Body derived in time to obtain Jerk signals over the X axis
49. **Body-Gyro-Jerk-StandardDeviation-Y-Axis** - [numeric] - Standard Deviation of the gyroscopic value of the Body derived in time to obtain Jerk signals over the Y axis
50. **Body-Gyro-Jerk-StandardDeviation-Z-Axis** - [numeric] - Standard Deviation of the gyroscopic value of the Body derived in time to obtain Jerk signals over the Z axis
51. **Body-AccelerationMagnitude-StandardDeviation** - [numeric] - Standard Deviation of the average of the magnitude of the acceleration of the Body
52. **Gravity-AccelerationMagnitude-StandardDeviation** - [numeric] - Standard Deviation of the average of the magnitude of the Gravity acceleration
53. **Body-Acceleration-JerkMagnitude-StandardDeviation** - [numeric] - Standard Deviation of the average of the magnitude of the acceleration of the Body Jerk signals
54. **Body-GyroMagnitude-StandardDeviation** - [numeric] - Standard Deviation of the average of the magnitude of the gyroscopic value of the Body
55. **Body-Gyro-JerkMagnitude-StandardDeviation** - [numeric] - Standard Deviation of the average of the magnitude of the gyroscopic value of the Body Jerk signals
56. **FFT-Body-Acceleration-StandardDeviation-X-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the acceleration of the Body over the X axis
57. **FFT-Body-Acceleration-StandardDeviation-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the acceleration of the Body over the Y axis
58. **FFT-Body-Acceleration-StandardDeviation-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the acceleration of the Body over the Z axis
59. **FFT-Body-Acceleration-Jerk-StandardDeviation-X-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the X axis
60. **FFT-Body-Acceleration-Jerk-StandardDeviation-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Y axis
61. **FFT-Body-Acceleration-Jerk-StandardDeviation-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the linear acceleration of the Body derived in time to obtain Jerk signals over the Z axis
62. **FFT-Body-Gyro-StandardDeviation-X-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the gyroscopic value of the Body over the X axis
63. **FFT-Body-Gyro-StandardDeviation-Y-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the gyroscopic value of the Body over the Y axis
64. **FFT-Body-Gyro-StandardDeviation-Z-Axis** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the gyroscopic value of the Body over the Z axis
65. **FFT-Body-AccelerationMagnitude-StandardDeviation** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the magnitude of the acceleration of the Body
66. **FFT-Body-Acceleration-JerkMagnitude-StandardDeviation** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the magnitude of the acceleration of the Body Jerk signals
67. **FFT-Body-GyroMagnitude-StandardDeviation** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the magnitude of the gyroscopic value of the Body
68. **FFT-Body-Gyro-JerkMagnitude-StandardDeviation** - [numeric] - Fast Fourier Transformation applied to the Standard Deviation of the average of the magnitude of the gyroscopic value of the Body Jerk signals


