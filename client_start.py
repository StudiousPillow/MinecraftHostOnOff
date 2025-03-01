import ovh
import time
import yaml

# Load OVH credentials from YAML file
with open('client_ovh_credentials.yaml') as config_file:
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

def activate_and_start_instance(project_id, instance_id):
    # Resume the instance if it is suspended
    client.post(f'/cloud/project/{project_id}/instance/{instance_id}/unshelve')
    print(f"Resuming instance {instance_id}...")
    # Wait for the instance to unshelve

    # Start the instance
    # client.post(f'/cloud/project/{project_id}/instance/{instance_id}/start')
    # print(f"Starting instance {instance_id}...")

if __name__ == "__main__":
    activate_and_start_instance(project_id, instance_id)