Return-Path: <devicetree+bounces-300797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDeSOuEQDmrw5wUAu9opvQ
	(envelope-from <devicetree+bounces-300797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 21:52:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52042598D04
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 21:52:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CED832FE8C6
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 16:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF8A369D4E;
	Wed, 20 May 2026 16:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlCiP22I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1585334C1D
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 16:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779295684; cv=none; b=i54A7X1bjJ5ahMVkf62H4Wo1DLJQ2D06UCymwD8s4xILI2Y0g03ukq43cepq7tRfCz9CsEs9WABjE8+Fq4S2AYBrsNlImqjrnPrJCAAiv3qWwd2aZbGLb+y0baOIaloZRHpXq7Zgte7noL3jvYOpI1athy+gE9jbxvWOlL/JjNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779295684; c=relaxed/simple;
	bh=vm0PxFDshxFv/4DPW2RzAaUhI046C86xI/8jRmNuvRE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o4UyzbRsfOtXp/KCJi5zvjGWQIug3riCBoMASM9P9p0xAQTr+9YFk9EVpCUoxPmUum5t6ye+bUFSQ7Fk0uC5ceswlrqg3p15Qid7v+VNmUa7FxAXlhFS9qq4P9gumufK0bA6M4jrhNWVQqyJ1y70/b13wr8wkyZjHBLLP90U0vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlCiP22I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF4C1F00894;
	Wed, 20 May 2026 16:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779295682;
	bh=J4vxLNl+gJPC+p7R6B5rrEq/XMJRAV/OYYQouBMD8CY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RlCiP22IKCBpNGJMhJhtCetpHhytrLFR+XirYyblMOZAeUm6gOvNRGYVzcVqFGhsR
	 NUSRYZDlf07I6ZIS96rTd/g1UTaiiJ6d4hq2moQqhQqJbKblaD4jAVUuSmdvt2oKrN
	 FdZM1txAn2oc8+TDC7kWDy9paC3WflUQ8cgCoUEzIjyXURZVsvodfm8/Z78HwuPq3k
	 0K099xZ54AU2IXXAzfEyJoHGw+Ibr6fbj1o59iFCSCf0A8D5imzn45lJN+jm2tLudd
	 QyVHwA7GjanPOGvvRAdPudLUu7uK5cSEOjhZDUnuNGeWKMoiWp2caGXsM20YMzDU5e
	 erjgqsDofN/fw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/7] thermal/drivers: airoha: Convert to regmap API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520155525.22239-4-ansuelsmth@gmail.com>
References: <20260520155525.22239-4-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 16:48:02 +0000
Message-Id: <20260520164802.8EF4C1F00894@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300797-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 52042598D04
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Simultaneous temperature trip interrupts are dropped instead of be=
ing handled.
- [High] The IRQ is requested before the thermal zone is registered, allowi=
ng a potential NULL pointer dereference in the IRQ handler.
- [High] Non-atomic read-modify-restore sequence on a shared syscon regmap =
without external locking.
--

commit 952c01597265eea8ee25e21cc2c92bef3e5ca97e
Author: Christian Marangi <ansuelsmth@gmail.com>

thermal/drivers: airoha: Convert to regmap API

In preparation for support of Airoha AN7583, convert the driver to
regmap API. This is needed as Airoha AN7583 will be based on syscon
regmap.

> diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_th=
ermal.c
> index 829a7327fc403..b63893a8997a3 100644
> --- a/drivers/thermal/airoha_thermal.c
> +++ b/drivers/thermal/airoha_thermal.c

[ ... ]

> @@ -300,9 +300,9 @@ static irqreturn_t airoha_thermal_irq(int irq, void *=
data)
>  	struct airoha_thermal_priv *priv =3D data;
>  	enum thermal_notify_event event;
>  	bool update =3D false;
> -	u32 status;
> +	u32 status =3D 0;
> =20
> -	status =3D readl(priv->base + EN7581_TEMPMONINTSTS);
> +	regmap_read(priv->map, EN7581_TEMPMONINTSTS, &status);
>  	switch (status & (EN7581_HOFSINTSTS0 | EN7581_LOFSINTSTS0)) {
>  	case EN7581_HOFSINTSTS0:
>  		event =3D THERMAL_TRIP_VIOLATED;

[Severity: High]
This is a pre-existing issue, but what happens if both high and low
temperature interrupt status bits are set simultaneously?

If both EN7581_HOFSINTSTS0 and EN7581_LOFSINTSTS0 are set, the bitwise AND
will yield a combination of both bits. Since there are only case statements
for the individual bits, the code will fall through to the default case.

The status will be written back to clear the interrupts, but the events
will be silently dropped without notifying the thermal core.

Would it be safer to replace this switch statement with independent if
checks for each interrupt flag?

> @@ -329,18 +329,19 @@ static irqreturn_t airoha_thermal_irq(int irq, void=
 *data)
>  static void airoha_thermal_setup_adc_val(struct device *dev,
>  					 struct airoha_thermal_priv *priv)
>  {
> -	u32 efuse_calib_info, cpu_sensor;
> +	u32 efuse_calib_info =3D 0;
> +	u32 cpu_sensor =3D 0;
> =20
>  	/* Setup thermal sensor to ADC mode and setup the mux to DIODE1 */
>  	airoha_init_thermal_ADC_mode(priv);

[Severity: High]
This isn't a bug introduced by this patch, but is it possible for the
chip_scu regmap sequence to race with other drivers?

Looking at airoha_init_thermal_ADC_mode(), it performs a read-modify-restore
sequence on a shared syscon regmap:

static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
{
    ...
    regmap_read(priv->chip_scu, EN7581_PLLRG_PROTECT, &pllrg);
    regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT,
                 EN7581_SCU_THERMAL_PROTECT_KEY);
    ...
    regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, pllrg);
}

Because the internal regmap lock is only held during individual register
accesses, could another driver (like a clock or pinctrl driver) accessing
the SCU concurrently cause the protect key to be incorrectly overwritten or
prematurely removed?

[ ... ]

> @@ -462,8 +475,8 @@ static int airoha_thermal_probe(struct platform_devic=
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
This is a pre-existing issue, but could we encounter a NULL pointer
dereference if an interrupt fires before the thermal zone is registered?

Looking earlier in airoha_thermal_probe():

    ret =3D devm_request_threaded_irq(&pdev->dev, irq, NULL,
                                    airoha_thermal_irq, IRQF_ONESHOT,
                                    pdev->name, priv);

    ...

    priv->tz =3D devm_thermal_of_zone_register(dev, 0, priv, &thdev_ops);

If an interrupt is already pending (for example, left active by the
bootloader) when the IRQ is requested, the handler will run immediately.

If an event is detected, airoha_thermal_irq() will call
thermal_zone_device_update(priv->tz, event). Since priv->tz is still NULL
at that point, it will crash.

Should the IRQ be requested after the thermal zone registration is complete?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520155525.2223=
9-1-ansuelsmth@gmail.com?part=3D3

