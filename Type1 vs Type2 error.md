# Type 1 vs Type 2 error
In statistical hypothesis testing, explain the difference between Type 1 and Type 2 error. You should be able to provide an example on the fly here.
<br>
<br>  



#### null hypothesis(h<sub>0</sub>)
The hypothesis that we want to varify during the research.
<br>

#### alternative hypothesis(h<sub>1</sub>)
The opposite of the null hypothesis.  
<br>

#### Type 1 error
Reject h<sub>0</sub> when h<sub>0</sub> is actually true.  
e.g h<sub>0</sub>: I don't have covid virus.  
    Test result shows that I have covid virus but I don't have covid virus in reality.  
<br>


#### Type 2 error
Accept h<sub>0</sub> when h<sub>0</sub> is actually false.  
e.g h<sub>0</sub>: I don't have covid virus.  
    Test result says that I don't have covid virus but I actually have.  
<br>

#### Type 1 vs Type 2 error  
| When null hypothesis is | **True**                                               | **False**                                             |
|-------------------------|--------------------------------------------------------|-------------------------------------------------------|
| **Rejected**            | **Type 1 error<br>False positive<br>(p = alpha)**      | _Correct decision<br>True positive<br>(p = 1 - beta)_ |
| **Not rejected**        | _Correct decision<br>True negative<br>(p = 1 - alpha)_ | **Type 2 error<br>False negative<br>(p = beta)**      |