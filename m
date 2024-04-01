Return-Path: <devicetree+bounces-55184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBF2894670
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:17:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 275B7282832
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A355F54FB1;
	Mon,  1 Apr 2024 21:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qRIqM2kW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEBC54F8A
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 21:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712006217; cv=none; b=X0Jybefv35WmviEGb1I/T3khRmMzlgGeTy0kfVME2kIJxapE/x41lIFFf+/P5yQL7ibb3Yt/cjYjnIvVjjbpzzboMafWBF2W5p2QahV6uwRQujW/XvnloEGZ3ghQ0FnL0BEWhSQ+0CXtZneqC6VpyHwfsrtIXi4HOs/zGMTh5Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712006217; c=relaxed/simple;
	bh=LRIB+IlQyiZJucvH3luhNQ5xpEz7qQsLM5a02CjHDSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KrsNyPj7mhWBvues8Og1Amogbs/OzVhPA1FBFCzTczLvLktwpw0UacdNKASOriZyardnTEAybIcEAza/4QjuvAY7h4wnIFuvHaZfM1S5808FqnSJdZjZQ1dIRTBpKXRoKGy00sKOnyzhyKNUqNzwYAzwZO3xPu8L6d4bWj/mw7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qRIqM2kW; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d82713f473so5673411fa.3
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 14:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712006212; x=1712611012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V7IJ6bTDAFU3LIbdvbyl4a/Q/nTpdUPDNMP+Qrjtk6c=;
        b=qRIqM2kWsIsHCQTrQAlqZciEm1PI2SYvSsGqXDSOt+aF0fzKjxFR2mIsnWz9PwQL3w
         bTCKMA/RoOmuTe04CoAZXe8cYwqHmw20x1nNjoRFlurq4kB0TwYahdCeBFPFygSchyKa
         NZxndGGwV+ATMoEBWwCuZkGPMkscb/LKBbtmLyycTwFNKiIqdtXULUW+I+XFuhRXLcnF
         6ZnEtt8O5cQTZOz0E2yJGPhDivZY3v0TaLbfih6oCYlCToivbU+UiFOWo/Peebert6at
         k0T6O8ywLHqL8bCCWiDwY8V6n9b6HHwelGVKtoAMJ9FzK4DPcgd3XpbSPktE7cjmVpCf
         hBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712006212; x=1712611012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7IJ6bTDAFU3LIbdvbyl4a/Q/nTpdUPDNMP+Qrjtk6c=;
        b=KTlXH1YiLTUfrLOgZzysfBXfsseBD4VzhUusgN7Hiio2ICbrXmTK6Z2fTcPhpmsALk
         nBIJ6dPf+U034lQp4LE7Eldfh9yGLe6lGZbWijLGItmCQNZWl3GbikgeTfRrWnxMorEh
         Li15REEPpskBAAR3PQ5eB0bWh9QJu2gO44ev+ijYTTVF1g2LOWxKX4Nhr9Y62x4q0+0s
         HfEXYYCKsoAGLRd1Ph3B9bDeZmNes05IsrS8Y1k4Vmztg+ZB9ZgF+2+U1iDK9BS/5dx3
         nYxsItLslvgLPyFZazoMJ+m3Qs+7zaCfBnIeJVqrJKCkLVnCQS01r0xJegjz9mDZZXUT
         0VbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRV4X1Oz259WqDA+c+eko1COIkryvKEo2wBvsRo6DZ02jlh0fj2403higvu1ULogWO7cjQBRoLDC8wCrocm1tRWskFVhUkpJ82vQ==
X-Gm-Message-State: AOJu0Ywo2ArOv3mQvuIl2xObeckCUOrYCKN62uQqowpfT68C63kYgK/h
	lyoZn1naZAm2c6Sn0Zmd531euQqZNg2LsASXwpVELz8l9v4+5OxWYn7n8/ats8YbG585g3lVGCY
	x2E5NoINomCN5UZpeUH4vfVHPrbaJK4dGQu4jMA==
X-Google-Smtp-Source: AGHT+IF+zrcKfWk2kOPKYiAPiiHaME+SrZnrnzl8M8MqT2GbO3PJ/dSLjODI5cHAlocFRGgyaRTtIScCdWLP55GgbLg=
X-Received: by 2002:a2e:9157:0:b0:2d6:a73f:234e with SMTP id
 q23-20020a2e9157000000b002d6a73f234emr8122196ljg.11.1712006212189; Mon, 01
 Apr 2024 14:16:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-1-34618a9cc502@analog.com>
 <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
In-Reply-To: <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 16:16:40 -0500
Message-ID: <CAMknhBGVuMSg+OpS5QTLWi9vA=Xa33AJ+cVS8ZCDyKsAVEe-ww@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: adc: ad7173: add support for ad411x
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 2:37=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
> <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >
> > From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >
> > Add support for: AD4111, AD4112, AD4114, AD4115, AD4116.
> >
> > AD411x family ADCs support a VCOM pin, dedicated for single-ended usage=
.
> > AD4111/AD4112 support current channels, usage is implemented by
> >  specifying channel reg values bigger than 15.
> >
> > Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> > ---

...

> > @@ -125,10 +141,19 @@ patternProperties:
> >
> >      properties:
> >        reg:
> > +        description:
> > +          Reg values 16-19 are only permitted for ad4111/ad4112 curren=
t channels.
> >          minimum: 0
> > -        maximum: 15
> > +        maximum: 19
>
> This looks wrong. Isn't reg describing the number of logical channels
> (# of channel config registers)?
>
> After reviewing the driver, I see that > 16 is used as a way of
> flagging current inputs, but still seems like the wrong way to do it.
> See suggestion below.
>
> >
> >        diff-channels:
> > +        description:
> > +          For using current channels specify only the positive channel=
.
> > +            (IIN2+, IIN2=E2=88=92) -> diff-channels =3D <2 0>
>
> I find this a bit confusing since 2 is already VIN2 and 0 is already
> VIN0. I think it would make more sense to assign unique channel
> numbers individually to the negative and positive current inputs.
> Also, I think it makes sense to use the same numbers that the
> registers in the datasheet use (8 - 11 for negative and 12 to 15 for
> positive).
>
> So: (IIN2+, IIN2=E2=88=92) -> diff-channels =3D <13 10>

Thinking about this a bit more...

Since the current inputs have dedicated pins and aren't mix-and-match
with multiple valid wiring configurations like the voltage inputs, do
we even need to describe them in the devicetree?

In the driver, the current channels would just be hard-coded like the
temperature channel since there isn't any application-specific
variation.

