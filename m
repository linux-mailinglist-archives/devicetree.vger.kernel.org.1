Return-Path: <devicetree+bounces-68171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA98CB075
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 16:29:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6B26285D21
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06AF12FF89;
	Tue, 21 May 2024 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jd4QOY9r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D583F1304A9
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 14:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716301749; cv=none; b=LaIH/vs5Bp4nPdNCKXtwN0hELwaHStZJU2Sw7BGC2LchgAjFCAwagMDnXKiWpArmEMpC4Yi1HjL71xE6rwo8K/GFloln/7//4yDI0VW1Jlvs0rCvKrkQhPDpasE+/rxkR+pFgiS83ajhQHaO+sbssbvpdkefTXVqawysPHD7eGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716301749; c=relaxed/simple;
	bh=6bvs+mRk3MZLeYn6zI390ca29lN3sm0nzPJxk6NmGEQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewQIilV9eBx03AoxLNtE08xOsjxoJeU2U/HKiGffaw+sQYBZc+d0LXL+VFHzqqkKWZ+pV9PXFHW6RmkPavku3y0lV0QsYNLBX7GfVuCFN5vDaMlykwwrS6jRcKzJozstHhFHDRVaqTGvdt/1UHelmSvXn8DoqJopeEqv5TQlzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jd4QOY9r; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51fcb7dc722so4987132e87.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 07:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716301746; x=1716906546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r4ZT3mKlqYVZ6mtPyitnpgVHXRH+or+NPpHybAp4AHg=;
        b=jd4QOY9rlOVYIG5PeJSaEYcBKtfKIK7cVt9XOuooRDdbEEURRQiuo3CnXxH3Kdw2AU
         ddT+qZTIckAl+7FuB2qlal8wFwiyOLEVej7UsCDPWTFXK2a9bzRzpn6R0L46V7lBKnMv
         YxBODTlQ0EOYzc4ElmCExwDmddVDWGBjxNP1Jq4SSrheeiKJfHOQIeMrwSlq0OSj55SC
         SWS1Qs3jnOtn8Zp7/Ure431WQVwweQZBObk297Z68X/r6SZKQDhB7d/8te0S0bkDWtWs
         sKoGXWI5+30AWYZGJHDOX/z5y80gdr01tzlynKdRQZPrD9qW9Ox3bZ0vVG9ZGnBpwqx2
         tH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716301746; x=1716906546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r4ZT3mKlqYVZ6mtPyitnpgVHXRH+or+NPpHybAp4AHg=;
        b=eVKCOQ20abWszdKsMFc5WyelnIUQIv3oA31htm87c2oIuUkVYSd5MGlzYho85iwabQ
         mb29hE9b1d72j5dVqaNQaPDiMN2RSOj4ipu7GIpXv+pmSMAFL+Lw62PCS8ljwgFNOyJn
         P1PFibkc0PFBGneuCRuVoDH+Vvdr5C8TXuR11md5HVKIxffAKuxNWe3/eevlNpC2VPc/
         FcVtCKbKOLxLQX6o+75ZWWsjm0hL/fOThug6b/CscZ67hLV8cuMDytP+9xqtHs1wIu+r
         PyuQCcb7Pvm5LN7Wuw6AcICt3rn6llDV8Hi0uJsBjo2mEA2MNxJkleqnqM0dw+kIFZEY
         sAWA==
X-Forwarded-Encrypted: i=1; AJvYcCWbsVNXbfLHYUOxLkNBQws5bvTb+92CU6LTdOUs2C6NknoixYTzxiLLkzHDc+ruajBdFa1nlUmh48xjIUzqpfBDJo5nlzLfQpYgiQ==
X-Gm-Message-State: AOJu0YwHtRsB1fPTEkKyXrqQr6UPD92awMi7M2suvzooGao7QtQcxuCu
	FYtdiWFZGVMmnq01vIzwcP8VeiaVwySKRo0/Tzii3QQg6sEDH73gcxs7ApQ06jPCPqr7eUjGrG0
	TCM+ZRt1qq0Pwnpn0SVkO5WXP6gNqBGoBk96TFA==
X-Google-Smtp-Source: AGHT+IFX6ZAdS/VDH7ufsE0aYFcD/wjVEgzBDZy20u+xfwOGB8FvOPsKpMddmVaWBdAq8IKQDfFVjfJePYCyYDeQ2js=
X-Received: by 2002:a05:6512:114d:b0:516:be0a:58b with SMTP id
 2adb3069b0e04-524079a820emr3827263e87.6.1716301746060; Tue, 21 May 2024
 07:29:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510-dlech-mainline-spi-engine-offload-2-v2-0-8707a870c435@baylibre.com>
 <20240510-dlech-mainline-spi-engine-offload-2-v2-6-8707a870c435@baylibre.com> <6c5fd2cef9a6412e63f2534243eda37c321ffcd2.camel@gmail.com>
In-Reply-To: <6c5fd2cef9a6412e63f2534243eda37c321ffcd2.camel@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 21 May 2024 09:28:54 -0500
Message-ID: <CAMknhBH9y=tOhHrhBCoMOSSVgZDRbX90cfzqX62m6wLYsKDhNg@mail.gmail.com>
Subject: Re: [PATCH RFC v2 6/8] spi: axi-spi-engine: add offload support
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	David Jander <david@protonic.nl>, Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2024 at 7:27=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:
>
> On Fri, 2024-05-10 at 19:44 -0500, David Lechner wrote:
> > This implements SPI offload support for the AXI SPI Engine. Currently,
> > the hardware only supports triggering offload transfers with a hardware
> > trigger so attempting to use an offload message in the regular SPI
> > message queue will fail. Also, only allows streaming rx data to an
> > external sink, so attempts to use a rx_buf in the offload message will
> > fail.
> >
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > ---
> >

...

> > +
> > +static int spi_engine_offload_map_channel(struct spi_device *spi,
> > +                                       unsigned int id,
> > +                                       unsigned int channel)
> > +{
> > +     struct spi_controller *host =3D spi->controller;
> > +     struct spi_engine *spi_engine =3D spi_controller_get_devdata(host=
);
> > +     struct spi_engine_offload *priv;
> > +
> > +     if (channel >=3D SPI_ENGINE_MAX_NUM_OFFLOADS)
> > +             return -EINVAL;
> > +
> > +     priv =3D &spi_engine->offload_priv[channel];
> > +
> > +     if (priv->spi)
> > +             return -EBUSY;
>
> I wonder if we need to be this strict? Is there any problem by having two
> devices requesting the same offload engine? I would expect that having mu=
ltiple
> peripherals trying to actually use it at the same time (with the prepare(=
)
> callback) to be problematic but if they play along it could actually work=
,
> right? In reality that may never be a realistic usecase so this is likely=
 fine.
>

I guess not. But to keep it simple for now, yeah, let's wait until we
have an actual use case.

...

> > +
> > +static const struct spi_controller_offload_ops spi_engine_offload_ops =
=3D {
> > +     .map_channel =3D spi_engine_offload_map_channel,
> > +     .prepare =3D spi_engine_offload_prepare,
> > +     .unprepare =3D spi_engine_offload_unprepare,
> > +     .hw_trigger_enable =3D spi_engine_offload_enable,
> > +     .hw_trigger_disable =3D spi_engine_offload_disable,
>
> I guess this is what you and Conor are already somehow discussing but I w=
ould
> expect this to be the actual offload trigger to play a spi transfer. As i=
t
> stands, it looks weird (or confusing) to have the enable/disable of the e=
ngine
> to act as a trigger...

It isn't acting as the trigger, just configuring the offload instance
for exclusive use by a hardware trigger.

> Maybe these callbacks could be used to enable/disable the
> actual trigger of the offload engine (in our current cases, the PWM)? So =
this
> would make it easy to move the trigger DT property where it belongs. The =
DMA one
> (given it's tight relation with IIO DMA buffers) is another (way more dif=
ficult)
> story I think.
>

One issue I have with making the actual hardware trigger part of the
SPI controller is that in some cases, the peripheral could actually be
the trigger. For example, in the case of a self-clocked ADC where
there is just a RDY signal from the ADC when sample data is ready to
be read. In this case would the peripheral have to register a trigger
enable callback with the controller so that the controller can
communicate with the peripheral to enable and disable sampling mode,
and therefore the trigger?

