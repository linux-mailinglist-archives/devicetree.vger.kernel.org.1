Return-Path: <devicetree+bounces-225753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E6DBD08D9
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:45:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0569188C862
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B3E11E8836;
	Sun, 12 Oct 2025 17:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ka0NkPLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35EB22097
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760291148; cv=none; b=iV6e5uN11NY6D7mHUe0/FXHR5xXKxo4gA9ywEVWoWy3v7Gjaj2H563mKpnKa/vf6Qxc1phcPE7v74xA9kONS3zl2JmW2OuFqby8wr07pRVMpeVi8eemH64clkUSv8rlc8c012vfnLdvPvGXadIkVwmT6GueJDI0sneTibSl+2M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760291148; c=relaxed/simple;
	bh=D5BK8B0NU2EopHQqEaRJxhQr89B1+JS6g0L289RnUQg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZ4/u/Ke0A3q4LogSdjLEXYsSIFyMe/WvejMrmq2QaNiPxIz6OUgA75iZmWlG8xe2yfPbDGhkzFcksRfEosUCEQd4PWN8TUSv06Falxi/2EAzF8VJtVrp1lW5urgT3sE3p4QxDdCwQAxGatliQO3Wh9YEcS3boBOZ9sPxM2UteQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ka0NkPLC; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b50645ecfbbso715042666b.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760291145; x=1760895945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVVS7MY2y3fGvyZGsfOK1XY2WByneR6Hz9CaKmeoDxs=;
        b=ka0NkPLC7QA5VPTyj12pWiRTI39UVrAZQs9hBGLqgxSgN89nIqrVNU+FSx05IEDeS0
         03NUyvq8odErlkeSsS7D2T/FgqI7691lHJN5kAbyl/Ud+/TT5gTj4Kz9nTG884hyF6Dx
         khCqjcl1Zw+wPs//TocSbqvjnxUDtMo55DVJe0moMdwE2gDpfLLIfZde0+Bf0W16d/+u
         pjtCh9HgydYd9pB1VQkeJpS339Wt6hyzOM4UhNs0efkpNB41rb0Du+IVyE9NBgc7h5j1
         TOdlSiOLTbrf4zZoUBP2GPLa8A82C2IjLJO7t3+malzWLNxuVXTwmBwXox1btsfbi+F6
         Mk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760291145; x=1760895945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jVVS7MY2y3fGvyZGsfOK1XY2WByneR6Hz9CaKmeoDxs=;
        b=gQZ8e5cq5n7jcESBK73MfY0AEQI51AXfxGPyAaRI4nA438fvIRBUmvwfBAz6NOisTo
         9Y/1qYNHEjiXmm0DvIvKK11xXQcRc5T1NZfsqtYjPR7KLZcwn6v+/X8Hfi2dJclcvdT1
         tx2bIkK6LwGm7+eaCXROsrPbR5vIqf5vZXBJRIC8acnZ37qwbiA5binnwn15UtF6eI1l
         XltdxLxV8NGT4tW6mN6h9HJb5huQT+buJTNW3ZtAv6r/G9LHhEBW03Fsvdo6WmChCuHB
         myRLGtLt6RximMUFoCtnUbI76J14SMstkTXOkOC6u7Inr1RMEL14w8LLsLcjHl5b2ZXA
         jpcw==
X-Forwarded-Encrypted: i=1; AJvYcCVeey2f9a7z6SN/bN7B1+bqroy3kO9xRzceH/e+l1iUXoAcjieBixIs7EdZr0tOB8P10mHn6p6JryP/@vger.kernel.org
X-Gm-Message-State: AOJu0YxicwmTjzpY0w+87aNilyGeyybjtS1/KNrCxYFmpn1C3R+e5x3S
	7iX7ph3tVQp3AJo2CifDSdtNA4MRHLtzGXg9jl7g1lqrn46yoEEse8bxc9m/RhF27frRRWqIRTZ
	9QZSj/Z1c8tc/zhc8YcoDk+ojwcFpmyo=
X-Gm-Gg: ASbGncsZW7oNwf7tCCuqOtkVw641sqgHrq6NNvY0n2BLVUTkKmVPT0c6xLYw5iAho2a
	HelpSnRiTeqx6Toxde6587r4ppWWRGFYl6FgW9EHFG8puw4EKkAlZRktfWh3YOe4SanVdvoI1ds
	8f5Ht/HCIGgTyTUXWHG1yiXKh+JIaQZeKxchgbRaVAw/kx5fAjG0FzcCfPMy1SLVFo010/6S7rF
	M+PVrV5GL3/gRsvnIcRFCIy/SIPr/+ASpWG
X-Google-Smtp-Source: AGHT+IFqAlSZ4G5Zfr1N3Wyc8+kqL+mT1HECYBOXEwK8MLGqT83cRLC6YJtIP3a6NvJvLSD60ZWBgxMixMe0z3kBL8o=
X-Received: by 2002:a17:907:948f:b0:b32:2b60:eed with SMTP id
 a640c23a62f3a-b50abfd6cd0mr1786473266b.44.1760291144980; Sun, 12 Oct 2025
 10:45:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-3-raskar.shree97@gmail.com> <8d4fc754903c206ff989fc92cde2625b93b1586b.camel@gmail.com>
In-Reply-To: <8d4fc754903c206ff989fc92cde2625b93b1586b.camel@gmail.com>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sun, 12 Oct 2025 23:15:33 +0530
X-Gm-Features: AS18NWDtBgQ0Qu4QY3B1lkMGZORJNqmOetvx30ZG9RDJN7OjAAdaPuVEHIdNOKs
Message-ID: <CAHc1_P6w4mywfs38ORsmFyvcr9aBiLLCetquJgfevWqShg9=MA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: health: max30100: Add pulse-width
 configuration via DT
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 9, 2025 at 4:21=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.com>=
 wrote:
>
> Hi Shrikant,
>
> Thanks for your patch.
>
> On Wed, 2025-10-08 at 08:47 +0530, Shrikant Raskar wrote:
> > The MAX30100 driver previously hardcoded the SPO2 pulse width to
> > 1600us. This patch adds support for reading the pulse width from
> > device tree (`maxim,pulse-width-us`) and programming it into the SPO2
> > configuration register.
> >
> > If no property is provided, the driver falls back to 1600us to
> > preserve existing behavior.
> >
> > Testing:
> > Hardware: Raspberry Pi 3B + MAX30100 breakout
> > Verified DT property read in probe()
> > Confirmed SPO2_CONFIG register written correctly using regmap_read()
> >
> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> >
> > Changes since v1:
> > Use FIELD_PREP() and define a pulse width bit mask.
> > Initialize default pulse_us before property read.
> > Use dev_err_probe() for error reporting.
> > Make pulse_width signed to handle negative return values.
> >
> > Link to v1:
> > https://lore.kernel.org/all/20251004015623.7019-3-raskar.shree97@gmail.=
com/
>
> As mentioned in the bindings patch, this is not place for changelog. With=
 that
> fixed:
>
> Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>
Hello Nuno S=C3=A1,
Thanks for reviewing my patch.
I have removed the changelog from commit message and shared the v3
patch for review.

Thanks and Regards,
Shrikant
>
> > ---
> >  drivers/iio/health/max30100.c | 35 +++++++++++++++++++++++++++++++++--
> >  1 file changed, 33 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/iio/health/max30100.c b/drivers/iio/health/max3010=
0.c
> > index 814f521e47ae..50cd4fd13849 100644
> > --- a/drivers/iio/health/max30100.c
> > +++ b/drivers/iio/health/max30100.c
> > @@ -5,7 +5,6 @@
> >   * Copyright (C) 2015, 2018
> >   * Author: Matt Ranostay <matt.ranostay@konsulko.com>
> >   *
> > - * TODO: enable pulse length controls via device tree properties
> >   */
> >
> >  #include <linux/module.h>
> > @@ -54,6 +53,10 @@
> >  #define MAX30100_REG_SPO2_CONFIG             0x07
> >  #define MAX30100_REG_SPO2_CONFIG_100HZ               BIT(2)
> >  #define MAX30100_REG_SPO2_CONFIG_HI_RES_EN   BIT(6)
> > +#define MAX30100_REG_SPO2_CONFIG_PW_MASK     GENMASK(1, 0)
> > +#define MAX30100_REG_SPO2_CONFIG_200US               0x0
> > +#define MAX30100_REG_SPO2_CONFIG_400US               0x1
> > +#define MAX30100_REG_SPO2_CONFIG_800US               0x2
> >  #define MAX30100_REG_SPO2_CONFIG_1600US              0x3
> >
> >  #define MAX30100_REG_LED_CONFIG                      0x09
> > @@ -306,19 +309,47 @@ static int max30100_led_init(struct max30100_data=
 *data)
> >               MAX30100_REG_LED_CONFIG_LED_MASK, reg);
> >  }
> >
> > +static int max30100_get_pulse_width(unsigned int pwidth_us)
> > +{
> > +     switch (pwidth_us) {
> > +     case 200:
> > +             return MAX30100_REG_SPO2_CONFIG_200US;
> > +     case 400:
> > +             return MAX30100_REG_SPO2_CONFIG_400US;
> > +     case 800:
> > +             return MAX30100_REG_SPO2_CONFIG_800US;
> > +     case 1600:
> > +             return MAX30100_REG_SPO2_CONFIG_1600US;
> > +     default:
> > +             return -EINVAL;
> > +     }
> > +}
> > +
> >  static int max30100_chip_init(struct max30100_data *data)
> >  {
> >       int ret;
> > +     int pulse_width;
> > +     /* set default pulse-width-us to 1600us */
> > +     unsigned int pulse_us =3D 1600;
> > +     struct device *dev =3D &data->client->dev;
> >
> >       /* setup LED current settings */
> >       ret =3D max30100_led_init(data);
> >       if (ret)
> >               return ret;
> >
> > +     /* Read pulse-width-us from DT */
> > +     device_property_read_u32(dev, "maxim,pulse-width-us", &pulse_us);
> > +
> > +     pulse_width =3D max30100_get_pulse_width(pulse_us);
> > +     if (pulse_width < 0)
> > +             return dev_err_probe(dev, pulse_width, "invalid pulse-wid=
th
> > %uus\n", pulse_us);
> > +
> >       /* enable hi-res SPO2 readings at 100Hz */
> >       ret =3D regmap_write(data->regmap, MAX30100_REG_SPO2_CONFIG,
> >                                MAX30100_REG_SPO2_CONFIG_HI_RES_EN |
> > -                              MAX30100_REG_SPO2_CONFIG_100HZ);
> > +                              MAX30100_REG_SPO2_CONFIG_100HZ |
> > +                              FIELD_PREP(MAX30100_REG_SPO2_CONFIG_PW_M=
ASK,
> > pulse_width));
> >       if (ret)
> >               return ret;
> >

