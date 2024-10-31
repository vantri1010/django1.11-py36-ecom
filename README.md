## Django ecommerce website

I promised myself to do the courses 7 years ago and now I fulfill it.

- Because the course is old, it uses `Django 1.11` and `Python 3.6`.
- I use [mailtrap](mailtrap) to send email and [mailchimp](https://mailchimp.com/) to store list email
- I use [stripe](https://stripe.com/) for payment

how to run :

Inside the project folder :
```
docker build -t ecommerce .
```
```
docker run -d -t -i -p 8000:8000 \
    -e MAILCHIMP_API_KEY=your_secret_key-usx \
    -e MAILCHIMP_DATA_CENTER=usx \
    -e MAILCHIMP_EMAIL_LIST_ID=your-id \
    -e STRIPE_SECRET_KEY=your_secret_key \
    -e STRIPE_PUB_KEY=your_public_key \
    -e EMAIL_HOST=your_mail_host \
    -e EMAIL_HOST_USER=your_user \
    -e EMAIL_HOST_PASSWORD=your_password \
    -e EMAIL_PORT=your_port \
    ecommerce
```
