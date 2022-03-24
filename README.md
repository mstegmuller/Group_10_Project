# Group_10_Project



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

Our group was composed of four team members, Mike Stegmuller, Rena Pinhas, Daniel Martin and Emery Varga. 
For this project, we first had to decide what data we wanted to use.  We decided to use data from csv’s directly from the US census.  Then we had to decide how to visualize and apply the information.     

Rena’s primary roles were to develop a mock-up of the machine learning models and to create the final database. For the mockup machine learning, she developed code for different machine learning models that could have potentially been applicable to our topic depending on how we wanted to approach answering our questions. She wrote code for a linear regression model, logistic regression model, and decision tree model. However, after further discussion with the team, only the linear regression model was pursued. Additionally, she wrote code for how we would connect to a PostgreSQL database, which was later tweaked once we finalized our files.

![Rene Pic 1](https://user-images.githubusercontent.com/92127589/159948624-4cbb1a91-12f2-406b-9f88-2d6c4d11c4ae.PNG)

For creating the final database that we would integrate into our final machine learning model, she created tables for the annual sales reports for each borough in 2020 and then imported data from the static csv files. The code for creating the Bronx annual sales report table is shown here. This was used to create tables for each of the other boroughs as well. Then, she created a table for the annual sales report data for all of the boroughs and then separately inserted the data from each of the borough tables into the larger table. Finally, the database was fed into the machine learning model.

![Rena Pic 2](https://user-images.githubusercontent.com/92127589/159948694-819c3420-80d5-4058-8d21-527ad78a5217.PNG)

Mike Stegmuller’s primary roles were to maintain the GitHub repository and machine learning.  Using machine learning Mike had to create linear regression models for each borough.  In order to do this first the csv’s had to be cleaned with all “NaN’s” and “0” values being removed.  Next the square footage and sale price were used create linear regression models for each borough.  Linear regression was chosen because the target was to predict the sales price based of the square footage of the property.  
![Linear regression pic  1](https://user-images.githubusercontent.com/92127589/159949771-8006e59f-ba62-45eb-965f-4ecaeba148a7.PNG)   ![Linear regression pic  2](https://user-images.githubusercontent.com/92127589/159949807-17e7f8d3-63c3-4164-9934-bef5003f673b.PNG)


What was interesting with the data was that there were some outliers in the data that skewed the linear regression prediction.  For example, if there was a sale with a large amount of square footage but a low sale price.  In order to make a more accurate model Mike made a new data frame to filter that information out since it would not represent what we are primarily looking for. This made the linear regression predictions much more accurate.   

![Remove outliers](https://user-images.githubusercontent.com/92127589/159949881-b4b9d31f-3b10-456d-b904-a64c1b6c48b2.PNG) 
![Bronx Before](https://user-images.githubusercontent.com/92127589/159949915-1ced231d-5e6d-4ca8-b63c-e85964c3d822.PNG)
![Bronx After](https://user-images.githubusercontent.com/92127589/159949935-3665249e-dfe7-44db-a984-7d3334f76413.PNG)

Daniel Martin oversaw the visualizations.  To create his visualizations, he used plotly and spent time learning seaborn.  It was his first time using seaborn.  He learned new and helpful visualization techniques that really made the figures stand out.   In order to make the information easier to read he used the df.loc method to number the boroughs which in turn was easier to illustrate on the various charts that were made.      

![Dan Pic](https://user-images.githubusercontent.com/92127589/159950003-4ce1bc36-6b76-4641-b872-ebd9a7076960.PNG)


Emery Varga was in charge of building the website.  She enjoyed the challenge of working with HTML while building the website.  She had to work with multiple HTML pages.  She created the website and properly integrated multiple HTML pages and graphs and charts.   After discussing with the team on which charts and graphs should be used, she utilized <li /> list to properly show the order of the charts the group wanted to use.    


![Emery Pic](https://user-images.githubusercontent.com/92127589/159950042-666dab08-8686-4c11-8e9d-7971c9e8e781.PNG)

Conclusion
Based upon the results of the analysis we can come up with a few conclusions.  The borough of Manhattan had the most expensive sale prices based on the square footage of a property, while the Bronx was the least expensive.  Residential properties in Manhattan were smaller and more expensive than any of the other boroughs. Manhattan also has significantly less available properties, which leads to an increase in demand with higher price tags for what is available.  Queens had the most properties for sale.  Queens also had a good mix of large rental properties and residential houses for sale.  Brooklyn similarly to queens has a good mix of large rental properties and residential houses.  Staten Island seems to have a smaller, one- or two-family properties as opposed to larger multi family properties.      

As far as predicting how the sales price will change over time, our models will give us a mostly accurate prediction.  It will not be perfect as things like inflation and other factors could change the market.  We could also use more of a sample size of information.  An example would be using sale data from the past 5 years.  If we had more time, that is something that we would like to look at more.    



This [presentation](https://docs.google.com/presentation/d/1SCNQw7wq-qost3Kfdspk1_hOonAOUSTt/edit?usp=sharing&ouid=109781864509714690763&rtpof=true&sd=true) helps to paint the picture of what the current New York City housing market looks like and what it may look like in the future.
