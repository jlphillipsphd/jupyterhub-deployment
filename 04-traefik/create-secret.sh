#!/bin/bash

kubectl -n jupyterhub create secret tls jupyterhub-tls --key="tls.key" --cert="tls.crt"
