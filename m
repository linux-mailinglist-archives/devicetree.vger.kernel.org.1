Return-Path: <devicetree+bounces-307758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FOjzG+kEJWpOCwIAu9opvQ
	(envelope-from <devicetree+bounces-307758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 07:43:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47164EE22
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 07:43:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hxVbmzd7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307758-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307758-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E31DA301048F
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 05:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD362C15AC;
	Sun,  7 Jun 2026 05:43:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99907273D9F
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 05:43:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780810983; cv=none; b=lhjYvHnjiJmmDv19g2OBM+AM1OCH1MDjrS+eTzk2oBszrK80Y/NFH0MyuzuZSjzfc4NDB9S+bP3WUfefcmSSq3tpwv/N80ZziA7/ZPgfPm7LlA+6c2P0ceEaefa85eQrLSJLWtr51R+vlMR1Pz3vVuJPwmT4D62TUjj0pvQTCS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780810983; c=relaxed/simple;
	bh=o3IR5U9jJB2lSssjmvhOwBwIC3TTnS0R+ntwGeb7FVY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TA4xpotXRKtBhEqlVDhFSrgtZh7EO3aC4imPtNVii+vZZnIsC7wLbXdRLAFf0OCNklSw4gZiq2V9hlZXMqB2RzONNAzyIX0xWz04Y7jfzW+dAFRBprqxYzPGhXPpe4KuAEU/F7Ohnk2TCvjwa7y0e/XmJL4gLDVcpTH6kndMwDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxVbmzd7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F39BD1F00899;
	Sun,  7 Jun 2026 05:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780810982;
	bh=SLmjiLUUsvzbI4DmeY5w1xTHO29ArFVjiIdd85opNpQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hxVbmzd7kmgoZDMCZeD68Sv31cjdNKoN6wi9pxDl0gbYNyfM29WjR9GMDFRq+bWmc
	 Y6JBsSJ0GQF4lObon1aeHiys1naralKNWorZc60aESeHbsXtVwI/jriAO9o1Lkq5BP
	 1C9inOY/HsqM8fcbQyCXcoE9E+z2L1i491KtrDNKbFjPPVKnwiQ0O/xOEdSXWDdPWL
	 iD5CHfQEMJZb/em3oe4DA+MBvUzTx3UAI8gh0z2miYgzLPbCL+wh8tiasCYD4KX3ti
	 WuVNIhSGaUV0D44eLiwj7CeC8PE8bI8j8ysIjpTzXu86xRCgh1CHc4qU61PRjKbYrU
	 fonNFnaShFkWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 09/16] net: ethernet: oa_tc6: read, write
 interface with MMS option
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605-s2500-mac-phy-support-v4-9-de0fbc13c6d8@onsemi.com>
References: <20260605-s2500-mac-phy-support-v4-9-de0fbc13c6d8@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 Jun 2026 05:43:01 +0000
Message-Id: <20260607054301.F39BD1F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307758-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD47164EE22

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Teardown race condition in `lan865x_remove` allows `multicast_work=
` to execute after `priv` is freed.
- [High] The multicast work handler iterates over the network device's mult=
icast list (`netdev->mc.list`) without acquiring the required `netif_addr_l=
ock_bh` lock, leading to data races and potential list traversal crashes.
--

commit dcc33c9ce5d46f4194d94d68b486ac998fa7e8c7
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: ethernet: oa_tc6: read, write interface with MMS option

This commit introduces new read and write APIs to the oa_tc6 framework that
accept the Memory Map Selector (MMS) as a parameter. It updates the lan8650
driver to use these new interfaces to avoid manually encoding the MMS into
the register address before making the API call.

> diff --git a/drivers/net/ethernet/microchip/lan865x/lan865x.c b/drivers/n=
et/ethernet/microchip/lan865x/lan865x.c
> index 0277d9737369a..3b555ee698041 100644
> --- a/drivers/net/ethernet/microchip/lan865x/lan865x.c
> +++ b/drivers/net/ethernet/microchip/lan865x/lan865x.c
[ ... ]
> @@ -146,14 +147,16 @@ static int lan865x_set_specific_multicast_addr(stru=
ct lan865x_priv *priv)
>  	}
> =20

[Severity: High]
This is a pre-existing issue, but does lan865x_set_specific_multicast_addr()
safely iterate over the multicast list?

lan865x_multicast_work_handler() runs asynchronously in a workqueue and cal=
ls
lan865x_set_specific_multicast_addr(), which iterates over priv->netdev->mc=
.list
using netdev_for_each_mc_addr().

However, the multicast list is protected by the netif_addr_lock_bh(netdev)
spinlock, which doesn't appear to be held here.

Could concurrent changes from the network stack alter the list pointers,
causing the driver to read invalid pointers?

>  	/* Enabling specific multicast addresses */
> -	ret =3D oa_tc6_write_register(priv->tc6, LAN865X_REG_MAC_H_HASH, hash_h=
i);
> +	ret =3D oa_tc6_write_register_mms(priv->tc6, LAN865X_REG_MAC_H_HASH,
> +					OA_TC6_PHY_C45_MAC_MMS1, hash_hi);
>  	if (ret) {
>  		netdev_err(priv->netdev, "Failed to write reg_hashh: %d\n",
>  			   ret);
>  		return ret;
>  	}
[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but could the workqueue execution
race with device teardown?

In lan865x_remove(), cancel_work_sync() is called before unregister_netdev(=
):

lan865x_remove() {
    ...
    cancel_work_sync(&priv->multicast_work);
    unregister_netdev(priv->netdev);
    ...
}

Because the netdev is still registered and visible when cancel_work_sync()
returns, could the network stack or userspace still invoke ndo_set_rx_mode
and successfully re-queue the work onto the global workqueue?

If lan865x_remove() then proceeds to unregister the device and free its
private data, would the workqueue subsequently dereference the freed priv
pointer when executing lan865x_multicast_work_handler()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-s2500-mac-=
phy-support-v4-0-de0fbc13c6d8@onsemi.com?part=3D9

