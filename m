Return-Path: <devicetree+bounces-313909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bohaCGdpNWqSvgYAu9opvQ
	(envelope-from <devicetree+bounces-313909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:08:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8D76A6F19
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:08:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Au2s3gnY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313909-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313909-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A693031B740C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B86CE3B993B;
	Fri, 19 Jun 2026 16:00:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903C93B47F5
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 16:00:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884806; cv=none; b=PvEEAhzkvLUlmpVUs8FkgKAxfOCu2LMkfMGDl0sT4yVL13FcIpozCjWdB7hKsqx/8C/2ZrGmba+V1/mBLDSWiqITjhgvSaSuizwu9HL9hmiTRzOlJ3j2K4YnO1RUPymIEiW6EI+JwbP8h2HqdhSyYv2g03xl4JodpaCz5p9l+ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884806; c=relaxed/simple;
	bh=k8J4YR61sOUs0BtKRRhz+XzPZOM/G+DZ0+LuxwbaVxA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=diQq1b/lxdkfaxjR6OxcBZyRHeHx55gQvBIk3JKGMYsnjXkRqoIXbgabwk/Oh8KknKhg1eMJl9QeKHApugzJhDJRFf4yhPSRSv2wuf5NAv10+vWFKwlFl5Djs+7r2bKzFgv0L2pgoIV12SLXVio/JluoQujpBGVB36HRPyJkQxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au2s3gnY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BA9F1F000E9;
	Fri, 19 Jun 2026 16:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884802;
	bh=QE2e0FbnZmc268BVIWUqcSPxyLNNKO/HCPWndbYLYAc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Au2s3gnYlLBhxu4qVh7O98BTmpufKM4YlFnQ3CbXe8i+DXNZ/BtiWjL+VjlI+OnFj
	 y62Vl/o60gCp3VtSvx4fv1jji19/7/P+f2Q92B9pGKfjbl3j+pGh+NTkfkfRx3udU+
	 v2wuVmEGz6h9tTB59Wc6BViBh2/gEnY/6mF8j0tPPjdbCtsCwnB0R4wMyYwGu0eTJT
	 7qlM/0gBKtUAPGw9RRffUocUz+wwQNQMewrCsO0s5XeJ8alGMOZotUIZkt+6IcueUj
	 6HwtdvswyUXOSkSukjwUwAzjEdFq8EAUVDX3gkL493ds0kilLHjJ4L73Ez0viLV3TH
	 rXUWKJwQ73zEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 16/23] phy: rockchip: usbdp: Drop DP HPD handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-16-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-16-3bb1f54b3f35@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 16:00:01 +0000
Message-Id: <20260619160001.9BA9F1F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313909-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6F8D76A6F19

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Potential Use-After-Free of the `udphy` struct when the driver is =
unbound, triggered by active Type-C consumers.
--

commit 709452eb1097435563d2642eb88ed81ae54361f2
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Drop DP HPD handling

This patch drops the HPD handling logic from the USBDP PHY. The registers
involved require the display controller power domain being enabled and thus
the HPD signal should be handled by the displayport controller itself.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index b75c190a4311f..383e68b245060 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1333,6 +1291,14 @@ static int rk_udphy_typec_mux_set(struct typec_mux=
_dev *mux,
>  	struct rk_udphy *udphy =3D typec_mux_get_drvdata(mux);
>  	u8 mode;
> =20
> +	/*
> +	 * Ignore mux events not involving DP AltMode, because
> +	 * the mode field is being reused, e.g. state->mode =3D=3D 4
> +	 * could be either TYPEC_MODE_USB4 or TYPEC_DP_STATE_C.
> +	 */
> +	if (!state->alt || state->alt->svid !=3D USB_TYPEC_DP_SID)
> +		return 0;
> +
>  	mutex_lock(&udphy->mutex);

[Severity: High]
This is a pre-existing issue, but could this code lead to a use-after-free
of the udphy struct when the driver is unbound?

The udphy structure is allocated using devm_kzalloc() in rk_udphy_probe(),
tying its lifetime to the device's binding lifecycle.

On driver unbind, devres calls typec_mux_unregister() and
typec_switch_unregister(), which run device_unregister(), and then frees
udphy.

However, device_unregister() only drops the core reference. If a Type-C
consumer (like the tcpm port driver) holds a reference to these Type-C
devices via fwnode_typec_mux_get(), the mux_dev and sw_dev objects stay
alive.

The consumer can still asynchronously invoke rk_udphy_typec_mux_set() or
rk_udphy_orien_sw_set() after the phy driver has been unbound.

Because udphy has already been freed by devres, does this mean any
subsequent call will dereference the freed udphy pointer when attempting to
lock udphy->mutex here, potentially resulting in memory corruption?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-rockchip-u=
sbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com?part=3D16

