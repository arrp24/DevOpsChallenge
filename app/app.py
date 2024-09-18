from flask import Flask, request, jsonify

app = Flask(__name__)

API_KEY = '2f5ae96c-b558-4c7b-a590-a501ae1c3f6c'

@app.route('/DevOps', methods=['POST'])
def devops():
    if request.headers.get('X-Parse-REST-API-Key') != API_KEY:
        return "ERROR", 403

    data = request.get_json()
    if not data or 'to' not in data:
        return "ERROR", 400

    message = f"Hello {data['to']} your message will be sent"
    return jsonify({'message': message})

@app.route('/DevOps', methods=['GET', 'PUT', 'DELETE'])
def error_method():
    return "ERROR", 405

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
