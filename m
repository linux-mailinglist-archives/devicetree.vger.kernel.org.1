Return-Path: <devicetree+bounces-137497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3420A093AF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:39:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF72D3AAB1A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7381821128B;
	Fri, 10 Jan 2025 14:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HjYkbY5B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B75321127F
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 14:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736519974; cv=none; b=DaQKzFvzwYaFzwFufZ7KWd5cmX9jT+7rAE1UG51gbZ53XBqIbyrJN7HG5ismwPV5kh2TN9bV9BFE8xcA5xQ/COYwajgv2GfoOjFCQ9xFzpL7kwbe5AXgOryhgPlA7UIjVhwpcLznws8CtkAYT6NCoGHMcnGbcGRw99fN3BQVVB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736519974; c=relaxed/simple;
	bh=dNcVzZTesBokg/jzESekrq3gcdde//x7yKqO6CtNHGM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jDg9sOAOPytgsPig3aqOzLoFxu+gUXXAtsv9Y8ziOGnKoF5Ojsn6/vSa7urIyfXZJN0DB7/cjEuhHRVcHQJI+kfnxWWNtA1J7c7IOIXoa+xbPDekpGc0jwODW+y6pHUWYP80PWbfig40J8IFriqeMI2i7+mi1ReORVmrxrNO8lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HjYkbY5B; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4362f61757fso21239455e9.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 06:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736519971; x=1737124771; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvV3AHUuYO6Tr9wrbauX5wDzxdO09agrWxXF+HRfAWU=;
        b=HjYkbY5BRbbMZ0l9kgNjutWDNTtw3NLD825Z+YvjmMW6HodK/yZSECY1R95IoQ4B3v
         upvLo5uJybvtN+tXKso7M+ilEPLQ30XZmoM60B8DXC7rOufKjKHFOEP7eamqgrzPTqzF
         b8jBb0Q+xB2jt2ZnXbZf7i/Mp7S3LpKGGrpPQ6oiplkjDU5RDYXxjeI7m6oFSDzy9qMu
         ti7ZZMgR8Nn05/b62oZOp5pOUAZI0ZEcKAm2dHNULe1ddVYK5hKiOqB+LY1u2XJS7+NR
         qjS8WrEUPPZXcS9FFGXnR2YBr/eIhQaH6NgXYA3TsQfXOPJoxkKc5YzhDVEuYXq5eXzu
         uvjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736519971; x=1737124771;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yvV3AHUuYO6Tr9wrbauX5wDzxdO09agrWxXF+HRfAWU=;
        b=oeaG59ATHGEdbVlFS3f1T2BULXbzmIKgTcN+z1rIli5ZW5cSnL26UxJIe4pzFtMueF
         lf46Lnk5D9/YWhx0rM+p3bqP7BReHWK009s3aG9CB9/PdUQjm0LlUkOufZ+Y+zTqkcHq
         QiiQa/nL28P7GMEW5PNHw5+MCZmJrWylnGvQ6DLZT5j7ENcyOSVjw0cLVw1IarG9VkX9
         uzlP4Fh6N5VS1McqxTbR38J7si9qtUNe3DGXR7xUEs95P8IJzZCQjlQ3xs3IGBgY78Z5
         LcieGpLqvuTY3ERmLdPkuQmc4lSXiNg4xF+UeKtLheCOasRukIDV8q2JeKjFyNtvFcjq
         AGvw==
X-Forwarded-Encrypted: i=1; AJvYcCW9xwPJ9AuCUVmrKXUPU/VkBPGQQpfaknRyNXfIzMeVTfzak6I4CH66LV3a6pBVt07H7JyoMu7LFCx0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6uy7e5AvGrnoDGPPJtsuFWIWEnlCC9JK2XPepxinrXAJK1gaq
	D9Bcck+VJ/WbNntH4v8+FjNvz0jzBGOTcLf59Mh2Ge+MzsYWeV81BNHr+roRHyk=
X-Gm-Gg: ASbGncvY/WSzQLaEotNwoO56NJZOeUJaQvBMLRJ2PoqKi14mfZFyvofYRW/LOZdgbPd
	xcTT/HJ6xkxEmudkLGm8CWOcmfigQW4BnFpDN99buixPAby9rpNg0LDrjXHNeKENTlFu1zU6KtA
	kZ1oUb/n6PoXL0XiDZL5RnYcBnNX2kDk0x2kxI5lm3IDSNgdJkFToV8DuAajH+CiS551u2/Z94k
	c35OE2oPijUjeelNQPX2EW9js1sOGGZBGZCwWVsJAyKA/yZdC1pHn8=
X-Google-Smtp-Source: AGHT+IFsvuIAj4E6ymt7QQeU2pHWrvkUqe+Ac8WeW/VVn+1zRvvfjuYtDvvzhEKp8rrWDBKxsvfdDA==
X-Received: by 2002:a05:6000:1563:b0:385:f44a:a53 with SMTP id ffacd0b85a97d-38a872cfe40mr8748169f8f.4.1736519970862;
        Fri, 10 Jan 2025 06:39:30 -0800 (PST)
Received: from localhost ([2a01:e0a:448:76e0:cfad:dcf2:8a42:1d83])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d447sm4625706f8f.4.2025.01.10.06.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 06:39:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jan 2025 15:39:29 +0100
Message-Id: <D6YGYCYXJSOF.3BIXI0UPGNNZW@baylibre.com>
Cc: "Lars-Peter Clausen" <lars@metafoo.de>, "Michael Hennerich"
 <Michael.Hennerich@analog.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Jonathan Corbet" <corbet@lwn.net>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>
Subject: Re: [PATCH v2 2/6] iio: adc: ad4030: add driver for ad4030-24
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Jonathan Cameron" <jic23@kernel.org>, "Marcelo Schmitt"
 <marcelo.schmitt1@gmail.com>
X-Mailer: aerc 0.18.2
References: <20241219-eblanc-ad4630_v1-v2-0-f36e55907bf5@baylibre.com>
 <20241219-eblanc-ad4630_v1-v2-2-f36e55907bf5@baylibre.com>
 <Z2eqOSN2Uk8SfTq1@debian-BULLSEYE-live-builder-AMD64>
 <20241223120419.757eadfb@jic23-huawei>
In-Reply-To: <20241223120419.757eadfb@jic23-huawei>

On Mon Dec 23, 2024 at 1:04 PM CET, Jonathan Cameron wrote:
>
> Just commenting on one particular bit feedback. Makes sure to address the
> rest!
>
> > > +
> > > +static int ad4030_get_chan_calibscale(struct iio_dev *indio_dev,
> > > +				      struct iio_chan_spec const *chan,
> > > +				      int *val,
> > > +				      int *val2)
> > > +{
> > > +	struct ad4030_state *st =3D iio_priv(indio_dev);
> > > +	u16 gain;
> > > +	int ret;
> > > +
> > > +	ret =3D regmap_bulk_read(st->regmap, AD4030_REG_GAIN_CHAN(chan->add=
ress),
> > > +			       st->rx_data.raw, AD4030_REG_GAIN_BYTES_NB);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	gain =3D get_unaligned_be16(st->rx_data.raw); =20
> > My impression is that it is a bit odd to handle endianness after/before
> > calling regmap_read/write(). Can you try set
> > .val_format_endian_default =3D REGMAP_ENDIAN_BIG, in ad4030_regmap_bus?
> > If that doesn't help, what about doing the get/set_unaligned stuff with=
in
> > the bus read/write calls?
>
> Unless these are all 16 bit registers (in which case push it into the
> regmap side of things), then a bulk read is not implying the registers
> read are one value. They could just be a load of registers next to each o=
ther.
> As such the regmap core won't touch them and endian conversion here, at t=
he
> layer where we know they are related is the right thing to do.
>
> It's  not worth dual regmap stuff just because we have a few pairs of
> registers.=20

In fact I've already set `.val_format_endian_default =3D REGMAP_ENDIAN_BIG`
but it has any effect as registers are 8bits long.

Most of the time registers are not related to each other. It's only for
offset and scale that multiple registers form one number

--=20
Esteban Blanc
BayLibre

