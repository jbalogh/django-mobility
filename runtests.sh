#!/bin/sh

SETTINGS='settings.py'

cat > $SETTINGS <<EOF
DATABASES = {
    'default': {
            'ENGINE': 'django.db.backends.sqlite3'
    },
}
EOF

export DJANGO_SETTINGS_MODULE=settings

python -m unittest discover

rm -f $SETTINGS
