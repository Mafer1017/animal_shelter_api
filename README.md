# Mario's Specialty Foods

##### By: Marcus Ferreira

## Description

_This project allows users to view a listing of pets in an animal shelter._

## Technologies Used

* _Ruby_
* _Rails_
* _Gems_
* _Bundler_
* _RSpec_
* _Postgres_
* _SQL_
* _CORS_
* _Pagination_


## Setup/Installation Requirements

* Clone or download this repository onto your desktop
* Navigate to top-level of directory
* In the main project directory, enter `bundle install` in the terminal to include necessary gems.
* Create the necessary databases on your device using postgres by inputting the following command in the terminal:
    `rake db:create`  
* Migrate the database by running:
    `rake db:migrate` 
* Create the testing database by inputting the following command in the terminal:
    `rake db:test:prepare` 
* Seed the database by running:
    `rake db:seed` 
* In a separate terminal window, run:
    `rails s`
* Navigate to Postman and sample the following endpoints:

## Endpoints
| Usage | Method | URL | Parameters |
| See All Pet Listings | Get | localhost:3000/pets |  | 
| :---: | :---: | :---: | :---: | 

## Known Bugs

_There are no known bugs_

## License

[MIT](https://opensource.org/licenses/MIT)


Copyright (c) 2022 Marcus Ferreira