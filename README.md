# README

An URL Hashing made with Ruby on Rails and Basic java script. It provides a single-field form where a user can enter an URL and receive a shortened version back. When using this link, user is redirected to the original website.

Once a valid URL is submitted, it is recorded to the database, so it can be used for unlimited period. Each URL is unique, therefore, once an URL is shortened, any attempt to short the same URL again, will result in the error.

Cases Handled 
1-check for valid url.
2-if url is not valid -show proper message 
3-if url is blank-show proper message.
4-if any attempt to short the same URL again, will result in the error message.(assuming shot url can't shorten further).
5-if url is valid ->give short url 
6-able to redirect the short url.


