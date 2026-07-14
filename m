Return-Path: <devicetree+bounces-326516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +lytLSKZVmpb+wAAu9opvQ
	(envelope-from <devicetree+bounces-326516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:16:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0953D758AE0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:16:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CxNy2SnT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326516-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326516-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A3F730BAA23
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FAE7427FAC;
	Tue, 14 Jul 2026 20:15:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BF5427F80
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:15:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060153; cv=none; b=KC9lgdjGfWBvJ6hyDf6lL7b4XxJlE7CNcvFA/rLwViZcHEUIlgsJIfkcTYtK8+2SdE4O/smmaO9jAIBWqr0Pppxbo6Hz/tubXLiB3GerjqluuUpyhzzZn6nDV1D6mhnkLLwcBjKdOHU2sY1Vww0lD/5OT96jrW/HzjvCmVP1bmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060153; c=relaxed/simple;
	bh=CDIeKiKO6Deec4QmfG2STjzz6+7xFIl+CTI7oubT8GU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iKPeSkyATYnVrR3+JOEsgLd4ulnS/x1GplAESpA+WQrnpmCHKBcroTDjl59j65amRMVTfAvi4vp/JMjvNovvx2ciDL6XdrNsNQWge/oq9GWiy4MAslAlz2MLXLO/lUmNTl6fGnJkrWaEg/XNYHy82Ckkhj2Pl9PkOcfwP1QC28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxNy2SnT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 197A81F000E9;
	Tue, 14 Jul 2026 20:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784060151;
	bh=wNQQrwvWk06rZvAOXuAqVWSyH7mtMtOyK2DT4/fewzA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CxNy2SnT6DYd1R6WThGYNu7+GrDhT1QXDzZRVwqEJRqBc2peRyqiZyj4CeSosQ1vf
	 cokw5Yd76yy+HLXwlrKnPrALhsd/N4bwpZK1n43rerYzl5iXLahUD3Gvn9CiuUe16B
	 5KKcfnBbx/xjWCy5f2hWk7BvIjAhinbzDCRdUFZChC95e+ZIciuFbXgFdqvKbwMXZ3
	 VrSKkZEBkU9YLvehBdQC+tHmHTrOmSiEQGGoTVZv5m0DqJOl1/fdMVBAXpUgM56L5e
	 85XgvTYRK0U+s4OR/rUbV+ik8mxVZ3qFbzPc7xhqM6awz60WM8TgLBRAoLvp2n9Uv7
	 h03BdJ1tld08Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 27/35] phy: rockchip: usbdp: Only enable USB3 when
 not in high-speed mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-27-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-27-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:15:50 +0000
Message-Id: <20260714201551.197A81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326516-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,lists.infradead.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0953D758AE0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Returning 0 instead of an error when a requested PHY mode is unsup=
ported causes unclocked register accesses that will trigger a Synchronous E=
xternal Abort (SError).
--

--- Patch [27]: [PATCH v13 27/35] phy: rockchip: usbdp: Only enable USB3 wh=
en not in high-speed mode ---
commit 80f8e58c736697054e63cee31e4afb6d94fb9e90
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Only enable USB3 when not in high-speed mode

This commit ensures that USB3 mode is not accidentally enabled during
PHY re-initialization for systems configured as high-speed only via
device tree.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260626212424.C215E1F000E9%40smtp.ke=
rnel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 701c92ed6e2de..59b836a3796ce 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1009,7 +1009,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)

[Severity: High]
This is a pre-existing issue, but I noticed a potential problem in
rk_udphy_power_on() when an unsupported mode is requested.

Earlier in the same function:

    if (!(udphy->mode & mode)) {
        dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
        return 0;
    }

If phy_power_on() is called by a consumer like the DP driver while
udphy->mode lacks UDPHY_MODE_DP, this returns 0 instead of an error code.

The caller rk_udphy_dp_phy_power_on() then receives this false success
value:

    ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_DP);
    if (ret)
        return ret;

    rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);

Could this cause rk_udphy_dp_lane_enable() to access pma_regmap while
the PHY APB clocks remain disabled?=20

Since rk_udphy_setup() would not have been called, accessing unclocked
APB registers here could trigger a Synchronous External Abort (SError).

Would it be safer to return an error like -EOPNOTSUPP instead of 0 when
the requested PHY mode is unsupported?

>  		if (ret)
>  			return ret;
> =20
> -		if (udphy->mode & UDPHY_MODE_USB)
> +		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
>  		udphy->phy_needs_reinit =3D false;
>  	} else if (udphy->phy_needs_reinit) {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D27

