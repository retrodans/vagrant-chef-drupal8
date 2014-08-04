#!/bin/bash
# Download and setup a basic Drupal8 site

echo "Creating database: drupal8 for user:root (password:vagrant)!";

mysql -u root -pvagrant -e "create database drupal8";

echo "Database create:: drupal8 for user:root (password:vagrant)!";