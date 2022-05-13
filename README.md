# Elk-Config-Project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Alt text](Diagram/Elk_Diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

  [My_Playbook](Ansible/my_playbook.yml)
  
  [Filebeat_Metricbeat](Ansible/filebeat_metricbeat_playbook.yml)
  
  [Elk_Playbook](Ansible/elkplaybook.yml) 
  

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

- What aspect of security do load balancers protect?

Load balancing ensures that the application will be highly protected from DDOS attacks, in addition to restricting unwanted connections to the network. This is done by evenly distrubing network traffice to prevent a server or resource from being overloaded. The Web Application Firewall of the load balancer protects the environment from attackers by creating rules and a daily rule can be created in order to stay updated on the latests threats.

- What is the advantage of a jump box?

Before explaining the advantage of having a jump box, I'll give a quick summary of what a jump box is. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log data and system metrics and statistic.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
|Project-1 |  ELK     | 10.0.0.4   | Linux            |
| Web-1    |          | 10.1.0.9   | Linux            |
| Web-2    |          | 10.1.0.8   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:172.251.204.254
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by Web-1 and Web-2.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | 10.0.0.1 10.0.0.4 10.1.0.9 10.1.0.8 172.251.204.254|
| Web-1    | No                  | 172.251.204.254                      |
| Web-2    | No                  | 172.251.204.254                     |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because tasks that are either cumbersome or repetitive or complex can be done through somple YAML file.
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- o Install Filebeat and Metricbeat
- o Enable Filebeat and Metricbeat
- o Start Filebeat and Metricbeat
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines: 10.1.0.9 10.1.0.8
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines: Filebeat and Metricbeat
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine: Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch.
Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify such as Elasticsearch.
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
