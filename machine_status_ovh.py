import ovh
import time
import yaml

# Load OVH credentials from YAML file
with open('credentials_ovh.yaml') as config_file:
    config = yaml.safe_load(config_file)

application_key = config['application_key']
application_secret = config['application_secret']
consumer_key = config['consumer_key']
project_id = config['project_id']
instance_id = config['instance_id']

# Initialize the OVH client with the loaded credentials
client = ovh.Client(
    endpoint='ovh-eu',  # or 'ovh-us' depending on your region
    application_key=application_key,
    application_secret=application_secret,
    consumer_key=consumer_key,
)

def status_instance(project_id, instance_id):
    # fetch the status dico
    instance_dico = client.get(f'/cloud/project/{project_id}/instance/{instance_id}')
    # extract the status from the dico
    status = instance_dico['status']
    print(status)

if __name__ == "__main__":
    status_instance(project_id, instance_id)