Return-Path: <devicetree+bounces-313817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BrueFqtONWrFsAYAu9opvQ
	(envelope-from <devicetree+bounces-313817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:14:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 856606A654A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:14:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Yg7oBstW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313817-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313817-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AFF2730151A4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DF337B407;
	Fri, 19 Jun 2026 14:11:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA75E37FF56
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:11:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781878279; cv=none; b=fXYePWdLtQWjaH0QTuKqABZgtf7SzymEE5+AJKRIVs3RiGXIS0CbTNOa+UPURAyL9m2glZE0fUgTPOoD0E6wB7E720tOulDymEDGLde56Zjeabu6VvXlQLWfEujipRyBRlpVyeQB5g8UDA7FW6wjz4aOjU/iy+tLvoTbyqAFcDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781878279; c=relaxed/simple;
	bh=oPX5aQIg2JsPvGxWtAwXfydqICbCSv0509QM3rgzHWk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QmZdJoRPk+7mloxHyQn98nJGwZTbu4xB1oqcyu0qOG2WfXAFWuhSn+IQYpd2c6rlmvF18TVd89VuG5YF8uRHJy3RnaNnX0IWUK2JfDQXYuXjpGHatRIxKhrzyiaAAFyq9LNgnohwuc908c/M69XkPOCiaDjJn83aDnk14a+VJgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yg7oBstW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F9B1F00AC4;
	Fri, 19 Jun 2026 14:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781878275;
	bh=trwv4D23S4bX0IDIcci0wYBKA1D5oO9sF2wh4Dg3dmU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yg7oBstWM5FrpJ3fF+TcgN2Cc3SB6G3NglUyiQJeDJWHDPKt1gDB+ekU1SJyjJMzn
	 jkdp46yg5UhfjviJKpuVfqdpVdjKJ9sucYJS2Rpz5ASp4l08lRL/oYGuU8adtG5iHw
	 oelPAOG7tUsD4OtYbMeGX3GiH0oa9TwVaOjyRp7hOZJ+HmSh3zbOkIK0H4pAPNXFgP
	 BXvoPhf+POzRjHTK+FqEkigAxlevWMwLqAo+F5TtDsnIBS80J7Yv8YxVDc99B5lr5X
	 unLq8P7HaosioLjihy3wJPdNnTVWEa0OEKjszanDtVFzxZ7GByFacF00Mh22FbNOG/
	 ec9+Qfw8dYMtA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH net-next v8 12/12] net: airoha: add phylink support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618125752.1223-13-ansuelsmth@gmail.com>
References: <20260618125752.1223-1-ansuelsmth@gmail.com>
 <20260618125752.1223-13-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 14:11:14 +0000
Message-Id: <20260619141114.B8F9B1F00AC4@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313817-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 856606A654A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] PCS configuration fails because netdev->dev.fwnode is not initiali=
zed before calling fwnode_phylink_pcs_count() and fwnode_phylink_pcs_parse(=
).

Pre-existing issues:
- [High] Spinlock deadlock due to acquiring `port->lock` without disabling =
softirqs.
--

commit c3dd483dacef136d470df9049b76a9b65a5390bc
Author: Christian Marangi <ansuelsmth@gmail.com>

net: airoha: add phylink support

Add phylink support for each GDM port. For GDM1 add the internal interface
mode as the only supported mode. For GDM2/3/4 add the required
configuration of the PCS to make the external PHY or attached SFP cage
work.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> index 64dde6464f3fb..3ea8deee3e950 100644
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c
> @@ -1788,7 +1789,7 @@ static void airoha_update_hw_stats(struct airoha_gd=
m_dev *dev)
>  	struct airoha_gdm_port *port =3D dev->port;
>  	int i;
> =20
> -	spin_lock(&port->stats_lock);
> +	spin_lock(&port->lock);

[Severity: High]
This is a pre-existing issue, but can this cause a spinlock deadlock if a
softirq interrupts a process-context thread holding this lock?

This function is reachable from ndo_get_stats64, which the networking core
can invoke from softirq/BH context (e.g., via bonding or team drivers). If
this lock is also acquired in process context without disabling softirqs, a
deadlock can occur.

[ ... ]
> @@ -3168,6 +3199,155 @@ bool airoha_is_valid_gdm_dev(struct airoha_eth *e=
th,
[ ... ]
> +static void airoha_mac_link_up(struct phylink_config *config, struct phy=
_device *phy,
> +			       unsigned int mode, phy_interface_t interface,
> +			       int speed, int duplex, bool tx_pause, bool rx_pause)
> +{
[ ... ]
> +	spin_lock(&port->lock);

[Severity: High]
Does acquiring port->lock here expose the deadlock mentioned above?

airoha_mac_link_up() executes in process context. If a softirq interrupts it
while holding port->lock, the softirq might call airoha_update_hw_stats()
and attempt to acquire the exact same lock.

Should this and other process-context acquisitions of port->lock use
spin_lock_bh() instead?

> +	/* Configure TX/RX frag based on speed */
[ ... ]
> +static int airoha_setup_phylink(struct net_device *netdev)
> +{
[ ... ]
> +	} else {
> +		config->mac_capabilities =3D MAC_ASYM_PAUSE | MAC_SYM_PAUSE |
> +					   MAC_10 | MAC_100 | MAC_1000 |
> +					   MAC_2500FD | MAC_5000FD | MAC_10000FD;
> +
> +		config->num_possible_pcs =3D fwnode_phylink_pcs_count(dev_fwnode(confi=
g->dev));

[Severity: High]
Will dev_fwnode() return NULL here because netdev->dev.fwnode is not yet
initialized?

In airoha_alloc_gdm_device(), the device tree node is assigned using
netdev->dev.of_node =3D of_node_get(np), but the generic fwnode pointer is
left uninitialized.

Since airoha_setup_phylink() runs before register_netdevice(), dev_fwnode()
evaluates to NULL. This causes fwnode_phylink_pcs_count() to unconditionally
return 0, and fwnode_phylink_pcs_parse() to fail later in
airoha_fill_available_pcs().

Does this silently disable PCS discovery and break support for external PHYs
and SFP cages?

Could this be resolved by using device_set_node(&netdev->dev,
of_fwnode_handle(np)) in airoha_alloc_gdm_device(), or by passing
of_fwnode_handle(np) directly?

> +		config->fill_available_pcs =3D airoha_fill_available_pcs;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618125752.1223=
-1-ansuelsmth@gmail.com?part=3D12

