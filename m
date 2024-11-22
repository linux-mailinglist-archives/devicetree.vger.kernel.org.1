Return-Path: <devicetree+bounces-123818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B709D6198
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4C43B2316D
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F30019E988;
	Fri, 22 Nov 2024 15:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d81hbEfg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4759F82485
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732290925; cv=none; b=B9Vl0T7AA1ZRdAxfS8cEoRrqqYOzaW/mML6chWvKsszIZkzk38dk3+k8HDlN40NLyOSt26k0yDh8mx9lSd7fl6Sb2vnfvCLFLkTaALAxFgUR6CddoYZUp9I6eqf8BjFWs/GJxFqOwpsEZBfGkenroMPRpWkXkCb+SpYa348PnVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732290925; c=relaxed/simple;
	bh=rx329TESTmhAMZsXIxwVU/NVQSGC3jHHkc8C1HZbClI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bOxPG8IKpFH+V8v26C/9cT8Zg+QPJAYZx2Anz7w0E4wve6WJ30jZs0/Zl27g7Xn6gHXThGfPV7VDBqCLBvLNc93T++KXf1SIcqvQgVfSo+2dfi0raPjncWFwpJgB5TSk44t+vgZNBqFPxt7hYAWq6QqpURuQcsyrR4hufyuKH+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d81hbEfg; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4316cce103dso26107545e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732290922; x=1732895722; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rx329TESTmhAMZsXIxwVU/NVQSGC3jHHkc8C1HZbClI=;
        b=d81hbEfg4InUiwMRwLyjFFPW4iulghtM3Q0QaPrrI/YTF7SK5VA69tJF74de4EUQz/
         IrtdasYcgWWADYekXB52yhEzLH42YnoUlXVd/JNQ0VXNaN8EcMRD44NBqtjSoEHO2dor
         Npsug0oRtcsEaXgedfXGrwFZNzgHchRHzHE7Wks7rHxX/CY3yCgQU9SLEMJp9UUlYO6b
         PCn0I4ld5bc5awWFrSWj1CsjQ6Jf3BER0jqb0UO/aOFvQUojW7W2X6yzt5nga4iKBcmX
         gyPkirfdNr/lR0hkpS2grMryBl8nbJar4B4XcQF+nK2Y3QtU0sJ82OsxglIselUxYEN+
         nqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732290922; x=1732895722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rx329TESTmhAMZsXIxwVU/NVQSGC3jHHkc8C1HZbClI=;
        b=igLEkflf5RpfXvWEF+ffjMFF0iN4zZg8tu1FErFj+iyDv6L4neMHel1O/ahOQzceyA
         RNGEBZLWvsY+DeJfEA2hYy+BqEdvewPIQeNCguOTcg7N/zwVm+L1xc0Wx7lw29I7ptei
         t/Av/Cl849NAqgvVM2kuhpby8RoFBCLpjiFJIrhX9/XoRbJudg9Rin7Go94N3Z0nFKnz
         I8yOM6I5HOhDyiVtwKIWJMyajcTVNpCcHVJOdzn1VW21qgYgWwEj5CfDl+Oiw2JwKnhp
         HqqzV4muUNYYm2CPTZEmLuOpXvSc17lNLcqWbpvzSDsfS064kGyeD+uWvbrn0Yp88kgY
         ISdg==
X-Forwarded-Encrypted: i=1; AJvYcCXpU8ch9fzWeBjxRuXDzuRkSD8aPmIR3lKFtHcfTkJhAcu33c1wpEPgJVbJ06Bkq2wjiWyAUz1GUijV@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ/Xj8sVoEHINmuzPa0tQquXYFMowi0qxtMtpLmU2u/TwZBpTo
	8OkgU1vTbaQfP61nlqvJlpx8//ZG86uhDTqEhrbvd29zLifKyBTD2lkcNrWpPaA=
X-Gm-Gg: ASbGnctEojGh2+dTn5qEYl1TKJMyuoPUxsVJwDZ8Lk5pVFA2PSS65c31MSNJinRibKJ
	vnY2x9mUuupZxIeJXWGl7zVB2DQLnSkXvxVNN8HXQNO/8sf4XYYEKFsr5AmNt19tQ13gaO8vD0y
	o02WQdtBTWCgJTl9i+ccJ8T16jfdFiUVHuAHEzf2QgOUcOcoCt62kSpxZTz3Gd3ZoEBOJDbEb8d
	XW6TRWf8xdI7/8qf/i3Zn1SdM+/9bwq62lFquth9mqjiFOd0Iwj8Asb6OzCF8UcnJZwWEAD4lOa
	CkY=
X-Google-Smtp-Source: AGHT+IFrO3KEqN68vFGAeO8LsBeIZclekowTscV0QmcXDjoem/GSu9RHvDAiaUQK+L601EJDOnilJQ==
X-Received: by 2002:a05:600c:1c0b:b0:431:5c3d:1700 with SMTP id 5b1f17b1804b1-433ce48fc6amr31932085e9.21.1732290921725;
        Fri, 22 Nov 2024 07:55:21 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b464320csm94651495e9.38.2024.11.22.07.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 07:55:20 -0800 (PST)
Date: Fri, 22 Nov 2024 16:55:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Dumitru Ceclan <dumitru.ceclan@analog.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 05/10] iio: adc: ad_sigma_delta: Handle CS assertion
 as intended in ad_sd_read_reg_raw()
Message-ID: <2ndmufosl7xbdc7zq5pmbli5zpmzr6knac2yjp2xulqbwpqylz@lho3gb4kqkwf>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-17-u.kleine-koenig@baylibre.com>
 <ac642b48-89fb-4f93-bc4b-30ae01773b9e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ula66wo7fhl3q5hx"
Content-Disposition: inline
In-Reply-To: <ac642b48-89fb-4f93-bc4b-30ae01773b9e@baylibre.com>


--ula66wo7fhl3q5hx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 05/10] iio: adc: ad_sigma_delta: Handle CS assertion
 as intended in ad_sd_read_reg_raw()
MIME-Version: 1.0

Hello Trevor,

On Fri, Nov 22, 2024 at 10:16:07AM -0500, Trevor Gamblin wrote:
> On 2024-11-22 06:33, Uwe Kleine-K=F6nig wrote:
> > When struct ad_sigma_delta::keep_cs_asserted was introduced only
> > register writing was adapted to honor this new flag. Also respect it
> > when reading a register.
> >=20
> > Fixes: df1d80aee963 ("iio: ad_sigma_delta: Properly handle SPI bus lock=
ing vs CS assertion")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>

Oh, you already provided your Reviewed-by tag on the initial submission.
Sorry to have missed to add it myself and thanks to have provided it again.

Uwe

--ula66wo7fhl3q5hx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdAqWQACgkQj4D7WH0S
/k7DlggAqbUNfMkbK9NCydTDEeZ515zks3yMT+t4Chosspx4NIe2PpbB0dPHaQSI
m+qZS2Jpl/okcfFhIpEImwFvvemij1eyiOMm6n8/0g5+i9/aQFQ9RlY53VKtsGon
dwez8hbEO6RXKJseots56r7YXX6enutjEqejxBFcYxyqfSjnwVVlniLvXx1/IamC
U/4dHcQZGfk3Qy87rvHAopQ93Z6t19UCHF4F8C/gucVDD6Mp4OMqCLyCGZ35IQvf
hEbsFCcscBAVYunNykabjpvMG1C+qeu1fs5tKey4VlKD9h+plreARaPdzN8e5Soo
LxO1e8c3Z8jASKbldfyZ325K3LR+kg==
=VsGT
-----END PGP SIGNATURE-----

--ula66wo7fhl3q5hx--

