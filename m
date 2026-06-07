Return-Path: <devicetree+bounces-307757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m9HrJugEJWpMCwIAu9opvQ
	(envelope-from <devicetree+bounces-307757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 07:43:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5846464EE1D
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 07:43:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lFnYhQN9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307757-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307757-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E242F3014769
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 05:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAAEB2BFC60;
	Sun,  7 Jun 2026 05:43:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B2F2C3259
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 05:43:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780810982; cv=none; b=NRm/68vD/ZN5xwe56C5Cepo2YU4pws7ASbdKgMIeLtSzBEOQRvymFSHFGavNsXXoPma980eVM4Qc5/3aC7Fc/V3ifRBQ4NrXFS8GxW7S3vBoWuaCReuXXgfx01a6FXmwnZhKa3Wh8df5mOe138qFWS8z2ATJ2cjea8jMfULxCWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780810982; c=relaxed/simple;
	bh=Bnf/JZzKucF8GHnbG6wU1JfZhTbAySUOX8EvovpLZIs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=vDzdbm+M3pkyqC8AZ7ldkmpxRg2Sau8PzrGAlka+vSdKw6jRvJr2epT6T/wo1EK09RjR2VWVOzw/4PdYY5P9i6S0hiecfUZciGDTJrESFh0qMePUpPWibdhIboje2MEItgRXZ/yNjV/jPk0AxHcONoyJTYKmyIl+CbJjk+tH8kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFnYhQN9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DD151F00893;
	Sun,  7 Jun 2026 05:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780810981;
	bh=P5NgJAsbUvs0APenmEVqXhj94s+mbSP6l5lYC3cjfSg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lFnYhQN9iEhxf9c2kU2wACMwSvJy/uXmgbBfl5KSA42UKVjgm4J8elnSaeGLAvKqw
	 ULegCta+uF5BDtrneLe1bMj1nYG5C/ZTxSg0C9qh2XPQ6O01SxHCzFh2Gm5uIb71Iw
	 B4saQkbQP5LVFOvRCzL4AIua6OHpn19rwPvx2v1JBzwFR1G5BPY8cta5r16lO4AqlY
	 zUVaAnf+O/k8k5Yyd2frw4rz/6qSUj4BkDH+NUKGzLW8sO071DP96XT9tkfnSMoehE
	 rZ782TRNxE4xF8UG70GlhuB54AKGDwybD3bYgyAuNcnEFHKi29ZuuRlVknizTEjK/8
	 iei/Zq4uW7aKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 12/16] net: phy: ncn26000: Support for
 loopback support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605-s2500-mac-phy-support-v4-12-de0fbc13c6d8@onsemi.com>
References: <20260605-s2500-mac-phy-support-v4-12-de0fbc13c6d8@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 Jun 2026 05:43:00 +0000
Message-Id: <20260607054301.1DD151F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307757-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5846464EE1D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] ncn26000_config_aneg overwrites MII_BMCR, clearing loopback state
--

commit 94cf320a690a5a9087c661b90073d1379cc73d25
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: phy: ncn26000: Support for loopback support

Adding loopback support for S2500 internal PHY to help running
loopback test through ethtool.

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
Will this newly added loopback state get silently cleared when the link is
configured?

Looking at ncn26000_config_aneg() which sets up the link, it uses phy_write=
()
rather than phy_modify() on MII_BMCR:

drivers/net/phy/ncn26000.c:ncn26000_config_aneg() {
	...
	// bring up the link
	return phy_write(phydev, MII_BMCR, NCN26000_BCMR_LINK_CTRL_BIT);
}

Since genphy_loopback_fixed_speed() manages the loopback state by toggling =
the
BMCR_LOOPBACK bit in MII_BMCR, won't this unconditional write clear the
loopback bit and cause loopback tests to fail if phy_config_aneg() is called
while loopback is active?

>  		.set_plca_cfg          =3D ncn26000_c45_plca_set_cfg,
>  		.get_plca_cfg          =3D genphy_c45_plca_get_cfg,
>  		.get_plca_status       =3D genphy_c45_plca_get_status,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-s2500-mac-=
phy-support-v4-0-de0fbc13c6d8@onsemi.com?part=3D12

