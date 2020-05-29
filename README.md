# ETL_project

For this project, we decided to look at movie data sets we found on kaggle to explore relationships between the actors in the film, the genre, and the average rating the film recieved.  We were curious to see if there was any correlation between the genre of the film and the rating it recieved, or the actors in the film and the rating it recieved.  Our process is outlined below.

*EXTRACT:
- We extracted 3 csv files from kaggle and read them in as pandas dataframes
	~ Rating: held the rating of the film (rating_df)
	~ Credits: held the actors in the film (actors_df)
	~ Movie_metedata: held the genre and the title of the films (genres_df & title_df)
- actors_df and genres_df had to be looped through to pull out our desired information since the csv had columns that were dictionaries


*TRANSFORM:
- Only kept certain columns for each data frame
- Dropped rows that either had missing or diplicate values
- Renamed columns
- For genres_df:
	~ located two entries where the movie_id was wrong and drop those
	~ only kept rows where the ids from the title_df and genres_df matched

*LOAD:
- Created tables in pgAdmin for that would be populated by each dataframe
- title_df had the primary key for our movie IDs that mapped to every other table


*CHALLENGES:
- All files were very large, especially the ratings csv, making it hard to execute cells in jupyter notebook, inspect and clean data in jupyter notebook, load tables to pgAdmin, run queries in pgAdmin, or push to github
- Our averages columns in pgAdmin weren't calculating correctly due to the size of the tables and memory errors
- Since averages columns weren't calculating correctly, we did not answer our original question we had set out to answer although we learned a lot along the way!

*NEXT STEPS:
- Fix the average columns so they show the correct value
- Add another table with budget to investigate correlations between budget and film rating
- Investigate groups of actors that typically work on movies together and their average rankings to find a trend
