if [ -z $1 ]
then
  wget https://phar.phpunit.de/phpunit-$1.phar
else
  wget https://phar.phpunit.de/phpunit.phar
fi

if [ -z $1 ]
then
  phpdbg -qrr phpunit.phar tests --configuration tests/phpunit.xml
else
  phpdbg -qrr phpunit-$1.phar tests --configuration tests/phpunit.xml
fi
