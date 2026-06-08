Return-Path: <devicetree+bounces-308478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id evTtL+IIJ2o+qgIAu9opvQ
	(envelope-from <devicetree+bounces-308478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:24:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E26659AF6
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:24:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CkX5E8qk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308478-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308478-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E16B3167A2E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D41036C0D2;
	Mon,  8 Jun 2026 18:06:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C837DEAD
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:06:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780942000; cv=none; b=ofVEfygIXaX8Q1P40Me6Zu4Lf/rV24shEeHbsXj+HvMdqUVLM8THA6peEV4FVveEZ8wA5Mc2LuzypSRBxk4BR1ydnNZrJyMJOxaFMkKOGw9oUXxuYYlWhwNGGKSCPVKsWzpvfx23gbP8IpbM5rfcPgTA2Q0Aq+hRb8vIuLr2KzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780942000; c=relaxed/simple;
	bh=zAFcrGaQAso8Ywv5/x0tdeRCBLYHToLioe+qiKzfd1k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b9Z442yOR1MVKUKBTzgtw4xM1MeykWNg5B8qhJ/Gq6P5kOTPKPveih3DhdKBINwVx1Hlpsdp/h3dMsK7sGK3auhq6a00me1vVnNIugDfvLwkP95lgNnLvzT+VmfNzOHYy6TfhSDVwZsPXrnRS/dwX6BDHa2UDwxjLBCfdCf6MPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkX5E8qk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A72171F00893;
	Mon,  8 Jun 2026 18:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780941998;
	bh=wmOzaNPMLMTRlAiuUaUCwxooKMPfOzABb3y8AaIFtNE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CkX5E8qkmgdi9EIwF9C26Psb+iabErXzv+FQXPSLSpVzDpOI5DfDgjcRKAwbFhdX+
	 ikLgMPg9nddhI6KR9mRy185Nbv9Kk1g9EQ1J2j6+PA9a/YApbYxsL6E1Q612UYntcB
	 OE9w3XTRZu0qMlqTdSudWXALe7S1gTu7eg/eQGp/G2A94y5k8zboSVWWqQ4jh/od3e
	 S5T9Q6dH+zkH8NQdEWpct71iwP5lIO3reZ3E5ks+QSr+wwzCLKytrIzzHPdFYdlmeZ
	 5VayweFuItnav+0WQnIlaD6kg04cdIpqZ2vIAkHwsYkB+/suKCO/A5SBy8muaju1w9
	 gRNt/Apdu4pjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V6 4/6] drm/panel: anbernic-td4310: Add RG Vita Pro
 panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608175521.67449-5-macroalpha82@gmail.com>
References: <20260608175521.67449-5-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 18:06:38 +0000
Message-Id: <20260608180638.A72171F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308478-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49E26659AF6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Requesting `reset_gpio` as `GPIOD_OUT_LOW` in probe backpowers the=
 panel, and missing reset assertion in the `prepare` error path leaves the =
panel backpowered.
- [Low] The driver calls a non-existent function `devm_drm_panel_add()`, ca=
using a compilation failure.
--

commit 0a4500b372d995ebf665c9896430451a3e287a41
Author: Chris Morgan <macromorgan@hotmail.com>

drm/panel: anbernic-td4310: Add RG Vita Pro panel

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC.

> diff --git a/drivers/gpu/drm/panel/panel-anbernic-td4310.c b/drivers/gpu/=
drm/panel/panel-anbernic-td4310.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-anbernic-td4310.c
[ ... ]
> +static int panel_anbernic_td4310_prepare(struct drm_panel *panel)
> +{
[ ... ]
> +	if (dsi_ctx.accum_err) {
> +		ret =3D dsi_ctx.accum_err;
> +		goto err_reset;
> +	}
> +
> +	return 0;
> +
> +err_reset:
> +	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
> +err_enable:
> +	regulator_disable(ctx->vdd);

[Severity: High]
The err_reset path disables the VDD regulator without re-asserting the reset
GPIO (setting it to logical 1 / physical LOW). Could this leave the unpower=
ed
panel backpowered through its IO lines if the prepare sequence fails?

> +	return ret;
> +}
[ ... ]
> +static int panel_anbernic_td4310_probe(struct mipi_dsi_device *dsi)
> +{
[ ... ]
> +	ret =3D of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to get panel orientation\n");
> +
> +	ctx->reset_gpio =3D devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);

[Severity: High]
Assuming the reset GPIO is configured as active-low in the device tree,
requesting it with GPIOD_OUT_LOW sets its logical value to 0, which drives
the physical pin HIGH.

Because the panel's VDD supply is off at probe time, will driving the
reset pin HIGH backpower the panel via its IO protection diodes?

> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Cannot get reset gpio\n");
[ ... ]
> +	dsi->mode_flags =3D ctx->panel_info->mode_flags;
> +
> +	ret =3D drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return ret;
> +
> +	devm_drm_panel_add(dev, &ctx->panel);

[Severity: Low]
Is devm_drm_panel_add() defined in the DRM panel API? It appears only
drm_panel_add() and devm_drm_panel_add_follower() are available, which
might cause an implicit declaration build error here.

> +
> +	ret =3D devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608175521.6744=
9-1-macroalpha82@gmail.com?part=3D4

