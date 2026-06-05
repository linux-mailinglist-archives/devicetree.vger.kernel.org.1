Return-Path: <devicetree+bounces-307515-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P0uyBQwaI2rgiQEAu9opvQ
	(envelope-from <devicetree+bounces-307515-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9FC64ABD4
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:48:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eTV1JzEA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307515-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307515-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0E3BF3064CD8
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 18:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D30E3ED124;
	Fri,  5 Jun 2026 18:44:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784993EE1D4
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 18:44:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780685057; cv=none; b=eVV1NPHCnZ/UeU+kgz98W4gkq8J+tVFWP0zlxBCclOGE2tBqoHDlZdPiYXoYKO5pHR7+h9FkmGNxOECI54PqYIiSyGfblZhjW0ejTCkEAnqT3J0lj+bXMLPJW2U6CJEKbWy/ftRi/uFcbBNH6L4uYOaYjE7o1bBhqvf4mQt6Eqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780685057; c=relaxed/simple;
	bh=rggEst5YuLi66LiA8emhb0xmTsqSnB25I+HGxLW5rAo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HqvXqfn/hoCjT5jc3tZmnoEgtXzh3Z4oOyeZGz4myT48BxW3dPfGf1YyGQe0VlvJjgjt0EOiDuu9WIIYcrS55ULU0WFGJfG3Y5f1gvCuuOUovIbHAcWA1IAUQAAB4sR9RZiKr1owev5NFfycngiRQK16O5hisWaVBzEbtkqXr88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTV1JzEA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879341F00898;
	Fri,  5 Jun 2026 18:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780685056;
	bh=oFhLD9vOWjoOCdFleEscPaEuQ9oYMs1ixaa4B9Qqgl8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eTV1JzEAZBKsnM+ZWPIV9a1g6cyOhuFqeHA9QxHshpuq+Opr0+VYr8sqn+RJstfWd
	 1Uo/0z5ReSJyQmusERN80K1UgkRks8pTFR8xCMsQs1+yyrBEXDTkbDNrvG/RJT1F2b
	 TMXcu2fgqRnwEml2G05Gx4aQ4K+jvdHqqGKu1Pcf9WftzOyl/qZ+XMql8xl1+UFNJS
	 KmBV+ietUfQLr/agmMj+iYKpifGIw1KdmsudU75Gb4vdsKjabDVrTon94aWOQLV582
	 f0qOsZwGS6S+lINQifExg5XConFHJpzV4hbkVs4SvD0VWAFgD+KbSOaC2Rl6TDO7mw
	 7ro4qLaD+XwwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] drm/panel: Add driver for Raydium RM69220 DDIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Koskovich" <akoskovich@pm.me>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260605-asteroids-panel-support-v2-2-44b96c6eca91@pm.me>
References: <20260605-asteroids-panel-support-v2-2-44b96c6eca91@pm.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 18:44:15 +0000
Message-Id: <20260605184415.879341F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307515-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:akoskovich@pm.me,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C9FC64ABD4

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The reset GPIO is requested with `GPIOD_OUT_LOW`, which deasserts =
it and can backpower the unpowered panel.
- [High] The backlight callback modifies `dsi->mode_flags` without locking =
and permanently corrupts the state if the DSI transfer fails.
- [Low] The macro `MIPI_DSI_MODE_DSC_ALL_SLICES_IN_PKT` is undefined in the=
 kernel, causing a build failure.
--

commit 3b5fdc2d207db00cc147a18d14281a4361ece19b
Author: Alexander Koskovich <akoskovich@pm.me>

drm/panel: Add driver for Raydium RM69220 DDIC

Add a panel driver for Raydium RM69220 DDIC based displays such as the
BOE BF068MWM-TD0 found in the Nothing Phone (3a).

> diff --git a/drivers/gpu/drm/panel/panel-raydium-rm69220.c b/drivers/gpu/=
drm/panel/panel-raydium-rm69220.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-raydium-rm69220.c

[ ... ]

> +static int raydium_rm69220_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi =3D bl_get_data(bl);
> +	u16 brightness =3D backlight_get_brightness(bl);
> +	int ret;
> +
> +	dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +	ret =3D mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	if (ret < 0)
> +		return ret;
> +
> +	dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;
> +
> +	return 0;
> +}

[Severity: High]
Does this error path permanently corrupt the DSI mode flags?

If mipi_dsi_dcs_set_display_brightness_large() fails, the function returns
early without restoring MIPI_DSI_MODE_LPM. Userspace can trigger this easily
by writing to the backlight sysfs node while the display is powered off,
which will cause a transfer timeout. All future DSI initialization commands
will then incorrectly be sent in high-speed mode, preventing the panel from
turning back on until the system is rebooted.

[ ... ]

> +static int raydium_rm69220_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev =3D &dsi->dev;
> +	struct raydium_rm69220 *ctx;
> +	int ret;

[ ... ]

> +	ctx->reset_gpio =3D devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Failed to get reset-gpios\n");

[Severity: High]
Is GPIOD_OUT_LOW the correct initialization here?

Because the reset pin is typically active-low, a logical 0 translates to
driving the physical pin HIGH. This happens at probe time before the
regulators are enabled, which can drive voltage into the panel's reset pin
while its power supplies are off. This forward-biases the panel's ESD
protection diodes, leaking current into the power plane and potentially
causing hardware damage. Should this be initialized to GPIOD_OUT_HIGH to
hold it safely in reset (0V) until power is applied?

> +
> +	ctx->dsi =3D dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes =3D 4;
> +	dsi->format =3D MIPI_DSI_FMT_RGB101010;
> +	dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_NO_EOT_PACKET |
> +			  MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM |
> +			  MIPI_DSI_MODE_DSC_ALL_SLICES_IN_PKT;

[Severity: Low]
Will this compile correctly?

The macro MIPI_DSI_MODE_DSC_ALL_SLICES_IN_PKT appears to be undefined in the
upstream kernel, possibly a leftover from a vendor tree. Compiling this
driver will likely result in an undeclared identifier error.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-asteroids-=
panel-support-v2-0-44b96c6eca91@pm.me?part=3D2

