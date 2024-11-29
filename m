Return-Path: <devicetree+bounces-125060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CE29DA9FA
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39275B22BCA
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309A81FF7AF;
	Wed, 27 Nov 2024 14:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EDFz+eZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE11FF7A1
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732718321; cv=none; b=IVA3TSeMT63wowePTAQZ6lGdgUfcoWy2Ik4/RdELQ0EyGhqOqsSMpqqIagIBn+O0OdwDIpzs09m24ATKCKzGDMYdXDF2ksUUqBcP/BQpb4kdDGBIWR6lYcdZiDf5hFzAkphrYot/YePCs3a+Rz9gLzIFkdr6TcBWP9lXf3gLRhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732718321; c=relaxed/simple;
	bh=lnsn699LpgnPbF0lMZ+d2fnNy1n5cw6ru66r6iKjaoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BnNE+V5tvU7uJfkVI6pUctZFoViqD7cehreByw2Dvo8keNfDQ9FLQJ/71/S3slHdc3FzjsMdF0KkgSsLxIx5/HdLIrKV7j0XG5dgmiunukB1V3XFRJvJltE442rXbJN4wbVrU+G/i9JafLkRx98FXwLTmHjDJ999Mjx0VFpxT0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EDFz+eZL; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38230ed9baeso4848079f8f.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 06:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732718317; x=1733323117; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fjCD0qFxOqO5DReL54VpjPy3zOSRJFVTaycjBR40RnM=;
        b=EDFz+eZL0XuPyRZ7u1u1anW4m01z0xRhbi6lEJZt+75GgOI7GLDD8xsIyJLIKzOi9s
         qfRAilBKozz6e+7RN7YGmypW7+Ap9j8iUCao5cai6FZAxy9nb2QvkzJhNtvvk7BmCaqj
         6hjrv59c4ZT+10J/Uv2GbY/p1uWmE1aVtbDev//in92KRgjxIUvUycBA0mUn+Ljywlos
         qb96EBdfzVfYyg5o6bCOA7J6S4Q7gpBZCDz/jckU+2pFg2uLDMKlW9NyoKiJAjpNoFvc
         7+VYs/rGwPDiVgkpvTmtMFI/hUY6c/+RLwJvnVCJzgm564zgYfVZecgVJ2Gi2gt0RTB8
         Lmig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732718317; x=1733323117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fjCD0qFxOqO5DReL54VpjPy3zOSRJFVTaycjBR40RnM=;
        b=SW/z3GYSwRERbcreUpwhFbBnlgZYt9g1CUlSfj6EKMyyPf6FSvIIaRcS3s1r8eOmhd
         5z1ibMsjxy4LjryfI1rAW+IGccir+7IToDFRMATCMwTj3XYfYZEO3q+ENsSTvKrWb+nL
         bLi9n1ow66GxguSyEsZjVc+ge9tBAUaVi4I+Yf3Fy3pLcBUjVxhKKXw9RVU2xHKQ9CeQ
         S/rwzSw9a/vXa3N0y+2OYKZZql89oyX9S7DI8KCGO/4xmlJFOR4l30Q/Dh3xztNquH8D
         73Lq5JHq5CitncXPEt2vC+7PPQ0y24Wu6E0Zp5FkKfYCqppNeY9thEJcJjb4z8714vod
         mGQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcr+LbL/DwFxFXtoLFncDA4fUrqJadybrHfM3ZWNTgLQbHxPdKBqHDj/x+6NpmjOPYtnW0ahojE9g1@vger.kernel.org
X-Gm-Message-State: AOJu0YzfrrV9nqDSRW4CAVw1T+TdGdtKsT7/ThqmUu2xtxSh0Kkksh7T
	aQ6ykJq7xYzQbe/RSRfv53x0U6XqLfJjIZc4dftmtgo7IpLJg9exmNtSFX7eyh8=
X-Gm-Gg: ASbGncvogzU6aryecFPu7T67UBTpb5J4M3GlSX89QdPCTHvTTwhZ+M3TeSPUa623q8/
	sAJmS51rb0Ft9BCpU6TTAWgEorVH2lUELAG2BTjzJYFFqww957EttdqdLUoSbfyiXug7tmISnCC
	5NrDF0fnclwbS/rwPuKI+Jpt7mplH8NS9FvAoMxtmN7GafVI99DU3B33q4CGmN6WAXeQm26I4OW
	MB8LzKPvfCXcE04Z3RB9a62H+Bzjmya2dwy0muUsgus0tSPfD7mXZST/mKPiKnxkZaCyqEH2h8+
	Hybh
X-Google-Smtp-Source: AGHT+IHMmEsMtbcC+5w4VmxGp70yBDULVWkU/ZbDtSTIP0A5u8I3KUEQg1ao763uGeZiDyE/hL1wcQ==
X-Received: by 2002:a5d:6c6c:0:b0:382:30a5:c38e with SMTP id ffacd0b85a97d-385c6ec1158mr2425497f8f.31.1732718316694;
        Wed, 27 Nov 2024 06:38:36 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fb2609csm16714496f8f.44.2024.11.27.06.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 06:38:36 -0800 (PST)
Date: Wed, 27 Nov 2024 15:38:34 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 10/10] iio: adc: ad7124: Implement temperature
 measurement
Message-ID: <mg34sbu6agf7v4iupeaf47n5ubpq4igevhjacvurumf5sfpjs6@ioyyjm3zijdf>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-22-u.kleine-koenig@baylibre.com>
 <CAHp75Ve_sD-a-m4pYmKrT=LhajO=F7TG7KM7AsM47J0=ksVgNw@mail.gmail.com>
 <eghe47rkwxmcfkamayemvwfksonrwbysaadakbdm4lvzcsy4ee@7gftiif7ka6i>
 <CAHp75Ve3hBhCMFkjA4-hiLfGQLeeGt_74e=PwTH_nF1NCYiyOA@mail.gmail.com>
 <2tsxyxmfh3ozolsziu3bps7liagzl4gmvy4oykvyeapziagvy4@tfa2lcxmdsmf>
 <CAHp75VcMHyqjsAVveRf58PhoiKyPJRsjBQiLkz+XVu+NDc+Wog@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kbmnltnu74luhggm"
Content-Disposition: inline
In-Reply-To: <CAHp75VcMHyqjsAVveRf58PhoiKyPJRsjBQiLkz+XVu+NDc+Wog@mail.gmail.com>


--kbmnltnu74luhggm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 10/10] iio: adc: ad7124: Implement temperature
 measurement
MIME-Version: 1.0

On Mon, Nov 25, 2024 at 09:33:12PM +0200, Andy Shevchenko wrote:
> On Mon, Nov 25, 2024 at 4:52=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> > On Mon, Nov 25, 2024 at 03:47:25PM +0200, Andy Shevchenko wrote:
> > > On Mon, Nov 25, 2024 at 1:27=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> > > <u.kleine-koenig@baylibre.com> wrote:
> > > > On Fri, Nov 22, 2024 at 10:31:07PM +0200, Andy Shevchenko wrote:
> > > > > On Fri, Nov 22, 2024 at 1:34=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> > > > > <u.kleine-koenig@baylibre.com> wrote:
> > > > > > +       /* Add one for temperature */
> > > > > > +       st->num_channels =3D min(num_channels + 1, AD7124_MAX_C=
HANNELS);
> > > > >
> > > > > Is the type of both arguments the same?
> > > >
> > > > Hmm, my compiler is happy with it at least. I don't understand why
> > > > though. I'll do a few more tests ...
> > >
> > > If num_channels is signed int or shorter than (independently on the
> > > sign) int, then it's obvious why. + 1 makes it int.
> >
> > Ah indeed, I should have understood that without that explanation.
>=20
> Yeah, but a closer look shows to me that num_channels is unsigned int
> or did I look in the wrong place? If that's true, that should make a
> warning appear since AD7124_MAX_CHANNELS is signed int...

The ideas in the definition of min are a bit hard to follow, but IIUC it
doesn't warn because AD7124_MAX_CHANNELS is non-negative and so there is
no danger for misinterpretation.

Best regards
Uwe

--kbmnltnu74luhggm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdHLucACgkQj4D7WH0S
/k4/Lgf+I6KqOWJtmrxLTxrPIVrJqQgSbCiw6Z9kTouW4Od/YbS8hVskCFPkSTbl
xo/Yh4jSUTLMpV5jE+erOQgrJxtqjSBUIDKP+V1tMCItEw+AEbDmrenRLRt6FYU9
s7eTWma6O0O9tD/Lulh7n+1giTAg1Rcp/5NJCgwRllfWG88cFUOijwjf3N/BNNqf
yS0SwO9WqLlNdpQifLBI2RmQWWWXbvIm5zidT1gizkd76zX93ENt2EiL15VGW1M3
2IonL8Md+KAJVVSvhhui42mePHqx5qupFLRVTI4iLkAL0uYbWhKqcT6dwI3HYQsS
mrL/aQBvmIIYPS2JrrCSO4Wtjxoe2w==
=nfqX
-----END PGP SIGNATURE-----

--kbmnltnu74luhggm--

