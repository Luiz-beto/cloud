from flask import Flask, jsonify
import json

app = Flask(__name__)

with open('livros.json', 'r', encoding='utf-8') as f:
    livros = json.load(f)

@app.route('/status', methods=['GET'])
def status():
    return jsonify({"status": "API funcionando corretamente!"})

@app.route('/livros_acervo', methods=['GET'])
def listar_livros():
    return jsonify(livros)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
