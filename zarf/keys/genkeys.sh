#!/bin/bash

openssl genpkey -algorithm RSA -out private.pem -pkeyopt rsa_keygen_bits:4096