Return-Path: <devicetree+bounces-300312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBCCDrnnDGpnpwUAu9opvQ
	(envelope-from <devicetree+bounces-300312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 00:44:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9E8585C68
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 00:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3FD8C30086A8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 22:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8691136EAAC;
	Tue, 19 May 2026 22:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGReAfbF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3629330E0E9
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 22:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779230624; cv=none; b=Ke2uy2QRSleos3d+mNwkSHZcQRh/jC7JvS7VshSnKn+VLogqPmQQk7bi8k3AL2imfVaWiCLQKeeFF9/cNB5K7zWCruzgNDmQOHBGR3iO/cH5lZbHC/xRl7utnA99U9kbP+cnEUEpZB5ueFjcHo/7R++afBSXTALfBaEJSlANH1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779230624; c=relaxed/simple;
	bh=nEAFKDxJm7Mca1JBGBBoDSpQmFiYl6rPc1ntEomE4so=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z/aqJrB33l7Lpwx0j1X/QWBJPlxQXnyyFvoTC9yNagCxrthq5JQYdmcKFT5RI0TpdyRhMxaz0pco+XHAQV1GN6k1eGm4ODXlKyiKd6BVUIgS+W6lOzbMvelzsIe3tnBiYJKUjxQflPIpmy1b4FlH2ndgOBfE5G4UGuGJxPqBi4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGReAfbF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0E401F000E9;
	Tue, 19 May 2026 22:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779230623;
	bh=k0SEi6AbzBzqNY0v2mI50AQJ6wZUg6tMkiXbtL5KJVE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eGReAfbFt97XbgvpxFizER465KSJOGdlaeerX7zFlpU1Y6NrPuamM9a4ll3OMrL3V
	 yHxkeQOe/+8f2uqfSLZnuAGrsUJ6A8nPiWWCroNgedSwZf83o4TsX2rnMUgxa216zy
	 iVvXvHsLQ16hvPcpyC8kvlEsu3uIiKKtx2MJvqYts0fX7Q1ovvJMGFR2d8LVDgP/5w
	 785o3hdRWmh+sUCyYSZYX+D02El9EBN9FYVbd4Hr3MfH9uKe7dMQMTlam1NbxR139W
	 CtnRzEXXVujQcoc8DWL1euYHG7Pmc93tLxfxBeeFyHakib4R9WlgVUyEhDyzqzH4KW
	 sQFGl5BMW2zXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] thermal/drivers: airoha: Convert to regmap API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519222433.29684-2-ansuelsmth@gmail.com>
References: <20260519222433.29684-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 22:43:42 +0000
Message-Id: <20260519224342.E0E401F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300312-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5A9E8585C68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:

New issues:
- [High] Copy-paste error when writing the low temperature offset.
- [Medium] Return values of regmap_read() are ignored, leading to the poten=
tial use of uninitialized stack variables.

Pre-existing issues:
- [High] Copy-paste error when clamping the low temperature limit.
- [High] Premature IRQ registration leading to potential NULL pointer deref=
erence and incorrect devres teardown order.
- [High] Duplicate bitfield mask used, leaving sensor interval unconfigured.
- [High] Simultaneous high and low temperature interrupts are completely ig=
nored by the IRQ handler.
--

commit 4a56a8551e5214de07751cb7408cbc139cfff0cd
Author: Christian Marangi <ansuelsmth@gmail.com>

thermal/drivers: airoha: Convert to regmap API
   =20
In preparation for support of Airoha AN7583, convert the driver to
regmap API. This is needed as Airoha AN7583 will be based on syscon
regmap.

> diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_th=
ermal.c
> index b9fd6bfc88e5e..01ed49a4887e1 100644
> --- a/drivers/thermal/airoha_thermal.c
> +++ b/drivers/thermal/airoha_thermal.c

[ ... ]

> @@ -277,15 +277,15 @@ static int airoha_thermal_set_trips(struct thermal_=
zone_device *tz, int low,
>  			      RAW_TO_TEMP(priv, FIELD_MAX(EN7581_DOUT_TADC_MASK)));
> =20
>  		/* We offset the low temp of 1=C2=B0C to trigger correct event */
> -		writel(TEMP_TO_RAW(priv, low) >> 4,
> -		       priv->base + EN7581_TEMPOFFSETL);
> +		regmap_write(priv->map, EN7581_TEMPOFFSETL,
> +			     TEMP_TO_RAW(priv, high) >> 4);

[Severity: High]
This isn't a bug introduced by this patch, but does the clamp function right
above this code evaluate the high parameter instead of low?

if (low !=3D -INT_MAX) {
    /* Validate low and clamp it to a supported value */
    low =3D clamp_t(int, high, RAW_TO_TEMP(priv, 0), ...);

Could this overwrite the intended low threshold with the clamped high thres=
hold?

[Severity: High]
Is the TEMP_TO_RAW conversion now passing high instead of low? This appears=
 to
write the high temperature limit into the low temperature limit register.

> =20
>  		enable_monitor =3D true;
>  	}

[ ... ]

> @@ -302,7 +302,7 @@ static irqreturn_t airoha_thermal_irq(int irq, void *=
data)
>  	bool update =3D false;
>  	u32 status;
> =20
> -	status =3D readl(priv->base + EN7581_TEMPMONINTSTS);
> +	regmap_read(priv->map, EN7581_TEMPMONINTSTS, &status);

[Severity: Medium]
Should the return value of regmap_read be checked here? Unlike readl,
regmap_read can fail and leave the status variable unmodified. This might
cause the driver to evaluate uninitialized memory from the stack if an MMIO
read fails.

>  	switch (status & (EN7581_HOFSINTSTS0 | EN7581_LOFSINTSTS0)) {

[Severity: High]
This is a pre-existing issue, but does this switch statement handle the case
where both high and low threshold interrupts are asserted simultaneously?

If both bits are set in the status variable, the bitwise AND matches neither
case, which would cause the interrupts to be dropped and reset without being
processed.

>  	case EN7581_HOFSINTSTS0:
>  		event =3D THERMAL_TRIP_VIOLATED;

[ ... ]

> @@ -336,11 +336,11 @@ static void airoha_thermal_setup_adc_val(struct dev=
ice *dev,
>  	/* sleep 10 ms for ADC to enable */
>  	usleep_range(10 * USEC_PER_MSEC, 11 * USEC_PER_MSEC);
> =20
> -	efuse_calib_info =3D readl(priv->base + EN7581_EFUSE_TEMP_OFFSET_REG);
> +	regmap_read(priv->map, EN7581_EFUSE_TEMP_OFFSET_REG, &efuse_calib_info);

[Severity: Medium]
Could a failure in regmap_read leave efuse_calib_info uninitialized before =
it
is evaluated in the conditional statement immediately following it?

>  	if (efuse_calib_info) {
>  		priv->default_offset =3D FIELD_GET(EN7581_EFUSE_TEMP_OFFSET, efuse_cal=
ib_info);
>  		/* Different slope are applied if the sensor is used for CPU or for pa=
ckage */
> -		cpu_sensor =3D readl(priv->base + EN7581_EFUSE_TEMP_CPU_SENSOR_REG);
> +		regmap_read(priv->map, EN7581_EFUSE_TEMP_CPU_SENSOR_REG, &cpu_sensor);

[ ... ]

> @@ -391,40 +391,52 @@ static void airoha_thermal_setup_monitor(struct air=
oha_thermal_priv *priv)
>  	 * in the order of half a =C2=B0C and is acceptable in the context
>  	 * of triggering interrupt in critical condition.
>  	 */
> -	writel(FIELD_PREP(EN7581_ADC_VOLTAGE_SHIFT, 4),
> -	       priv->base + EN7581_TEMPADCVOLTAGESHIFT);
> +	regmap_write(priv->map, EN7581_TEMPADCVOLTAGESHIFT,
> +		     FIELD_PREP(EN7581_ADC_VOLTAGE_SHIFT, 4));

[ ... ]

>  	/*
>  	 * filt interval is 1 * 52.715us =3D 52.715us,
>  	 * sen interval is 379 * 52.715us =3D 19.97ms
>  	 */
> -	writel(FIELD_PREP(EN7581_FILT_INTERVAL, 1) |
> -	       FIELD_PREP(EN7581_FILT_INTERVAL, 379),
> -	       priv->base + EN7581_TEMPMONCTL2);
> +	regmap_write(priv->map, EN7581_TEMPMONCTL2,
> +		     FIELD_PREP(EN7581_FILT_INTERVAL, 1) |
> +		     FIELD_PREP(EN7581_FILT_INTERVAL, 379));

[Severity: High]
This is a pre-existing issue, but does the second FIELD_PREP reuse the
EN7581_FILT_INTERVAL mask instead of a sensor interval macro? This might
leave the sensor interval unconfigured and overwrite the filter interval
configuration.

> =20
>  	/* AHB poll is set to 146 * 68.64 =3D 10.02us */

[ ... ]

> @@ -462,8 +474,8 @@ static int airoha_thermal_probe(struct platform_devic=
e *pdev)
>  	platform_set_drvdata(pdev, priv);
> =20
>  	/* Enable LOW and HIGH interrupt */
> -	writel(EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0,
> -	       priv->base + EN7581_TEMPMONINT);
> +	regmap_write(priv->map, EN7581_TEMPMONINT,
> +		     EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0);
> =20
>  	return 0;
>  }

[Severity: High]
This is a pre-existing issue, but looking at airoha_thermal_probe, the
driver calls devm_request_threaded_irq before devm_thermal_of_zone_register
initializes priv->tz.

If an interrupt triggers early, could airoha_thermal_irq dereference a NULL
priv->tz?

Also, during module unload, devres would free the thermal zone before
removing the IRQ handler. Does this create a use-after-free window?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519222433.2968=
4-1-ansuelsmth@gmail.com?part=3D1

