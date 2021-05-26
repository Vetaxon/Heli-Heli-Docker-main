#!/bin/bash

# Should be failed with concurrency -c100
siege http://app.test:8088/admin/login -c100 -r1
