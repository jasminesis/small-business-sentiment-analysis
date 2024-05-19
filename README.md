# small-business-sentiment-analysis

Data Driven Methods of Policy Evaluation group project

Our study oﬀers a unique perspective while contributing to the literature surrounding the impact of COVID-19 and the Stop AAPI Hate movement on Asian communities and restaurants, as it relates to restaurant review data. Reviews are a widely accessible and inﬂuential medium, and can shape subsequent interactions and opinions on a larger scale. Our results show that there was a notable impact of COVID-19 and Stop AAPI Hate on the overall sentiment and safety of Asians living in New York City. While initial analyses of average ratings and polarity suggested Asian restaurants did not experience negative impacts akin to Mexican or pizza establishments, a deeper analysis of polarity across 1 star and 5 star reviews uncovered a marked increase in negativity within both 1 star and 5 star reviews, particularly in comparison. Similarly, hate crime spiked sharply during the key months in our timeline. Interestingly, the uptick in positivity starting from before the Stop AAPI Hate coalition seems to precede the movement.

## Results

<p align="center">
<img src="figures/polarity_for_1_star.png" width="80%" alt="polarity of 1 star Asian reviews">
</p>
<p align="center">
<img src="figures/count_by_cuisine.png" width="80%" alt="count of all reviews by cuisine">
</p>
<p align="center">
<img src="figures/felony.png" width="80%" alt="felony counts">
</p>

## Data

[Data on Google Drive](https://drive.google.com/drive/u/1/folders/1iueQxhS5ttYFrF6E2TuhFnYfAS8RS4RM)

`review_data/`

- `reviews19_20_21.RData` - all restaurant reviews for 2019, 2020 and 2021
- `restaurant_locations_by_type.csv` - asian, pizza and mexican restaurants with latitude, longitude and zip code (for plotting)
- `reviews_with_sentiment.csv` - asian and pizza restaurants with sentiment (polarity and subjectivity)
- `d_asian_1_5.RData` - contains `d_asian`, which is `reviews_1.RData` to `reviews_5.RData`, joined with `nyc_asian_restaurants.csv` (31,040 rows)
- `d_pizza_1_5.RData` - contains `d_pizza`, which is `reviews_1.RData` to `reviews_5.RData`, joined with `nyc_pizza_restaurants.csv`
- `nyc_asian_restaurant.csv` - contains Yelp details of Asian restaurants (`id, alias, name, image_url, is_closed, url, review_count, categories, rating, coordinates, transactions, price, location, phone, display_phone, distance, attributes`) determined by cuisine categorized as Chinese, Japanese, Korean, Vietnamese or Thai.
- `nyc_pizza_restaurant.csv` - contains Yelp details of pizza restaurants (`id, alias, name, image_url, is_closed, url, review_count, categories, rating, coordinates, transactions, price, location, phone, display_phone, distance, attributes`)
- `nyc_mexican_restaurant.csv` - contains Yelp details of texmex, mexican and new mexican restaurants (`id, alias, name, image_url, is_closed, url, review_count, categories, rating, coordinates, transactions, price, location, phone, display_phone, distance, attributes`)
- `SBS_Certified_Business_List_20240309.csv` - contains list of minority owned business

  - `raw_data` - folder contains `meta_New-York.json` and `review_New-York.json`
  - `review_data_split` - folder contains 100 `output_X.json` files which are constructed by splitting `meta_New-York.json` lines
  - `reviews` - folder contains 20 `reviews_X.RData` files which are constructed from `output_X.json`, and only contains 4 columns per review (`time, rating, text, gmap_id`)
