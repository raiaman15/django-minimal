#!/bin/sh

echo "CHECKING PORT USAGE"
ss -lntu
echo "COLLECTING STATIC FILES"
python manage.py collectstatic --settings=config.settings.local --no-input
echo "CLEARING PYTHON COMPILED FILES"
find . -path "*.pyc" -delete
exec "$@"
