import psycopg2, psycopg2.extras, json
import little_pger as db
from flask import *

application = Flask('autocomplete-tribute')
application.debug = True

@application.route('/autocomplete', methods=['GET'])
def autocomplete():
    conn = psycopg2.connect("dbname=autocomplete-tribute user=christian")
    cursor = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
    where = {}
    if request.args['query']:
        query_tokens = request.args['query'].split()
        fields = ['adjective', 'animal', 'version']
        where[('||'.join(fields), 'ilike')] = set(['%%%s%%' % v for v in query_tokens])
    json_out = {'success': True, 
                'data': db.select(cursor, 'ubuntu', where=where, order_by='id', debug_assert=True)}
    return json.dumps(json_out)
    
