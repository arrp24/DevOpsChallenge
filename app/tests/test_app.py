import pytest
import json
from app import app

API_KEY = '2f5ae96c-b558-4c7b-a590-a501ae1c3f6c'

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_devops_post_success(client):
    # Arrange: Prepare the request headers and payload
    headers = {
        'X-Parse-REST-API-Key': API_KEY,
        'Content-Type': 'application/json'
    }
    payload = {
        "message": "This is a test",
        "to": "Juan Perez",
        "from": "Rita Asturia",
        "timeToLifeSec": 45
    }

    # Act: Send a POST request to the /DevOps endpoint
    response = client.post('/DevOps', headers=headers, data=json.dumps(payload))

    # Assert: Check that the response is correct
    assert response.status_code == 200
    assert response.json == {"message": "Hello Juan Perez your message will be sent"}

def test_devops_post_missing_api_key(client):
