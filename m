Return-Path: <devicetree+bounces-310317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /tIcOLCGKmoMrwMAu9opvQ
	(envelope-from <devicetree+bounces-310317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:58:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 544C4670A11
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:58:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JOVlzkVg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310317-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310317-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 31550301CD8D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9C3A3B5E10;
	Thu, 11 Jun 2026 09:58:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9743630DEA6
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:58:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781171884; cv=none; b=QzQFmgJTDgp7XiT43h0VLcU+Pr071eBs9jx5+GYluQuv+fbSTDD3eyTQkKc9tvrXAATUgjk/bbPN+Ur0dklCX+1RGeOuIev2w3X5MPO7BUD7ZSeROjuHjqUskf7jeaQwKEe4gXk2vngRb6ScJOxn1U7kUoqTp6jUjr0wNJVTw2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781171884; c=relaxed/simple;
	bh=a7fHF4/b22XfHUn1LS6szBLvvhvdBMb+qGAdgySexro=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oMVT/KRra2lz/xoKj6gL3GFoRIZjZZrKYl51oS2vJPg3iQ6WXMDbFqJmQ+7zgFHP5f5vaFf0+K/yc6lTwtSbnJxeqgYbXbbUqppRj25uG16Eprl6/EOdL9OGRJDX5FzZpVz4v+go5kCBZcIQjtiOBKtcFn+CLiwKuQP+zfdUlNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOVlzkVg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E278A1F00893;
	Thu, 11 Jun 2026 09:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781171883;
	bh=VKWbhmX0/gCfp28Ap8Rj68Zu8N8lzDgokM+BbNbTMX4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JOVlzkVgPUPAF9vlOoqb7u2croW7thJxOMB/2Hh+i2hxUHLGYAjQITiUQsM81Ndyx
	 djptsp+ynetymdGoK7vh2V5GNT6Q1RX2xsgcT2Ve2dFIGVaruhGjBZt5KSMmfCvttZ
	 LpAoWRCqOblW2RQxWHurB7JF/i7PxFSlLAeHIvFXwh+0m9oFjpdIxxC23eIg9wjueq
	 vexEYdTfD0AVMpQYgYfVExKJTBYrOgGklJR516LTk47ZwlHGM2XD6Q5XxJKLzASlep
	 ym2Y40ZZS3r1LF8IFOLSW2BurcrTvRAmtABLs/uQulYeVQr29dyG8E1+ENPm6gUmCh
	 9i0s7yoan2DHg==
From: sashiko-bot@kernel.org
Subject: Re: [net-next v1 4/6] net: stmmac: Add NCSI VLAN setting
Reply-To: sashiko-reviews@lists.linux.dev
To: "Minda Chen" <minda.chen@starfivetech.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610072420.64699-5-minda.chen@starfivetech.com>
References: <20260610072420.64699-5-minda.chen@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 09:58:02 +0000
Message-Id: <20260611095802.E278A1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310317-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:minda.chen@starfivetech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 544C4670A11

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Bypassing STMMAC VLAN filter programming while enabling NETIF_F_HW=
_VLAN_CTAG_FILTER causes the host MAC to drop all VLAN-tagged packets.

Pre-existing issues:
- [High] Missing RCU grace period in NCSI VLAN kill path causes a Use-After=
-Free when traversing the VLAN list.
- [High] NCSI request timers can fire after the NCSI device is freed during=
 unregistration.
--

commit f9348a76862879b362b9eac34abff037e5482a9e
Author: Minda Chen <minda.chen@starfivetech.com>

net: stmmac: Add NCSI VLAN setting

This commit adds NCSI VLAN setting support for STMMAC when the platform uses
NCSI. It modifies the driver to delegate VLAN addition and removal to the N=
CSI
subsystem and enables the hardware VLAN CTAG filter feature.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/=
net/ethernet/stmicro/stmmac/stmmac_main.c
> index b6af537838830..b8ce04d71d08c 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -6866,6 +6866,9 @@ static int stmmac_vlan_rx_add_vid(struct net_device=
 *ndev, __be16 proto, u16 vid
>  	bool is_double =3D false;
>  	int ret;
> =20
> +	if (priv->plat->use_ncsi)
> +		return ncsi_vlan_rx_add_vid(ndev, proto, vid);
> +

[ ... ]

> @@ -6908,6 +6911,9 @@ static int stmmac_vlan_rx_kill_vid(struct net_devic=
e *ndev, __be16 proto, u16 vi
>  	bool is_double =3D false;
>  	int ret;
> =20
> +	if (priv->plat->use_ncsi)
> +		return ncsi_vlan_rx_kill_vid(ndev, proto, vid);
> +

[Severity: High]
This isn't a bug introduced by this patch, but looking at the NCSI subsystem
this delegates to, does ncsi_vlan_rx_kill_vid() have an RCU grace period
issue?

net/ncsi/ncsi-manage.c:ncsi_vlan_rx_kill_vid() {
    ...
    list_del_rcu(&vlan->list);
    found =3D true;
    kfree(vlan);
    ...
}

Since concurrent NCSI workqueue tasks like set_one_vid() iterate over this
list using list_for_each_entry_rcu() inside an rcu_read_lock(), could faili=
ng
to wait for an RCU grace period before the kfree() lead to a use-after-free
when dynamic VLAN reconfiguration occurs?

[Severity: High]
This is a pre-existing issue, but since we are relying on NCSI, does the
NCSI core handle unregistration safely with respect to pending request time=
rs?

net/ncsi/ncsi-manage.c:ncsi_unregister_dev() {
    ...
    disable_work_sync(&ndp->work);
   =20
    kfree(ndp);
}

If an NCSI command is pending during module removal or interface teardown, =
the
timer isn't canceled. Could ndp->requests[i].timer fire after ndp is freed,
causing a use-after-free in the ncsi_request_timeout() callback?

[ ... ]

> @@ -7943,6 +7949,9 @@ static int __stmmac_dvr_probe(struct device *device,
>  	ndev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>  			     NETDEV_XDP_ACT_XSK_ZEROCOPY;
> =20
> +	if (priv->plat->use_ncsi)
> +		ndev->hw_features |=3D NETIF_F_HW_VLAN_CTAG_FILTER;
> +

[Severity: High]
Does enabling NETIF_F_HW_VLAN_CTAG_FILTER here cause the networking stack to
turn on the MAC's hardware VLAN filtering (VTFE)?=20

Since stmmac_vlan_rx_add_vid() and stmmac_vlan_rx_kill_vid() were modified =
to
return early and bypass the STMMAC hardware filter programming, the filter
list will remain empty. Could this result in the MAC hardware aggressively
dropping all incoming VLAN-tagged packets, thereby breaking VLAN reception =
for
both the host OS and the NCSI subsystem?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610072420.6469=
9-1-minda.chen@starfivetech.com?part=3D4

