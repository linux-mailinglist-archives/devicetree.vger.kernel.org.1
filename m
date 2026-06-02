Return-Path: <devicetree+bounces-305858-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vQ3dGGVRH2rskAAAu9opvQ
	(envelope-from <devicetree+bounces-305858-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 23:55:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 022816323C4
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 23:55:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IbPoeMUJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305858-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305858-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 70C523029B39
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 21:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F066937A4AB;
	Tue,  2 Jun 2026 21:55:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A40314B6A
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 21:55:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780437345; cv=none; b=o/RynaKGIeBx1vHWvkEG6aYRH+TW1oUAoAB2D4eqTjLwaK6QY3mtCc9PkLGGSv4b9eeiOJzBr6CndSJZ+Oon2m2ZccSJOaytvcnlMkRFoT8Wuajf5FJxy6yxWZcUpa1RvsF9tUrZNq2q206lN6TmD2FKr2QhLDzQ+oESDwsBqLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780437345; c=relaxed/simple;
	bh=khTuWR99zEQUnFuc7q9An5pB+dZKNiOCTb2oZQ91Sk4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iN6TM3U250st8imU0Bt8wX6Xcm/bwLi65zYm1bfWHTlvD02b1aU0d+3quWd4AYGe590gcHXJ+Z+jrkMm/hhbtAKlNcRy8sBFYAeF56194g+S+GU5Yql0FCUvhQaI1v7NOhzbQDkMKXYj/vFszIMPi6nEVrnNxoMeuyOntJvsu8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbPoeMUJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C6E81F00893;
	Tue,  2 Jun 2026 21:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780437344;
	bh=s0l6CxObK2+yjmgSNrA+OQ2mPHhqkEGL4chBesBqhSs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IbPoeMUJ9K6radgi/O7QwIUaUCp/3NHCTRWpTh3ApmMsoCNBl6RwSB+o2BCeiLZwz
	 MiXj48S/Zb3TeO4CZ3J+AKKWYzWku+5/nunX7VA7Ljim+m7iiL8EUqLN9mPgg1Whbt
	 wn/rWqGnjfkskShpiJECYuZLbEQL84rb66SY+QnKdCLknZhiNbx1ajlBGfnNDlVpIc
	 EOw78rnP8q7YR0qjajlZnhxcIKPTjHSPU74atHzGTW38haUsm7wHmtZu1xHyXuYr0d
	 GG914AJ3/SJhqYmFGBmuuRYQsXADpLghdGQ2THzK82z7svgDy+Ab4Z9galOZkRTyOv
	 7F+YiPnl82HnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V4 4/6] drm/panel: anbernic-td4310: Add RG Vita Pro
 panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260602212512.418166-5-macroalpha82@gmail.com>
References: <20260602212512.418166-5-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 21:55:43 +0000
Message-Id: <20260602215544.3C6E81F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305858-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 022816323C4

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The `panel_anbernic_td4310_prepare` function incorrectly returns s=
uccess (0) even when MIPI DSI DCS commands fail, silently masking initializ=
ation errors.
- [High] The enable GPIO is initialized to its active logical state during =
probe, driving the physical pin before the VDD regulator is enabled.
- [Low] Implicit declaration and undefined reference to `devm_drm_panel_add=
`, leading to a build failure.
--

commit ae79417c9bc07c168f26d7711393a542d43e2756
Author: Chris Morgan <macromorgan@hotmail.com>

drm/panel: anbernic-td4310: Add RG Vita Pro panel

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC. It measures approximately 5.5 inches
diagonally and is 1080x1920 in resolution.

> diff --git a/drivers/gpu/drm/panel/panel-anbernic-td4310.c b/drivers/gpu/=
drm/panel/panel-anbernic-td4310.c
> new file mode 100644
> index 0000000000000..006716378a57c
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-anbernic-td4310.c
[ ... ]
> +static int panel_anbernic_td4310_prepare(struct drm_panel *panel)
> +{
> +	struct anbernic_panel_td4310 *ctx =3D panel_to_anbernic_panel_td4310(pa=
nel);
> +	struct mipi_dsi_device *dsi =3D ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D dsi };
> +	int ret;
[ ... ]
> +	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->prepare_delay);
> +	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->prepare_delay);
> +
> +	if (dsi_ctx.accum_err)
> +		goto err_reset;

[Severity: High]
Does this code silently mask MIPI DSI initialization errors? If dsi_ctx.acc=
um_err
is non-zero, this jumps to err_reset but returns the current value of ret, =
which
was previously set to 0. Should this update ret to dsi_ctx.accum_err before
jumping?

> +
> +	return 0;
> +
> +err_reset:
> +	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
> +err_enable:
> +	regulator_disable(ctx->vdd);
> +	return ret;
> +}
[ ... ]
> +static int panel_anbernic_td4310_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev =3D &dsi->dev;
> +	struct anbernic_panel_td4310 *ctx;
> +	int ret;
[ ... ]
> +	ctx->reset_gpio =3D devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(ctx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +				     "Cannot get reset gpio\n");
> +
> +	ctx->enable_gpio =3D devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_H=
IGH);

[Severity: High]
Is it safe to initialize the enable GPIO with GPIOD_OUT_HIGH here during pr=
obe?
This drives the physical pin to its active logic state before the VDD regul=
ator
is enabled in panel_anbernic_td4310_prepare(), which could potentially back=
-power
the unpowered display controller.

> +	if (IS_ERR(ctx->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ctx->enable_gpio),
> +				     "Cannot get enable gpio\n");
> +
> +	ctx->vdd =3D devm_regulator_get(dev, "vdd");
> +	if (IS_ERR(ctx->vdd))
> +		return dev_err_probe(dev, PTR_ERR(ctx->vdd),
> +				     "Failed to request vdd regulator\n");
> +
> +	ctx->dsi =3D dsi;
> +	mipi_dsi_set_drvdata(dsi, ctx);
> +
> +	dsi->lanes =3D ctx->panel_info->lanes;
> +	dsi->format =3D ctx->panel_info->format;
> +	dsi->mode_flags =3D ctx->panel_info->mode_flags;
> +
> +	ret =3D drm_panel_of_backlight(&ctx->panel);
> +	if (ret)
> +		return ret;
> +
> +	devm_drm_panel_add(dev, &ctx->panel);

[Severity: Low]
Does this code build? The function devm_drm_panel_add() does not appear to =
exist
in the DRM panel API, which would cause an implicit declaration and undefin=
ed
reference compilation failure.

> +
> +	ret =3D devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602212512.4181=
66-1-macroalpha82@gmail.com?part=3D4

