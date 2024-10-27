Return-Path: <devicetree+bounces-116215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B959B20E5
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 22:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 373921F21295
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 21:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A6017E010;
	Sun, 27 Oct 2024 21:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N93utngC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB4633993
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730065646; cv=none; b=Zvxr2zbmv9EeCVylvqc1ZZsW/+8wS9cQCtOM/RmXXfdAbwBmQXQMnUvkwX6H23nfKOJ0ZgCYAlWoZqoweDlODGiurj6JmEJ0d5CTTZYnGAZt/eX9pPvu7sbHaxnDTrBr8GVHrCNlIVnQWHJ/hjX3s0BG/xmdWwLCLHCAAxICJE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730065646; c=relaxed/simple;
	bh=g9ExJhbQO0btiexdBLqoRN3afcSaIl11asZqPV6S2VM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HLS8MPG3cL8yxza4KUTI3OoXk3wc8z+cIaz3GlFVTmgngYstwqFi0pffKP0Yi1+87/8vI29S4OPyC0fKY4/L0oOGofXLOehBYSovKs4bKSDYzbQeyBFgTvVVmIjApiD93mTpaAkuuyFrc3Gmc0Yw078y11P5/j/QaQhQXTVeNAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N93utngC; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a99eb8b607aso457837366b.2
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 14:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730065642; x=1730670442; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pe4ci66LRd5kwFw5K/E+LHePoZpEogZnmdvcyj6nqgE=;
        b=N93utngCN1UVS4ojQ1Ch+Dta91PTtq0dOdDoFr3AWrKgUmH/nghRAPBWQ+EtVkiwkr
         M/INQvX/NFSLXcYXHeOJseq16DU/NjbfjqZtYFz7NMJrX38H2jlOtSBCyvbgEPL+iLzG
         CWCszAwK4ain20ve26Hv4P9LrWjeS/i8P5HoYGBpWwDDS3TO7UZKCoLicP/Zqu76GgwS
         yU1MgcSYzLLbAjqmUsaR7BI6/4aBNC2gXKLSoHCdTMSiyiE7cHzft/z7AwJGJDEmNOK5
         9IvNKX0IlB+PIJa6B7yKffzJsdPCrX/LDvVysfT4jmQHRJReaYrHHB5S30GcAwJ+mhcP
         jPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730065642; x=1730670442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pe4ci66LRd5kwFw5K/E+LHePoZpEogZnmdvcyj6nqgE=;
        b=eNysw1VqWpz89U2MBvxAkM+I5kEnH/IzT5sCigWGc6CGffBZ59g+4HNxrymzim1tBv
         2RS4qmudzT14lQiRnMhJyCrAHw+Nw6L/MD2g/jMagcoZV4PxpkyzISYxLEDrcqvhFOHU
         OwSjpTxVePWofgGYDWnfo0nPBHcakFKsN4h0sBmBFsOVgbnr6saHMQW3lXEGl/tqNh0T
         j94Jh49c9MEpjEtX9dAS3fIL0zaH1ZTUigO2YO118Ck0wTu5BfWUidt8T9hwZczA3cK1
         iLXAM2Ujwcpb955Kxq/ce1bmV25a6IzF7O1aM8CnHESHsifMWb/mcUHxpYqErU2Ff3X8
         wPWQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0/R8DnVmLOKh7R6ZYvMlYBeZbmTWK34lD1OP20GNP/lofUF0VII6GupOcLbKa7s0q0X0K8Ke26T3x@vger.kernel.org
X-Gm-Message-State: AOJu0Yylx74zI4YcRdbxbMJ622qDCqcAkh7tX37DxXlzU+E4VG3t2aYD
	uVy/mocvmtUHx5uKyNdE9bI6ZokstoTHVAz12rT3bNmll9dXWNSa/HiXNEiOIqw=
X-Google-Smtp-Source: AGHT+IG5CRs6f+sypgPUJBs8fk1CA6OCLhhRraAk54KIDDATP9CuUk0L3+AwwI6EAtbPJeZbpBO7yQ==
X-Received: by 2002:a17:907:96a0:b0:a99:5d01:dbd4 with SMTP id a640c23a62f3a-a9de633218cmr488951966b.59.1730065641792;
        Sun, 27 Oct 2024 14:47:21 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:7909:9635:32a2:1dee])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f2994e9sm312921966b.115.2024.10.27.14.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 14:47:20 -0700 (PDT)
Date: Sun, 27 Oct 2024 22:47:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Tachici <alexandru.tachici@analog.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: adc: ad7124: Disable all channels at probe time
Message-ID: <3rko6t45aqdfl7xk2nadduqmpvlgwleolmel2zj7ebz3mmvuiv@ef3raxsu2t45>
References: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
 <20241024171703.201436-8-u.kleine-koenig@baylibre.com>
 <20241027114228.5e418341@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="trkgarjzxwucnumm"
Content-Disposition: inline
In-Reply-To: <20241027114228.5e418341@jic23-huawei>


--trkgarjzxwucnumm
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/3] iio: adc: ad7124: Disable all channels at probe time
MIME-Version: 1.0

On Sun, Oct 27, 2024 at 11:42:28AM +0000, Jonathan Cameron wrote:
> On Thu, 24 Oct 2024 19:17:05 +0200
> Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com> wrote:
>=20
> > When during a measurement two channels are enabled, two measurements are
> > done that are reported sequencially in the DATA register. As the code
> > triggered by reading one of the sysfs properties expects that only one
> > channel is enabled it only reads the first data set which might or might
> > not belong to the intended channel.
> >=20
> > To prevent this situation disable all channels during probe. This fixes
> > a problem in practise because the reset default for channel 0 is
> > enabled. So all measurements before the first measurement on channel 0
> > (which disables channel 0 at the end) might report wrong values.
> >=20
> > Fixes: 7b8d045e497a ("iio: adc: ad7124: allow more than 8 channels")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> Makes sense in general, but one comment inline.
>=20
> > ---
> >  drivers/iio/adc/ad7124.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
> > index a5d91933f505..912ba6592560 100644
> > --- a/drivers/iio/adc/ad7124.c
> > +++ b/drivers/iio/adc/ad7124.c
> > @@ -917,6 +917,9 @@ static int ad7124_setup(struct ad7124_state *st)
> >  		 * set all channels to this default value.
> >  		 */
> >  		ad7124_set_channel_odr(st, i, 10);
> > +
> > +		/* Disable all channels to prevent unintended conversions. */
> > +		ad_sd_write_reg(&st->sd, AD7124_CHANNEL(i), 2, 0x0001);
> Why 1?  Build that default up from the register definitions rather than a=
 magic
> constant.

I picked 0x0001 because that's the documented reset default values for
the channels > 0. But agreed. Will fix in a v2.

Best regards
Uwe

--trkgarjzxwucnumm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcetOIACgkQj4D7WH0S
/k52Cwf+PY8XUYHFW2QZl1jc4Tqq8UZ0wtUg2K+c6HmpMeXrEk3WFGDhGEe8K4K3
Gu0PHvIcIJ7dmy9p4Qb35Yyk2f+xBKczc71Pbh00V5igLN9ITQX+6s0JtgaBFobZ
hxMxJa9Sdk5nBxFWAwng1M8u1hfu9mzXwy/boNkcuZw1jUrL26QlUlBQm6pSY2Ir
mvtIGV9OylNC+4b5EEOyGomBkplG8WkZypNMlsCpZMKAj8isyjHVN45CAJL4RrcP
x14Y7M0t53Rr/GpnjN+vpzstMAsjRuqH1t3nBcnrOivZoFj1HYMkfmrSg/4qawko
O3uidHvjTyolMmYFNgnXrLMsYDebxg==
=CfjI
-----END PGP SIGNATURE-----

--trkgarjzxwucnumm--

