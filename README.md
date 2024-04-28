# small-business-sentiment-analysis

Data Driven Methods of Policy Evaluation group project

## Data

[Data on Google Drive](https://drive.google.com/drive/u/1/folders/1iueQxhS5ttYFrF6E2TuhFnYfAS8RS4RM)

`review_data/`

- `joined_reviews_1_5.RData` - `reviews_1.RData` to `reviews_5.RData`, joined with asian restaurants csv (31,040 rows)
- `nyc_restaurant.csv` - contains Yelp details of Asian restaurants (`id, alias, name, image_url, is_closed, url, review_count, categories, rating, coordinates, transactions, price, location, phone, display_phone, distance, attributes`)
- `SBS_Certified_Business_List_20240309.csv` - contains list of minority owned business

  - `review_data_split` - folder contains 100 `output_X.json` files which are split from `meta_New-York.json`
  - `reviews` - folder contains 20 `reviews_X.RData` files which are constructed from `output_X.json`, and only contains 4 columns per review (`time, rating, text, gmap_id`)
