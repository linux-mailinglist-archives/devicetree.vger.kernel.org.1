Return-Path: <devicetree+bounces-309891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1GhCF2J9KWowXwMAu9opvQ
	(envelope-from <devicetree+bounces-309891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:06:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8840A66A8CD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:06:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OegVQ8wZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309891-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309891-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 334C0306640B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EE62F7F03;
	Wed, 10 Jun 2026 14:58:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507C2408635
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 14:58:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781103499; cv=none; b=SeeQJQP6B1xkWclS/TLUaV2OTfRgFaldFs3VeiqSQcDDNrClFBMMHSyzwEL6MZ0MMXhsFw61T4SYopas+Gz9IKkglOBbjV5ae+KMN1vQjaeJkuQKFuDc6TL9R2Tms2Meg66gfOzsonvEXVMBTiqPJN9b+RrZ6v4j7XrVN4JpIYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781103499; c=relaxed/simple;
	bh=RS8mUZSmTZPW+M/cMB7Pzk6IP+dGbr1QLuA8quS8G5k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BZtwb2j55uB9cX43YKc4RxID0l7HzoNtPQDEOfN3sKodYC1w+OP8l28xZSm+JHo+clontPBNQg6wP8deH0jvLG5qVIhCQHZ2AOgEJ2EF6cRWgCleiRGcDVFFvPbmuEOu4cgHKxYw89auh07bgz912DGbAjttKe2Yv0thdBHHRNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OegVQ8wZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A564F1F0089A;
	Wed, 10 Jun 2026 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781103497;
	bh=7U8JeLF7DiPAqwwSdI5g0CwAo5Ou2sSAnhlE41tLCag=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OegVQ8wZHJqAkgrbWqdnJSoYRSkja7l5PW1YntO/MQMU5DteuCt4/+pxGCFcPEL3i
	 ZP0le6aVrq6f8znSayYquhXHaWyZ7qz7qidmpTEIlrBbeKE2YDuDNdvDqjDscwN21u
	 sU3pq4F9UDsf5gv9+TYexnJdSvRPTb3nGPd+pGs1h4JqTo9oxUHg6ZXuJVhkN+vfuV
	 1Y7hH/QAiVVwbzAsfeCEAYTa3ogLcvauJsy930KL+AUis394Ei2/ZxN/bw0VWct3FB
	 NZkqu3gta8+fIfes9GlRf4pwFGaW7DHLgBj49OyBrDlh6DDFEgqzo3AmVyX18Q7/Wx
	 Jz6sGjyCVpVaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V7 4/6] drm/panel: anbernic-td4310: Add RG Vita Pro
 panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260610144407.438846-5-macroalpha82@gmail.com>
References: <20260610144407.438846-5-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 14:58:17 +0000
Message-Id: <20260610145817.A564F1F0089A@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309891-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8840A66A8CD

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Incorrect power-down sequencing in the error path and unprepare =
function risks backpowering the panel.
- [Low] The driver calls `devm_drm_panel_add()`, which does not exist in th=
e kernel API, causing a build failure.
--

commit ab0aaf4898e0640c3a73b98bb981eeb9023b2012
Author: Chris Morgan <macromorgan@hotmail.com>

drm/panel: anbernic-td4310: Add RG Vita Pro panel

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC. It measures approximately 5.5 inches
diagonally and is 1080x1920 in resolution.

> diff --git a/drivers/gpu/drm/panel/panel-anbernic-td4310.c b/drivers/gpu/=
drm/panel/panel-anbernic-td4310.c
> new file mode 100644
> index 0000000000000..9a1b4525423c4
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-anbernic-td4310.c
[ ... ]
> +static int panel_anbernic_td4310_prepare(struct drm_panel *panel)
> +{
[ ... ]
> +	ret =3D regulator_enable(ctx->vdd);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D gpiod_set_value_cansleep(ctx->enable_gpio, 1);
> +	if (ret)
> +		goto err_enable;
> +
> +	if (ctx->panel_info->enable_delay)
> +		mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->enable_delay);
> +
> +	ret =3D gpiod_set_value_cansleep(ctx->reset_gpio, 1);
[ ... ]
> +err_reset:
> +	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
> +err_enable:
> +	regulator_disable(ctx->vdd);
> +	return ret;
> +}

[Severity: Medium]
Does this error path miss asserting the reset gpio before disabling the ena=
ble
gpio and the vdd regulator?

The power-up sequence enables vdd, asserts the enable gpio, and then cycles
the reset gpio. To prevent backpowering or latch-up, shouldn't the shutdown
sequence strictly reverse this order by asserting the reset gpio first?

> +
> +static int panel_anbernic_td4310_unprepare(struct drm_panel *panel)
> +{
> +	struct anbernic_panel_td4310 *ctx =3D panel_to_anbernic_panel_td4310(pa=
nel);
> +	struct mipi_dsi_device *dsi =3D ctx->dsi;
> +	struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D dsi };
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->unprepare_delay);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> +	mipi_dsi_msleep(&dsi_ctx, ctx->panel_info->disable_delay);
> +
> +	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
> +
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);

[Severity: Medium]
Will this sequence risk backpowering the panel?

By disabling the enable gpio before asserting the reset gpio, it violates t=
he
reverse power-up sequence mentioned above. Should the reset gpio be asserted
first before turning off the enable gpio?

> +
> +	regulator_disable(ctx->vdd);
> +
> +	return 0;
> +}
[ ... ]
> +static int panel_anbernic_td4310_probe(struct mipi_dsi_device *dsi)
> +{
[ ... ]
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
Is this call to devm_drm_panel_add() correct?

The function devm_drm_panel_add() doesn't appear to exist in the DRM panel
API (only drm_panel_add() does). Will this result in a build failure?

> +
> +	ret =3D devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610144407.4388=
46-1-macroalpha82@gmail.com?part=3D4

