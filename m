Return-Path: <devicetree+bounces-128513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FA09E8EB9
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 781071883801
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE7A216384;
	Mon,  9 Dec 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pOuDH4FL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72C215F5F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 09:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733736503; cv=none; b=XKaMmHOnT8msNNu8zEbD0YmSE7oV84XpQoKlkKvTi1H+EUrutLFvQApZNpkU0PN+2Qs+SGkpmRR3uDsWU1axbsG/XyMLfw0jrIjieSXZ0IwIFY798mpwPkKSOoc2I3xe2dGsr+B2k6eIFXZuy2YUQY6ftNnW78N9jxCO+WH10dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733736503; c=relaxed/simple;
	bh=iQo5Npvgaqz7e07PUrAKGboniYzpq/ts+XYhlKkoGyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nrl/2oxDJb1rmpwEaZa3O3bWJD6mHnDb2UwxXFVIpyU+vdI/paiI5JDyO1CKAIPTUws2lkLSg9urhAXIsC9HmHRqcRsjTjuMn1Imlx8at5/o8LhhenZHiUlk7hAi3IKaYEQSxK4PBp8UouCmgHzi6usVmMalNDx2k5nI+eXaVTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pOuDH4FL; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-434a766b475so40260715e9.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 01:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733736499; x=1734341299; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKH9n1bUoPUvKLUCb2xRv7dS9GbAaGKaW4ErK1LlmGI=;
        b=pOuDH4FLMT2qgVYTphZYhwgwgJyt4jPXZ4+55lYXb7qs2A9zkJ6ZREHdEYZskC+vMp
         9XzEIfk/W1z+/cvELTuI79t0S160+4qmOgr92ZUk1stxgqQDh0waZanUgE88pFgQDWqH
         rvvg72QxYeyqnGv/NTqZ+rJvYZG8rcvKBomrM88QWD0gE3LvmhAtdXFsKhUrlwlUdhMg
         whMzqlQP966oou/gksnaPlAA6Phk3OZQkDj2p6652HMcTY80MZ5inBjs4sj2y+0igHqb
         YpR1rUcBcK6HgZXcsabA69crbz1HicBcV9AFeXukgO1ctMK0USCkZppGWz6rhKlp2RFR
         D1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733736499; x=1734341299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZKH9n1bUoPUvKLUCb2xRv7dS9GbAaGKaW4ErK1LlmGI=;
        b=f0cYBeIh359JuMA0l2505+l5oV+J5I+BcgIRD2oCL2yXLCXUP6Z1JOQrbJuKGAAv1g
         f9xvwYAXj/kvdQEvp5+moyQHOp3EM1RkwktdrIL02r97Po1gxaIsa7QMV9Cghd0PXoLo
         zVR8hi17kRceiG3CfrO+5TSGKQg9Qe74C+4b2CjQIAF8zd9PWDXBuGlW5TfDbntIf+9W
         ngdi69IwA5rCOvuv/QjSJP1+PN1ItsKHA2VUFYrRHAPm81TSIcrS4U7isBZI6JZ65Jle
         TRMZWmAVceURePZnB6QAGw7nyidNUZNYO7fovHbGfnyntunaaXM8BEMRFrIBc5Y3X0iH
         +6oA==
X-Forwarded-Encrypted: i=1; AJvYcCWqisDko/4qjmVN2b84UbeftkRTIYpRvGMrf6nYHwnOkKDQnkSegT/1xDNZQA149RVf6qXhVXKeR4CK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn1UkofW0+WfsNa7pROsWawgCJ/hxWB6bzy49xjjTZfnpECQHX
	Bv3AKsw3i6YwppjZVb/pk52cpFyeBVblW4zGkMLC208JiDQxZl9C3ea/DhaKxL0=
X-Gm-Gg: ASbGncvMG7XqSq0rqI3QIETdg7JUyBEOwTPb538xVlyEckCgf3+FSiQkbr97d+0dTtC
	4bMe8a9xVutzaJM67clCgyDdGAAejt/IHixas+B7SLFmypPs/O+hYs4CL1wqL/hBjALd3X/mW5V
	dJylFjKdJnra4VV3G3JCbkyj9lxQHwBc8HONUCZAdCc+IrxO/GMYEOdUB4Z5pekGRZYHOh5U2Zu
	TI2D/aMkLqCaeeGxM2j4xUlOEyvYEw1VlfMu+0/LEOyrrSp7aYtvap0YBL02jPS+n4F9ty6Q91q
	xu1B
X-Google-Smtp-Source: AGHT+IFvKhgdChBdiHTfzC26yO1WS3oWl8CiAW3XgfHPLwbwiGHSzq4ScdyEWR/SGdjubMtf2RWRVA==
X-Received: by 2002:a05:6000:717:b0:385:f6b9:e762 with SMTP id ffacd0b85a97d-3862b3e7545mr7841185f8f.36.1733736499296;
        Mon, 09 Dec 2024 01:28:19 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38637a0c6dfsm6050449f8f.93.2024.12.09.01.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 01:28:18 -0800 (PST)
Date: Mon, 9 Dec 2024 10:28:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Ardelean <aardelean@baylibre.com>, 
	Alisa-Dariana Roman <alisa.roman@analog.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, 
	Renato Lui Geh <renatogeh@gmail.com>, Rob Herring <robh@kernel.org>, 
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: Re: [PATCH v6 10/10] iio: adc: ad7124: Implement temperature
 measurement
Message-ID: <hoiksj7mar2qbegvy4du3b2pq4c23myrgmzmdc7axwl7yzcxm4@dupqkcedvjax>
References: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
 <433211af8ac3f02dee58586ecb51d2e98246a095.1733504533.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3pshgy4fppn3qq7"
Content-Disposition: inline
In-Reply-To: <433211af8ac3f02dee58586ecb51d2e98246a095.1733504533.git.u.kleine-koenig@baylibre.com>


--g3pshgy4fppn3qq7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 10/10] iio: adc: ad7124: Implement temperature
 measurement
MIME-Version: 1.0

Hello Jonathan,

On Fri, Dec 06, 2024 at 06:28:42PM +0100, Uwe Kleine-K=F6nig wrote:
> diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
> index 9405cb579324..d858bffd2628 100644
> --- a/drivers/iio/adc/ad7124.c
> +++ b/drivers/iio/adc/ad7124.c
> [...]
> @@ -902,6 +941,37 @@ static int ad7124_parse_channel_config(struct iio_de=
v *indio_dev,
>  		chan[channel].channel2 =3D ain[1];
>  	}
> =20
> +	if (num_channels < AD7124_MAX_CHANNELS) {
> +		st->channels[num_channels] =3D (struct ad7124_channel) {
> +			.nr =3D num_channels,
> +			.ain =3D AD7124_CHANNEL_AINP(AD7124_INPUT_TEMPSENSOR) |
> +				AD7124_CHANNEL_AINM(AD7124_INPUT_AVSS),
> +			.cfg =3D {
> +				.bipolar =3D true,
> +			},
> +		};
> +
> +		chan[num_channels] =3D (struct iio_chan_spec) {
> +			.type =3D IIO_TEMP,
> +			.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW) |
> +				BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_OFFSET) |
> +				BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +			.scan_type =3D {
> +				/*
> +				 * You might find it strange that a bipolar
> +				 * measurement yields an unsigned value, but
> +				 * this matches the device's manual.
> +				 */
> +				.sign =3D 'u',
> +				.realbits =3D 24,
> +				.storagebits =3D 32,
> +				.endianness =3D IIO_BE,
> +			},
> +			.address =3D num_channels,
> +			.scan_index =3D num_channels,
> +		};
> +	};

The kernel build bot wailed about the ; here. Should I send a proper
patch, or can you still just rewrite your tree to drop it?

Best regards and thanks and sorry,
Uwe

--g3pshgy4fppn3qq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdWuC4ACgkQj4D7WH0S
/k6Dogf+LXyukrlsImArvDU1uIxhmM2Di21x75iqPH2BE+u3cqQ+fUj+QNC3+9J9
+xyJ4JBxMTUXmsuSIE5aXHbOY9QRAoycyjrpGkTeabp7ROe6yVpqCzfra/1QVeWB
0hVU810QUtsLlOxYBP8B42BkCUH77YAuJDVFlx0Iol+kpFeE/kVQ0HqM3eABHfdY
BvUhkqsgB6XOGmXtac7ZyQi1zaFAaO7ZOG5Sfs8uEYIJGZKNhL08CzZk9wKFJ53u
p5wExOayMEfloLT6y6dgndFXbucOEEyxSrlXd9UjoP3l+9Dmov0IZHNUk4cOP067
yhCoMrwxyT66LIPHlINKtzXB/aL4Dg==
=0sS5
-----END PGP SIGNATURE-----

--g3pshgy4fppn3qq7--

