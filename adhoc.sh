#!/bin/bash
ansible all -m yum_repository -a 'name=test description="Test Description" baseurl=http://content.example.com/rhel7.6/x86_64/dvd/ gpgcheck=yes enabled=yes file=ex407'
ansible all -m rpm_key -a "state=present key=http://content.example.com/rhel7.6/x86_64/dvd/RPM-GPG-KEY-redhat-release"

