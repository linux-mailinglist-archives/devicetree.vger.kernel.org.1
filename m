Return-Path: <devicetree+bounces-25272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7EC812CFB
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 350BDB21036
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9FF2F508;
	Thu, 14 Dec 2023 10:34:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vOzLXNTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D5E2106
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:34:04 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c9f9db9567so91081371fa.3
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1702550043; x=1703154843; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jieZx/AXpom3bErHLcK60JjhYab1bb2+SJHB9cQU37w=;
        b=vOzLXNTZeaAVx/u1DxhVJIKhoywGnideSjpCb8AJ9Tk8d47wVT9s1+P0gGYRCrcDvZ
         iY9UGOVNmO9fo50EFud+ZVO+CHwb4DJDUDdqKqkdjTtPWq2BXfpLA+eiEWNy+eQ5j7oY
         OEKiIkjYXHVWs3BLgqcfm03RZh1d722cr4wFBa5vyWs8CHmzmgpjatodsMtWKV7qqgqM
         cB+Y7PD7F2CdLPyYl36zfCpYPV3qVGPCx6dHEb68hzUCMDrXqLoOtVpkS0dMDh7GE7qU
         rST47BIJYxqKCB8XWsGDl4PW/udY6BEDA4zd1FScuTtsjJ3Trndw7xAgxYJ/B8DAkhhP
         d96w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702550043; x=1703154843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jieZx/AXpom3bErHLcK60JjhYab1bb2+SJHB9cQU37w=;
        b=HPD7GgbYHA76u4G7kSryh6/3oNeOD89grdPR8en92pJiUvnO66EZrkIXOdeF+2bk1f
         oD0nSCGy0Q78UBIY7ZA2ygTv5IK1cdUl+uMMwq4bDeMZLTICssVtCF2UvWDpXOXytFeZ
         Tt1t9HoXenDTMRL747teSACCJsre9iS6S5Cciw6tsVaXL6j5cU95ijYwwysHPomt/ysk
         ccT7z87lV/zW2SIML45OPW5aOL1LBNBErW10GCLlU8INW62JDNB9iFEblORsQc8bpG63
         h8HbBgnlxsu8Ajtzckpsl2uQs5tjMdIJ9clBSYziHFeMKCQUn9YXzTFCuHKEKmOPEyxi
         edSA==
X-Gm-Message-State: AOJu0Yz+T4jrIe4PxAblU1+tS1oA7YFGdAB+od1bA/Zu8GaisMYYuqQY
	y82wwdDBcpXwyN38e/unaWEhrDx9emFM+4DVt+/97w==
X-Google-Smtp-Source: AGHT+IGiCCuSzmWXtjRYspFENqemA9tUv5tkpUhhLZW/fT4cD2bNWTAw8cgvaZtoOoaF+rucv/6DBQ/IapB+6khDuBI=
X-Received: by 2002:a2e:9d93:0:b0:2cc:42ac:1d52 with SMTP id
 c19-20020a2e9d93000000b002cc42ac1d52mr440015ljj.45.1702550042860; Thu, 14 Dec
 2023 02:34:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213-ad7380-mainline-v2-0-cd32150d84a3@baylibre.com>
 <20231213-ad7380-mainline-v2-3-cd32150d84a3@baylibre.com> <20231214101415.0000060c@Huawei.com>
In-Reply-To: <20231214101415.0000060c@Huawei.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 14 Dec 2023 11:33:51 +0100
Message-ID: <CAMknhBF9GtbOP_M2q8DrrMOePFOaQzGxqcS2P8OHjtGN-Z27Vg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] iio: adc: ad7380: new driver for AD7380 ADCs
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, 
	Stefan Popa <stefan.popa@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 11:14=E2=80=AFAM Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:
>
> On Wed, 13 Dec 2023 05:21:20 -0600
> David Lechner <dlechner@baylibre.com> wrote:
>
> > This adds a new driver for the AD7380 family ADCs.
> >
> > The driver currently implements basic support for the AD7380, AD7381,
> > AD7383, and AD7384 2-channel differential ADCs. Support for additional
> > single-ended and 4-channel chips that use the same register map as well
> > as additional features of the chip will be added in future patches.
> >
> > Co-developed-by: Stefan Popa <stefan.popa@analog.com>
> > Signed-off-by: Stefan Popa <stefan.popa@analog.com>
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
>
> Just one additional comment.  I 'might' sort both this an Nuno's comment
> if Mark is fine with the SPI and no on else has review comments.
> Feel free to send a v3 though if you like ;)
>
>
> > +/* fully differential */
> > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7380_channels, 16);
> > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7381_channels, 14);
> > +/* pseudo differential */
> > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7383_channels, 16);
> > +DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL(ad7384_channels, 14);
> > +
> > +/* Since this is simultaneous sampling, we don't allow individual chan=
nels. */
> > +static const unsigned long ad7380_2_channel_scan_masks[] =3D {
> > +     GENMASK(2, 0), /* both ADC channels and soft timestamp */
> > +     GENMASK(1, 0), /* both ADC channels, no timestamp */
>
> https://elixir.bootlin.com/linux/v6.7-rc5/source/include/linux/iio/iio.h#=
L567
> See the comment (added recently!)

I did see this comment but this is already sorted in order of
preference, so I'm not sure why you are calling it out. Just FYI, I
guess?

>
> Also, if I remember how this works correctly there is no need to include
> the timestamp in the mask.  We do special handling for it to avoid having=
 to double
> the number of provided masks.  The details being that it uses
> iio_scan_el_ts_store rather than iio_scan_el_Store.

Indeed. I've been working ahead on adding more features and noticed
this. So we will need to find a way to say that we the timestamp
should not be allowed under certain conditions. But that will be a
discussion for a later series.

>
> So as you have it I think you'll always end up with the first entry
> and that will include a bonus bit that isn't a problem as it will match
> anyway.
>
> So just have the second entry and 0.
>
> Jonathan
>
> > +     0
> > +};

