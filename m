Return-Path: <devicetree+bounces-138976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51424A13725
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2AD0162029
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 09:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689591DDC00;
	Thu, 16 Jan 2025 09:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xHHmWMAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75721D63E6
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 09:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737021418; cv=none; b=nKW3EZEj4RFCkpNa1/8I7nmSC3V188Cu3V6voUocumPjCBrc5y3aVRsOKUNuuZUNic7uK3xvX5DCTaSaViXrlC5vAN7OWtFDpBvNc4SrtJfQOJtj9lHonmx9UmvHiGX3AlNVRajx4r7pQvNAigxpV+DowHTytnY/dcYYWD1N7nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737021418; c=relaxed/simple;
	bh=bSTSw17VRWxk/xy9xUiK8S7/og3Vs5qKzAmU3LPaFJg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=YfToM9O8N9XrBJZnpQ8QUGmLWYfJ1DXaIO6N+Q6sfFgvCZRavJFnq51KbdgrIRAO2XurH9v2VFyZcSpaOWwhiSp2QEDga4RBhnfNf1v+jKgDI/YjuFTRO460bxf7DM250AgmehD7y3ynUMlhJffONulnd/mCLiTu6GYFfDfu/jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xHHmWMAJ; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43634b570c1so4142755e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 01:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737021414; x=1737626214; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uSHdPWcKmGVbVZP59aw95qXWV3lI61LHVfnVxsl+FKA=;
        b=xHHmWMAJGVTWl/1NjISnu6Gx3ZoEERkBhguwvjscYlixUlfNj3HmKwNi9WcIiHhZ9B
         ehcIMC61DYP0hihyrTeOHNInlgFtioNL+g3OIJxcPLkIQ5QYJceGW+bDThOwKZMFb+/y
         nvygLbzxSpdO7KLBjFY3opzSZEUJahCz9KA3bGws8UMftpuz9BjAp0WgmNNzkizqXn/d
         XJc+jUdlObyEKxmMjkyVCUaVINIwlW2PP1COrzCfGq/RXjfhd7H3nJBMgy5dsU/d6vce
         n0CQyrNDLodODqYAciP3S0hY06m/IXoJS0ZjYWh9VcUyd0VFpY2tKxKXnanIA1Z0XCgB
         yt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737021414; x=1737626214;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uSHdPWcKmGVbVZP59aw95qXWV3lI61LHVfnVxsl+FKA=;
        b=DeIss96LV89t5RK5/rLxo7k5ar9q8aqzJuQHt4pJmdrQmuTZQlx0HhEWOAZwggtIzn
         v7M8VtlCjkDgj9/4Sbdu7n4py9xLznilzz387FS2So6E7eXmzYlfDMlZcIrgauHs6w8a
         /g9tAML0AkyNyMQQNK1Eskz96pdpgUoj/CmiOBLXWmwnMu3bJEAKZJEZG52jFhHo1e36
         R8uIQcvEpnubCMzzR/6lvJO0WpzMmessEKMSOr9LYeLLclQUO8G2avSP74porOL756Kr
         RLhUznVR6kjREbK+iG8BFDNScbUUhprCHuEffnS0/iR3fThbniyPAfemN1tkPpVnYmzm
         63yg==
X-Forwarded-Encrypted: i=1; AJvYcCXhP6SKo7AUZRp3u0DWuz4FOiIhqHiIhfccC3z5RTdUgv1JFq59sKKbORxpSWu8lKAqHRD/WSuYn4gU@vger.kernel.org
X-Gm-Message-State: AOJu0YzoyuBXKBhcUw97WZMHPf3Wp1UTXCzHR93/4zayJ1lqiQivbFnj
	5p0qCRFGZqzTA2ks0VJ1OfVOftVLdkPHNJmrbHS9EJl5+CG1ITxHXhbkrSJU5eU=
X-Gm-Gg: ASbGncsvZosJxYRL9beJOZKX7gTZ4Nsz6xImCAZylA8z3o9OeMaDwysVmTCKr+Hsl6s
	hbv1FfTGUpGIdVduwflwJEYqXZwM4B03sClo5hWm1IIK63m71UjRBnP8P8WDXNh8Ez3M6tV1zO7
	AnDIpxsi0ckN4GhTZVIEJm4mOYzvGWK9AjqiJEMa2XoljNszEM3MYHuNzLTMf2HskNh2sp2b5e5
	2tc3cjyFsRGznIgMYXwJ851SYEg7FLxX6WeYR41kc3t6InsTJkZtX/SQ/7rBxEEWRiy4h+N56uQ
	xhBblPMiGz3hRIb8fIbNSK98koG3mE6kVAAvUeAThzU=
X-Google-Smtp-Source: AGHT+IGDFKX1Ve2idO8rktH4XrAM8D4PejdzCkU13Mh4eAnD5iUv/2BgriTku9Ruht6b1WvCpXNR/w==
X-Received: by 2002:a05:600c:3485:b0:436:fbe0:cebe with SMTP id 5b1f17b1804b1-436fbe0d10cmr156292295e9.30.1737021414316;
        Thu, 16 Jan 2025 01:56:54 -0800 (PST)
Received: from localhost (2a02-8440-9206-2584-91c4-ce73-527f-308a.rev.sfr.net. [2a02:8440:9206:2584:91c4:ce73:527f:308a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74e5e69sm52765865e9.37.2025.01.16.01.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 01:56:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Jan 2025 10:56:51 +0100
Message-Id: <D73EP8AHW10K.9JIP74RQOHU4@baylibre.com>
Cc: "Lars-Peter Clausen" <lars@metafoo.de>, "Michael Hennerich"
 <Michael.Hennerich@analog.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
Subject: Re: [PATCH v2 2/6] iio: adc: ad4030: add driver for ad4030-24
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Marcelo Schmitt" <marcelo.schmitt1@gmail.com>
X-Mailer: aerc 0.18.2
References: <20241219-eblanc-ad4630_v1-v2-0-f36e55907bf5@baylibre.com>
 <20241219-eblanc-ad4630_v1-v2-2-f36e55907bf5@baylibre.com>
 <Z2eqOSN2Uk8SfTq1@debian-BULLSEYE-live-builder-AMD64>
In-Reply-To: <Z2eqOSN2Uk8SfTq1@debian-BULLSEYE-live-builder-AMD64>

On Sun Dec 22, 2024 at 6:57 AM CET, Marcelo Schmitt wrote:
> Hello Esteban, some comments inline.
>
> On 12/19, Esteban Blanc wrote:
> > This adds a new driver for the Analog Devices INC. AD4030-24 ADC.
> >=20
> > The driver implements basic support for the AD4030-24 1 channel
> > differential ADC with hardware gain and offset control.
> >=20
> > Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> > ---
> [...]
> > +
> > +static int ad4030_spi_read(void *context, const void *reg, size_t reg_=
size,
> > +			   void *val, size_t val_size)
> > +{
> > +	int ret;
> > +	struct ad4030_state *st =3D context;
> > +	struct spi_transfer xfer =3D {
> > +		.tx_buf =3D st->tx_data,
> > +		.rx_buf =3D st->rx_data.raw,
> > +		.len =3D reg_size + val_size,
> > +		.speed_hz =3D AD4030_SPI_MAX_REG_XFER_SPEED,
> Is speed_hz really needed? What happens if the controller can't clock at =
80MHz?
The goal was to reduce the speed when reading/writing to a register with
a value like 10MHz. The issue I ran into is that with my setup (Zedboard
with FPGA-based SPI controller) when I chose a speed lower than 80Mhz
the value read are wrong. The whoami check in `ad4030_detect_chip_info`
is failling. So for now, I left it at 80Mhz while I'm trying to figure
out what's going on with the controller
>
> > +	};
> > +
> > +	if (xfer.len > ARRAY_SIZE(st->tx_data) ||
> > +	    xfer.len > ARRAY_SIZE(st->rx_data.raw))
> > +		return  -EINVAL;
>
> Would it make sense to bring register configuration mode commands into th=
e
> regmap calls?
> I mean, to do the ad4030_enter_config_mode() transfer here and the
> ad4030_exit_config_mode() at the end of this function.
> From datasheet, it looks like both enter/exit config mode are required fo=
r reg
> access so why not doing them in the regmap callbacks?
> With that, I think it won't be needed to call register config mode functi=
ons
> in ad4030_single_conversion() and in buffer enable/disable functions.
> Might need implement regmap_config read and write callbacks to properly h=
andle
> regmap_bulk_read/write interface.
Yes, good idea.
>
>
> > +
> > +	memset(st->tx_data, 0, ARRAY_SIZE(st->tx_data));
> > +	memcpy(st->tx_data, reg, reg_size);
> > +
> > +	ret =3D spi_sync_transfer(st->spi, &xfer, 1);
> > +	if (ret)
> > +		return ret;
> > +
> > +	memcpy(val, &st->rx_data.raw[reg_size], val_size);
> > +
> > +	return ret;
> > +}
> > +
> [...]
> > +
> > +static int ad4030_get_chan_calibscale(struct iio_dev *indio_dev,
> > +				      struct iio_chan_spec const *chan,
> > +				      int *val,
> > +				      int *val2)
> > +{
> > +	struct ad4030_state *st =3D iio_priv(indio_dev);
> > +	u16 gain;
> > +	int ret;
> > +
> > +	ret =3D regmap_bulk_read(st->regmap, AD4030_REG_GAIN_CHAN(chan->addre=
ss),
> > +			       st->rx_data.raw, AD4030_REG_GAIN_BYTES_NB);
> > +	if (ret)
> > +		return ret;
> > +
> > +	gain =3D get_unaligned_be16(st->rx_data.raw);
> My impression is that it is a bit odd to handle endianness after/before
> calling regmap_read/write(). Can you try set
> .val_format_endian_default =3D REGMAP_ENDIAN_BIG, in ad4030_regmap_bus?
> If that doesn't help, what about doing the get/set_unaligned stuff within
> the bus read/write calls?
I've addressed that in another email after Jonathan's comment.
>
> > +
> > +	/* From datasheet: multiplied output =3D input =C3=97 gain word/0x800=
0 */
> > +	*val =3D gain / 0x8000;
> Use a define to give a name to the gain constant?
Sure.

Best regards,

--=20
Esteban Blanc
BayLibre

