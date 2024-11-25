Return-Path: <devicetree+bounces-124293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F869D8434
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49271166173
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 11:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA204195808;
	Mon, 25 Nov 2024 11:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="20PBngV+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A3A194C7D
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 11:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732533523; cv=none; b=OHH21g63IPbWZ1XO5zZ3reyRbLLP8hdHfApmApH7WmZKm528Q1sMsigy4p8VxPlm8PsepffU6Mgrn8mqFTtzftjWGpNWYOZbicJBe5uGTaeijJgdLLidQmECkVCIvvleKNg2fW9zUJ3AMaF+9pqbulUlLeVtB2UXemnj1b+Bv5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732533523; c=relaxed/simple;
	bh=NEXnkmUpNhcGagRcr6DpkooLnj0tGVVohyKmbBIxAY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OlhntDnU986xMVz9dZ4h8iz/JHmrdGYp8CPkY2PvJt1oTlTdJount700ScuvAKh+dOSPhztgzCQWnEmPcoqW/VYuLjyg05vpOcnmncrrjELbiQmJhwZrgOBQwA5nNgPmmzWCDOhE/3jxkTqyll66XuTbp4SpLtFBe4IgCqbT2as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=20PBngV+; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43152b79d25so39250595e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 03:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732533520; x=1733138320; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jgpbbNEkmgykeByyCVQ3DYDysEEYXvtEqm0PcuXiWnk=;
        b=20PBngV+QQ9/NCLJv9AjZgOfsC0gdE+rOZO2aVf1n22js1JwWw78zeyz0u2le0XFjk
         p/1ZvVrxM6ynRUj2xliCp5sRQnBAoc/TAvRouxOcXTqOgQAxNLKdAzHtWjj+vrMTBaQh
         oQyHUc3RmyBNRCMNuwPgzJmP+rWqb+AXg7rEef0tF9mQHj9mmalOu0sPYsG0qYfnc6Wn
         qjzaZXJyIfNJiir9kIVkowZmnwk2kvqOVXm//pcpLTa/qwnmoL9zJTHRIh14G57U2SNW
         P0LSXqIjo5rhtkkXmpGvCS6+bTwoiVbTrewoxfHKP59Tj5artPU0+gBGFQcyr6rlyhFX
         wJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732533520; x=1733138320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jgpbbNEkmgykeByyCVQ3DYDysEEYXvtEqm0PcuXiWnk=;
        b=dLYQ8FtSOzpxQNcLOE4T65fx/adwEtrm/nlci11sNuc6V+wZVhaQZ0MjVv+F9NJEt5
         EdMxVa3elrRgsEKA1WFaobFe136iuphfkDaaVzz7IIm4GZA2AsNS1hTAgzz/IgllwcZo
         i76hIsAaQTHWOwtgsKBS0jQH//vFRbZu7VnIR/IGv3J5N/nraVhhqPAh0SOtwBF/XSUG
         /At1x1xKOGr0tu8RRPIo1Lfk13zAWhVqGMrOELYRfQiiXi+ZVOG+JuTSGLldKOJ7tqJg
         gI7XjbTKBZrnekjfq43MqjoZRCcanJNzuoDIuJLJbeSgDZMcZzRFVOX9HlBcnK9RqxZS
         5d2w==
X-Forwarded-Encrypted: i=1; AJvYcCXQUprfPAa22kzRg2z+cPRWBactc8tj31p+IdhU5lY2U9ItupL+9gqpcUHigpJbf93p/5VR4onhYSBb@vger.kernel.org
X-Gm-Message-State: AOJu0Yza0l8EbRgKY8i4vVfZ/D7dwb7xMBMgmwOIb+VNdyOALYHRyxZO
	ZHMNtLd2tpVJZ3V7krCIDf71YnySLalRqq2vNc4Ane7uB99d6vHXwkYGh1Ta1dY=
X-Gm-Gg: ASbGncu1qzXpnvuazJ2ZNg6KggA4bYlAtZSsyDR/HdEHgly6qMN7nqy2coC4kh5LmbI
	ntEgynN0ZiaMwWtrXsIBJMOhLTFBhA2otahxKRG8o5HSvJMWuAECXNRTV2qsOE9B9j6Gi+5aMZd
	U3HXTOINKx+RX5U1FTTr3EMyKxDcPUSMcUG4c40aIhYqTNbdWBO9/a81Ovd0H3lX7y3BiBZVqxi
	pN8WMVJ5XMtbrDefHiugSS3vZfPlgmdLVhZbmJwEijJbx53bbJMZaGXwWBNZsdVlwszeDqmcs0l
	kP0vV+aXc1LcUO2jZV1lePJ7PhUjT6nwB+UV4A==
X-Google-Smtp-Source: AGHT+IGdH/1xkGe0FxMfcw0BJDlcTwbp3cxANiuceTiyzSfv5C+lXqoyYhq0xioqTflZztkvT1oBRQ==
X-Received: by 2002:a5d:64c3:0:b0:37c:cc67:8b1f with SMTP id ffacd0b85a97d-38260be3f72mr9001002f8f.48.1732533519689;
        Mon, 25 Nov 2024 03:18:39 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbedf63sm10142315f8f.102.2024.11.25.03.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 03:18:39 -0800 (PST)
Date: Mon, 25 Nov 2024 12:18:37 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 09/10] iio: adc: ad7124: Add error reporting during
 probe
Message-ID: <rtuckitd5jy4mpt3kaytrj7wjqh6cvy6oqhsypoonoxkznmxzi@b4l3hg7teqys>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-21-u.kleine-koenig@baylibre.com>
 <CAHp75VfX7Rtx96mY8V_9M+m1y_zwuoz+VGcmoF75YTjoT9NF8g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rxk76zajr5xqamz3"
Content-Disposition: inline
In-Reply-To: <CAHp75VfX7Rtx96mY8V_9M+m1y_zwuoz+VGcmoF75YTjoT9NF8g@mail.gmail.com>


--rxk76zajr5xqamz3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 09/10] iio: adc: ad7124: Add error reporting during
 probe
MIME-Version: 1.0

On Fri, Nov 22, 2024 at 10:25:43PM +0200, Andy Shevchenko wrote:
> On Fri, Nov 22, 2024 at 1:34=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> >
> > A driver that silently fails to probe is annoying and hard to debug. So
> > add messages in the error paths of the probe function.
>=20
> ...
>=20
> > +/* Only called during probe, so dev_err_probe() can be used */
>=20
> It's a harmless comment, but I think dev_err_probe() name is good
> enough to give such a hint.

Seems to be subjective. I guess I found already too many functions using
dev_err_probe() that are called also after .probe().

> >         ret =3D ad7124_soft_reset(st);
> >         if (ret < 0)
>=20
> > +               /* ad7124_soft_reset() already emitted an error message=
 */
>=20
> To me it looks like an almost useless comment.

Same as above. If one of the first thoughts when you look at this code
is: "Huh, no error message in this exit code", it helps.

I ignored your side notes for now as they wouldn't affect this patch. I
made a note for later however.

Best regards
Uwe

--rxk76zajr5xqamz3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdEXQsACgkQj4D7WH0S
/k7P4wf/dDEkByXl89Aj6HC/hhXcKyFIaOM3CCD9SSOqqjPA/aLPJko431hRUTtY
1Vi0Bvl1UzbYEZT4pTjmgTCicAuLS81J9h1d5gxPWcJ7bMzb/kDLouNXnREC/fgs
b/21vjgJ2p0z9XJgRG676nYcxugzDAfobrB2Qlm2hiB40KVF4RRd5SDsNir6yPRH
jnTtOWMF6pH3m6cXF7fkRmnXmZE1S86OuvN0UGJOsL2bsr0v1ZDvny0JgQ1dHjY0
28QhAzAyhDF9VpZpFR0DS5CICsMSVBPYNykNzlzdSjXj/Dmf36lU4NOF0TNFjSUH
XWD6a888CC2Fj5P7HxTQL2DXatHxXg==
=W0o4
-----END PGP SIGNATURE-----

--rxk76zajr5xqamz3--

