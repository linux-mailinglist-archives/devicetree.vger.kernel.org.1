Return-Path: <devicetree+bounces-312122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WZ0BCm0yMGobPwUAu9opvQ
	(envelope-from <devicetree+bounces-312122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:12:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB97688B8E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:12:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aivMNrDp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312122-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312122-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F16E53171BBC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8BB41166D;
	Mon, 15 Jun 2026 17:01:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A8B40F8C5
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 17:01:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781542892; cv=none; b=cNKu7vq6EYAG/dD5VPq2EezB7Q6XVaRfYgkll35GrfLuAwkiWlQUJoWPvSOBoZv5VREnd1M9M4bWM02R3SkDRYaz3Nu4yI39HBmJQP1uZl9YgY/9IrAUFW5TgGriR+4V50xmusX/OCsxCVfZoZVOuC6KKqFPYqUCvGkJFSCBfRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781542892; c=relaxed/simple;
	bh=BwU7u0v1n5+xQvkA51824AICVVL02A4b2YCMMyEDQyA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Kz7k/OPu2438PwuKUAz6W4pCy3ph4j3V+LUafJkht3R6Z96Uuu3VH5uBMmWf0u+LaNXypFkz975LVfNb7HPlraM+PV3HhyP5EELiONh1pJnFOpkzGG8q3XbnyDN7j2nhn67p9IJmOZTenjciuG6ouLZ8IiXmROcpndgbbkJrNds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aivMNrDp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F7F1F000E9;
	Mon, 15 Jun 2026 17:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781542891;
	bh=MhDYoepHtAA1M3YvRUPWr1/KpxRkgl0KPyw7gEdStg8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aivMNrDppO8Ws2pLS/bOqcIkTCB8k3urw9uNasG+07Nj5VdXKHuvG6+kMImL60HDi
	 Ul5sBIC2f5jFTgdMrT5UKsBLEwOfXKVCqNjpFYGwf2hWZJdDIhygJPveI1bvU1+KFC
	 KMjrqn4zJGAOSrdCAnSorGVxdWj1ztXrofmnYaXeeV7ivhC5KPkqnFymhzESqQRJCl
	 3jbTMaKElZNd1OU+WJzPGUM3Gu/DDxudGRE25y+9qp0DAdP+KVR++O4sgU/SCasUjJ
	 0Bt42r+VRg0fZc6RzJ4sTMQLmwO4mo/PfsEdiG5tyL8xuVTTh0CnTWo6xNCg3BC8s8
	 wpGk2gBlrbRHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 11/15] net: phy: ncn26000: Support for
 loopback
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260614-s2500-mac-phy-support-v5-11-89874b72f725@onsemi.com>
References: <20260614-s2500-mac-phy-support-v5-11-89874b72f725@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 17:01:30 +0000
Message-Id: <20260615170130.B1F7F1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312122-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,onsemi.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDB97688B8E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly added loopback support is broken because the driver's co=
nfig_aneg implementation blindly overwrites the MII_BMCR register, clearing=
 the loopback bit.
--

commit 5a40363adea3a7ee8be993f04a56cb1d3004a24b
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: phy: ncn26000: Support for loopback

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

[Severity: High]
Does ncn26000_config_aneg() inadvertently clear the loopback bit that is
configured here?

Looking at the driver's implementation of ncn26000_config_aneg():

drivers/net/phy/ncn26000.c:ncn26000_config_aneg() {
    ...
    // bring up the link
    return phy_write(phydev, MII_BMCR, NCN26000_BCMR_LINK_CTRL_BIT);
}

When the interface is brought up, the PHY state machine is asynchronously
scheduled and can transition from PHY_UP by unconditionally calling
ncn26000_config_aneg().

If the user activates the loopback selftest simultaneously, the loopback
bit is set via genphy_loopback_fixed_speed(). However, because
ncn26000_config_aneg() blindly overwrites the MII_BMCR register using
phy_write(), it silently clears the BMCR_LOOPBACK bit.

This causes the hardware loopback to be disabled while the software state
indicates it is active, which can lead to selftest failures and potentially
leak test packets onto the network wire.

Could ncn26000_config_aneg() use phy_modify() instead of phy_write() to
preserve orthogonal bits like BMCR_LOOPBACK?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-s2500-mac-=
phy-support-v5-0-89874b72f725@onsemi.com?part=3D11

