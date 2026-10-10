# MikroTik Czech block list

DNS adlist of Czech ad, tracking and ad-tech domains for MikroTik RouterOS
(`/ip dns adlist`). Hosts format, every entry resolves to `0.0.0.0`.

Requires RouterOS 7.15 or newer.

## Usage

```
/ip dns adlist add url=https://raw.githubusercontent.com/Wenkow/mikrotik-adlist-czech-block-list/main/mikrotik-czech-block-list ssl-verify=no
```

Drop `ssl-verify=no` if the CA certificate for GitHub is imported on the router.
Make sure the router is used as DNS server by your clients
(`/ip dns set allow-remote-requests=yes`).

## Files

- `mikrotik-czech-block-list` - the adlist (generated, do not edit)
- `turris-hole-czech-block-list` - plain domain source list
- `build-mikrotik-adlist.sh` - regenerates the adlist from the source list

## Credits

Source list originates from
[qxstyles/turris-hole-czech-block-list](https://github.com/qxstyles/turris-hole-czech-block-list).
This repository is maintained privately and does not accept contributions.
