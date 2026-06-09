Return-Path: <devicetree+bounces-308623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nY4PIl2EJ2rhyQIAu9opvQ
	(envelope-from <devicetree+bounces-308623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:11:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EF64965BFD4
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:11:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NPNOYieY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308623-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308623-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2F5F304C4C1
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DDE363C77;
	Tue,  9 Jun 2026 03:11:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FD7363C57
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 03:11:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974682; cv=none; b=MChvpOqoK0TRsDpIxKpRn4CGz//EjO8Tzr+DnUWT5Ox7vHvLEPbIeA9AMrlTi206KsIQfngikr+88jk9V9/kAqF5WocqmCEqr0Xcae2cIDbOIDthdQexLOR/ZUNsww8OoOPwmbdbKz2muJoklYYbHN5PdOEYlUmqYl0YimOp3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974682; c=relaxed/simple;
	bh=EGcZY8M5mn72gVIgZtceSdt2MBqMC0/MnGtYFEbscGI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=esWa8eMZjasZJER0lF7XqtlV0EE7Yv5ATVdlJlBJ6eJUx/Mz0QYpgM22xFkKURiGYM9QQRmdEjvF5ZUe++d6guo9VsYmlesVttgAexa63ad3D0rA8waq11VnE1pRPayC6yY1EItIW+DNZjxL1HWzReXR2xRWTc8yXXOm/fqfqgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPNOYieY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76CCB1F00893;
	Tue,  9 Jun 2026 03:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780974680;
	bh=P6Iv+42nRk1YEWO+75QaMn8yPVI2noKQGivAZQl8vuk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NPNOYieYCRNkRMt3gxa4a3nDxiVlzFCjrFXQ7Rpbbiy6mECnUv8Q3KFwJ01ReuzUa
	 z68AHCZvaO2H8uV57boSoTpIzDVOXK5UdMULd4KiigdUjE8Fu3Ov89hAtZm9EyUjb5
	 S/n6FyZOpH6jF47ZhTUFoBnzSQj4MdePk2g/+hZqWos/pKl3zCCN62qkFbT8mCUtv4
	 VD96EZboV3E1W5XEkJE33+8hqS3uOuP3nx7ovo/nThjQ78Pm68Sr7W1A/Ny7SS0sMW
	 fTgBERAcR1Vu0MgwlMwMib5Jl1PCVBvp4hdJDDgLFITo9DfBoo/8qvDMYnBJsDTQqz
	 GpdLSP82kICxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] ASoC: codecs: ES8389: Fix the issue about mclk_src
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhang Yi" <zhangyi@everest-semi.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609025605.16945-3-zhangyi@everest-semi.com>
References: <20260609025605.16945-3-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 03:11:20 +0000
Message-Id: <20260609031120.76CCB1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308623-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhangyi@everest-semi.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,everest-semi.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF64965BFD4

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect sysclk calculation for SCLK mode due to using params_wid=
th() instead of params_physical_width() or snd_soc_params_to_bclk().
- [High] Component probe function ties devm_ allocations to the I2C device,=
 causing memory and resource leaks on ASoC card unbind/rebind.
- [High] Regulators are enabled in component probe but never disabled in co=
mponent remove, leading to regulator enable count leaks.
- [High] Silent failure when valid clock coefficients are not found.
--

commit 96650b0d78cc8e7757fca690cc1cc18f2d5796b3
Author: Zhang Yi <zhangyi@everest-semi.com>

ASoC: codecs: ES8389: Fix the issue about mclk_src

Fix the issue with incorrect modifications to mclk_src

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> index 9c816491648c7..7a9d5d42a05d0 100644
> --- a/sound/soc/codecs/es8389.c
> +++ b/sound/soc/codecs/es8389.c
[ ... ]
> @@ -607,9 +607,9 @@ static int es8389_pcm_hw_params(struct snd_pcm_substr=
eam *substream,
>  	regmap_update_bits(es8389->regmap, ES8389_ADC_FORMAT_MUTE, ES8389_DATA_=
LEN_MASK, state);
>  	regmap_update_bits(es8389->regmap, ES8389_DAC_FORMAT_MUTE, ES8389_DATA_=
LEN_MASK, state);
> =20
> -	if (es8389->mclk_src =3D=3D ES8389_SCLK_PIN) {
> +	if (es8389->mclk_src) {
>  		regmap_update_bits(es8389->regmap, ES8389_MASTER_CLK,
> -					ES8389_MCLK_SOURCE, es8389->mclk_src);
> +					ES8389_MCLK_MASK, ES8389_MCLK_FROM_SCLK);
>  		es8389->sysclk =3D params_channels(params) * params_width(params) * pa=
rams_rate(params);

[Severity: High]
This isn't a bug introduced by this patch, but does this calculate the
sysclk correctly for SCLK mode?

It looks like params_width() returns the semantic sample width (e.g., 24
for S24_LE), rather than the physical slot width on the I2S bus
(typically 32 bits for 24-bit samples).

Could this result in an incorrectly calculated sysclk, causing get_coeff()
to fail or configure incorrect clock dividers? Should this use
params_physical_width() or snd_soc_params_to_bclk() instead?

Later in this same function:

sound/soc/codecs/es8389.c:es8389_pcm_hw_params() {
    ...
	coeff =3D get_coeff(es8389->vddd, dmic_enable, es8389->sysclk, params_rate=
(params));
	if (coeff >=3D 0) {
        ...
	} else {
		dev_warn(component->dev, "Clock coefficients do not match");
	}

	return 0;
}

[Severity: High]
This is a pre-existing issue, but does this safely handle errors?

If get_coeff() fails to find valid clock coefficients and returns -EINVAL,
the driver logs a warning but unconditionally returns 0 (success) to the
ALSA core.

Will this cause the audio framework to proceed with an unconfigured codec,
resulting in silent failures or garbled audio? Should it propagate the error
code instead?

[ ... ]
> @@ -897,11 +897,7 @@ static int es8389_probe(struct snd_soc_component *co=
mponent)
>  	int ret, i;
>  	struct es8389_private *es8389 =3D snd_soc_component_get_drvdata(compone=
nt);
> =20
> -	ret =3D device_property_read_u8(component->dev, "everest,mclk-src", &es=
8389->mclk_src);
> -	if (ret !=3D 0) {
> -		dev_dbg(component->dev, "mclk-src return %d", ret);
> -		es8389->mclk_src =3D ES8389_MCLK_SOURCE;
> -	}
> +	es8389->mclk_src =3D device_property_read_bool(component->dev, "everest=
,mclk-from-sclk");
> =20
>  	for (i =3D 0; i < ARRAY_SIZE(es8389_core_supplies); i++)
>  		es8389->core_supply[i].supply =3D es8389_core_supplies[i];

[Severity: High]
This isn't a bug introduced by this patch, but does es8389_probe() leak
resources during ASoC card unbind/rebind?

This is an ASoC component probe callback (executed when the sound card
binds), not an I2C driver probe callback. However, later in this
function, it allocates devm resources tied to the I2C device:

sound/soc/codecs/es8389.c:es8389_probe() {
    ...
	ret =3D devm_regulator_bulk_get(component->dev, ARRAY_SIZE(es8389_core_sup=
plies), es8389->core_supply);
    ...
	es8389->mclk =3D devm_clk_get_optional(component->dev, "mclk");
    ...
}

Since the I2C device's lifecycle spans beyond the sound card's lifecycle,
every time the sound card is unbound and rebound, won't es8389_probe()
execute again, allocating new regulators and clock handles on the I2C
device's devres list without freeing the previous ones?

Furthermore, this probe function enables the regulators:

sound/soc/codecs/es8389.c:es8389_probe() {
    ...
	ret =3D regulator_bulk_enable(ARRAY_SIZE(es8389_core_supplies), es8389->co=
re_supply);
    ...
}

[Severity: High]
This is a pre-existing issue, but does this leak the regulator enable count?

The corresponding es8389_remove() function does not call
regulator_bulk_disable():

sound/soc/codecs/es8389.c:es8389_remove() {
	struct es8389_private *es8389 =3D snd_soc_component_get_drvdata(component);

	regmap_write(es8389->regmap, ES8389_MASTER_MODE, 0x28);
	regmap_write(es8389->regmap, ES8389_HPSW, 0x00);
    ...
}

Every time the ASoC component is bound and then unbound, won't the
regulator's internal enable count be incremented but never decremented?
Could this prevent the regulator from ever being powered off by the system,
leading to increased power consumption?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609025605.1694=
5-1-zhangyi@everest-semi.com?part=3D2

