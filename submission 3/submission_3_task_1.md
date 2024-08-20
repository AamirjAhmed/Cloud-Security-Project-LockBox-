## Task 1: Deployment Steps

### Screenshot of the security group client:
![security_group_client](https://github.com/user-attachments/assets/3a993a95-41a2-46e3-9cad-d210abee53ce)

Server instances for the project require a security group that allows SSH access, so we created one security group to apply to all instances. This will also make it easier to make changes to every instance all at once.

### Screenshot of the instance list:

![image](https://github.com/user-attachments/assets/e840feaf-9dab-4dd9-8840-349fa5086ad4)

![image](https://github.com/user-attachments/assets/ddd07e3c-45af-4275-84be-2af02178d2e1)

![instance_list](https://github.com/user-attachments/assets/8ba0f71c-053e-48b9-8924-3263ddef21c8)

The basic Ubuntu instance template was used, making sure to specify the security group that we previously created.

### Screenshot of the security group control:
![security_group_control](https://github.com/user-attachments/assets/aa8a3197-85e0-4621-9072-df8e3769b7d5) 

This screenshot shows the selected security group applied to an instance.
### Screenshot of the key:
![lockbox_key](https://github.com/user-attachments/assets/d352ad58-2d39-4ede-8669-252d0ac567ad)

A basic symmetric key was created for encryption of the S3 bucket. The result is shown above.
### Screenshot of the s3 bucket:
![lockbox_bucket](https://github.com/user-attachments/assets/84536439-0121-4781-a926-8fc8ec34f21d)

A standard S3 bucket with KMS encryption was created using the key detailed above. The result is shown in this screenshot.
