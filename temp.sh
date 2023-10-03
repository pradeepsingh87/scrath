aws fsx describe-file-systems


net use <drive-letter>: \\your-fsx-dns-name\your-share-name /user:AD-USERNAME


sudo mount -t cifs -o username=AD-USERNAME //your-fsx-dns-name/your-share-name /mnt/fsx-mount-point

To access an Amazon FSx for Windows File Server (FSx) file system that is integrated with an Active Directory (AD) from the AWS Command Line Interface (CLI), you can use the `aws fsx` CLI commands. Here are the general steps:

1. **Install AWS CLI**: If you haven't already, install and configure the AWS CLI on your local machine. You can download and install it from the official AWS CLI documentation: [Installing the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

2. **Configure AWS CLI**: Ensure that you've configured the AWS CLI with your AWS credentials and the appropriate region where your FSx file system is located. You can use the `aws configure` command to set up your credentials and default region.

3. **List Available FSx File Systems**: You can use the following command to list all available FSx file systems in your AWS account:

   ```bash
   aws fsx describe-file-systems
   ```

   This will provide information about your FSx file systems, including their IDs, DNS names, and other details.

4. **Mount the FSx File System**: To access the FSx file system, you need to mount it on your local machine or an EC2 instance. To mount the file system, you'll typically use the `net use` command on Windows or the `mount` command on Linux.

   For Windows, you can use a command like this (replace `<drive-letter>` with your preferred drive letter):

   ```batch
   net use <drive-letter>: \\your-fsx-dns-name\your-share-name /user:AD-USERNAME
   ```

   For Linux, you can use a command like this:

   ```bash
   sudo mount -t cifs -o username=AD-USERNAME //your-fsx-dns-name/your-share-name /mnt/fsx-mount-point
   ```

   - `<drive-letter>`: The drive letter you want to assign to the mounted FSx share (Windows).
   - `your-fsx-dns-name`: The DNS name of your FSx file system.
   - `your-share-name`: The name of the shared folder within your FSx file system.
   - `AD-USERNAME`: An Active Directory user with permissions to access the share.

5. **Access the Mounted File System**: After mounting the FSx file system, you can access it as if it were a local directory on your system (Windows) or the specified mount point (Linux). You can copy, move, and manipulate files and directories as needed.

6. **Unmount the FSx File System (Optional)**: When you're finished accessing the FSx file system, you can unmount it. On Windows, use the `net use` command with the `/delete` option, and on Linux, use the `umount` command.

Please replace the placeholders (`<drive-letter>`, `your-fsx-dns-name`, `your-share-name`, and `AD-USERNAME`) with your specific values. Additionally, ensure that your IAM permissions and FSx security group settings allow access to the file system from your local machine or EC2 instances.
