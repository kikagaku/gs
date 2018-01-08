from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/")
def hello():
    # ... 機械学習系の処理
    output = {'message': 'hello flask'}
    return jsonify(output)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
