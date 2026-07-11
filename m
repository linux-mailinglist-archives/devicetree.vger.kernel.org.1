Return-Path: <devicetree+bounces-324750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xqrUCpHfUWprJwMAu9opvQ
	(envelope-from <devicetree+bounces-324750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:15:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BD65474092A
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:15:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A4SGB3Fp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324750-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324750-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 38259300E2A8
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5769B2DB7B7;
	Sat, 11 Jul 2026 06:15:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E20279DAF;
	Sat, 11 Jul 2026 06:15:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750543; cv=none; b=gLhKYNtXL0brgpTTGr4pePULqabSy20WryYad9TIW4/2Ies/ZcXyyD89SqxIaxlaG5mPeSLQ3AtzB4VDML+xtK7VHzetippxS3McDdWaPOrgWaxebrtDcpycme3gNeU40r0O/vRqJ1YyQYau1EndYXB29yDr7loiF5pIZMi7L8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750543; c=relaxed/simple;
	bh=4vA62LCwjaoxT+yId+ovGs7rlq7viDhl6Qk+hU/I6tk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BuGr4QWA7m7cCnCdNRMbOZKpNnRca2JtgWAjbQsjWEy2EHbRzUSjir4khi+SqCxRndcZOmgYk6VctHcKMadRms0tSTggBPoQmsi9jGG50RfJ0iXDlE9f2vFvogQrCN4g05EPsQ8ZZGMPxknVOr3szOGWkgDpiy4rcYFLWqlPy1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4SGB3Fp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71A291F000E9;
	Sat, 11 Jul 2026 06:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750541;
	bh=lNhbMuMJ0S0HA6JMYfPVKHluRVkc+cjHyRfhVBBBzj4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A4SGB3FpXTeJGLr/oJghocT/mqEZl/w4FZOwwt+j2RskmxNJGH17obJXP7RxYlgaY
	 bUzkwshZnflKoI7VxACpez2BcAZvX+YiIt3dwXxle2xUtcuTLiWZMglMIPqKwcylBW
	 qF/9WDGF7NSbjLzCmaNCl0F30KTWxJ1HDC+DrdRr65joMh5VUndlhazdSOzl5UY+5i
	 i2nrU+o59rx06boE8Xrl8m/skSN4EYN6V4nGo0K/rUXntrcZi51GEnr7k8qY7e2TdV
	 6G2b8sG7HdunMXko7tsVIecC49rt+xqD6s7SIANP7k9EsTAPzvQwKxrx6zAs0SVqu/
	 TFZbzPYkV2FuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 12/16] arm: dts: omap3pandora: Add device node for
 PCM1773 codec
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: lee@kernel.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <db90762f9df023299a8855ed60482a056544d591.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <db90762f9df023299a8855ed60482a056544d591.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:15:40 +0000
Message-Id: <20260711061540.71A291F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324750-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:lee@kernel.org,m:mfd@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riseup.net:email,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD65474092A

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Incorrect lifecycle for `devm_*` resource allocations in the ASoC =
component probe causes memory leaks and rebinding failures.
- [High] The driver swallows `-EPROBE_DEFER` from `devm_regulator_get()`, b=
reaking deferred probing for the VCC supply.
- [Low] The commit uses the deprecated property name `enable-gpio` instead =
of `enable-gpios`.
- [Low] Missing property definitions in the PCM1773 YAML binding schema wil=
l cause `dtbs_check` failures.
- [Low] Busy-waiting with `mdelay()` is used in a sleepable context.
--

--- Patch [12]: [PATCH 12/16] arm: dts: omap3pandora: Add device node for P=
CM1773 codec ---
commit 4dbdbb04f5f389f900287ce1a74c35a57890d4b3
Author: Grond <grond66@riseup.net>

arm: dts: omap3pandora: Add device node for PCM1773 codec

This commit adds a new device node for the PCM1773 codec to the OpenPandora
device tree. This ensures the new PCM1773 driver gets loaded automatically.

> diff --git a/arch/arm/boot/dts/ti/omap/omap3-pandora-common.dtsi b/arch/a=
rm/boot/dts/ti/omap/omap3-pandora-common.dtsi
> --- a/arch/arm/boot/dts/ti/omap/omap3-pandora-common.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap3-pandora-common.dtsi
> @@ -42,6 +42,13 @@ tv_connector_in: endpoint {
>  		};
>  	};
> =20
> +	dac: pcm1773-codec {
> +		compatible =3D "ti,pcm1773";
> +		vcc-supply =3D <&vsim>;
> +		enable-gpio =3D <&gpio4 22 GPIO_ACTIVE_HIGH>; /* GPIO 118 */

[Severity: Low]
Is it expected to use the deprecated property name enable-gpio instead of t=
he
mandated enable-gpios suffix?

The standard requires the plural form even for single GPIOs.

> +		status =3D "okay";
> +	};
> +
>  	gpio-leds {

> diff --git a/Documentation/devicetree/bindings/sound/pcm1773.yaml b/Docum=
entation/devicetree/bindings/sound/pcm1773.yaml
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/pcm1773.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: ti,pcm1773
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false

[Severity: Low]
Will this schema cause dtbs_check validation errors?

The schema includes additionalProperties: false but fails to list enable-gp=
ios
and vcc-supply in the properties dictionary.

The provided device tree nodes specify these properties, which will lead to
schema validation failures.

> +
> +examples:

> diff --git a/sound/soc/codecs/pcm1773.c b/sound/soc/codecs/pcm1773.c
> --- /dev/null
> +++ b/sound/soc/codecs/pcm1773.c
[ ... ]
> +static int pcm1773_dac_event(struct snd_soc_dapm_widget *w,
> +			     struct snd_kcontrol *k, int event)
> +{
[ ... ]
> +	if (SND_SOC_DAPM_EVENT_ON(event)) {
> +		if (ctx->regulator) {
> +			ret =3D regulator_enable(ctx->regulator);
> +			if (ret) {
> +				dev_err(dev, "Failed to power DAC: %d\n", ret);
> +				return ret;
> +			}
> +			mdelay(1);

[Severity: Low]
Should this use usleep_range() or msleep() instead of busy-waiting?

pcm1773_dac_event() is executed during DAPM widget power up/down events, wh=
ich
run in a sleepable context (as demonstrated by calls to
gpiod_set_value_cansleep()). Using mdelay() here wastes CPU cycles.

> +		}
[ ... ]
> +static int pcm1773_probe(struct snd_soc_component *component)
> +{
> +	struct pcm1773 *ctx =3D NULL;
> +	struct device *dev =3D component->dev;
> +	int ret;
> +
> +	ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +	snd_soc_component_set_drvdata(component, ctx);
> +
> +	ctx->enable_gpio =3D devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_L=
OW);

[Severity: High]
Can this incorrect lifecycle for devm_ allocations cause memory leaks and
rebinding failures?

pcm1773_probe() executes during sound card binding, using devm_kzalloc() and
devm_gpiod_get_optional() with the platform device (component->dev).

Since the platform device outlives the sound card lifecycle, these resources
are not freed upon unbind, and a subsequent bind will hit -EBUSY when
requesting the GPIO or regulator.

> +	if (IS_ERR(ctx->enable_gpio)) {
[ ... ]
> +	ctx->regulator =3D devm_regulator_get(dev, "vcc");
> +	if (IS_ERR(ctx->regulator)) {
> +		dev_warn(dev, "cannot get regulator 'vcc'");
> +		ctx->regulator =3D NULL;
> +	}

[Severity: High]
Does this break deferred probing for the VCC supply by swallowing
-EPROBE_DEFER?

When the VCC regulator driver is loaded after the sound driver,
devm_regulator_get() returns -EPROBE_DEFER.

This code intercepts the error, sets the regulator to NULL, and continues
instead of propagating the error. This will cause the DAC to silently fail =
to
power up later.

> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D12

