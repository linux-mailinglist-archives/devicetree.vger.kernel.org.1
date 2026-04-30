Return-Path: <devicetree+bounces-291890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLFiOHUw82m0yAEAu9opvQ
	(envelope-from <devicetree+bounces-291890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 12:35:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A7F4A0E55
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 12:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6FE13009146
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 10:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E1B38F629;
	Thu, 30 Apr 2026 10:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ac/jfw5t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3625D389473;
	Thu, 30 Apr 2026 10:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777545253; cv=none; b=EDKOZpDJloE+cYvBHl4T4920cJ/2AFMozR7yms4IKfhaGruP5EO1K3uQj2KIxqMXe4su9iUxoBUnLTEa64TvMNx4Kcz9y2Z3hkaUve60zGQ0RiTn4+ZgmBJOXk6xfB6PcmUykBwhVYRyXNQ4elVJKEkl0nXq9NTHyzAGwnwMZaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777545253; c=relaxed/simple;
	bh=YiP0fo7LZX2DKWfreYROVuf0XjA4O0oiBXqtJf3DMlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QWLZQVuRFXXi9co7OtRkcEcsNQKB9GuCTidTm5UdeGXTUKtCYCMwX62o7X1bWfpDai7ML3b7tUXqlmAoh1jeScKnOuAQlXTp+t64Ki3R/sipDaBPViB05Eqk0pkB9cq+smpawJfZVIBue4xB745RhWbqIfoRgPsYyBKTVs/asGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ac/jfw5t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3E63C2BCB3;
	Thu, 30 Apr 2026 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777545252;
	bh=YiP0fo7LZX2DKWfreYROVuf0XjA4O0oiBXqtJf3DMlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ac/jfw5tHVb7ALqbt8Q4Ycc/S95wYZHg+i31hZgQg19h4mSfKONr/K+S/jIWIPrMg
	 X0igsPwfnj1eSscFzKxMsNhm49w8r3coeduqMR8LqNR6/oVtyfkcFvFaa5YAW8hNDy
	 yFUcTAi8ouXl/gZ/wJHeDaNF0DrV+Ij7YuveUzyGFLxhjC9V8iQPtddfEip32wiwjU
	 VG6E0bsv6KhPsi4m9huY6uSnxjtuOrdogPA9nOnb9+DMO5M0dR+ukiS9OGrmGABzMh
	 mg06FIsXrNoHMFAbYsyClIsxBzTA0q6VuGyIskcC8PsB1ojS07Nzz5gqjzO+01mJ2m
	 De7oP9o7lLEnA==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id D4B7C1AC585E; Thu, 30 Apr 2026 11:34:09 +0100 (BST)
Date: Thu, 30 Apr 2026 19:34:09 +0900
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH v2 2/2] regulator: add SGM3804 Dual Output driver
Message-ID: <afMwIVRDxl11Ty_P@sirena.co.uk>
References: <20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-0-76108c65a560@linaro.org>
 <20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-2-76108c65a560@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HXQe6xzGiVVKcpwy"
Content-Disposition: inline
In-Reply-To: <20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-2-76108c65a560@linaro.org>
X-Cookie: 667:
X-Rspamd-Queue-Id: 47A7F4A0E55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291890-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,outlook.com:email,sirena.co.uk:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--HXQe6xzGiVVKcpwy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2026 at 10:48:47AM +0200, Neil Armstrong wrote:

> Add support for the SG Micro SGM3804 Single Inductor Dual Output
> Buck/Boost Converter used to power LCD panels a provide positive
> and negative power rails with configurable voltage and active
> discharge function for each output.

> +config REGULATOR_SGM3804
> +	tristate "SGMicro SGM3804 voltage regulator"
> +	depends on I2C && OF
> +	help
> +	  This driver supports SGMicro SGM3804 dual-output voltage regulator.
> +

This needs to select REGMAP_I2C.

> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * SGMicro SGM3804 regulator Driver
> + *
> + * Copyright (C) 2025 Kancy Joe <kancy2333@outlook.com>
> + * Copyright (C) 2026 Linaro Limited
> + * Author: Neil Armstrong <neil.armstrong@linaro.org>
> + */

Please make the entire comment block a C++ one so things look more
intentional.

> +/*
> + * Since all registers are only writeable & volatile,
> + * regmap will only read from the cache data.
> + */
> +static bool sgm3804_readable_reg(struct device *dev, unsigned int reg)
> +{
> +	return false;
> +}

Non-readable registers can't be volatile, volatile means always do a
read.

> +static int sgm3804_enable(struct regulator_dev *rdev)
> +{
> +	struct sgm3804_data *ctx = rdev->reg_data;
> +	int ret;
> +
> +	ret = gpiod_set_value(ctx->gpios[rdev_get_id(rdev)], 1);
> +	if (ret)
> +		return ret;

This could use _cansleep() for wider interoperability.

> +
> +	ret = regmap_write(ctx->regmap, rdev->desc->vsel_reg,
> +			   ctx->sel[rdev_get_id(rdev)]);
> +	if (ret)
> +		goto err;
> +
> +	ret = regulator_set_active_discharge_regmap(rdev,
> +						    ctx->active_discharge[rdev_get_id(rdev)]);
> +	if (ret)
> +		goto err;

I'm still not clear why this isn't doing a regcache sync instead of
writing things out individually.

> +		ctx->gpios[i] = devm_gpiod_get_index(dev, "enable",
> +						     i, GPIOD_OUT_LOW);
> +		if (IS_ERR(ctx->gpios[i]))
> +			return dev_err_probe(dev, PTR_ERR(ctx->gpios[i]),
> +					"failed to get enable GPIO %d\n", i);

Perhaps use GPIOD_ASIS for a smoother handover?

--HXQe6xzGiVVKcpwy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnzMCEACgkQJNaLcl1U
h9DaCgf9Eff/DtDAeiPXyZULJQ6WL1x0T99ayUEhjsx6P6JOThrlb8TJWiKkk91Y
oAOQKfzHubyA9Q5ZxIpIEzMAtGpzSmclTOX+18VUxfGlisRDvnV5y/hFEMJgwz2j
ZVeT2c+YKpn8nP3KKTKU8l4Raj3e7BwYsPcAOWUjuBlJGyVGqJlQ75Vw6VFPpVqb
y4jlXlEkyGuFOxGRF52DCItDYpAMa+dsGkliUJo4RYdjFqFXhxOU6+BNQGOgUGOO
i7VSCE+xMl0b0QROxlvnSOASf9MG/ER6ykR+jEtVnmAx9bkRyWSvRJVynxGnk3qw
8halwxGPSbp5lfo9QMpm2b22+3kZDg==
=eJvU
-----END PGP SIGNATURE-----

--HXQe6xzGiVVKcpwy--

