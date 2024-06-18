Return-Path: <devicetree+bounces-77028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BC290D3B0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CAF01C24ECD
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F621494DA;
	Tue, 18 Jun 2024 13:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn3gL0Uu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534C2139C1
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718718990; cv=none; b=Mt5Vu+yGfjFj7jNe8rPD7afuKRVYb/aY9AXI4kTiJMhlD+SWjPYyLTc3JHajelObkth/XyMAj2+05AIGlqDHpOhvaO76TO5NPCfjBPb68ZZY7ZPw2tlvAUAcOI5H0jDBolBF9cSxZLy9kO9KHrBWZJ/fl6h5FCTRJvhIeq2b6WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718718990; c=relaxed/simple;
	bh=NM2NcZTrPN/wCkiG7KExZgkQ9Nyur+YPu9CUg8Lt8bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYgE34L3radl636aASFBCojgpwz7r5F28qWi9uuo/zxAbi3fPb+BlLzW4KAZPi3QlxIhmscpLvqnfEHdKVSjX5mVZHQhEGTsEml7WEQSDxcajTU1tFNqDzotBN8+Gy/yxL6mpiVXrAmvX4zZrB8WczmZt0+g+UQesZfwMpCopqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn3gL0Uu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35B19C3277B;
	Tue, 18 Jun 2024 13:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718718989;
	bh=NM2NcZTrPN/wCkiG7KExZgkQ9Nyur+YPu9CUg8Lt8bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qn3gL0UuckCbot8/D7UEMsODr3nYgfeP+RaoeQ0EIhGXoQmmYTMKZBKkdQhMwS/OQ
	 rFvIDbK2kFAcLgTW/sg9FZljA7Fz6wBX0YRb77DcfSoeQ06gA9NbgwtjsZpkhz1sHJ
	 guo4dAV4yj1RC68zVvU/KffwhsQJtt9Q29XqBzBZMBM5uPvnIKJtbBCIOOdbNN5JyI
	 sIrfIT3F+XnlmoHWYk77xssm8xYcPHrlLwqRHKUZcbRSYQ4ESxT9+31SuLrbdShE55
	 uhCd9cf7h4ie5Q1QIU9FsoE6R30V0etxP3htW1HJyZv2cex8bIgRrKCg+NUaSm9OWZ
	 BOAwfvJMRVmKw==
Date: Tue, 18 Jun 2024 14:56:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org, Khanh Le <khanh.le.xr@renesas.com>
Subject: Re: [PATCH v2 1/2] ASoC: Add ak4619 codec support
Message-ID: <69e3d946-ec16-4abd-a51f-309da9cf1d3c@sirena.org.uk>
References: <87frtb3x4k.wl-kuninori.morimoto.gx@renesas.com>
 <87ed8v3x44.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kbTE03bOSalrPnRn"
Content-Disposition: inline
In-Reply-To: <87ed8v3x44.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: If you can read this, you're too close.


--kbTE03bOSalrPnRn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 18, 2024 at 12:36:43AM +0000, Kuninori Morimoto wrote:

Looks mostly good, a few small nits:

> +static int ak4619_put_deemph(struct snd_kcontrol *kcontrol,
> +				struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
> +	struct ak4619_priv *ak4619 = snd_soc_component_get_drvdata(component);
> +	int deemph_en = ucontrol->value.integer.value[0];
> +
> +	if (deemph_en > 1)
> +		return -EINVAL;
> +

We should also check for negative values here, those are also out of
range (many other drivers are buggy).

> +	ak4619->deemph_en = deemph_en;
> +	ak4619_set_deemph(component);
> +
> +	return 0;
> +}

This won't return 1 on change so will miss generating events confusing
some UIs, the mixer-test selftest should notice this and the range check
issue.

> +	/* Only slave mode is support */
> +	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> +	case SND_SOC_DAIFMT_CBS_CFS:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}

Please update for the modern names.

> +static const struct regmap_config ak4619_regmap_cfg = {
> +	.reg_bits		= 8,
> +	.val_bits		= 8,
> +	.max_register		= 0x14,
> +	.reg_defaults		= ak4619_reg_defaults,
> +	.num_reg_defaults	= ARRAY_SIZE(ak4619_reg_defaults),
> +	.cache_type		= REGCACHE_RBTREE,
> +};

Unless there's a specific reason it's probably best to use _MAPLE for
the cache, not that it's likely to make a difference to a driver with
such a small regmap.

--kbTE03bOSalrPnRn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZxkggACgkQJNaLcl1U
h9D6bAf/aBH4/lGmkmhQZa1lwdS4HmW8V7ulCYZyziWIDv7UVFwlXvkDp068dnEQ
YpZzpoaT06ojnJOMOC4M+fJorV7Uqgo6X0oCbjgbWOOJdymNvT1+xpmkMDK2e8Xy
1fho2LzBu5zk25jZ2gDiQSeJEW6T053k9FefGVLygDwAvNDI3hd/s4OrShpuPQk5
Uhx9T+cZodto7GlP0ywa+JTARLicmKJcXPkpg/LNL8tXczXEfUTBXVd7bC6+FwRX
GM4ynZP1gHXKJmPrhNGhB7tPV2Glo04AsTQGrA5gQKj88CQX0VI6Oxw/xVNhm4lC
pOUc/vsJ+xdpMeAMBXQPuy9VD/iKrA==
=wIUq
-----END PGP SIGNATURE-----

--kbTE03bOSalrPnRn--

