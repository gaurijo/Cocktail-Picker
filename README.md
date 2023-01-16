# README
## Welcome to the Cocktail Picker 
Do you want to try new cocktails but don't know where to begin? Have you been meaning to learn how to make cocktails at home? Try the Cocktail Picker! Just search any cocktail by name and you'll get all the ingredients and instructions on how to make your perfect cocktail. Don't know what to search? No problem. Look up a liquor type (ie vodka) or any ingredient you would want in your cocktail (ie lemon), and we will give you some recommendations. 

## :cocktail: Built With:
[<img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/>](https://rubyonrails.org/)<br>
[<img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white"/>](https://www.postman.com/product/what-is-postman/)<br>
<img src="https://img.shields.io/badge/PostgreSQL-03e3fc.svg?&style=for-the-badge&logo=postgresql&logoColor=white"/><br>
<img src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white"/><br>

## :cocktail: Local server demo:
https://user-images.githubusercontent.com/103534307/212591136-110ddb9a-56a8-4f99-8a40-d308ae49c01b.mp4

## :cocktail: API Endpoints:
This app consumes two endpoints from `TheCocktailDB` (docs: https://www.thecocktaildb.com/api.php)

### cocktail by name
``GET `` `www.thecocktaildb.com/api/json/v1/1/search.php?s=${cocktail}`

```ruby
  {
    "drinks": [
        {
            "idDrink": "11007",
            "strDrink": "Margarita",
            "strInstructions": "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg",
            "strIngredient1": "Tequila",
            "strIngredient2": "Triple sec",
            "strIngredient3": "Lime juice",
            "strIngredient4": "Salt",
            "strMeasure1": "1 1/2 oz ",
            "strMeasure2": "1/2 oz ",
            "strMeasure3": "1 oz "
        }
 ```
 ### ALL cocktails by liquor/ingredient 
 
``GET `` `www.thecocktaildb.com/api/json/v1/1/search.php?i=${liquor_or_ingredient}`

```ruby
{
    "drinks": [
        {
            "strDrink": "155 Belmont",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/yqvvqs1475667388.jpg",
            "idDrink": "15346"
        },
        {
            "strDrink": "501 Blue",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/ywxwqs1461867097.jpg",
            "idDrink": "17105"
        },
        {
            "strDrink": "57 Chevy with a White License Plate",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/qyyvtu1468878544.jpg",
            "idDrink": "14029"
        },
        {
            "strDrink": "747 Drink",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/i9suxb1582474926.jpg",
            "idDrink": "178318"
        },
        {
            "strDrink": "A Gilligan's Island",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/wysqut1461867176.jpg",
            "idDrink": "16943"
        },
        {
            "strDrink": "A midsummernight dream",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/ysqvqp1461867292.jpg",
            "idDrink": "15675"
        },
        {
            "strDrink": "A.D.M. (After Dinner Mint)",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/ruxuvp1472669600.jpg",
            "idDrink": "14560"
        },
        {
            "strDrink": "Absinthe #2",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/uxxtrt1472667197.jpg",
            "idDrink": "12790"
        },
        {
            "strDrink": "Absolutely Fabulous",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg",
            "idDrink": "17224"
        },
        {
            "strDrink": "Adam Bomb",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/tpxurs1454513016.jpg",
            "idDrink": "16333"
        }...]
```

## 	:computer: Setup and Tests:
1. Fork and clone the repo to your local machine 
2. Install gems and dependencies: `bundle install`
3. Set up database: `rails db:{drop,create,migrate}`
4. Start up your local server: `rails s`

## 	:fast_forward: Plans for future iterations:
- Update login and logout features to be accessible on all pages
- Implement a user dashboard to save user's favorite cocktails
- When user utilizes the search by liquor/ingredient function, have the recommendations link to each cocktail's show page


