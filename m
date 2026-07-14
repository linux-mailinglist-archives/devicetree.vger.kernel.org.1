Return-Path: <devicetree+bounces-326483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ofgmDdOSVmoj9wAAu9opvQ
	(envelope-from <devicetree+bounces-326483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:49:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 981B675876A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:49:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fjEwlc7C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326483-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326483-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 048143019FD3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E703ECBE5;
	Tue, 14 Jul 2026 19:48:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB87531F99B
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:48:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784058530; cv=none; b=NSykX6HVqnpqZ0R5xHBw+x5L+Mq3FKPG9Xb9h0KeAMgr3dZ4adJJ5vYQGUo3JxrzluYvqCse09V/WAaZHCQMpH7UXm3TODUQ8wimupFX7T2MQOTpyg0emf9bSAgjyqSHzBhK9EZ55yvi5SddEY/tzpWlh+3447oELpATtLgF45s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784058530; c=relaxed/simple;
	bh=64We818z1Wfg1w7+rOmHZe1TzjDocfGEVdsGeK1iZIM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=g939XrHoqM/pio7cf9LjMez6SXaYTbdt49h3v56cNV6QUyB+MPFuLl/Iy4iK2JvnJYV1vbTnGDahvN/vNRdSwcsDO7V/a54ucSeH4aLdKkbFtXGWDMoXS6n6S4xCGRFHNHEXzReMM9Ood+15l3LXh0hIsNtUNPFZCwLa9nxPjM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjEwlc7C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C91511F000E9;
	Tue, 14 Jul 2026 19:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784058529;
	bh=0AryzvXHNqPdShtyz0iKiiDDljQCajdekSlOfVNbLEU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fjEwlc7Cdp4z9BMl22sPkeZ40EfapEL3gg6VFVOXDQOWLMCCBBMrfs41qRW8tx7ta
	 Jew8GPAPNq/OHfw+C9uFqX1FKBH+CRrkxTphJCw5t+rQjCDKUGDZfR2BpOCixJoL29
	 6FTfGVaXllCDm7+DBFKrAU8RQYW/fftFe8wC7vl4YwvoF4rJxQYAgGuA3nKcuPtP2w
	 kLdQOUYW9VU+BFfPmA0WLiPRG2mwEBnbDU0Q+c8G+1yK631eS95GnQqUntjN+aL1PV
	 HAiXn4rO/7MxstNA9YW9LGud2jKY4H4v9szXTvXXiUfFqkY+c6lUP8CqlnOp515dtn
	 D8oit5qIfvFZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 04/35] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-4-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-4-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 19:48:48 +0000
Message-Id: <20260714194848.C91511F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326483-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,linaro.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 981B675876A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] If the PHY was pre-enabled by the bootloader, the driver leaves th=
e clocks enabled and resets deasserted. If probe fails subsequently or the =
driver is unbound, these resources are permanently leaked.
--

--- Patch [4]: [PATCH v13 04/35] phy: rockchip: usbdp: Fix devm_clk_bulk_ge=
t_all check ---
commit 553b68092e2ed3747377c52ed53225389dff5096
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Fix devm_clk_bulk_get_all check

This commit fixes the return value check for devm_clk_bulk_get_all() in
the rockchip usbdp combo phy driver. It prevents an issue where returning
-ENODEV would permanently fail the driver probe instead of allowing it
to defer.

Link: https://lore.kernel.org/linux-phy/20260612164107.C7DB21F000E9@smtp.ke=
rnel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 12dfdd470a782..2845a012eafcc 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -427,8 +427,8 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, =
struct device *dev)
>  	int i;
> =20
>  	udphy->num_clks =3D devm_clk_bulk_get_all(dev, &udphy->clks);
> -	if (udphy->num_clks < 1)
> -		return -ENODEV;
> +	if (udphy->num_clks < 0)
> +		return udphy->num_clks;
> =20
>  	/* used for configure phy reference clock frequency */
>  	for (i =3D 0; i < udphy->num_clks; i++) {

[Severity: High]
This is a pre-existing issue, but does rk_udphy_probe() permanently leak
clocks and resets if the driver probe fails or is unbound?

If the bootloader has already enabled the hardware,
rk_udphy_get_initial_status() leaves the clocks enabled and resets
deasserted by intentionally skipping rk_udphy_disable().

However, if a subsequent step in rk_udphy_probe() fails:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_probe() {
	...
	ret =3D rk_udphy_get_initial_status(udphy);
	if (ret)
		return ret;
	...
	if (device_property_present(dev, "orientation-switch")) {
		ret =3D rk_udphy_setup_orien_switch(udphy);
		if (ret)
			return ret;
	}
	...
}

The function returns an error without disabling the clocks or asserting
resets.

Since devm_clk_bulk_get_all() only registers a cleanup action to clk_put()
the clocks (not disable/unprepare them), the clock enable counts are leaked,
preventing the clock subsystem from disabling them later.

Does this also cause a similar resource leak if the driver binds successful=
ly
but is later unbound via sysfs, since the driver lacks a .remove callback to
tear down the pre-enabled hardware state?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D4

