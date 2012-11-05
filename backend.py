import psycopg2, psycopg2.extras
import little_pger as db
from flask import *

application = Flask('autocomplete-tribute')
application.debug = True

@application.route('/autocomplete', methods=['GET'])
def autocomplete():
    conn = psycopg2.connect("dbname=autocomplete-tribute user=christian", 
                            connection_factory=psycopg2.extras.RealDictConnection)
    cursor = conn.cursor()
    where = {}
    if request.args['query']:
        query_tokens = request.args['query'].split()
        fields = ['adjective', 'animal', 'version']
                                              # MUST be a set in this context!
        where[('||'.join(fields), 'ilike')] = set(['%%%s%%' % v for v in query_tokens])
    # else: we want everything! 
    return jsonify(success=True, 
                   data=db.select(cursor, 'ubuntu', where=where, order_by='id'))
