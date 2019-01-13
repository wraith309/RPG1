{
    "id": "75fe5905-9701-4da3-abd9-6741131c7d88",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "oGame",
    "eventList": [
        {
            "id": "a7e25f95-2c12-4090-b2e9-fa607acc2205",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "75fe5905-9701-4da3-abd9-6741131c7d88"
        },
        {
            "id": "2db5e057-14ce-4a34-9751-5126c2d0fbb1",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "75fe5905-9701-4da3-abd9-6741131c7d88"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "6d696a2a-95cd-4b1f-b987-6ad65426821d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "room_width\/GRID_SIZE",
            "varName": "mapWidth",
            "varType": 1
        },
        {
            "id": "989ec0ce-b090-40a4-b7d3-d01c7f28cb8a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "room_width\/GRID_SIZE",
            "varName": "mapHeight",
            "varType": 1
        },
        {
            "id": "c12bf03b-634d-403d-8452-b4d830071e9d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "initializing",
            "varName": "state",
            "varType": 2
        },
        {
            "id": "dce178a3-0f03-4228-afb7-7acca5e568c2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "ds_list_create();",
            "varName": "turnOrder",
            "varType": 4
        },
        {
            "id": "fe8b8433-f36d-47ba-8bbb-8e3e8bbf9d14",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-1",
            "varName": "turnCounter",
            "varType": 1
        },
        {
            "id": "f4437f21-89f2-4d69-80ca-28dc1611a167",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "turnMax",
            "varType": 1
        },
        {
            "id": "cb15a828-ee8c-416e-b479-c2580d1c8c4e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "currentActor",
            "varType": 0
        },
        {
            "id": "4e2102de-6f84-4283-a8e7-d0ff3c7fbde6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "roundCounter",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}