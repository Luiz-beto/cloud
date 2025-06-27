import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_status(client):
    response = client.get('/status')
    assert response.status_code == 200
    assert response.json == {"status": "API funcionando corretamente!"}

def test_listar_livros(client):
    response = client.get('/livros_acervo')
    assert response.status_code == 200
    data = response.json
    assert isinstance(data, list)
    assert len(data) >= 10
    primeiro_livro = data[0]
    assert "id_livro" in primeiro_livro
    assert "titulo" in primeiro_livro
    assert "autor" in primeiro_livro
