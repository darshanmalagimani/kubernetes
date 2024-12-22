# Generate the default configuration file for containerd and save it to /etc/containerd/config.toml
# This is needed to customize containerd settings, such as enabling the systemd cgroup driver.
containerd config default > /etc/containerd/config.toml

# Making necessary changes to config.toml file by setting SystemdCgroup = true
nano /etc/containerd/config.toml #####Changes

# Restart the containerd service to apply the new configuration changes from /etc/containerd/config.toml
# This ensures containerd is running with the updated settings.
sudo systemctl restart containerd

# Check the status of the containerd service to confirm it is active and running without errors.
# This is useful for verifying that the configuration changes were applied successfully.
sudo systemctl status containerd
