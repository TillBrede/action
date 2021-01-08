if [ -z {{inputs.phpunit-versio}}" ];
then
  wget https://phar.phpunit.de/phpunit-${{ inputs.phpunit-version }}.phar;
else 
  wget https://phar.phpunit.de/phpunit.phar
if [ -z {{inputs.phpunit-versio}}" ];
then
  phpdbg -qrr phpunit.phar tests --configuration tests/phpunit.xml;
else
  phpdbg -qrr phpunit-${{ inputs.phpunit-version }}.phar tests --configuration tests/phpunit.xml;
