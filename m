Return-Path: <devicetree+bounces-311099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u3H+Lgg9LGrBOAQAu9opvQ
	(envelope-from <devicetree+bounces-311099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 19:08:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5830D67B371
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 19:08:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k4JClU9T;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311099-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311099-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8B77C300B1A3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D783E3150;
	Fri, 12 Jun 2026 17:08:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC88374A1E
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 17:08:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781284101; cv=none; b=uBLd+WlYRpvQZqbofL7skIiLvwz8AEZIl8gDZyoZnYsJNp/7hopMtWAooYTxRpzuVo7zlGLDWtKvVjne6PAoAsrP5C7GU16CnzgGTizS7YV05db7o1+wZIAh1no3marny9NTSo8dT3TcSa0+GAHxRQCx1Hlpovj3KO3SM+SUsY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781284101; c=relaxed/simple;
	bh=pDs+FD4ADbUn7jDFL19DI/lwK3e7QPdObd/w0xhTSro=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OnwhjCZEmVWwsC3ZVjYYGAweqBVDWRdZTfE6TqgdvIxHqIBY3qz6k45YhJjT4bMUIoLqRsbJLu38kQO6NBQBpRQz0wVzWAX11w5OOCZ1b8gpXq2Lz0rJzd16ZbEPZ/CfPGB4zSF/nr9aphcLsPbgj2QsZkhsEom1dzmVtK9Acws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4JClU9T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29A4F1F000E9;
	Fri, 12 Jun 2026 17:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781284099;
	bh=bxY1cXx71Lfk3cpTAgpNiqW/bLBozXrzsfg7LlYp1Tw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k4JClU9T5y6A+wCQYCmKvBKF7K0BSGvLw2GXqiDS0YJ//7bdqLWOEnXXDdy2/VVx+
	 H4VnjR5g4eglK705adEuf7qRYvcHVdQeESDsUxCYHPOzOHNZ13uE+RRms6q8/C3cW+
	 rxzDtbG28peWlJI/mxvixz86WpvrMFrC/NIyywgdZ4zGbCn1Rg1wn3O53/TsrmrWxO
	 wqB0R0NNfibXzOalWuhDWFz4T+P/WsWs+IwI65vw/L8ZOVfF7NuQ+o6VocgBULn91p
	 dWhPFEcSamscv48lSXWslmd/zKCiiw8aVcZHs3C0mgiSL1RBzLiqqlDVhXyS7VblLB
	 7fbv0tssX4uBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 17/18] phy: rockchip: usbdp: Support going from
 DP-only mode to USB mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-17-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-17-efc83069869f@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 17:08:18 +0000
Message-Id: <20260612170819.29A4F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311099-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,kernel.org,linaro.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,collabora.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5830D67B371

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [Medium] The return value of `rk_udphy_power_on()` is silently ignored du=
ring Type-C mux state transitions.
- [Medium] The `usb_in_use` flag is permanently left as `true` if `rk_udphy=
_power_on()` fails during USB PHY initialization.

Pre-existing issues:
- [High] The `UDPHY_MODE_USB` bit in `udphy->status` is permanently leaked =
if `rk_udphy_usb3_phy_exit()` is called while the Type-C mux is currently i=
n DP-only mode.
- [High] Failing to reinitialize the PHY after a transient error masks subs=
equent failures and reports false success.
--

commit 3ea1c2acafe2e85bbef04dfbb4e06950b88402b0
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Support going from DP-only mode to USB mode

When a USB-C adapter, which maps all Superspeed lanes to DP is plugged
in, the USB support is disabled in the PHY. When the adapter is
unplugged and a different adapter with USB functionality is plugged in
afterwards, USB functionality is not restored as the USB controller
keeps the PHY enabled for the entire time.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1015,6 +1016,9 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  		ret =3D rk_udphy_init(udphy);
>  		if (ret)
>  			return ret;

[Severity: High]
This is a pre-existing issue, but if rk_udphy_init() fails here,=20
udphy->phy_needs_reinit was already set to false earlier in the block.

Will subsequent calls to rk_udphy_power_on() skip initialization and=20
falsely return success while the hardware remains broken?=20

Should phy_needs_reinit be restored to true on the error path?

> +
> +		if (udphy->mode & UDPHY_MODE_USB)
> +			rk_udphy_u3_port_disable(udphy, false);
>  	}
> =20
>  	udphy->status |=3D mode;

[ ... ]

> @@ -1278,6 +1282,15 @@ static int rk_udphy_usb3_phy_init(struct phy *phy)
> =20
>  	guard(mutex)(&udphy->mutex);
> =20
> +	udphy->usb_in_use =3D true;
> +
>  	/* DP only or high-speed, disable U3 port */
>  	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs) {
>  		rk_udphy_u3_port_disable(udphy, true);
>  		return 0;
>  	}
> =20
>  	ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_USB);
> =20
>  	return ret;
>  }

[Severity: Medium]
If rk_udphy_power_on() fails and returns an error, usb_in_use remains true.=
=20

Will this cause rk_udphy_typec_mux_set() to incorrectly attempt to power on=
=20
the USB PHY later, despite the USB controller not actively using it?

Should the flag be reverted to false on the error path?

> @@ -1295,6 +1301,13 @@ static int rk_udphy_usb3_phy_exit(struct phy *phy)
> =20
>  	guard(mutex)(&udphy->mutex);
> =20
> +	udphy->usb_in_use =3D false;
> +
>  	/* DP only or high-speed */
>  	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
>  		return 0;

[Severity: High]
This isn't a bug introduced by this patch, but if the Type-C mode=20
transitions to DP-only, udphy->mode loses the UDPHY_MODE_USB bit.=20

When rk_udphy_usb3_phy_exit() is subsequently called, it checks=20
!(udphy->mode & UDPHY_MODE_USB) and returns 0 early, skipping=20
rk_udphy_power_off().=20

Does this result in a permanent leak of the PHY's clocks and resets, since=
=20
udphy->status never clears the UDPHY_MODE_USB bit?

> =20
>  	rk_udphy_power_off(udphy, UDPHY_MODE_USB);
> =20
>  	return 0;
>  }

[ ... ]

> @@ -1325,8 +1334,20 @@ static int rk_udphy_typec_mux_set(struct typec_mux=
_dev *mux,
> =20
>  	guard(mutex)(&udphy->mutex);
> =20
> +	old_mode =3D udphy->mode;
> +
>  	rk_udphy_set_typec_state(udphy, state->mode);
> =20
> +	/*
> +	 * If the new mode includes USB but the old one didn't (e.g. leaving
> +	 * DP-only), and the USB PHY was already initialized by the USB
> +	 * controller, we need to power on the USB side now since no
> +	 * subsequent phy_init call will come from the controller.
> +	 */
> +	if ((udphy->mode & UDPHY_MODE_USB) && !(old_mode & UDPHY_MODE_USB) &&
> +	    udphy->usb_in_use && !udphy->hs)
> +		rk_udphy_power_on(udphy, UDPHY_MODE_USB);

[Severity: Medium]
Does this code discard the return value of rk_udphy_power_on()?=20

If initialization fails, the error is ignored and the driver reports succes=
s=20
for the Type-C mux state transition, which could leave the USB functionalit=
y=20
silently broken.=20

Should this check the return value and at least log or propagate the error?

> +
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-rockchip-u=
sbdp-cleanup-v5-0-efc83069869f@collabora.com?part=3D17

