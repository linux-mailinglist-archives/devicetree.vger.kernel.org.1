Return-Path: <devicetree+bounces-108362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C679A992631
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 09:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA8FE1C20AAB
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 07:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3AA17C7D4;
	Mon,  7 Oct 2024 07:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eHg+ndZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECD116132E
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 07:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728286856; cv=none; b=Weo6HFO4qAVUz8M9LDPqTzNhBASyJ4h/qYbKvdAgjBIn1dBaHfljmPGMN1uBYurdEF539wulXxFnuWa5AmcxISdesJ+EP50jPyKWCjkTYo9aD9DFbUCSo/qvGtM50h2LxWBobu1gHQdtkTcXFYnX89G03XpJpmgfQO7ljq1kovc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728286856; c=relaxed/simple;
	bh=ipEZArsJZcihaFEO48QVP9y4kH66dpAf9QgRnY+Q46g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mm9x4PGTjrdAev1tGAtTeC4+Zynua0lWwNptIHTLOpZ6HyHkqnYL06Q6L2C1qXOYwVa6vhk7h4Q/k2j85ypeYt3ll89RfWUW5NYkrWofpi4dsJwrpte3zDI8p7Zb1dLtNHlY77GcdHTOH7bwgZxnnsjDXlK3gTQL9ASuw5Qu15Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eHg+ndZC; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c40aea5c40so8002322a12.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 00:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728286853; x=1728891653; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KWJKfNtCPiadgKKpV44m6e67/qtZJV5vu299cJKq5tw=;
        b=eHg+ndZCHbpYrUtbpAQLi8su6JG3iqtEds0V63pP4Ha+z2HzNxHGfyZ95jggmoPt+w
         Tu76QVMTL+T5QWWEKr1oMSnWfEE8mKp/tH3pSsms2xd1vB5zi5C123dGeR8vJzcWA10p
         +SDzrW9aI06tac+pFYSf8N1FB31twL8D2TPTOpiUQ3kkRfSpn0cPFjl+0lWDm71MxXBo
         pOpQhf2L/GlMbgBiLabWgelX8CV6yHkXolC8z51dDQV+KydNMk9jUEz266q4xPUkheyo
         851vK0c9q77e6x7tg+UVp3vu8faQBF9n9DRzU7WOFSlIV7Z6S3FInbxtiBcqhoJ/07qa
         cZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286853; x=1728891653;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWJKfNtCPiadgKKpV44m6e67/qtZJV5vu299cJKq5tw=;
        b=IEIUa0yDu1w8W1+Vn1fzviDKaPlNbMf+2VfjsZuJ2Fg1fjl86rLCY9Yt7SQNrEIb0q
         E1UP23mePF8VAD8vSy9dIOOXTMC47JHbJwDkaeub47jYICFewY9a+Mc/KxqGTuWgrD10
         6yfh/soXx9c/m+bXTQV7jN1vSiYQoyTJy6YEXUb7qOcqGwJN7M8jinhpYdNhW6vZFjoW
         2n9KdXi4Oi9gAU2YMzIPwxUUZ0uKMvi/wmdu0CX2X84XxRcP7A+qg3fDzN2G5Bk739ll
         xouMyAo/n7k6jxHoVSuXn3YZXUI3lMJvpPbH886sqjG0C2D3NJ5C3CJ3zobWv+bYO9Vl
         pvBw==
X-Forwarded-Encrypted: i=1; AJvYcCVePmwG4fxIzCtg4iR/QAhLwL2KJTae4FL1AW7pFksXknwDTV+S3jZDKsTmTvZW/KSwkrJ9v7caafr8@vger.kernel.org
X-Gm-Message-State: AOJu0YzECjdDQrWgvIswaoUzYINXVUBXFWlPuYW3qdq9dRLWm2Jj+U9k
	OOivYZa+rgtSQIuqwl5FxLgx3pidw/VLcmpJOzKDQh8AGwPNIrVl11GGTma9+bo=
X-Google-Smtp-Source: AGHT+IF//KDeerBcPYweQBWGXHGNK7a6K40VAoRzC9NTXizIxqpvNDX3VoTgSZDIg96mO42u95txWA==
X-Received: by 2002:a05:6402:510d:b0:5c8:81a6:f14c with SMTP id 4fb4d7f45d1cf-5c8d2f3b9f3mr13100141a12.9.1728286853116;
        Mon, 07 Oct 2024 00:40:53 -0700 (PDT)
Received: from localhost (p5dc68d3d.dip0.t-ipconnect.de. [93.198.141.61])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05ac2casm2877129a12.34.2024.10.07.00.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 00:40:52 -0700 (PDT)
Date: Mon, 7 Oct 2024 09:40:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mehdi Djait <mehdi.djait@bootlin.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pwm@vger.kernel.org
Subject: Re: [PATCH v9 2/2] drm/tiny: Add driver for Sharp Memory LCD
Message-ID: <62sidvqna6q6s2dqzs6s7ftxwfyootptda6n4fww6tyjdwyhuh@ylifsc3f5ff6>
References: <20241007013036.3104877-1-lanzano.alex@gmail.com>
 <20241007013036.3104877-3-lanzano.alex@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bkeu5bpplnv4ln4m"
Content-Disposition: inline
In-Reply-To: <20241007013036.3104877-3-lanzano.alex@gmail.com>


--bkeu5bpplnv4ln4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Helo Alex,

On Sun, Oct 06, 2024 at 09:30:06PM -0400, Alex Lanzano wrote:
> +static int sharp_memory_init_pwm_vcom_signal(struct sharp_memory_device *smd)
> +{
> +	struct pwm_state pwm_state;
> +	struct device *dev = &smd->spi->dev;
> +
> +	smd->pwm_vcom_signal = devm_pwm_get(dev, NULL);
> +	if (IS_ERR(smd->pwm_vcom_signal))
> +		return dev_err_probe(dev, -EINVAL, "Could not get pwm device\n");

s/-EINVAL/PTR_ERR(smd->pwm_vcom_signal)/

> +	pwm_init_state(smd->pwm_vcom_signal, &pwm_state);
> +	pwm_set_relative_duty_cycle(&pwm_state, 1, 10);
> +	pwm_state.enabled = true;
> +	pwm_apply_might_sleep(smd->pwm_vcom_signal, &pwm_state);

Error checking for pwm_apply_might_sleep() please.

> +	return 0;
> +}
> [...]
> +	} else if (!strcmp("pwm", vcom_mode_str)) {
> +		smd->vcom_mode = SHARP_MEMORY_PWM_VCOM;
> +		ret = sharp_memory_init_pwm_vcom_signal(smd);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "Failed to initialize external COM signal\n");

sharp_memory_init_pwm_vcom_signal() already emits an error message, so you
have two here. One should be enough.

> +	} else {
> +		return dev_err_probe(dev, -EINVAL, "Invalid value set for vcom-mode\n");
> +	}
> [...]

Best regards
Uwe

--bkeu5bpplnv4ln4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcDkIAACgkQj4D7WH0S
/k7h2gf/eEHlwAqR7oTCVvouxztY4+TYaE0xRY3n+Kwl1dNP692bNGSB5xz8llDm
fCpOvHstEF3v44e78Kk5+2E8ROCtMxYteMl+GvncKCFIjKyM4ECrPJOgudMqbCsy
+47UVwwNIVFfvCqc06oFOtHPwur4WTlaLM8OuAoblvtEZkPkzrWJM7vzRHv0Mmq0
l3Lg1qF5ham2OM1pJZCNE/IgFT+aIQW2K5Rp/XfiLjIGShVc8x4KtGhb8Dozk01Z
yzD4+rGlHSawPpJaKq7HYj+P9odCkgVo5oR1fd0RHWFPjgy4fB+V3Id04uava27X
0UFlrJ2BVl1u0cUjR/RZCDp7adKpxw==
=8rmd
-----END PGP SIGNATURE-----

--bkeu5bpplnv4ln4m--

