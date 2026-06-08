Return-Path: <devicetree+bounces-308428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id inmtIZv0JmrKogIAu9opvQ
	(envelope-from <devicetree+bounces-308428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:58:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4B1658FF8
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:58:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kTjXo7Fg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308428-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6A609303FFF4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9CB33F8D6;
	Mon,  8 Jun 2026 16:39:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6BB330D22
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 16:39:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780936768; cv=none; b=O874PIi9U7OmU1GVB0ttr34X0iWcezZxjqPdRBvvxgqbZVQleQzFvXmqpRe7rN7Agt3q5MgqVYClK0hV5q1bS1alQ398yg/hXdFSw5ISfcj67Us4FaEF2SlHEg3hKMx/RPnGW5kPDL31sbUs38sVP8aSBgY1suNT0mdKve3UPvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780936768; c=relaxed/simple;
	bh=YEu9rgHXKgRYTzP5paavzCA/BE56X2cC57yroi7VAAs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Fq6vrnRLRT6eDnxJmDCyS46JwRh14w0xpqKOpwq0YDsr6EWw9au8x5w43TixWVNlXuKRriE6Fs2PMMtogSRmCr7+AmI+62GjjNAFGwW7l34yzjZiaUjmzdI9uUlyRF0VMzXHtV3ckb1yvCwdLOKycX/hAffOarOz2o+0U8GgZAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTjXo7Fg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EBAA1F00893;
	Mon,  8 Jun 2026 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780936767;
	bh=ICG6hewedWOwG5e8SNGz6l8qRIMctSufBqI583I7OFo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kTjXo7FgmR9YFGBIWzzL4n0lyvDCtVNSqLtKTKxtqZyppWyafLx4Xqx7VZ7B+Vzoq
	 TBSbdCO02v66BnwVDOIF1aVQIy3IuEtvjI7DJxz/lBsVjmofPr+dVqRymMs/APz0Kl
	 vDWfmNd573qHT1N2jC5bQTWryhFdoZrlBza1Y/4MvrNHux1Dy5XyX64mX/SBDRUSeD
	 JEPuPzgRdQ6oPpatqCkQi7D4mmry7/MG8ueiKWRCW5iEP/k0eS3J1Q04yv8n6cZ/eE
	 HMNMmeU1DHdit0bICVfSAWkja5WvAmK9ypGtNTNDG61S3mFlH/Qo25TXXPxsLDn53d
	 5JDxRwamTFHpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] drm/panel: himax-hx83121a: pass the panel pointer
 when creating BL
Reply-To: sashiko-reviews@lists.linux.dev
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260608162622.403713-2-zhengxingda@iscas.ac.cn>
References: <20260608162622.403713-2-zhengxingda@iscas.ac.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 16:39:26 +0000
Message-Id: <20260608163927.3EBAA1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308428-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,iscas.ac.cn:email,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E4B1658FF8

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing device link to secondary DSI host can lead to Use-After-Fr=
ee if the host driver is unbound.
- [High] The backlight device is exposed to userspace before the DSI device=
 is attached to the host, allowing premature DCS transfers.
- [High] Unprotected MIPI DSI hardware access due to missing backlight disa=
ble allows DCS commands to a powered-off panel.
--

commit 4b6dd00d8fec3ba9b10693589e0413bbbce2ec2f
Author: Icenowy Zheng <zhengxingda@iscas.ac.cn>

drm/panel: himax-hx83121a: pass the panel pointer when creating BL

This commit modifies the backlight creation function to accept the entire
panel context instead of just the DSI device. This prepares the driver for
future backlight powering on/off support.

> diff --git a/drivers/gpu/drm/panel/panel-himax-hx83121a.c b/drivers/gpu/d=
rm/panel/panel-himax-hx83121a.c
> index bed79aa06f46a..1a7e0125bced8 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
> @@ -193,10 +193,11 @@ static const struct drm_panel_funcs himax_panel_fun=
cs =3D {
> =20
>  static int himax_bl_update_status(struct backlight_device *bl)
>  {
> -	struct mipi_dsi_device *dsi =3D bl_get_data(bl);
> +	struct himax *ctx =3D bl_get_data(bl);
>  	u16 brightness =3D backlight_get_brightness(bl);
>  	/* TODO: brightness to raw map table */
> -	return mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	return mipi_dsi_dcs_set_display_brightness_large(to_primary_dsi(ctx),
> +							 brightness);

[Severity: High]
This isn't a bug introduced by this patch, but does this function leave the
MIPI DSI hardware vulnerable to unprotected access?

Because ctx->backlight is not assigned to ctx->panel.backlight during
probe, the DRM core does not automatically manage its state. In
himax_unprepare(), the panel's regulators are disabled and the reset GPIO
is asserted, but there is no corresponding backlight_disable() call.

If userspace writes to the backlight sysfs interface after the panel is
powered off, this function will unconditionally send DCS commands via
mipi_dsi_dcs_set_display_brightness_large() to the off panel. This
typically causes the MIPI DSI host to experience transfer timeouts and
potential hardware errors.

[ ... ]

> @@ -646,7 +647,7 @@ static int himax_probe(struct mipi_dsi_device *dsi)
>  	ctx->panel.prepare_prev_first =3D true;
> =20
>  	if (desc->has_dcs_backlight) {
> -		ctx->backlight =3D himax_create_backlight(to_primary_dsi(ctx));
> +		ctx->backlight =3D himax_create_backlight(ctx);

[Severity: High]
This is a pre-existing issue, but does himax_create_backlight() expose the
device to userspace too early?

In himax_probe(), this registers the backlight device and immediately expos=
es
its sysfs interface. However, this happens before devm_mipi_dsi_attach() is
called later in the probe routine.

If userspace writes to the brightness attribute in this window,
himax_bl_update_status() could send DCS commands over the MIPI DSI bus
before the hardware is actually attached to the host, which could result in
transfers on uninitialized hardware.

[Severity: High]
This is also a pre-existing issue, but does himax_probe() need to establish
a device link to the secondary DSI host?

Earlier in himax_probe(), the secondary DSI host is looked up and the
device is created:

    dsi1_host =3D of_find_mipi_dsi_host_by_node(dsi1);
    ...
    ctx->dsi[1] =3D devm_mipi_dsi_device_register_full(dev, dsi1_host, &dsi=
_info);

Without establishing a device link (e.g., using device_link_add()) to
ensure proper driver unbind synchronization, if the secondary DSI host driv=
er
is unbound, its mipi_dsi_host and the associated DSI device are unregistered
and freed.

Since the panel driver remains bound and retains ctx->dsi[1], a subsequent
DCS command or modeset could access this freed memory, leading to a
use-after-free.

>  		if (IS_ERR(ctx->backlight))
>  			return dev_err_probe(dev, PTR_ERR(ctx->backlight),
>  					     "Failed to create backlight\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608162622.4037=
13-1-zhengxingda@iscas.ac.cn?part=3D2

