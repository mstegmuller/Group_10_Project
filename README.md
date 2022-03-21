# Group_10_Project

## Deliverable 1

### Topic
Housing Market in New York City

### Reason for Topic Selection
The housing market is hot in New York City. We are interested in exploring and potentially predicting how housing prices will increase over time. Since, New York City is a diverse city made up of very different neighborhoods (Brooklyn, the Bronx, Manhattan, Queens, and Staten Island), we are going to break down and compare them.

### Questions to be Explored
What does the housing market look like in New York City as a whole?
What does the housing market look like in each of the 5 neighborhoods: Brooklyn, the Bronx, Manhattan, Queens, and Staten Island?
How do they compare to each other?
Can we predict how housing prices will change over time?

### Roles
- Square: Mike
- Triangle: Rena
- Circle: Daniel
- X: Emery


## Deliverable 2 (**Square role**)


For the second deliverable I had to use machine learning to create linear regression models based on the average sale price and the gross square footage.  In the 5 borough’s linear regression models the goal was to use the square footage to predict the sales price and how it compares in each borough.  I had to clean the csv data sets and remove and NaN values and remove any incomplete or “0” values.     

The model works by removing the square footage from the original csv to create new data frames with the information I need.  The using the new data frame I was able to create the linear regression models.  You can compare the sales prices in each borough as well as the square footage of the sold properties.  I can conclude that the sales prices of Manhattan properties are higher and have less square footage per property than the rest of the boroughs.  There is also significantly less property available which plays a factor into the sales price.  

This linear regression model was chosen because the target was to predict the sales price based on the square footage of a property.  If I had more time, I would compare the housing prices from the past 20 years to get a better understand of the price change.  I would also see if the properties that were bought at a lower price were resold at a higher price and what the demographics of the sales were.  I would like to see if gentrification played a role in the sale.    

## Deliverable 3 (**Square role**)

For the third segment I had to check the code, merge branches, and add the gitgnore file and requirements.txt files.  I also made more linear regression models to remove any outlier property sales.  For example, if there was a sale with a large amount of square feet but a small sale price I made a new data frame to take that information out since it would not represent what we are actually looking for since it skews the data.  This made the linear regression predictions much more accurate.    
![Bronx Before](https://user-images.githubusercontent.com/92127589/159193715-7e925025-6b12-4c40-8536-527fdad3863c.PNG)

![Bronx After](https://user-images.githubusercontent.com/92127589/159193720-fe7840b1-1a97-4bde-aad0-f458fec527d3.PNG)
