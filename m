Return-Path: <devicetree+bounces-323939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dsroNpXWT2oHpAIAu9opvQ
	(envelope-from <devicetree+bounces-323939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:12:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C1181733BDC
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:12:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lP4CR5ZT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323939-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323939-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ECA1E301C6F4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD1A3A05C2;
	Thu,  9 Jul 2026 17:12:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A489839E185
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 17:12:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783617172; cv=none; b=D/6rtvxuWlzlBu8CPat7APQMISJt2mdEZicxmKXVFy8al2LQ/223oZYO7ojipRSqgoW6roKfaFHTb3tGiqysmaOdh4HBAphySONvDTXRV68ojqwbJtGEA5FojlTjTUFWsWTUInYr1GCwIwh8plZIzjCDd1Cm6BpPk1Vridphi0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783617172; c=relaxed/simple;
	bh=OrBiF//6PGg6h0/4cN4knEGvoWznKwrG1iIL8P3mm2k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h8HQDRqiRSKBb/QsSXT83d9ka1sBesPnkqCmOgYh83Lc5lGTl9jCML568nQfcV0L7L8kKf/KPeNiJR8rKJjRpsG+VPpKsu/CQaPtH4cgvUfTR/t6AxLWmOw3PuSTkyakgFbrux0dfxjblQlWOVRCPrANS0q8yd8P0Z3woJ4Cu9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP4CR5ZT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4301C1F000E9;
	Thu,  9 Jul 2026 17:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783617170;
	bh=dz4wY0KpPLKGybqFtvO4C0oAVW4o5QeIFkRbLjLE46U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lP4CR5ZTkEF+nPzNx5/fhpDp/4ibYWASqiNR3tuFS2XHb9KT29iQRnX3jjeWylqEV
	 YvyLXOG2loxk0RCIz+o5lYXSLZ6ImikI42BJYj3t1fvjWSw48ojOQbOfZ73BEQ0ugC
	 l22eBlEuM+WkQr1WIu0eYLwrup4vOtmZJNxGujmNknr7DJJ4sTb1v9ZX8WnFKsw9Hj
	 ClQHY3XZ4Ca/BQRPLVFljhiJa7bsgmPPSdGrDlf/AXEGwjxHGVC2j2rzuiUqzJ9BRq
	 CfPZNDrFEVC4eqg4H573933dwT5LEO6bDnogvJ94OTXlK4ro27GpjCQSTnU5hy+J6B
	 ab2FAFU+buHCQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 13/15] net: phy: ncn26000: Support for
 loopback
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal" <Selvamani.Rajagopal@onsemi.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-s2500-mac-phy-support-v7-13-478c877aa1a9@onsemi.com>
References: <20260708-s2500-mac-phy-support-v7-0-478c877aa1a9@onsemi.com>
 <20260708-s2500-mac-phy-support-v7-13-478c877aa1a9@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 17:12:49 +0000
Message-Id: <20260709171250.4301C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323939-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:Selvamani.Rajagopal@onsemi.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1181733BDC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] `ncn26000_config_aneg` uses `phy_write` to set `MII_BMCR`, inadv=
ertently clearing `BMCR_LOOPBACK` and breaking the newly added loopback fun=
ctionality.
--

--- Patch [13]: [PATCH net-next v7 13/15] net: phy: ncn26000: Support for l=
oopback ---
commit 13f8b3ef4991385d79e8674e52b9e5000a330738
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: phy: ncn26000: Support for loopback

Adding loopback support for S2500 internal PHY to help running
loopback test through ethtool. It introduces a new API implementation
that manipulates only the loopback bit in the PHY.

> diff --git a/drivers/net/phy/ncn26000.c b/drivers/net/phy/ncn26000.c
> index c3a34b2c524d5..afafa81dc22b8 100644
> --- a/drivers/net/phy/ncn26000.c
> +++ b/drivers/net/phy/ncn26000.c
> @@ -178,6 +178,7 @@ static struct phy_driver ncn26000_driver[] =3D {
>  		.config_aneg           =3D ncn26000_config_aneg,
>  		.read_status           =3D ncn26000_read_status,
>  		.handle_interrupt      =3D ncn26000_handle_interrupt,
> +		.set_loopback          =3D genphy_loopback_fixed_speed,

[Severity: Medium]
Will this newly added loopback functionality get silently disabled by
ncn26000_config_aneg() when the link is re-initialized?

If loopback is enabled via ethtool and an operation triggers the PHY state
machine to re-initialize the link (such as an interface down and up):

phy_start() -> _phy_start_aneg() -> ncn26000_config_aneg()

This call chain leads to MII_BMCR being overwritten:

drivers/net/phy/ncn26000.c:ncn26000_config_aneg() {
	...
	// bring up the link
	return phy_write(phydev, MII_BMCR, NCN26000_BCMR_LINK_CTRL_BIT);
}

Using phy_write() here clears the BMCR_LOOPBACK bit that was configured by
genphy_loopback_fixed_speed(), leading to a state mismatch where
phydev->loopback_enabled is true but the PHY loopback bit is actually
cleared.

Should ncn26000_config_aneg() be updated to use phy_modify() to preserve
the loopback state?

>  		.set_plca_cfg          =3D ncn26000_c45_plca_set_cfg,
>  		.get_plca_cfg          =3D genphy_c45_plca_get_cfg,
>  		.get_plca_status       =3D genphy_c45_plca_get_status,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-s2500-mac-=
phy-support-v7-0-478c877aa1a9@onsemi.com?part=3D13

