#!/bin/awk -f
{
if (NF==2 || NF>5)
{print $0}
}
