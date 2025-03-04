Return-Path: <devicetree+bounces-154100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A485BA4ECD4
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C61A7A5679
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 19:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE36F255231;
	Tue,  4 Mar 2025 19:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik+QyPl3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899E7255223
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741115334; cv=none; b=Z8KxqQrlRp1m40beI1R/NSnzPdvLiR6xW/c9gabGvhGeCWFoGvyoE424MmJgkLrA3dp6INE11Oj8m4AmgRhuKwL06eROTK2S3N9R0+QmTCAgQ1Ilw+cMEAwsgn1EODKvXaO4zeyBQ5gh5W27IGdCNooVgb89ZVY0ZCDWGOE2WXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741115334; c=relaxed/simple;
	bh=iTsLrzXmNE6ewCyusYOdWQ/qVtARPaI4u/GWKkxxFvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jUBlDq5OtiSB3y+CPMyn46FIjsDvv6MOn3qZvDo3sq1qr/MkUGj5KRSsa56d/IfVYoO60Zbu4NRl46F8glpI67n80b4i/GvqZZZCWNEYarbixlMevOeZIBotC0+dT9diayMUiBiGRdf83jANTwplROGv6usvGfptwRSCIIZ53+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik+QyPl3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40CD6C4CEE5;
	Tue,  4 Mar 2025 19:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741115334;
	bh=iTsLrzXmNE6ewCyusYOdWQ/qVtARPaI4u/GWKkxxFvw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ik+QyPl3mFK3GTSkTqm+wIY6RI5U1X2lWxHps+fFzh2yOJ14+d1Pz0veM/Bn27PYx
	 0yorqpHrl0TQtMOui1s16eIyPEWGSaNqQua8athSUA0s7PXn/yr1eXvSFmYbjFs8Ib
	 EOv1cwDi2Pkk96UsMeZOjH0S9m8SG61cUpLgtfLVf70SgfmAPVtMLNgmYnLdFnI5mY
	 vVzcsQ13LEetUgv0l/Tw77OBP7MFKMBfJwf8MJlaSmPpNvoddMrb/r/EXpZ1xasb+l
	 Ur5TbUA6QjFmLT4IKyTzve1mypAt9NE0tx3qrBH69tVm3rip6XwonvIuF1TqFkVaEK
	 Udfjf2+5s7KyA==
Date: Tue, 4 Mar 2025 19:08:49 +0000
From: Mark Brown <broonie@kernel.org>
To: Zhang Yi <zhangyi@everest-semi.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8389
Message-ID: <683f5b2b-3583-442a-8d98-28bbbcf90d1e@sirena.org.uk>
References: <20250304114751.54635-1-zhangyi@everest-semi.com>
 <20250304114751.54635-2-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PYMSt5sabbE7jsCR"
Content-Disposition: inline
In-Reply-To: <20250304114751.54635-2-zhangyi@everest-semi.com>
X-Cookie: Do not disturb.


--PYMSt5sabbE7jsCR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 04, 2025 at 07:47:50PM +0800, Zhang Yi wrote:
> The driver is for codec es8389 of everest which is different from ES8388

> @@ -0,0 +1,961 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * es8389.c  --  ES8389/ES8390 ALSA SoC Audio Codec
> + *
> + * Copyright (C) 2025 Everest Semiconductor Co., Ltd

Please make the entire comment block a C++ one so things look more
consistent.

> +	if (es8389->dmic == true) {
> +		regmap_update_bits(es8389->regmap, ES8389_DMIC_EN, 0xC0, 0xC0);
> +		regmap_update_bits(es8389->regmap, ES8389_ADC_MODE, 0x03, 0x03);
> +	} else {
> +		regmap_update_bits(es8389->regmap, ES8389_DMIC_EN, 0xC0, 0x00);
> +		regmap_update_bits(es8389->regmap, ES8389_ADC_MODE, 0x03, 0x00);
> +	}

We also had the DMIC mux, is that useful as a runtime control when we
have firmware data telling us if there's a DMIC?  Can both a DMIC and
analog input be present in the same system?

It does still look like a lot of these settings might be things that
should be user controllable...

> +	ret = device_property_read_u8(codec->dev, "everest,adc-slot", &es8389->adc_slot);
> +	if (ret != 0) {
> +		dev_dbg(codec->dev, "adc-slot return %d", ret);
> +		es8389->adc_slot = 0x00;
> +	}
> +
> +	ret = device_property_read_u8(codec->dev, "everest,dac-slot", &es8389->dac_slot);
> +	if (ret != 0) {
> +		dev_dbg(codec->dev, "dac-slot return %d", ret);
> +		es8389->dac_slot = 0x00;
> +	}

set_tdm_slot()

Please don't ignore review comments, people are generally making them
for a reason and are likely to have the same concerns if issues remain
unaddressed.  Having to repeat the same comments can get repetitive and
make people question the value of time spent reviewing.  If you disagree
with the review comments that's fine but you need to reply and discuss
your concerns so that the reviewer can understand your decisions.

> +	if (!es8389->adc_slot) {
> +		es8389->mclk = devm_clk_get(codec->dev, "mclk");
> +		if (IS_ERR(es8389->mclk))
> +			return dev_err_probe(codec->dev, PTR_ERR(es8389->mclk),
> +				"ES8389 is unable to get mclk\n");
> +
> +		if (!es8389->mclk)
> +			dev_err(codec->dev, "%s, assuming static mclk\n", __func__);
> +
> +		ret = clk_prepare_enable(es8389->mclk);
> +		if (ret) {
> +			dev_err(codec->dev, "%s, unable to enable mclk\n", __func__);
> +			return ret;
> +		}
> +	}

Making the use of a MCLK depend on the configuration of a TDM slot for
the ADC seems *very* unusual, what's going on there?

--PYMSt5sabbE7jsCR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmfHT8AACgkQJNaLcl1U
h9D7VggAgCUCy3r0SZpAyeJcxz5cqr7stWTZdLnQVpbtH0Nu+u9cGAVBSmIFLHoP
WVgSA64gPWQOJpfOT343p5YfTmz66IomnBHbQhrgGdcaZskxyHmxksA2zWsD5iJn
N7oi9D415Yfl12cvCymuWcI7pEJl99sm3xaMvq2YRrAMOpNkEKrLYETpY/uoIpu9
0JcFsU7ulq2/4myCITQ1lP9NIXMmozS3bFFbu4tU8D//BMiVtXQTDeT4hnIJADAN
dOGos/2O4qEJ27HV67eAtQgaf0EboOlpeTbmMSc7d608SygmgLRnpkKT5X64eckj
IobExlZr+Q561sBbHvTtfImWjaEWGQ==
=ngUN
-----END PGP SIGNATURE-----

--PYMSt5sabbE7jsCR--

