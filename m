Return-Path: <devicetree+bounces-8515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 988CE7C8785
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:11:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 537B128180F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D448918E23;
	Fri, 13 Oct 2023 14:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDgw2I9R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B363D37A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:11:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76931C433C7;
	Fri, 13 Oct 2023 14:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697206260;
	bh=yblgfOK1RNan7Z74qeOHcSvb7Lln2WHm9wFm6gXbhf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BDgw2I9RUVi8FmfXMdDwfGWWNWixrlRokLda/7jno+fJ0koZRbGXp4dIOEsmtjntk
	 6fTddidzhz/mBuaPzrgogyNNdQ4S/lmQAX+MOzr6brBSVnw8KeMcPv8anPgzJdIlKd
	 4trW7twlDDnTL7za8haPzW56eNNAUr/sVEvMqRvex2XCQQRRqBNKLpBFiZJEMthMLz
	 0RKpWnMpUztZPjibvq/g53a3cHwBso92RdxE1Hu11O9jXTAoWHQ+EnBQkRbto/DNjS
	 qQ8ECY/K6f3DxAk2jfce54Obn1QWtZMLUuYoodqBF+OM0hH1f5lS2YGjeCbn5ELlkc
	 kJow/8QLddtPw==
Date: Fri, 13 Oct 2023 15:10:56 +0100
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, herve.codina@bootlin.com,
	shumingf@realtek.com, rf@opensource.cirrus.com, arnd@arndb.de,
	13916275206@139.com, ryans.lee@analog.com, linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com, fido_max@inbox.ru,
	sebastian.reichel@collabora.com, colin.i.king@gmail.com,
	liweilei@awinic.com, trix@redhat.com, dan.carpenter@linaro.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V1 3/3] ASoC: codecs: Add aw88399 amplifier driver
Message-ID: <ZSlP8GvTAOe35peC@finisterre.sirena.org.uk>
References: <20231013104220.279953-1-wangweidong.a@awinic.com>
 <20231013104220.279953-4-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ralK2eSCf+ixFXP0"
Content-Disposition: inline
In-Reply-To: <20231013104220.279953-4-wangweidong.a@awinic.com>
X-Cookie: Save energy:  Drive a smaller shell.


--ralK2eSCf+ixFXP0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 13, 2023 at 06:42:20PM +0800, wangweidong.a@awinic.com wrote:

This looks good - some *very* minor comments below.

> +static const struct regmap_config aw88399_remap_config = {
> +	.val_bits = 16,
> +	.reg_bits = 8,
> +	.max_register = AW88399_REG_MAX - 1,

I see this is already the case for the aw88261 driver but it is a bit
weird that _REG_MAX isn't the maximum register - it looks like it should
probably be _NUM_REG.  Not the end of the world though.

> +static int aw_dev_dsp_update_container(struct aw_device *aw_dev,
> +			unsigned char *data, unsigned int len, unsigned short base)
> +{
> +	int i, ret;
> +
> +#ifdef AW88399_DSP_I2C_WRITES
> +	u32 tmp_len;

This looks like debug code which can hopefully be removed in favour of
the regmap implementation?

> +static int aw88399_codec_probe(struct snd_soc_component *component)
> +{
> +	struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
> +	struct aw88399 *aw88399 = snd_soc_component_get_drvdata(component);
> +	int ret;
> +
> +	ret = aw88399_request_firmware_file(aw88399);
> +	if (ret < 0) {
> +		dev_err(aw88399->aw_pa->dev, "%s failed\n", __func__);
> +		return ret;
> +	}
> +
> +	INIT_DELAYED_WORK(&aw88399->start_work, aw88399_startup_work);
> +
> +	/* add widgets */
> +	ret = snd_soc_dapm_new_controls(dapm, aw88399_dapm_widgets,
> +							ARRAY_SIZE(aw88399_dapm_widgets));
> +	if (ret < 0)
> +		return ret;
> +
> +	/* add route */
> +	ret = snd_soc_dapm_add_routes(dapm, aw88399_audio_map,
> +							ARRAY_SIZE(aw88399_audio_map));
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = snd_soc_add_component_controls(component, aw88399_controls,
> +							ARRAY_SIZE(aw88399_controls));

You should just be able to pass these arrays in the component strucutre?

--ralK2eSCf+ixFXP0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUpT+8ACgkQJNaLcl1U
h9CaAggAgc0J/p2bTSZNLjaIAKHFr9ldNYbl+3tMxNJwBnPfL3p07scPxSt/foY8
rLrtsYpfxKahAjbKlN1R9JtZVYuMyUfO33ed2Ww093sWB513nZMd31yCzh1+sY1g
DlRT6ezLSe2XTkGTt2mFyzJcqLZOIrIzfOndism4/Esuk872ziqlaMTjq/2GBLVb
WNY4D5bUcRxlFl1jphCDCSsJYCy9lpZMLaHPWrlbJh0tq1k5r7WvJ/rG0vOhGQTN
GT5x1j0CifyeA5x5TjI/wWuJhAVRjHxc4NYaI8806i34cybrI8JUIf98JYyD/M7+
7xDFdzxO/GXPZzSRctMol3uf+grzhQ==
=22g1
-----END PGP SIGNATURE-----

--ralK2eSCf+ixFXP0--

