Return-Path: <devicetree+bounces-125078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E0B9DAA75
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51426B20C49
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CA41FF7BD;
	Wed, 27 Nov 2024 15:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Z9gRcXtX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949411FCFDB
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 15:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732720152; cv=none; b=gzqU88E2zJBmqU/t5iOs1axHsFaLoXAn72rddJ0qSJcSGyR/YVGL4rMHrFwo87chwOQ/vP+hRYDBUGFiBTisfPZxBTrai5gGxwtnX3c0nebnHAelZGQBlXwwDvRpZyNEarFluhboGVluSLWL7e7DPmQ3OBxczHw9pCKoEk4Z1Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732720152; c=relaxed/simple;
	bh=P3nI8I+ibWRv+NWt+fZ0MJjdSjkgnacYGXs1waHK50U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YIXhtezhbSBGYOSisS88B5ZlgSm4lA/WXDoxCNXu2CR0+7mmiqd787AIoMh/xZFq28hVP5ifUf6Obj707IsoCWUG8zUAgGT8ixCkngrOPt73/zJbzjPWiAP0TFXuyxc6KgV60vBKxZKGgWRVv2j9qXCyJufZ1LnvkxgS+pofPFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Z9gRcXtX; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a044dce2so36180195e9.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 07:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732720149; x=1733324949; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HMy5hvRsSJQ0P5+PSJKFsi22A2ZmaacuPuVauV17v8E=;
        b=Z9gRcXtXEBvv3xGl2fmNTA3pGGy1ymRe/30HTqK3wXS+XPCLw64KkBW0s+bPjfIqIl
         88QxJl2z4JR/LRFKUpus2dRImjqqalfEFn6v45ssSgQ9MxUYhT3Pj9K2zXVhQECfDbyQ
         VsmcHOhUS+dJKiRtWroIEN/UwhUlWxKpotHx5mQQtRXbGBvR2uuH+jQc8uJHysa2fR31
         5rWc7ukkE6GQjiWwbocaYbDkiPcF9uSAkvynx35WzZLuuoQ5xqQb+Pw/3DQ0bISaebB8
         Uu5pYJygomRVrDGjQVwn4yWkH3KaEGoK11k2ptp3q/NUlWY8L1lEXH8pNFFDHWn9kIsF
         NuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732720149; x=1733324949;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMy5hvRsSJQ0P5+PSJKFsi22A2ZmaacuPuVauV17v8E=;
        b=dzRXsAz+cF4Ou8kOFiU0PIegmAU2hemhwIS3RX3gvp/NGhcX7bQq8cZrKa0dvn8eER
         N1gRnC5vVBQog0KCBEvy8y7DkhNqSFY0dA1ePJBoiZDWfac8c64t2aJrCZl/xdWgTcd3
         rK0C50Z8kE9+nqKNm6M6zex99s4VinQlLx6C0uj32pJKbpnid5WDJhWjNB3k/Xp/WEbL
         NZs5Px7QdYJweWmtSa9xBw2RAq/Ed65HWO+RR43icd31b23JQWbGfbV7GC936imRkF9M
         jms+Fg7IESMtLcGBXY05P0ZC6MXqZ31CfrJgfHAFUKxUUsBJSVefOq2X1eF9zrlsRElZ
         +6qQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+fH5c9wASL8886fKQH3cbgMcRPtzruFOg6a/zb50iop9gDAPPQ+jrYWeod92JQZO8aZpb9DP2EN3V@vger.kernel.org
X-Gm-Message-State: AOJu0YzU2LKShPQHlQU+0AoEIay4uvI8qttykIuD46EvKle59M7lGGZK
	ZI8HNQKhJ0c5J+56ZpwzWKNnTmzES4IJcb1HHYokFkM1BkWnyeVAGfHWW+CX3Wk=
X-Gm-Gg: ASbGncv8rNvDtH7gKJZy9dqPMK9140morX6ZPjnlPUfe72PVKlCdd4oLCEWAva42eYo
	Hg/KHkfXdlCs0376htyx9XrQLCS5YVp75Rf1hX7ycGIAtWusHXlV2+xJfxcBjPTE8z5pd/4gQGs
	B7HGWFaViWxMKUtHdAwxmJSsEQBf9KnjcfQ5o3ecLMnvwzN+XKVSeo6dhdPdXyqseWmywGO17kH
	zlV9359KMvScUsWObQNKvikZri5Kw+ZbKidJiem8WrmeLTViE8P0mLzgesraz/GD13Khm/LnFHP
	hS+Q1fq7jrIOYAf1KTmBZYLWKpQWCd6GPzYcaEg=
X-Google-Smtp-Source: AGHT+IEeiHqtfov2wWjszzdmx0DaLqtPfS4il2TJifWxZHsrCqe8hwxlEJ08/st6aWUlCq2LUJ9rcQ==
X-Received: by 2002:a05:600c:3aca:b0:431:557e:b40c with SMTP id 5b1f17b1804b1-434a9df7a32mr33725175e9.27.1732720148230;
        Wed, 27 Nov 2024 07:09:08 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7cc0basm23660525e9.20.2024.11.27.07.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 07:09:07 -0800 (PST)
Date: Wed, 27 Nov 2024 16:09:06 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Alexandru Ardelean <aardelean@baylibre.com>, Alisa-Dariana Roman <alisa.roman@analog.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Dumitru Ceclan <dumitru.ceclan@analog.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 03/10] dt-bindings: iio: adc: adi,ad7124: Allow
 specifications of a gpio for irq line
Message-ID: <yopdsqmeotuj52ayared4nppdml2cyi77fms5os2kosgjprgqa@gxtzztqiku5v>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-15-u.kleine-koenig@baylibre.com>
 <20241127134128.GA3230110-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6qvc5mwyk5vu5mub"
Content-Disposition: inline
In-Reply-To: <20241127134128.GA3230110-robh@kernel.org>


--6qvc5mwyk5vu5mub
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 03/10] dt-bindings: iio: adc: adi,ad7124: Allow
 specifications of a gpio for irq line
MIME-Version: 1.0

On Wed, Nov 27, 2024 at 07:41:28AM -0600, Rob Herring wrote:
> On Fri, Nov 22, 2024 at 12:33:22PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > For the AD7124 chip the logical irq line (=CC=85R=CC=85D=CC=85Y) is phy=
sically on the same
> > pin as the spi MISO output (DOUT) and so reading a register might
> > trigger an interrupt. For correct operation it's critical that the
> > actual state of the pin can be read to judge if an interrupt event is a
> > real one or just a spurious one triggered by toggling the line in its
> > MISO mode.
> >=20
> > Allow specification of an "rdy-gpios" property that references a GPIO
> > that can be used for that purpose. While this is typically the same GPIO
> > also used (implicitly) as interrupt source, it is still supposed that
> > the interrupt is specified as before and usual.
> >=20
> > Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
>=20
> Comment and R-by on v2 still apply.

Oh dang I missed that and only see this when I just sent out v4. I'll
add a comment there.

Best regards
Uwe

--6qvc5mwyk5vu5mub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdHNg4ACgkQj4D7WH0S
/k4kvwgAk7k1iDMUzjXRRgdpFnQPlqls5Sky226bnNjaxBve9WdzXFLVBZOYjyfm
IgmH8lutY7KtBq8yLkstCJzz69OD0tVNDtRtj8vIFLwFnG81FJzhVJjgY1Ps72o8
/2bOJrl5KeWoLUw/FfQZiKPZV7DB3yPTBAtNfDRSegvtDHYHRNrCQfzE5Wr3oo6s
LKlB0R3cI2Nft2G/rguEcRCB/M12b1d0r+65Byhe6JDCKIuEh4bQFzo8VMfEV5ku
CiCktHPJlp/1Cq9HFFouacCiPLuT2bANkiJtnxDH6WXV251vuDk3IK766Za16z7R
qy29rPqrjIWZUKD0cRlkBos3rhdTNQ==
=awee
-----END PGP SIGNATURE-----

--6qvc5mwyk5vu5mub--

