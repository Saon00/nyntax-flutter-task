## NynTax Car Rental Task Flutter

<b>Introduction</b>
<p>This is a Car Rental Service Application. Users can choose their car
for rent according to their own interest. And they have to pay for their chosen car and timeline.</p>

## Necessary Installation

```
http: ^1.2.1
intl: ^0.19.0
provider: ^6.1.2
```

```
sdk: '>=3.3.2 <4.0.0'
```


Sample of the application:
<p float="left">
<img src=".\assets\extra\pic1.png" width="360" height="700"/>
<img src=".\assets\extra\pic2.png" width="360" height="700"/>
<img src=".\assets\extra\pic3.png" width="360" height="700"/>
<img src=".\assets\extra\pic4.png" width="360" height="700"/>
<img src=".\assets\extra\pic5.png" width="360" height="700"/>
</p>

## Bonus Question

<b>Problem Statement</b>

This car rental system charges customers at different rates depending on the duration of the rental. The rates are as follows:

Hourly: $10 per hour<br>
Daily: $50 per day<br>
A problem arises when a customer rents a car for a period that could be billed at either rate. For example, if a customer rents a car for six hours, they would be charged $60 at the hourly rate, which is more than the daily rate of $50.

<b>Solution</b>

There we can add two different ideas: Calculate the bill according to the Hourly Rate and Daily Rate. We can build a sytem which will count the both scenario. Then in which solution provides the more advantages for the client we can count that amount.