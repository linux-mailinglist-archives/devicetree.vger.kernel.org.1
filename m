Return-Path: <devicetree+bounces-123817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C29BA9D6191
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A61EB23388
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD88F1B0F0C;
	Fri, 22 Nov 2024 15:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EERVaJep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45FA13E40F
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732290865; cv=none; b=OoHm3U2I/uFUP6HSf761KMhUs6a1mKqExfNQiO+Mkvr0RlywzH83WjlwMnfguq94YpggyP7fEKrfjUL7Lue8assu8qjZhI3eqyRmetXGNddh19QwS2gKHopnU5gO/DCav387jnK3qYfOJGXkrD/DZzhefZDiL/9VqKrPDrxyIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732290865; c=relaxed/simple;
	bh=AbB+GZOADxUTZQjQFYiIqRMTxYSG3RHMUMSTJ35feKE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hW3pXWW0jdX6V5NhyfPBZ3cCtZUzqPXKHbahxgBCFPqD2kOmp5wMeVNkr/vtwYVIoB8u46WSD9/yVgIF5wGKBWJn07n0EYyxhkK43BbB/NWJaWTbBelJxQocQa0BwllE6sR/1W3h/ItmmR3nmoPk4El0RSSGlp7KrLlnTuxjIKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EERVaJep; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5cfd2978f95so3151344a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732290862; x=1732895662; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AbB+GZOADxUTZQjQFYiIqRMTxYSG3RHMUMSTJ35feKE=;
        b=EERVaJepjTx+vf4gWsVwA079fYajWitD0Tdz7x2XpgEe0JmeJHHYHwBIaDCxwY53bA
         3n86sI4fZCvvxLwfSL+HWzrWzItssp3wWv9DmTCq8gGvxmEUNb5Rytgk+hEHjzFYDABj
         NNgl0+BZo8hdW5x+KMX70B3jh+I7wV01lcFQXLtZ3/nmW/c2pakglXYipMFNzBYJgfQZ
         FMEfz/lCiIyWEsrSi/kDe9t5On/ouF8F9YRbcuwXJS4HmWy2bdedXR/UVzYzzgomZrTG
         PP4QApeuTNJI4WmwcNZz3nxHafkz7eQQ27u4dcodIurrlZGFf9Iq4gxlzM1nBAZSVmd1
         13Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732290862; x=1732895662;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AbB+GZOADxUTZQjQFYiIqRMTxYSG3RHMUMSTJ35feKE=;
        b=cf5P6KB3fWYYwVPE//7/1HzYfUj2wOSXxyyoxYp6oy4zhEnBiAhlQpGjUwqpe1g4Es
         bft3Y0mCtTYkMb2ytk6tEu0VNB6s6Q7NiGG5LFFm1E6u4JENcCMRagzEXv7RlFhbXDV1
         FpcVpfbisTYjZDUQ3CzVqLPKQed8PhUbIJf2IK89FMvTUscbe3FjPvkgp5J0WnOjewAc
         1zLScZ0GWR5kl9/Wd0cfuePFFdW51ujKt3DgIQ2Q6wtMMAG0TyXdixQO3Wg15jDH6ohw
         8TT0Qy4nm8D5hjVsxbQp9pBxVzS5nbRoWEOQtTuvTzuFBZjISgfPgdYS08rzD08i/lHL
         30vw==
X-Forwarded-Encrypted: i=1; AJvYcCULzQUoxTvyla6/yHQTyghzXJ8Zg6zW5cLJokOuW9ary26R5JzNRqwI6XJ3CIaUv0yCk/Jfm3bZvTEM@vger.kernel.org
X-Gm-Message-State: AOJu0YyJepOyk1MCKY54AWt+QaliTgmzYLLnIe7KMm8XZl3XuqV35uBf
	zuIU4c88JbsvI+LkE074iY1qsVo94mI5VTO4U7UmqgvcqOJRouziWiaVgw7le9k=
X-Gm-Gg: ASbGncuh7oPlKwcQOT2TCIvB644uQPxti+sCww9Leg6r7y3cUtS9K2TELXNEXwwt0Dk
	8DllWCtBJnWByhbJMJ6TPH8x8NRD+SGuZ+wgwzUqs9wQuq8gFzcsqJo1Ts+GnyYWZ8EcmUeKoRJ
	VUbvsG5+xJJ1L/RcqxETGNAieE17s5JF107HyIaXwexrGYwjOAuh3jL0Pb89h53ysRL1MBQMoJg
	TjyFsrMfNN6Dc09bwsiv73nQb6QrrE5h06siEkHJC9nsiXf9uFMX9tvH60sY1FpZQCOR8dgbF4U
	aUE=
X-Google-Smtp-Source: AGHT+IEcC18ZfKJzXUMKq8ME8tNe1yPd8GuNKTQpBaP76Ba4tDYMggi4IuL4B1XIxe25czmwO7ZLKA==
X-Received: by 2002:a05:6402:538b:b0:5cf:cc4c:76ff with SMTP id 4fb4d7f45d1cf-5d0206339aemr2960405a12.18.1732290861444;
        Fri, 22 Nov 2024 07:54:21 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3b88a7sm1054901a12.31.2024.11.22.07.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 07:54:20 -0800 (PST)
Date: Fri, 22 Nov 2024 16:54:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 01/10] iio: adc: ad7124: Don't create more channels
 than the driver can handle
Message-ID: <rcn6gtf2kuxxtw2xs5z374lkzst3eozgyrkdcofa6m5jxzfvne@wye2z6qoni42>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-13-u.kleine-koenig@baylibre.com>
 <afbb5d4d-8715-4544-b372-be23811eebd0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="odmlvqvkgonrkc6q"
Content-Disposition: inline
In-Reply-To: <afbb5d4d-8715-4544-b372-be23811eebd0@baylibre.com>


--odmlvqvkgonrkc6q
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 01/10] iio: adc: ad7124: Don't create more channels
 than the driver can handle
MIME-Version: 1.0

On Fri, Nov 22, 2024 at 09:14:18AM -0600, David Lechner wrote:
> On 11/22/24 5:33 AM, Uwe Kleine-K=F6nig wrote:
> > The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
> > each channel defined in dt statically such a register. While the driver
> > could be a bit more clever about this, it currently isn't and specifying
> > more than 16 channels yields broken behaviour. So just refuse to bind in
> > this situation.
>=20
> The ad7124-4 datasheet I am looking at says that it only has registers
> CONFIG_0 to CONFIG_7, so do we need to limit those chips to 8 channels?

These could be reused for different channels if the settings match. I'm
unsure what happens if the 16 channels use more than 8 different
configs and you want to bulk read them. Single channel use should work
fine I think. If that is a problem I might have to extend this series of
fixes, but this is something orthogonal to this patch I think.

Best regards
Uwe

--odmlvqvkgonrkc6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdAqSkACgkQj4D7WH0S
/k5Zggf/W9X6102crHeIE0sPhLE77cPvbCd0R7xJZXq1D0cUlPLbzSRI2JBwM//q
53FUpEJ0Y6rx8ipj2yE9RX/NdqpqjBN0oS5QarnOMa6HJgYdrzrR/gSHM0Y9Wwa5
HQ2WVyehWHWgbdr1LkEKxEewYo7ziRE//erTKRl4kEmDHxIQFZg8OguKdOlCpuLa
cDqyyv9ADMHJp9GHhWzBB/VjvTeDoSk4EoROuuI62iVWeekDiRi93L/pEd7jAHCU
c4RwgDYAzSem0vZTtrzi4vWd9kfmxxHwrTDyYF3rHt1idJ8ANCWItnb2K37wm3Ia
bsGNNwsgtxV8uHBjF931oTlkmWFOzw==
=6OJt
-----END PGP SIGNATURE-----

--odmlvqvkgonrkc6q--

