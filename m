Return-Path: <devicetree+bounces-124282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 516A59D83C6
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 11:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D833E164670
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 10:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7BC2192D91;
	Mon, 25 Nov 2024 10:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eK+tGRvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5CF192B88
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 10:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732531768; cv=none; b=sKNYDZmqZQobbI1OMXbwtCPaKeqzyQ9dQgn7k3MFw0dvsZ7ajMu4Xex4tUQyxwcobu3x1FWZvPsfa51HFlusYPUUB6onBXjYNWi995V3uKjUaSV3yKItBmKAgmoG8j0h2qPAuhaVd0ZMXj6VJ59xSurf8gVW2d/+cT7M1TOcrHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732531768; c=relaxed/simple;
	bh=spa3QAQwhU4EU9qScDeSh216tYLFJbeC4OXCkqxiGO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uSr9jtRRg741eiemfoWYlUfo9PBuTAGgjUhOt9bxODzZLZuwEGoYPNfDNIIahUAyv9oT6jU7Xm5bvzDIg3IoVIZ2RzqZ3T5N1fbOLEbNniwgAbApMYaS3v7Tge703bSWbHyhFekj+8u7gFs4CMw6SDvb2bEOLFBEOxVTeaDTNgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eK+tGRvR; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434a0fd9778so4060695e9.0
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 02:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732531765; x=1733136565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ihmFqgEayI6rx2E4fcVLzjpSY9FsE3eEdW8rdfAxUv8=;
        b=eK+tGRvR0w8Zc8TrpiaNmePr2I2F4l38vhzdLpmbkiBnOJM0QiM53owSjLTf3tdiKK
         p6DsohcMJ0vvXWNQF8Kn8IpasbXloIEJBMCMGhvgPIH7v+NH3eXp3y1uPlWaz+W5foe4
         giIZaiFHhLbd8yv6GWJu1R3IbE85A6xVvKs8n5PSfRUD1BpxNDyXJQgEX0wAvFqyQ2EC
         l9jnB5C3GhJwh+IF4LH+L5ZWRLDnTI5fpqK+DpZW/EqY0YBmQ3L9nAh1fjbBIWC8UfvZ
         nO72sVumhsFP0Qq7q4bluLldeterD+TfHPwzSS7FDrheBYJKXV5sk+NZpZFXuOLgfMjW
         xkoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732531765; x=1733136565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihmFqgEayI6rx2E4fcVLzjpSY9FsE3eEdW8rdfAxUv8=;
        b=LUZUl/Frgwj13pvoapwOxnviNE4VX5liVZRg3rSFIb3SUvxfLBmKp+Q+Gx6g1UnIaT
         smxTmMjf347EbE4MM7dOPEo95ef+nVTYdyDEDg392YuUwWHPcXHOItE3WuRykQXlpOcr
         aAdJBaNElj7UcCHheMTHHcDBqBJBqUuG5w1gLsOom8qbVeYknG6Q/lMoGHX9Jjsc5fAn
         FpPrLfBoxkRIMULpc2/X4XFKR+NtDCO27CfSiZo2jzSGWFF3d9iNDlzELqJa5txsF0YY
         ki0ZmUkJ8gtokGgDMz/448f5BdvbeKuttt9unVcyBjz/Y5gL4zEYpVaIQoxMqOiH2CRo
         EmBw==
X-Forwarded-Encrypted: i=1; AJvYcCXX1LBcBkjFIzELRflvaOGai2ziTQQ40lZpj8IDgGqDieuZ9RjVjv6CNLmjksDux6dcNid5kAK9eV2m@vger.kernel.org
X-Gm-Message-State: AOJu0YxcXf2SwB+hsd3gvbQnjlXQkKfmPiY3QlwShNs/vnGoQ4WK+Y65
	MQjFG1w3C2XAxSmWERkeajjZgoy94tXiYTd0NUl6rAHz3lik2va/nbzvhzbWUXc=
X-Gm-Gg: ASbGncuSUFzkpr4pQTpIfXhpB/imvR+9pqMSJ4EzOro39n8L2HuIXe8m3bSQHOlUvAA
	NeKEWsvVhEwwAqTtkvtCz36qUSfTs+0iq1Nr8GGH9KkMsX0sIZp83SQ9bqHonMtsWkCFbD45Zv0
	VUYG9o2Xz1k+MrD8XLABJRQbTyvkF05SBryBvuSbD5TanvnicsWWfzdUiyxMwQF86mk5d02m5n4
	iyBODZt7l/vLg2aYjb3k3zcVatb57V6JHzQA6IOikpB4QezpUn6dT7U2wKYMHT81VWNteN2Xwzq
	7LmGsfiByqGOwYI0fOYgaa2+T3AmWkh0NK5wwQ==
X-Google-Smtp-Source: AGHT+IHJfaQDJSFNGLZRH1m1muPXYZ5C0h5TkuR8SCkTXuNN6ip0/ceXGuV/aoFol5Pm/MZzQ+0o7w==
X-Received: by 2002:a05:600c:1d0f:b0:431:1512:743b with SMTP id 5b1f17b1804b1-433ce48e95fmr98989395e9.21.1732531764425;
        Mon, 25 Nov 2024 02:49:24 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433cde98b4dsm125071475e9.43.2024.11.25.02.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 02:49:23 -0800 (PST)
Date: Mon, 25 Nov 2024 11:49:22 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 04/10] iio: adc: ad_sigma_delta: Add support for
 reading irq status using a GPIO
Message-ID: <jjuoq4ath3quwztm6ove5glkflhfv55ucqnpwexr6hbdzq2jhp@az5chbrn3xbl>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-16-u.kleine-koenig@baylibre.com>
 <CAHp75VewsWJ-R+7Uf7hVdj5B4LsfGwR+NDPCFW4=FQF1dJwwbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h5usr77sqp3uu73t"
Content-Disposition: inline
In-Reply-To: <CAHp75VewsWJ-R+7Uf7hVdj5B4LsfGwR+NDPCFW4=FQF1dJwwbA@mail.gmail.com>


--h5usr77sqp3uu73t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 04/10] iio: adc: ad_sigma_delta: Add support for
 reading irq status using a GPIO
MIME-Version: 1.0

On Fri, Nov 22, 2024 at 09:16:24PM +0200, Andy Shevchenko wrote:
> On Fri, Nov 22, 2024 at 1:34=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> >
> > Some of the ADCs by Analog signal their irq condition on the MISO line.
> > So typically that line is connected to an SPI controller and a GPIO. The
> > GPIO is used as input and the respective interrupt is enabled when the
> > last SPI transfer is completed.
> >
> > Depending on the GPIO controller the toggling MISO line might make the
> > interrupt pending even while it's masked. In that case the irq handler
> > is called immediately after irq_enable() and so before the device
> > actually pulls that line low which results in non-sense values being
> > reported to the upper layers.
> >
> > The only way to find out if the line was actually pulled low is to read
> > the GPIO. (There is a flag in AD7124's status register that also signals
> > if an interrupt was asserted, but reading that register toggles the MISO
> > line and so might trigger another spurious interrupt.)
> >
> > Add the possibility to specify an interrupt GPIO in the machine
> > description in addition to the plain interrupt. This GPIO is used then
> > to check if the irq line is actually active in the irq handler.
>=20
> ...
>=20
> > +       if (!sigma_delta->rdy_gpiod || gpiod_get_value(sigma_delta->rdy=
_gpiod)) {
> > +               complete(&sigma_delta->completion);
> > +               disable_irq_nosync(irq);
> > +               sigma_delta->irq_dis =3D true;
> > +               iio_trigger_poll(sigma_delta->trig);
> > +
> > +               return IRQ_HANDLED;
>=20
> > +       } else {
>=20
> Redundant 'else'.
>=20
> > +               return IRQ_NONE;
> > +       }
>=20
> Can we actually invert the conditional?

I thought about that and I prefer it that way because like this is
better matches the code comment before the if. I dropped the 'else'
though for the next submission.

> >  }
>=20
> ...
>=20
> > +       if (sigma_delta->rdy_gpiod && !sigma_delta->irq_line)
>=20
> Do you need the first check? (I haven't remember what gpiod_to_irq()
> will return on NULL, though)
>=20
> > +               sigma_delta->irq_line =3D gpiod_to_irq(sigma_delta->rdy=
_gpiod);

gpiod_to_irq() returns -EINVAL then. I added an error path for that
condition.

> > --- a/include/linux/iio/adc/ad_sigma_delta.h
> > +++ b/include/linux/iio/adc/ad_sigma_delta.h
> > @@ -96,6 +96,7 @@ struct ad_sigma_delta {
> >         unsigned int            active_slots;
> >         unsigned int            current_slot;
> >         unsigned int            num_slots;
> > +       struct gpio_desc        *rdy_gpiod;
>=20
> Do you need a type forward declaration?

That would indeed be more robust. It compiles fine currently because all
consumers of linux/iio/adc/ad_sigma_delta.h also include linux/spi/spi.h
before which in turn includes linux/gpio/consumer.h and so knows about
struct gpio_desc. I'll add a declaration to be on the safe side.

> >         int             irq_line;
> >         bool                    status_appended;

Thanks for your feedback!
Uwe

--h5usr77sqp3uu73t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdEVjAACgkQj4D7WH0S
/k7JPAgAiS/x4W8hpagFvnx8CePPAjQnsf3oiVfbme92Bnj8WshPG6fsH4bbBUNt
mxrfjHrCdJNdCjhVTsmSuB23DWt1HUMewRh9vOzmIdRB5rOGrygjNJonUoUqGDqt
2gTLF4FDUmMi6qD3gxhS6oQ028+8d712rQtNFNjc5Q6pBB0WqzCW4CpNk/mHWXdu
BDcUoFvFGsFY2q8iEBgzccAw1P0ZFb8lCSzwS7JOc+56kXCdmdyTsTNIXt+DHqPl
Rw9JQw7BTXCNIW1dr09dbPznr2BI8hAgkJN+WBDhhfjPMPBFRMv3H1Ywf2Nw5QKk
Bm5FG9HIOIAr3OqnAO9ZfuYJ0eaLJA==
=/aEy
-----END PGP SIGNATURE-----

--h5usr77sqp3uu73t--

