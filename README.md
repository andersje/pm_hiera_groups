# pm_hiera_groups

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with pm_hiera_groups](#setup)
    * [What pm_hiera_groups affects](#what-pm_hiera_groups-affects)
    * [Beginning with pm_hiera_groups](#beginning-with-pm_hiera_groups)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Enforces group existence, based on hiera definitions.  Tested on Centos and Ubuntu.

## Module Description

hiera, and group definitions.  That's it.  this thing is _simple_.  All it does is create groups based on what is found in hiera.

## Setup

### What pm_hiera_groups affects

* group existence and gid on a machine
* groups must be in the "common_groups" hiera definition

### Beginning with pm_hiera_groups

The very basic steps needed for a user to get the module up and running.

Add definitions like this into your hiera:

pm_hiera_groups::common_groups:
  pds:
    ensure: present
    gid: 1040
  fileup:
    ensure: present
    gid: 1208
  ngs:
    ensure: present
    gid: 2000

## Usage

See above.

## Reference

TBD

## Limitations

* does not yet implement group modification or deletion.
* tested on v3.4+ opensource

## Development

PRs welcome

