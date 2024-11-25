Return-Path: <devicetree+bounces-124305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC45F9D846F
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12BEB2860DE
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 11:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D931D19992D;
	Mon, 25 Nov 2024 11:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Vi5yMCPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4439D1AAE09
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 11:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732534041; cv=none; b=PZoQ6+jtJAcaviLqVE6dCDPhds8R75sYoV0Tqhbn6Xmlfd8/Je5qgVLrWWNkfhRV3XjxNt4ovNZz5LQS0PlNUTFqsi4X6C4raQn102QHlbOXAr6AIFsYYoFYiRoLurxb0tHa3JwoA5H1bsboseX5/A+ShOc50iO7eVbFAFfXvoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732534041; c=relaxed/simple;
	bh=WDl0bA26jgbiFrgSk5IXgePauTchroaaGp8NMU8IqPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gqeVRxMEdkW8D3P1oKWY2I+dtFSWE5OXUUkvTfB5C9wWShIUUJhiRONoJxXXomwRNPuRUYRCkIgUKzZt4AoD4Auef+r5CL4SDty+mRoPqfu/UWRe2fyEykt9NMCxE7y9fFEqC8SNBGBeC7KN6sPihNCObPu/pdpldjTwcaH+0J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Vi5yMCPp; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3823cf963f1so2686753f8f.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 03:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732534037; x=1733138837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/6W/TcW+FzL/8d8uwhMwfU+3kKX+iaCdQ6aLKFwbtfQ=;
        b=Vi5yMCPpajMos6kplKLn0Zp0rQ37vgyoJw1hG4FGRaq0emYN89Yoc/VJFb/qS7GlYj
         riO+mgIcs7W8/rnTmiC8+mxa891HzAVIzfhECl9Fb0uvZuzIsKB/6F8ZBlS9XVN63Ina
         h4cY1eYkpvJ3Vjws5UVY6ebN6OoVcvvxQfTSUNshzELoAxkptVAby2hUgWgVTWNOiJZO
         GmYy4MlHMxLP7bV9GZ6QkQ9fCBp6qVm+4NqJwS5L8AxACsExocu96jDWKSvZmLHYfKzk
         dxWlB2cJy5Yr2X06EINKmsUENbe8oAKj6va7PWTO+WRj9r2QwksCo8LShhlhwZVHfJwl
         ESBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732534037; x=1733138837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/6W/TcW+FzL/8d8uwhMwfU+3kKX+iaCdQ6aLKFwbtfQ=;
        b=AEyQL55siGBbj7w9q87wBVRlK2qHdnJxNdiX1drSItzvmqtEHPab437dWjIp+6tqNV
         uVsdGVtvx0Ew750adQ9Li+p0e/MTM5jlCJ0lMc5cRuY7rTqaNy84HiH6jehxk2OCrbYA
         jx5j+QHYddT7ylWbpQ8brHgFyQpRmDM9GvUFBvxIUpZU4EXXbGRgNwd5SV7qIthNBlwh
         bSMA/NJzT3Wyj63qPzgCVVmgZxSAtxnim8a88A55HuYi00lxyqu6FFVIrgRoxHRj8STO
         +X6+wg2CStxhzuqqq6R4NUF8V3ncxADvrBf8zMLqfXcHe5s+BKIfSuOV65DW9j9N8m2i
         ReNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+u0jj6fl2lm3J82arhnlT1gdHqHv/6vk6pfadNjXmYyR8LPWKv3GExtxyz1XIHOE32O4Zvf7rrB+a@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw5yy1ZbhpBwD0doWyyEtjtlx2Wzwn+qFQNhO2ZAVls5eHho0M
	H+LPQ157Rogef9DTYyP86qLitqgf6Lsja9Vj59Cq3knLxg7WhWOigfWIuetsolc=
X-Gm-Gg: ASbGncsm6LC8CKiX/uE2VOUqUZoTFqPt6ELsuXD/QhNeBBKs1HA6BegHjA2CxfOQlV9
	9zP5auCCfOeSBYXgH+twyH2Kb8mYyCZ/DbTYGLWiNYk6HYuHDEO0M8q1r9wgoy7NkLmZhsg/ZGQ
	teflgRBaWIEGn3pwaKxd1WChdaPBgcTL474oRJlXS7Epnm4BYV7OHiScWA3lQlBjYSFHiwdDpqg
	kBOV4luUcJwZQlR4gmKcsBoPktcqbFUYrKM4E32q1FfDGjdkIM2ea6O3UUglklEQYdr9vROnoB8
	NOzUYmy5tK7T98dDiKEVcIBt+J6cdic8f7OX7w==
X-Google-Smtp-Source: AGHT+IFv+LaRoSpqPLBzP55J1LGA76RLnlorbc6Kvzp2ZM8a0jgP6t0dbM/2WuhnW+/2vowoHiwUhg==
X-Received: by 2002:a05:6000:18ac:b0:382:4b43:c3a with SMTP id ffacd0b85a97d-38260b45e0cmr11044948f8f.2.1732534037626;
        Mon, 25 Nov 2024 03:27:17 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbedce3sm10097370f8f.97.2024.11.25.03.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 03:27:17 -0800 (PST)
Date: Mon, 25 Nov 2024 12:27:15 +0100
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
Message-ID: <eghe47rkwxmcfkamayemvwfksonrwbysaadakbdm4lvzcsy4ee@7gftiif7ka6i>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-22-u.kleine-koenig@baylibre.com>
 <CAHp75Ve_sD-a-m4pYmKrT=LhajO=F7TG7KM7AsM47J0=ksVgNw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bs2c2lob2wt3zs3e"
Content-Disposition: inline
In-Reply-To: <CAHp75Ve_sD-a-m4pYmKrT=LhajO=F7TG7KM7AsM47J0=ksVgNw@mail.gmail.com>


--bs2c2lob2wt3zs3e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 10/10] iio: adc: ad7124: Implement temperature
 measurement
MIME-Version: 1.0

On Fri, Nov 22, 2024 at 10:31:07PM +0200, Andy Shevchenko wrote:
> On Fri, Nov 22, 2024 at 1:34=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> > +       /* Add one for temperature */
> > +       st->num_channels =3D min(num_channels + 1, AD7124_MAX_CHANNELS);
>=20
> Is the type of both arguments the same?

Hmm, my compiler is happy with it at least. I don't understand why
though. I'll do a few more tests ...

Best regards
Uwe

--bs2c2lob2wt3zs3e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdEXxEACgkQj4D7WH0S
/k6i4wf8DW0o0Rcu5ZujKf4zLtPWyNxenG/CRn4rhq3mhs5LwG6CXR8hxZ/0rtLR
YFTCiFD1HcyQWwDhdEgqsUx8fJu8jFOHdfFElnBzbcd3fiXf4h3bPhXmws9O/8rN
XNnD482R9+/BPsbG1ZIsbH38rodpTa4a8P8KMw44fcUO1sNmgS2fXd+ddDHT3wM/
kL8P7vOufEMMYCMTS4rIBMc51mnukRuBCU03YdZO4ht5sk8jHlYQ1/2/1fyzHQ4l
piDxyNU+LKafY2LlFuvCKUPsie5c7PlFwj+XLbP2E9u7oaIHTtT2nWB+n6gU4lOm
SRT51CVU9ruP63dJ09Y8h2cPAOH0vg==
=UAaT
-----END PGP SIGNATURE-----

--bs2c2lob2wt3zs3e--

