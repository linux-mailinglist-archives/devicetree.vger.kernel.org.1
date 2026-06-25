Return-Path: <devicetree+bounces-315668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cd6+MZkcPWqoxAgAu9opvQ
	(envelope-from <devicetree+bounces-315668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:18:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 240A46C57BD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:18:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kblvDgoi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315668-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315668-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE0B9301589F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D553DE423;
	Thu, 25 Jun 2026 12:18:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EC331E852
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 12:18:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782389911; cv=none; b=OLO3iFntMoz1p9pXZDIXE9/znR3nELcywmHY0OZexZ+CNiSz0OMcGux3DFEIkZESRj1EUZd+koB9IV6tggrj84cZJlTUG93IjB2/JG80ld38dh3rnIVdKx2aULvHlpYbfCiQhUN4EtLNr88f3dQspxhDHx+U5aFKLqv6WMs7e6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782389911; c=relaxed/simple;
	bh=fKbJ2lapDsl5w1xHzgUfDXQ1oFpDglPavqoS8TMRmG8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z9Y27Zx1qeGTtJtZOfdbrWCkp0r/Zi5J5ycDwozHR6aZyBozbelWqxxowGu9pSh4khwHG5QVSX5p5rqL+dQBHx/gtrQjwoZESAOrIqisVhTXcRnmItbmyNGw9qv4jMncBBJVhGs/OwV6uo2gPfPu0+pM1ep/2yHtSnpTpUW3ia4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kblvDgoi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 788A51F000E9;
	Thu, 25 Jun 2026 12:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782389909;
	bh=ypdURDuW8hOjWyiKrtcd2ObDqYKpcP2G0O0o4hSLzz4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kblvDgoiStwhsdalYIbIR1WVw3asrBScAX8iZ4hjVdvBZkgnKkuH5mcT8JDxV2Yab
	 oiDw91bTHSckI4c2CKAn0bKPn2uTyM6/Zy11VqU/8auP3rpKmiXSS6ozE7UoLiTfOb
	 38tEm/IxS1/YpnxrGVoHiyNlpjyvLrAX2h+DKDsYmzYYILMb1yTj8ndqrujlcjwUbY
	 QEFl+IJCDoDaIjYuy8tV7CN6NYsVMOTTPwfdCCmLoeeRryLdbrDqfapoxJozaGRwhI
	 54A9TisATF+4/TA7WuAWrSbN5ZGwr9A4z76pc/ECn6lwuQqNzGHTQ+PW703z+iHHml
	 EJbtws3L6Gwkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] net: ethernet: ti: am65-cpsw: Fix MAC configuration
 for SGMII mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260625120805.28948-3-g-praveen@ti.com>
References: <20260625120805.28948-1-g-praveen@ti.com>
 <20260625120805.28948-3-g-praveen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 12:18:28 +0000
Message-Id: <20260625121829.788A51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315668-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 240A46C57BD

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing AM65_CPSW_SGMII_CONTROL_MASTER bit in SGMII control regist=
er write
- [Medium] Hardcoded SGMII link advertisement to 1000 Mbps Full Duplex
--

commit 2e14387f10f244dbb25f009bd28dfe67470e6821
Author: Gokul Praveen <g-praveen@ti.com>

net: ethernet: ti: am65-cpsw: Fix MAC configuration for SGMII mode
   =20
Fix MAC configuration of CPSW Ethernet Switch in SGMII mode by
modifying the CPSW_SGMII_MR_ADV_ABILITY_REG and configuring MAC
in master mode as per CPSGMII Module specification.

> diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ether=
net/ti/am65-cpsw-nuss.c
> index 7ac75fc8cdcf4..4740b35052464 100644
> --- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> +++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> @@ -84,6 +84,7 @@
>  #define AM65_CPSW_SGMII_CONTROL_REG		0x010
>  #define AM65_CPSW_SGMII_MR_ADV_ABILITY_REG	0x018
>  #define AM65_CPSW_SGMII_CONTROL_MR_AN_ENABLE	BIT(0)
> +#define AM65_CPSW_SGMII_CONTROL_MASTER          BIT(5)
> =20
>  #define AM65_CPSW_CTL_VLAN_AWARE		BIT(1)

[ ... ]

> @@ -2063,8 +2064,10 @@ static void am65_cpsw_nuss_mac_config(struct phyli=
nk_config *config, unsigned in
> =20
>  	if (common->pdata.extra_modes & BIT(state->interface)) {
>  		if (state->interface =3D=3D PHY_INTERFACE_MODE_SGMII) {
> -			writel(ADVERTISE_SGMII,
> -			       port->sgmii_base + AM65_CPSW_SGMII_MR_ADV_ABILITY_REG);
> +			writel(ADVERTISE_SGMII | LPA_SGMII_1000FULL | LPA_SGMII_LINK,
> +				port->sgmii_base + AM65_CPSW_SGMII_MR_ADV_ABILITY_REG);

[Severity: Medium]
Will this hardcoded advertisement break SGMII operation at 10 Mbps or 100
Mbps?

By unconditionally applying LPA_SGMII_1000FULL and LPA_SGMII_LINK, the MAC
seems to always claim 1000 Mbps capabilities regardless of the actual
requested or negotiated speed, which could restrict generic SGMII
functionality to gigabit-only.

> +			writel(AM65_CPSW_SGMII_CONTROL_MR_AN_ENABLE,
> +				port->sgmii_base + AM65_CPSW_SGMII_CONTROL_REG);

[Severity: High]
Does this write miss the AM65_CPSW_SGMII_CONTROL_MASTER bit introduced earl=
ier
in the patch?

The commit message states the intent is to configure the MAC in master mode,
but only AM65_CPSW_SGMII_CONTROL_MR_AN_ENABLE is being set in
am65_cpsw_nuss_mac_config().

Could this cause the MAC to remain in slave mode, potentially preventing the
SGMII link from coming up on MAC-to-MAC connections that require the MAC to
act as the master?

>  			cpsw_sl_ctl_set(port->slave.mac_sl, CPSW_SL_CTL_EXT_EN);
>  		} else {
>  			cpsw_sl_ctl_clr(port->slave.mac_sl, CPSW_SL_CTL_EXT_EN);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625120805.2894=
8-1-g-praveen@ti.com?part=3D2

