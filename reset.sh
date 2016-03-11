#!/bin/bash
dropdb helios
createdb helios
python manage.py syncdb
python manage.py migrate
echo "from helios_auth.models import User; User.objects.create(user_type='pirateid',user_id='martin.kucera@pirati.cz', info={'name':'Martin Kučera'})" | python manage.py shell
