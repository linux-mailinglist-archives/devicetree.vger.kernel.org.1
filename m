Return-Path: <devicetree+bounces-109338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7387C996163
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0409E1F20B65
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A694617C7CB;
	Wed,  9 Oct 2024 07:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VArRZVCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FD4ECC
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460216; cv=none; b=cshr3axlm5Qr/mdwsVa+Svqq8KDj+U0dJ0ChOoneZKpfkK5EqvxG09Xdmap38XKL1Ok9JF4jj7ltOG4COtcMDl/bQSqDquM+Xkz5ls61g8l/smk1sWoBiyFPpf+JYuOf1G7rd0AFsjLBz8vexNXK7EGDZf5ARwe0rglJjEUJe58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460216; c=relaxed/simple;
	bh=5x55/08d462FYxOjcK0FvLQICBYvfjVVslgvjMLUgWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=agSvr834M/nUub++9bJpD6nPCkK+58NSXexssF2E4F3vQWHD+b56lMssEQ/xIX+f/E6PlWCjmSvTaz1ItUETAFOtT+2QGZHfdE9cf3lHUrcQN7b1KbHtpoN8UFjpBaKFWWJu/ne2vh08YyBm+SqL4ijQUxg7BjT6u48Unsal5GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VArRZVCI; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a9953bdc341so419806866b.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728460213; x=1729065013; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MfO7/CdyTSaSdDUH8300s0Lf+paI5a7n8TXHV5lBIng=;
        b=VArRZVCIU4rvaFKHRIE9BVna8CvLQ6Ivba4vIi4N21HovmLm/Tg1Hu0jhvaKkoLjlT
         x3vaE9rSVyoJvosqmzz7QDbMj+Cz61FOm9N5IemI0hSyjtgo3YZJe1oUfBhWdxDVMXsN
         rYQMojK2XzsJ162ZZcl/rA15QFvUY3RSlXgnvyWGuWMqIXYs95j8DzD7ozUNUwC/Io31
         UpAlN0Qb9Q8RTWP+TOzKlvnjpxkqjIhQJ1vEXx8VwJhiqAlxb4k/ZjZQdMyvWRIRqSZs
         7dhKHx9VMNXyl7etQ+9VB3KJ1w0nTLHBJv0ViehP4zlTqCiiC1XO2I9jOy11NXbequbV
         4CXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460213; x=1729065013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfO7/CdyTSaSdDUH8300s0Lf+paI5a7n8TXHV5lBIng=;
        b=QteYhWVvbFMlAakAybiLuiaDDAElS/wsaMudR4krGDY20MEtsyaM8m5HVFNZgmBPIT
         i6zUXvYMuSCvy51UAXB0gIWuuCjPvwYJD9bP5dz3beiaKFH51YvvLtaeqxucUGAPW88Y
         1IOKBUST+JCBzclGBxPrTfe/x2L4BmitA7F4eGgvoOoSVXBHqkKJhYg39y219hMKNQcE
         4DPxXGn4A60vYIfw002vRW6ByzdVSZNEGvN9yTiSGvf2QLoByp0sMbK1AirX0CUBOYog
         IOwXUHwkc5sJBwKN/1CJb1YwR44Xn3iozB9Ajep3XQxysEz1dxQxGRPmN7YS8WJq4EZJ
         RyPA==
X-Forwarded-Encrypted: i=1; AJvYcCU+H1BaJwEJdRJ2sM4QWMlJoQFTXvZ4ZuGxFPKXq3eavGLas/LPTC4d+cRSyVmEyANvrDvIS7ZiijbF@vger.kernel.org
X-Gm-Message-State: AOJu0YwGAwoJCJC9Y3JXDvZVL90CNSPct5sKF14qcL0RMOBTeIT52Prw
	Y7vFm6mZ9bwvzlMy00vTHOOfbK4xB8HH7VIqZtu6I6BNK4jQAx87TxEmqu+G864=
X-Google-Smtp-Source: AGHT+IELkJha79eNO85lN2ia3GPVqHwF4PlD+FNkuvqkfUBcPiLqrkXjVGjtvNtH+Ngh14I9Ck87wQ==
X-Received: by 2002:a17:907:c7d6:b0:a99:33dd:d8a0 with SMTP id a640c23a62f3a-a998d220fd7mr124352766b.38.1728460212845;
        Wed, 09 Oct 2024 00:50:12 -0700 (PDT)
Received: from localhost (p509151f9.dip0.t-ipconnect.de. [80.145.81.249])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994c1c4c57sm457157566b.208.2024.10.09.00.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 00:50:12 -0700 (PDT)
Date: Wed, 9 Oct 2024 09:50:11 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, Andy Shevchenko <andy@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Marcelo Schmitt <marcelo.schmitt@analog.com>, 
	Mike Looijmans <mike.looijmans@topic.nl>, Marius Cristea <marius.cristea@microchip.com>, 
	Dumitru Ceclan <mitrutzceclan@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Alisa-Dariana Roman <alisadariana@gmail.com>, 
	Ivan Mikhaylov <fr0st61te@gmail.com>, Sergiu Cuciurean <sergiu.cuciurean@analog.com>, 
	Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v2 6/7] iio: adc: ad485x: add ad485x driver
Message-ID: <mv2smx6m3iqocvplham74aqdcn2eaqmmj36tu7c7qzdjq7jlwu@w2zyijdslrpc>
References: <20241004140922.233939-1-antoniu.miclaus@analog.com>
 <20241004140922.233939-6-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zvp6fihhtexug34p"
Content-Disposition: inline
In-Reply-To: <20241004140922.233939-6-antoniu.miclaus@analog.com>


--zvp6fihhtexug34p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Fri, Oct 04, 2024 at 05:07:55PM +0300, Antoniu Miclaus wrote:
> +static int ad485x_set_sampling_freq(struct ad485x_state *st, unsigned int freq)
> +{
> +	struct pwm_state cnv_state = {
> +		.duty_cycle = AD485X_T_CNVH_NS,
> +		.enabled = true,
> +	};
> +	int ret;
> +
> +	freq = clamp(freq, 0, st->info->throughput);

freq == 0 will become a problem in the next code line. Increase the
lower limit of the clamp to 1?!

> +	cnv_state.period = DIV_ROUND_CLOSEST_ULL(GIGA, freq);

Is ROUND_CLOSEST really the right thing here? The resulting period might
result in a frequency higher than freq, still more given that
pwm_apply_might_sleep() might round the period further down.

> +	ret = pwm_apply_might_sleep(st->cnv, &cnv_state);
> +	if (ret)
> +		return ret;
> +
> +	st->sampling_freq = freq;
> +
> +	return 0;
> +}
> [...]
> +static int ad485x_probe(struct spi_device *spi)
> +{
> [...]
> +	st->cnv = devm_pwm_get(&spi->dev, NULL);
> +	if (IS_ERR(st->cnv))
> +		return PTR_ERR(st->cnv);

devm_pwm_get() is silent on error, so adding an error message here would
be appropriate. I think the same applies to spi_get_device_match_data()
below.

> +	st->info = spi_get_device_match_data(spi);
> +	if (!st->info)
> +		return -ENODEV;
> [...]

Best regards
Uwe

--zvp6fihhtexug34p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcGNbAACgkQj4D7WH0S
/k79MAgAjXjh105N9kSxlycZQZdNxMqX57sWrLJQeFsKBrUH0z/v4SGfMejN2rYN
XT+RQLRrNMIAqOpU6Akg8g5j2be4UBcEWbSLNgGoqeNZZHsfee6cIwHbfiFtIBEp
mvVGWNGTjy0pExX3rui3t7Io/ox7/B0zYUa/UNDDuIED+7IVCAqrKAGxm/fCptzB
eHqVj6LL1olNfpBRNiq4Bt3GX6VXausnsJnUL++Q1uD/iMtf87GoOZlq9nKC3KnO
huG3IIJ/8XoDHCeSWk6hYYzivQKy9gop6jTojT5wBwrGo4KxWvDn/+/Dal5qnCIO
qZw+/0E9QyXg5UThi+T1evBJ35a1CA==
=sDLV
-----END PGP SIGNATURE-----

--zvp6fihhtexug34p--

