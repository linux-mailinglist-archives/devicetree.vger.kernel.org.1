Return-Path: <devicetree+bounces-317994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QxT9Kdz7Q2oomwoAu9opvQ
	(envelope-from <devicetree+bounces-317994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:24:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE416E6E2C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:24:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ldLWqH4G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317994-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E3F8C306CEC9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84C13DCD8B;
	Tue, 30 Jun 2026 17:24:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6323B4EAA
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 17:24:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782840244; cv=none; b=knWRu0J9J+zIMFq9jhSsoMLLl9YP+QCkXnFgK22v1h7ezZYNvKvkzkS7SMQNc0iRvvu2f/i8xgt41K6bjZ8HKG5BOl/sxtTab6CJAjm/KUTgztqf8Ss2lvYKiA+1ZNqgMPDyQKjjdMehZkSqEMU1g4HZ4BteXa6eiKRPZCctVMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782840244; c=relaxed/simple;
	bh=9iVdKItrZtiMkn062LVS14cjg1IbfgOJFs2ugLHt35I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kjpizaIG+4Zifaj0VBbRhDrrd0bEreiw5wY7jj0calHk/zUXYNMqT55XGKKUw687RbUiS5howDwMYiUfpuOFV34SjY2Sc+s4lekQh7iRR1nGdh9vngjs+Jbw+z8jlrr6T86RJUCOonHsKnqXe9S6yE5W6AGQb54EaIahXzDJ220=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldLWqH4G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EE571F00A3D;
	Tue, 30 Jun 2026 17:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782840243;
	bh=rA20OS/O5+x1NhhGofbfr7W8zQanD+f4zcvVeI6ahPo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ldLWqH4GJwZ5Ifq4XHbiP2ALJ6azixiYfPfRrPSjYh2WpyY8EJR3jWCtLI/otCyDX
	 ER2vFrDBRpCEOAuxn+h8f3xRc/iIT/t9Fs2JqFomCb4qRtepyYPgvgLkCTArS2Iokg
	 w5GpXYKaa4PziqtzAtrXxfS21N49EQzBvHwszDbmUmNbbb6YzQgjc3D8mqrPDORyp6
	 2y13iZVqOWSOs1WmT3fhiXBjXtV7p9TnA1B50xkP4NwpJpSz0mYpkb6TWDNjqBjJWB
	 enfEtQSpMxrrOuly2guV7PN5lr3IEZ7k3k3vN4+3/eBH5bSUdv4pNpHdIyiKwRlywI
	 n6toU0g8Mnyzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 11/15] net: phy: ncn26000: Support for
 loopback
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-s2500-mac-phy-support-v6-11-18ce79500371@onsemi.com>
References: <20260629-s2500-mac-phy-support-v6-0-18ce79500371@onsemi.com>
 <20260629-s2500-mac-phy-support-v6-11-18ce79500371@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 17:24:02 +0000
Message-Id: <20260630172403.3EE571F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317994-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[onsemi.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FE416E6E2C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The config_aneg callback unconditionally overwrites the MII_BMCR r=
egister, silently clearing previously set bits such as loopback.
- [Medium] The interrupt handler incorrectly uses a register address macro =
as a bitmask to check for link status changes.
--

commit 80f0753c539b77ecac87c47e5aa0620f69037283
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: phy: ncn26000: Support for loopback

Adding loopback support for S2500 internal PHY to help running
loopback test through ethtool. This sets genphy_loopback_fixed_speed
as the set_loopback callback.

> diff --git a/drivers/net/phy/ncn26000.c b/drivers/net/phy/ncn26000.c
> index c3a34b2c524d5..afafa81dc22b8 100644
> --- a/drivers/net/phy/ncn26000.c
> +++ b/drivers/net/phy/ncn26000.c
> @@ -178,6 +178,7 @@ static struct phy_driver ncn26000_driver[] =3D {
>  		.config_aneg           =3D ncn26000_config_aneg,
>  		.read_status           =3D ncn26000_read_status,
>  		.handle_interrupt      =3D ncn26000_handle_interrupt,

[Severity: Medium]
This is a pre-existing issue, but does the interrupt handler use the wrong
mask to check for link status changes?

ncn26000_handle_interrupt() checks the interrupt status using the register
address macro (17 / 0x11) instead of the proper bitmask:

drivers/net/phy/ncn26000.c:ncn26000_handle_interrupt() {
	...
	ret =3D phy_read(phydev, NCN26000_REG_IRQ_STATUS);

	// check only link status changes
	if (ret < 0 || (ret & NCN26000_REG_IRQ_STATUS) =3D=3D 0)
		return IRQ_NONE;
	...
}

Because NCN26000_REG_IRQ_STATUS is 17 (which has bit 0 set), it coincidenta=
lly
matches NCN26000_IRQ_LINKST_BIT (BIT(0)). However, it will also incorrectly
match other interrupts like bit 4 (NCN26000_IRQ_PLCAREC_BIT).

Should this be using NCN26000_IRQ_LINKST_BIT instead?

> +		.set_loopback          =3D genphy_loopback_fixed_speed,

[Severity: High]
This isn't a bug introduced by this patch, but will configuring loopback
here be silently broken by ncn26000_config_aneg()?

When a user configures loopback via ethtool, it sets BMCR_LOOPBACK in MII_B=
MCR.
However, if the PHY state machine later triggers a re-configuration,
ncn26000_config_aneg() unconditionally overwrites MII_BMCR:

drivers/net/phy/ncn26000.c:ncn26000_config_aneg() {
	...
	// bring up the link
	return phy_write(phydev, MII_BMCR, NCN26000_BCMR_LINK_CTRL_BIT);
}

Will this wipe out the loopback bit and cause the hardware state to be lost
while the software state machine assumes loopback is still active?

>  		.set_plca_cfg          =3D ncn26000_c45_plca_set_cfg,
>  		.get_plca_cfg          =3D genphy_c45_plca_get_cfg,
>  		.get_plca_status       =3D genphy_c45_plca_get_status,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-s2500-mac-=
phy-support-v6-0-18ce79500371@onsemi.com?part=3D11

