Return-Path: <devicetree+bounces-142454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A4767A25661
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 10:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 713677A5064
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C35200BA2;
	Mon,  3 Feb 2025 09:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XIJZoM0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB3E20012B
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 09:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738576451; cv=none; b=iQ3r8MakvWIL5hHAM6FkA86r/GK5h1c1ry2IrutG5f78v46oZ7jS3GtQuOtoQps4mqhat4TW5Kbr8HhsDN1195hDT5sK14WW9oaKIKA3qFz+WsBAPnhRWDoWpaYabTW9ZybdT/H0cE3XhL+KBHH4MFJMXKisDChf4NscfqGGWyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738576451; c=relaxed/simple;
	bh=SCbT2mGRR/gdZYdUlCm2cscpcRKhbNkxtV8d/A3qu64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SZLPzsAxy5mCT2Tg1xc5/M/8hZvVCLsP9m0GCWQzay5Jvq0ahMIk1Pg97YjqZUFTQA8CfLjsjoXCxM2r6LcnXISw2d/YqwegEGc7f1AW7JVvYbmS65Vylnj/GhKfzZ3D6ICbxPWHxeE0LOl1PZ9c5g9TN+61DM90K9Dugcaa/3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XIJZoM0E; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaec61d0f65so687182166b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 01:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738576448; x=1739181248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uMKgB7fp7Cnm3lWGC+kDmaYD+QypYtcTInQvfDkZqys=;
        b=XIJZoM0EGhOkfZ/r37zkZhgrSSK9fV5W4dH2X4Rs8RtBdhw7Xt+kmp1vqn+9uZf1RK
         iH1rnaylqt4GhbPqiB7NfJ6MpxUQM2ZQ7EEdDoRYpk9hYX/JEZoJAqSwtnGnxzzufNI8
         QLdIg2W/Bc10V7nBxw797QWe7pY0RBjLbPB+o+bjt4iX8B8XWHi/N/RNGggjB4XS52ls
         gzJ2vxnMUPjbablZ3kQMkSKm0jNcNiKdeHYyp2E3rSOEQL3QcDKBS1Rv6++tfUAW98is
         0f9GovYsPZsTfCPS+/BfAUUAgI/WmLaQyyRsePsKu23Icqq0G5xBo3xizV6hqAgMpqj9
         UbRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738576448; x=1739181248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMKgB7fp7Cnm3lWGC+kDmaYD+QypYtcTInQvfDkZqys=;
        b=DRGR9dQU+fmK8Qx9++/4b3XkhJ1aWB/CkQZXtQadPhq8AUpFdWJOeE1y4jm2L3W8Lr
         KF3eI6xJrcGY2L8wGGnZfOS5AP0HgoRSxHi6In0Rfj441v5L41bEwEf8oBZGATda3tOI
         6qhLPC6UN9INo87Tnf5cgixUHh++nBHaI6qmXVx6oJNkZWUcDVCkQI9hIPGNV+a+5+83
         cbidbQbnz/DOwJk8E6oKwSSPJuCeFH4g0QCxzqwUldj6ShfB/U5Ila/fxUZafu3DtZXK
         rMtsPThCd8vEON692mZT7qc/pM+YTLvSZXL3bueQ+dk4f4g2wfukaB8lnXXQybJXzY6x
         5wlw==
X-Forwarded-Encrypted: i=1; AJvYcCXbzZLfi8rswns1imaXBFKTtFBhw4hHAcFU4Zx6KuhWUsGkmvMazXdh22O12DO83pm+D4AJBo8SvDLM@vger.kernel.org
X-Gm-Message-State: AOJu0YxlK2sC1ZVMfWI1/guxYOc+CkxlJ7rgCgJm+LhC2tnjQ0SAxu/4
	cmefDZtduOKyZaw9+nr0zqW04K897KFFraKXAwxn2Y26SGO+3G2uM25HXDdumNc=
X-Gm-Gg: ASbGncsqrfT/aQDKF1djegtaYIHqbC+pC+sOR9J1+TsqR9BFHATfUJqyQum3LBUH4k8
	wjVTMOoBn1HpOHrVPJf1K1aROQS+FxzX9Q9QXGtz+ZmIcxK1QgIwREPrIPNLsl56Lxp+Bb80mfn
	HnUZIaeEIa8PPpxuX7un/5V2j3aHhzG7Q/V4trfTsXJtngCRYzkcbWDjxtQYssaLI5WpTrVKbJk
	s6JFxmdOFNZXoVw6whDk5fVbN6kfNIuFNpZmg12teHl5pKvk96yAFCxPl7ec6V1uig8IhP9sbZW
	fji/f6vMFXKj/7y5RJh3EzqSK6KDeN6XuCtPOL/S1NEnqFpu3ceydkrgug==
X-Google-Smtp-Source: AGHT+IEtRSUrKwuKf/U4YzSU070YV3sNhNHz7dDWI36LFjb3yTfsEao88NZl+RfEIDQrJPw03iBpuw==
X-Received: by 2002:a17:906:4789:b0:ab6:eeca:f548 with SMTP id a640c23a62f3a-ab6eecaf915mr1595555166b.50.1738576447645;
        Mon, 03 Feb 2025 01:54:07 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a31b37sm729928666b.143.2025.02.03.01.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 01:54:07 -0800 (PST)
Date: Mon, 3 Feb 2025 10:54:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Esteban Blanc <eblanc@baylibre.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v3 3/6] iio: adc: ad4030: add averaging support
Message-ID: <cqklmqc23dw2t2wyyl73wjamj5judqzq7yqtjhduokjljgm6iz@isurygto66as>
References: <20250130-eblanc-ad4630_v1-v3-0-052e8c2d897d@baylibre.com>
 <20250130-eblanc-ad4630_v1-v3-3-052e8c2d897d@baylibre.com>
 <20250131181848.00003c67@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtswg3m6w5a3ccwy"
Content-Disposition: inline
In-Reply-To: <20250131181848.00003c67@huawei.com>


--vtswg3m6w5a3ccwy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 3/6] iio: adc: ad4030: add averaging support
MIME-Version: 1.0

Hello,

On Fri, Jan 31, 2025 at 06:18:48PM +0000, Jonathan Cameron wrote:
> On Thu, 30 Jan 2025 12:08:27 +0100
> Esteban Blanc <eblanc@baylibre.com> wrote:
>=20
> > This add support for the averaging mode of AD4030 using oversampling IIO
> > attribute
> >=20
> > Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> A couple of comments inline. The one about the gpio wiggling
> is just me venting at silly hardware, so feel free to ignore that!
> Other one is a trivial 'nice to have' for formatting.
>=20
> Jonathan
>=20
> > =20
> > +static const int ad4030_average_modes[] =3D {
> > +	1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384,
> > +	32768, 65536
> > +};
> Groups of 8 often best option for lists like this. Make it easy to see how
> many there are.

I personally also like adding the indexes explicitly. So I would write
this as something like:

	static const int ad4030_average_modes[] =3D {
		/* [ 0] */ 1, 2, 4, 8, 16, 32, 64, 128,
		/* [ 8] */ 256, 512, 1024, 2048, 4096, 8192, 16384, 32768,
		/* [16] */ 65536,
	};

Or (being unsure this is long enough to make this useful) just:

	/* [i] =3D 2 ** i for i in [0 ... 16] */
	static const int ad4030_average_modes[] =3D {
		1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384,
		32768, 65536
	};

> > -	gpiod_set_value_cansleep(st->cnv_gpio, 1);
> > -	ndelay(AD4030_TCNVH_NS);
> > -	gpiod_set_value_cansleep(st->cnv_gpio, 0);
> > -	ndelay(st->chip->tcyc_ns);
> > +	for (i =3D 0; i < cnv_nb; i++) {
> > +		gpiod_set_value_cansleep(st->cnv_gpio, 1);
> > +		ndelay(AD4030_TCNVH_NS);
> > +		gpiod_set_value_cansleep(st->cnv_gpio, 0);
> > +		ndelay(st->chip->tcyc_ns);
>=20
> Hmm. This is a bit nasty. To actually use this in anger
> and get decent performance I guess a PWM with appropriate
> functionality to do the right length pull train is the
> way to go.

I think the imx27 PWM can be made to do that, but that's not actually
easy. (It has a FIFO for duty_cycle values of length 4 and always
consumes the next entry at the end of a period if the FIFO is non-empty,
so either you have to hit the right timing when filling the FIFO (but
then you can just do it generically for all PWMs) or you have to write
cnv_nb times the a non-zero value and then a zero. But with cnv_nb > 4
that's also non-trivial. Though it might support DMA for that, not
sure.) I'm not aware of other supported PWM hardware that has such a
feature (but I might miss one or the other). So I don't think this is
something valuable and useful to add to the hardware abstraction.

Best regards
Uwe

--vtswg3m6w5a3ccwy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmegkjoACgkQj4D7WH0S
/k4S2wf+Pgoja2B3A8aXGOnmse3UlSxSMKxG3EpVd2f8rsYiap2gpe9TkqGSjjtf
qOy18XnIn28+5HaxM1BKG5DwxKeeOWnLu6QsfQQ9aUpQ4aAJOmQ2TlWjb44Z6YtY
Vsw7EsnUv06WnwZbB8lO9+0iPa6qJ+d69idZbil5awOnKt2TxTSIURYj/pqn4c/O
F2uEYkVxaFMj7k3z0Tuc5aeGJaJWDd7LUkfsmUWDlLcecRULPa6PxraTMnUIRp54
k6isfAN2dV1+WAfTd2jK8OKy4qAFY2wxrC+cfXJGmiGEECOmeO+4rz7zlJIAtMm3
nBbVVstydXoH1ZS0HCG6S+/nB2dIXw==
=fSlN
-----END PGP SIGNATURE-----

--vtswg3m6w5a3ccwy--

