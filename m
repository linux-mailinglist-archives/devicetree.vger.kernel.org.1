Return-Path: <devicetree+bounces-326512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rtcpCwiYVmqY+gAAu9opvQ
	(envelope-from <devicetree+bounces-326512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:11:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C1F758A4D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:11:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oOFSINDL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326512-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326512-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9289F303B4FC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71A63DDDDB;
	Tue, 14 Jul 2026 20:11:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFAB423EAD
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:11:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059908; cv=none; b=hW1OS4NL5cF9Fo/334km+VhxqnE5XqPeAnaliOjzmzC5aD5xam5yTu98Mh5ZoHj0s+rLG9rUjbcEwfHfWoDjFmB0FrSSTfE0a8XfwnbxtH0KYA51y1GqQ1YLWQXkw++TUv9yH3tNYhf80s7eZNEJg6ykI9ZImNdhcEb0XjyBuiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059908; c=relaxed/simple;
	bh=fMb796rr2K6ejaLVTgTn1duH2sA8bXgXtaY7GgtK064=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SIniALIatvYUMEHlsUWB6pqno6yJcW552eLzPucuGO9vr4ARq5QtXAuafwh1FJluA0iKvsrJ8Tat+ErT5eX60h14UPrvtaFa3knuY6aXVCBQvr0UGYj6GovlY94FdUXeQ43lMncoF6yYZ0Cv56UHi5rWIdZYsHT4m2C1ZzhKOWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOFSINDL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CD381F00A3A;
	Tue, 14 Jul 2026 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059907;
	bh=k4QuKYpFrJbVJcIkqvZ2djSo0vSIsEarwQFfJgQe0qc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oOFSINDLSHliZdDcQ7Jp2iUk0rfaRfVhY4y8PKd3nF99WMtgRXPPmCiMhsE0ZmYfg
	 jsJjzwjI+eGGlbSk/UGdRmXLHsloNMVW4mxBkaSKiCs7RoTZgnM2T2U9ErFr0XCB6p
	 7hUym5cRSHucNDz9vzviolsJqbTf50/7tKMO0GCvkpOtCsaXfiBNktrMYR7ERNS8Rv
	 OETzXxOiowkp27XR5x60Z3+7WfF8eKKX6KnER7Huu91dWIhG0OQUvDTif9N1A73XRV
	 FZ/UBcuMtZzBZidwJ7c/LbGyk5WSgVRMSUWPb+qCOP3l08wBB9GudILasEebvfryJz
	 hi66fT0EJt1HQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 25/35] phy: rockchip: usbdp: Avoid xHCI SErrors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-25-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-25-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:11:46 +0000
Message-Id: <20260714201147.2CD381F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326512-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,lists.infradead.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83C1F758A4D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The initial setup path for `UDPHY_MODE_NONE` incorrectly re-enable=
s the USB3 port when the device only supports high-speed (`udphy->hs =3D=3D=
 true`), overriding intentional configuration.
- [High] The driver relies on the dynamically mutating `udphy->mode` to fil=
ter PHY power-off requests, which can permanently leak enabled clocks if th=
e Type-C mode changes between power-on and power-off.
--

--- Patch [25]: [PATCH v13 25/35] phy: rockchip: usbdp: Avoid xHCI SErrors =
---
commit c94fbaf2a245e81d949d0da907a2acb799ce1846
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

    phy: rockchip: usbdp: Avoid xHCI SErrors
   =20
    The USBDP PHY provides the PIPE clock to the USB3 controller, which
    means the PHY must be fully running when anything tries to access
    the xHCI registers.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index fba35510d88ce..c7f09040185b6 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1000,23 +992,24 @@ static int rk_udphy_power_on(struct rk_udphy *udph=
y, u8 mode)
>  	}
> =20
>  	if (udphy->status =3D=3D UDPHY_MODE_NONE) {
> -		udphy->mode_change =3D false;
>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> =20
>  		if (udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);

[Severity: High]
This isn't a bug introduced by this patch, but should the check above also=
=20
verify !udphy->hs?=20

When the PHY is configured for high-speed only, rk_udphy_usb3_phy_init()=20
intentionally disables the USB3 port. If DP is later initialized and enters=
=20
this udphy->status =3D=3D UDPHY_MODE_NONE branch, it appears the USB3 port =
will be
unconditionally re-enabled, overriding the explicit high-speed configuratio=
n.

You added the !udphy->hs check to the re-init branch below, which prevents=
=20
this issue there. Does the initial setup branch need the same check?

> -	} else if (udphy->mode_change) {
> -		udphy->mode_change =3D false;
> -		udphy->status =3D UDPHY_MODE_NONE;
> -		if (udphy->mode =3D=3D UDPHY_MODE_DP)
> -			rk_udphy_u3_port_disable(udphy, true);
> +		udphy->phy_needs_reinit =3D false;
> +	} else if (udphy->phy_needs_reinit) {
> +		rk_udphy_u3_port_disable(udphy, true);
> +		udelay(10);
> =20
> -		rk_udphy_disable(udphy);
> -		ret =3D rk_udphy_setup(udphy);
> +		ret =3D rk_udphy_init(udphy);
>  		if (ret)
>  			return ret;
> +
> +		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
> +			rk_udphy_u3_port_disable(udphy, false);
> +		udphy->phy_needs_reinit =3D false;
>  	}
> =20
>  	udphy->status |=3D mode;

[ ... ]

> @@ -1303,35 +1274,30 @@ static const struct phy_ops rk_udphy_dp_phy_ops =
=3D {
>  static int rk_udphy_usb3_phy_init(struct phy *phy)
>  {
>  	struct rk_udphy *udphy =3D phy_get_drvdata(phy);
> -	int ret =3D 0;
> =20
> -	mutex_lock(&udphy->mutex);
> +	guard(mutex)(&udphy->mutex);
> +
>  	/* DP only or high-speed, disable U3 port */
>  	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs) {
>  		rk_udphy_u3_port_disable(udphy, true);
> -		goto unlock;
> +		return 0;
>  	}
> =20
> -	ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_USB);
> -
> -unlock:
> -	mutex_unlock(&udphy->mutex);
> -	return ret;
> +	return rk_udphy_power_on(udphy, UDPHY_MODE_USB);
>  }
> =20
>  static int rk_udphy_usb3_phy_exit(struct phy *phy)
>  {
>  	struct rk_udphy *udphy =3D phy_get_drvdata(phy);
> =20
> -	mutex_lock(&udphy->mutex);
> +	guard(mutex)(&udphy->mutex);
> +
>  	/* DP only or high-speed */
>  	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
> -		goto unlock;
> +		return 0;

[Severity: High]
This is a pre-existing issue, but does evaluating the dynamically mutable
udphy->mode here risk leaking resources?

If a Type-C mux event changes udphy->mode (e.g., switching from USB+DP to=20
DP-only) while the PHY is active, udphy->mode & UDPHY_MODE_USB will become
false.

When the USB framework later powers off the PHY, this check will abort the
exit early. The USB bit in udphy->status will remain set permanently, and=20
rk_udphy_power_off() will never fully disable the PHY and its clocks.

Should this instead check the software power state (udphy->status) rather
than the requested hardware mode?

> =20
>  	rk_udphy_power_off(udphy, UDPHY_MODE_USB);
> =20
> -unlock:
> -	mutex_unlock(&udphy->mutex);
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D25

