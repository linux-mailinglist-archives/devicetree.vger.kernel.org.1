Return-Path: <devicetree+bounces-151482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C620A45F46
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 13:34:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 290A416509F
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 12:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547D121D59A;
	Wed, 26 Feb 2025 12:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwlrW/yo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D0121A429
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 12:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740573196; cv=none; b=R94yxpDZjzfCXOltRXA3GP7lgiYWevL0vKTmBb3O0J35g2/fLZhphlrqZBSBiL5CImYfiLxgaJJcVdLOMmEE3zv3zpZEL1nrtZ+wwkAgZ1+5OHND5aLy3wy/+IU1GRvc7kYzmmS/jA0aH/nXIcsocAEQNay7znzViS8xxPR+Bzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740573196; c=relaxed/simple;
	bh=7+XdHXZ6ao1Y7kjvGwjUYEBcphn+hZXhecvlPA6+4tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sgVJhLfHt9GUMVHRihanTn3FUfMsCeqDJgW1ZoxTC5aokRSBgtmEzUeA47WOE9pyO4WvyZervMy5y1QmNyExo55ts5+XBdoOn1f3ACvJF0PYWuWz1uqCvFr9bAAu01sF7HlmX5r1Eclsq85fqkOYLBX/kv7XJnRTMj4X8diAOj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwlrW/yo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C76E0C4CED6;
	Wed, 26 Feb 2025 12:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740573195;
	bh=7+XdHXZ6ao1Y7kjvGwjUYEBcphn+hZXhecvlPA6+4tU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OwlrW/yolNuHKbU5aAbNjPj5duyA7c1MMSZWLOTphu4Db4N3X2DYCibj5aYpeOUQm
	 b61aWXRns7hME+lCHojRpgitq6ainf99RMBTgR1zJ3vRdVP7VgHkIle0zgcbyrgRa0
	 1UWLjKFmkzu89jD6GLALcLZh7lrzTQD4eIo5PcwWQ4i6NDB8if9II9hWwjY1tNVCUb
	 NWs+0py+vFxW3aKGLfFO7vuwv3mAT6UFQPak/tr5H2C9oMja8IDlrNhmD89VF0mTPh
	 mCtDT5lCeuPN8gRIoeveVagA8a9E1bApz/vXUtbr1um8m0dJznvVyYauIAOx4cad6V
	 FjO5Z/tJIiI8g==
Date: Wed, 26 Feb 2025 12:33:10 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com
Subject: Re: [PATCH 1/2] ASoC: codecs: add support for ES8389
Message-ID: <96cb0016-49bf-4890-b2e4-995a2f5aec09@sirena.org.uk>
References: <20250226104949.16303-1-zhangyi@everest-semi.com>
 <20250226104949.16303-2-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VuaxC73h0F7gNdC3"
Content-Disposition: inline
In-Reply-To: <20250226104949.16303-2-zhangyi@everest-semi.com>
X-Cookie: I've been there.


--VuaxC73h0F7gNdC3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2025 at 06:49:48PM +0800, Zhang Yi wrote:

> --- /dev/null
> +++ b/sound/soc/codecs/es8389.c
> @@ -0,0 +1,977 @@
> +/*
> + * es8389.c  --  ES8389/ES8390 ALSA SoC Audio Codec
> + *

This is missing the SPDX header, and the whole comment block should be a
C++ as a result for consistency.

> + * Copyright (C) 2024 Everest Semiconductor Co., Ltd

2025?

> +static const char *es8389_outl_mux_txt[] = {
> +	"normal",
> +	"DAC2 channel to DAC1 channel",
> +};
> +
> +static const char *es8389_outr_mux_txt[] = {
> +	"normal",
> +	"DAC1 channel to DAC2 channel",
> +};

"Normal".

> +static const unsigned int es8389_out_mux_values[] = {
> +	0, 1
> +};

That's just a normal ENUM, it doesn't need to be a VALUE_ENUM.

> +	SOC_ENUM("PGA1 Select", es8389_pga_enum[0]),
> +	SOC_ENUM("PGA2 Select", es8389_pga_enum[1]),

Declare these as individual variables rather than using magic numbers to
index into an array, it's much more robust and legible.

> +	SOC_DOUBLE("ADC OSR Volume ON", ES8389_ADC_MUTE_REG2F, 6, 7, 1, 0),

On/off controls should end in Switch, see control-names.rst.

> +	SOC_DOUBLE("ADC OUTPUT Invert", ES8389_ADC_HPF2_REG25, 5, 6, 1, 0),

Same here.

> +	SOC_DOUBLE("DAC OUTPUT Invert", ES8389_DAC_INV_REG45, 5, 6, 1, 0),

and here.

> +	SOC_SINGLE("Mix ADCR And DACR to DACR", ES8389_DAC_MIX_REG44, 0, 1, 0),
> +	SOC_SINGLE("Mix ADCL And DACL to DACL", ES8389_DAC_MIX_REG44, 1, 1, 0),

These should be DAPM controls.

> +/* codec hifi mclk clock divider coefficients */
> +static const struct _coeff_div  coeff_div[] = {
> +	{32 ,256000 ,8000 ,0x00 ,0x57 ,0x84 ,0xD0 ,0x03 ,0xC1 ,0xB0 ,0x00 ,0x00 ,0x1F ,0x7F ,0xBF ,0xC0 ,0xFF ,0x7F ,0x01 ,0x12 ,0x00 ,0x09 ,0x19 ,0x07},

Usually we write NN, not NN ,

> +	default:
> +		break;
> +	}
> +		regmap_update_bits(es8389->regmap, ES8389_ADC_REG20, ES8389_DAIFMT_MASK, state);
> +		regmap_update_bits(es8389->regmap, ES8389_DAC_REG40, ES8389_DAIFMT_MASK, state);
> +
> +		/* clock inversion */
> +	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {

Indentation here is weird.

> +static void es8389_init(struct snd_soc_component *codec)
> +{
> +	struct es8389_private *es8389 = snd_soc_component_get_drvdata(codec);
> +
> +	regmap_write(es8389->regmap, ES8389_ISO_CTL_REGF3, 0x00);
> +	regmap_write(es8389->regmap, ES8389_RESET_REG00, 0x7E);
> +	regmap_write(es8389->regmap, ES8389_ISO_CTL_REGF3, 0x38);
> +	regmap_write(es8389->regmap, ES8389_ADC_HPF1_REG24, 0x64);
> +	regmap_write(es8389->regmap, ES8389_ADC_HPF2_REG25, 0x04);
> +	regmap_write(es8389->regmap, ES8389_DAC_INV_REG45, 0x03);

What are all these magic writes doing - some of them are likely sensible
but there's an awful lot of magic numbers here and some of the register
names seem like things that people might want to configure.

> +	regmap_write(es8389->regmap, ES8389_MIC1_GAIN_REG72, 0x10);
> +	regmap_write(es8389->regmap, ES8389_MIC2_GAIN_REG73, 0x10);

These for example look very much like user controls.  In general we
stick with the silicon defaults to avoid issues with competing use caes
wanting different values.

> +	//es8389_set_bias_level(codec, SND_SOC_BIAS_STANDBY);

Just remove this if it's commented out.

> +static struct regmap_config es8389_regmap = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +
> +	.max_register = ES8389_MAX_REGISTER,
> +
> +	.volatile_reg = es8389_volatile_register,
> +	.cache_type = REGCACHE_RBTREE,
> +};

Unless you've got a specific reason you should use _MAPLE not _RBTREE,
it's a more modern data structure and makes decisions that tend to be
better on current hardware.

> +static int es8389_i2c_probe(struct i2c_client *i2c_client)
> +{
> +	struct es8389_private *es8389;
> +	int ret = -1;
> +	//unsigned int val;

More commented code.

> +	es8389->regmap = devm_regmap_init_i2c(i2c_client, &es8389_regmap);
> +	if (IS_ERR(es8389->regmap)) {
> +		ret = PTR_ERR(es8389->regmap);
> +		dev_err(&i2c_client->dev, "regmap_init() failed: %d\n", ret);

Use dev_err_probe().

> +++ b/sound/soc/codecs/es8389.h
> @@ -0,0 +1,139 @@
> +/*
> +* ES8389.h  --  ES8389 ALSA SoC Audio Codec

Indentation is weird - the *s should be aligned.

--VuaxC73h0F7gNdC3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAme/CgUACgkQJNaLcl1U
h9CurAf9E3rhafCARDOUrib5z+hH3lvVoFCorUM/6kiws10zK3sZsQezRLoln+gE
688ErYbrWGdN+mDZgBbdmnwTmATrW6tOaOd9FynNaoK5y3fTp/OyimQKckyLI9KJ
bGeMomhpwITUPHfe39JXi+QNJ/sfWuyHCSe9GRyfen4DQs/S1sj4A2AFVvRDS1iL
L/Ffafw6+3whZ6FMVe+fXHDy60PDZ1KXid4aBk1PhZDAZGnMKxcSKwIk+MwFADx2
28uysKNfVCYg1Rn2chYLAS2QWE7ycsC0hmue/ZkTsgCUtEqw1OsBuLDfGtR3Ijg3
s5u3yn7zyNBI71TshFwR3vmuA+NDZw==
=XKCJ
-----END PGP SIGNATURE-----

--VuaxC73h0F7gNdC3--

