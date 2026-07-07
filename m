Return-Path: <devicetree+bounces-321684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /fPZN/J5TGp3lAEAu9opvQ
	(envelope-from <devicetree+bounces-321684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:00:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6B5717297
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 06:00:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JxCBtLzM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321684-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321684-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 120D2302DB43
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 04:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D07130C17C;
	Tue,  7 Jul 2026 04:00:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131592D0606
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 04:00:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783396848; cv=none; b=sM8YA31hfl7sw1AjHpjXxrWLeosvSnNYo4nZ2VHUmdPvttXa9xQlWe8kIjsGyHI/xf4+RHQz3PB9W+yFH/0V+KljyDbKcyRaQphX5ASQOSdgzpZMXYsNSwiMgw+tElBt393/hHlCvlhK2iiB+4sF0RjsjJXu4h8zz9EeuMnzeaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783396848; c=relaxed/simple;
	bh=QvIZ0ounaGHsnaPUeP98s5PRLTTwNYs4zBkYtEEVsF0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=F8Qxpt3aa7vGY0o0F/qDt2pNejcNdeUkAX06ytxYk453283uiPjhWsEbyjoICxxhUFGn6+bTxCOWzfMLRwOLaPjlU3oWeFBSupmYr1e/2jlRc9N9RqaxEp2rvYwTVXJOaVdmRIWRg+/FZ0Dvq2E+rclx4pqxRB5L04Lde6sYdv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxCBtLzM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DAAE1F000E9;
	Tue,  7 Jul 2026 04:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783396846;
	bh=0jZZ3mwOTyCWmGbMeqfLFMORFW926oz64nCdTHNwv2Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JxCBtLzMGSdTiRmdoWTh4FjuODoHnzRBEAgUgBW21bRS8aQNxdG2dEeIObMY9Oyry
	 l6r/cDjqA1k2mQU+ZrYvLXdGqOuTWgtKPg6jabAi6GAl6REHufKk28nXGlzBM8EsPL
	 y2mEO/dTNPjRBPEFodL3AqotPhh8ybiJ22eZnHzvh9ZxTyPMT6zB0eUoC6x1mtuUmK
	 MwdqUBhfMOPZy0MB7cYTy+lByM07DWUnGvZYcex0XVh5iWvuJJxJ0x8G8hnhAqFf8Y
	 XZ2o1m60phztl0BwwKI/QJc9KYb6L0CORypVm5DTOD+q0JTPHAp2DrjbxM8aQGZOHM
	 qn2uZEGaVT9wQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/2] i2c: ls2x: Add clocks property parsing and
 adjust bus speed
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hongliang Wang" <wanghongliang@loongson.cn>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707035104.3092-3-wanghongliang@loongson.cn>
References: <20260707035104.3092-1-wanghongliang@loongson.cn>
 <20260707035104.3092-3-wanghongliang@loongson.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 04:00:45 +0000
Message-Id: <20260707040046.4DAAE1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321684-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wanghongliang@loongson.cn,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,loongson.cn:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E6B5717297

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] The driver ignores error pointers returned by `devm_clk_get_option=
al_enabled()`, failing to defer the probe when the clock is not yet availab=
le.
- [High] Missing validation for `device_get_match_data()` in the Device Tre=
e path causes a fatal kernel panic due to division by zero.
- [Medium] Misuse of the standardized "clocks" property to store a raw inte=
ger frequency.

Pre-existing issues:
- [High] The driver uses `DEFINE_RUNTIME_DEV_PM_OPS` without enabling runti=
me PM, causing system suspend/resume callbacks to be ignored.
--

--- Patch [2]: [PATCH v7 2/2] i2c: ls2x: Add clocks property parsing and ad=
just bus speed ---
commit ef2ab423afedc619ef9de8c57be0ad9e47092b2f
Author: Hongliang Wang <wanghongliang@loongson.cn>

i2c: ls2x: Add clocks property parsing and adjust bus speed

The i2c-ls2x driver supports dts and acpi parameter passing. In dts,
it uses the clock framework to get the i2c bus reference clock and
define the divider by device data. In acpi, it passes properties to
describe the bus reference clock and calculate the prescale value.

> --- a/drivers/i2c/busses/i2c-ls2x.c
> +++ b/drivers/i2c/busses/i2c-ls2x.c

[ ... ]

> @@ -304,6 +315,25 @@ static int ls2x_i2c_probe(struct platform_device *pd=
ev)
>  	if (irq < 0)
>  		return irq;
> =20
> +	if (dev_of_node(dev)) {
> +		clk =3D devm_clk_get_optional_enabled(dev, NULL);
> +		if (!IS_ERR_OR_NULL(clk))

[Severity: High]
If the clock provider is not yet ready, devm_clk_get_optional_enabled()
returns -EPROBE_DEFER. Because !IS_ERR_OR_NULL(clk) evaluates to false for
error pointers, does this skip returning the error and instead apply the
fallback frequency, preventing the probe from correctly deferring?

> +			priv->pclk =3D clk_get_rate(clk);
> +		else
> +			priv->pclk =3D LS2X_I2C_PCLK_FREQ;
> +
> +		priv->div =3D (unsigned long)device_get_match_data(dev);

[Severity: High]
If the driver is bound via sysfs to a platform device with an of_node but
an unmatched compatible string, device_get_match_data() will return NULL.

Does assigning this directly to priv->div without a fallback cause a
division by zero later in ls2x_i2c_adjust_bus_speed() when calculating the
prescale value?

ls2x_i2c_adjust_bus_speed()
    val =3D (priv->pclk * 10) / (priv->div * t->bus_freq_hz) - 1;

> +	} else {
> +		/* clocks and clock-div are only ACPI properties. */
> +		ret =3D device_property_read_u32(dev, "clocks", &priv->pclk);

[Severity: Medium]
Across standard device bindings, the "clocks" property is strictly defined
as an array of phandles or references. Could reading it as a raw 32-bit
integer frequency cause naming conflicts or failures in generic firmware
parsing tools? Should "clock-frequency" be used instead?

> +		if (ret)
> +			priv->pclk =3D LS2X_I2C_PCLK_FREQ;

[ ... ]

> @@ -349,8 +379,8 @@ static DEFINE_RUNTIME_DEV_PM_OPS(ls2x_i2c_pm_ops,
>  				 ls2x_i2c_suspend, ls2x_i2c_resume, NULL);
> =20

[Severity: High]
This is a pre-existing issue, but the driver uses DEFINE_RUNTIME_DEV_PM_OPS
without enabling runtime pm via pm_runtime_enable().

Because the device pm state defaults to RPM_SUSPENDED, do system suspend
and resume operations using pm_runtime_force_suspend() see the device as
already suspended and skip calling ls2x_i2c_suspend() and ls2x_i2c_resume()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707035104.3092=
-1-wanghongliang@loongson.cn?part=3D2

