#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"

# Display services
echo "$($PSQL "SELECT service_id || ') ' || name FROM services ORDER BY service_id")"

# Ask for service
echo "Enter the service id:"
read SERVICE_ID_SELECTED

# Check that service exists
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")

while [[ -z $SERVICE_NAME ]]
do
    echo "I could not find that service. What would you like today?"
    echo "$($PSQL "SELECT service_id || ') ' || name FROM services ORDER BY service_id")"
    read SERVICE_ID_SELECTED

    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
done

# Ask for phone
echo "What's your phone number?"
read CUSTOMER_PHONE

# Find customer
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

# If customer doesn't exist
if [[ -z $CUSTOMER_ID ]]
then
    echo "What's your name?"
    read CUSTOMER_NAME

    $PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')"

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
else
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE customer_id = $CUSTOMER_ID")
fi

# Ask for time
echo "What time would you like your appointment?"
read SERVICE_TIME

# Create appointment
$PSQL "INSERT INTO appointments(customer_id, service_id, time)
       VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')"

echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
