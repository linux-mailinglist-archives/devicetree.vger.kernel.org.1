Return-Path: <devicetree+bounces-142925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58733A2728A
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 14:15:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C03B11882CFE
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 13:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59862215054;
	Tue,  4 Feb 2025 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LxDLjHsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE6E20B1E1
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 12:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738673673; cv=none; b=Y7TQQ3GW0TBkRhydJBosLj4QynZNFF9N8AskHqyaPEuJlnPJ40fUaEGEIvdaHw/+ZiIGL3vaUWXpNpxog1WzLIt6K2ZQlSd3GAWvTGh15XJiXVV87zCxw8YpNjjVd5AMNizY8mVIKWb0s+LnbDa6YqTnF1DukhjopG+Vt4orhx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738673673; c=relaxed/simple;
	bh=ynSUJ63SuLhCXyf2usS1JVLKxrhDuZv8kV79M/Jon+I=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=JS6Dl4R1T/JI53Np9iqTozOITpHA+fPhdd5ba7x3f7EMU8jov/M7bdShKNq+QiSkQCum3hDZbFW94IEp2MUuX79COVo+GOsQAkyhdoZYFzECl4PUMFkuqtKLEs1gyr6MdCbOXZZa8vqtmZszCvKsTtDlALQnuBYDmHp5eyp7DrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LxDLjHsZ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4363ae65100so64788475e9.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 04:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738673669; x=1739278469; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fSDieL9GBtvsQS7Ye0zV4eVocVG/YaV0pHO+Q0/Wne4=;
        b=LxDLjHsZPwDJHzkD+Eim7w5Zmh4tZJddvIc26w2ntrXWaPAcPVrs9D+/dkx4bgJvIH
         Tqlv/kNkn840rWVSTbjF+yDxbg882vYfVskYls3e+MMo+K82eFSG46lIhSs9fKocNzae
         m78PVoCyZs7WZUUHPSTCUoV8FVX38o9hN5m0yrNB6c3mLIDdGCNK95oU/LXr43LxrUqe
         aWmBdXsAgSACZJLm/A1vzQcziT7VzJVKvQVONOZgbg0o7eP3v9kaSPaRrh2wK3ZUYnMK
         YoI8Y3phTWWXT2L+qWhFE1LqB88TPEgttiAA+V1PIQZ7T8VLbE+o8j7CG2mpZRDuKxvZ
         oRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738673669; x=1739278469;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fSDieL9GBtvsQS7Ye0zV4eVocVG/YaV0pHO+Q0/Wne4=;
        b=iaEO0pmkJ/5u4JpHvSuUAbpWFEn1Hvj8xc36hiZAppUXLyXYZgjG/I+H+i+IK18ien
         Qg03Czc/tbPiprnc3qIng8miM7mPbxnbHSuhBInmTI3Sl7NpC+g/0hdkQTBNcp/WhwWS
         WaD4LXGC2cphiZ2OILXUikib5OINiylaldnNslB/JdfmXl2Amu9Yz+wVAR+5/E/ZeAzt
         Gs/x3q8APgH2tExa2qZpyK3izz+WU7tcgaSTPBaFV3bu/J1AyfDL6D1oyzW9lk3lzhbL
         nMtz1GwErP/XDjkd2tkZ7jY76CdZxqMvQXsTh9WdKryEKrE84F+CTsFy+0X7FHtGQo22
         qzqw==
X-Forwarded-Encrypted: i=1; AJvYcCWOY3MQFi0ISB+o1KUc1APfHXTdKdx3iI++vfowIp1MNvVOfXmi3u57v5RYlCv6BEj+rT70FonDmp3Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwSsV984YEpQy0/e+CuI7W+JF3wxhXeABe06EhLH3QgAgyMqGca
	ENBQcTnvCYU9RKUjrR/F/4zUa4bLl58TPGMd2Ot/+BbCYialj6dF6DdNNNlvXoOpQk1uDmG/x3p
	11lI=
X-Gm-Gg: ASbGnctts8zFGmv+Fu3aMfU+HnqWakSq/8q5yAT5aIq6aFKR4Ve6WToTHsHve3Uvevs
	92FCEIFZYkwqcqyuv85bS3KIjcLhQp8KCgq53mw1f6LWezNCd8ZWxmlpCpXbF7wIi0fa8ytkyZm
	lC3kXbtG1nHDPtkL7kqmudACY5jsR5qWzJ0fOgvJ3S6yrLlAoetpcWm5I60iHYa1NljFbldmIsp
	OtdjbxV6SK0BiAe266S3IkXge2kOS1IxDnBcpFDCiMhj/UG/i3633dDAqBDlJaer8foNrFoHclH
	m54TL40hkHi52rwQ0AEz81ojKiE0qdJwy340E+w1beJFvWKs9O/oH17KCxSAwdYrxkUVGg==
X-Google-Smtp-Source: AGHT+IFouneBDH4lcmisK2CqC0lJVk1uEkk/8hKiuwfY//uH+O/ijh/ARezQ4p0atRjAsVemu/oJlw==
X-Received: by 2002:a05:600c:3d05:b0:436:18d0:aa6e with SMTP id 5b1f17b1804b1-438dc3ab518mr293284155e9.5.1738673668943;
        Tue, 04 Feb 2025 04:54:28 -0800 (PST)
Received: from localhost (amontpellier-556-1-148-206.w109-210.abo.wanadoo.fr. [109.210.4.206])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390692a66esm14765885e9.0.2025.02.04.04.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2025 04:54:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 04 Feb 2025 13:54:27 +0100
Message-Id: <D7JODK8W4W9W.3OO4GRGNDU5ZX@baylibre.com>
To: "Jonathan Cameron" <Jonathan.Cameron@huawei.com>
Cc: "Lars-Peter Clausen" <lars@metafoo.de>, "Michael Hennerich"
 <Michael.Hennerich@analog.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
Subject: Re: [PATCH v3 2/6] iio: adc: ad4030: add driver for ad4030-24
From: "Esteban Blanc" <eblanc@baylibre.com>
X-Mailer: aerc 0.18.2
References: <20250130-eblanc-ad4630_v1-v3-0-052e8c2d897d@baylibre.com>
 <20250130-eblanc-ad4630_v1-v3-2-052e8c2d897d@baylibre.com>
 <20250131181437.00000097@huawei.com>
In-Reply-To: <20250131181437.00000097@huawei.com>

On Fri Jan 31, 2025 at 7:14 PM CET, Jonathan Cameron wrote:
> On Thu, 30 Jan 2025 12:08:26 +0100
> Esteban Blanc <eblanc@baylibre.com> wrote:
>
> > This adds a new driver for the Analog Devices INC. AD4030-24 ADC.
> >=20
> > The driver implements basic support for the AD4030-24 1 channel
> > differential ADC with hardware gain and offset control.
> >=20
> > Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> Hi Esteban,
>
> Just one thing in here that actually matters. Question about scaling of
> the common channel.  The others I could tidy up whilst applying if
> nothing much else comes up.
>
> Jonathan
>
>
> > +static int ad4030_get_chan_scale(struct iio_dev *indio_dev,
> > +				 struct iio_chan_spec const *chan,
> > +				 int *val,
> > +				 int *val2)
> > +{
> > +	struct ad4030_state *st =3D iio_priv(indio_dev);
> > +
> > +	if (chan->differential) {
> > +		*val =3D (st->vref_uv * 2) / MILLI;
> > +		*val2 =3D st->chip->precision_bits;
> > +		return IIO_VAL_FRACTIONAL_LOG2;
> > +	}
> > +
> > +	*val =3D st->vref_uv / 256;
>
> This is a bit non obvious.
> A comment on this scaling might be good to have.
> Particularly the lack of / MILLI
> (I think that's a bug?)

Yes I think that should be:
``
*val =3D st->vref_uv / MILLI;
*val2 =3D 8;
return IIO_VAL_FRACTIONAL_LOG2;
``

So I guess that requires a V4. I will address the other comments there.

Thanks for your time,

--=20
Esteban "Skallwar" Blanc
BayLibre


