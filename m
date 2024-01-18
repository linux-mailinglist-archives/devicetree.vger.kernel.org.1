Return-Path: <devicetree+bounces-32982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FCC8318D9
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 13:03:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25F7C1C229F0
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 12:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD40C24B39;
	Thu, 18 Jan 2024 12:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="u3HVJ6NV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADE724B46
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 12:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705579395; cv=none; b=HahA1/HTlKjZuDZCWvkDdSemJ3kJG+E0V4jX7VqcIv0youcHn5G6xM/wnz2+b1UwErqZFKThijBPVEVNBoTDuA79YbONEh7rTSMUY/RNokwI1Ys9DD18CnLf3xvpjKxVVQRH0/eHLvJnAWMzvWkExgLDIW5MAFdlm/3gLzjdD+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705579395; c=relaxed/simple;
	bh=/rVbfCtM52Aa3e4soy8vvuD65ASfCfNNLKd8UmuneLM=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=n0Dx7QjVlDGioU1iG73uz1xoCN9UxIC1+v0Z18fO6tzbZLESGAABY+1G5jhXLP1bwRo6elnTKeRFs4ye8J/4kDTuslnDJqHPVkt+WeePvY0tbz9IsfHVupY/WjOfEhP97lvBQ518y/JbX1rU/Nw91u8GgsAnWKSbPWWw0LTrOKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=u3HVJ6NV; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-2109023ccb0so1111846fac.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 04:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705579393; x=1706184193; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vsI0Ch/qVsfOF0d+CdyP4dvR75VDYzMpTXr7yqGicLg=;
        b=u3HVJ6NVPEHqluP8+8hPGp7qcmlPpOypP/Zw8yPFU0br6QQfUU4dd42yrUea6aA9jx
         bx1IZ2U7XKoriliSqJ8Z/UYsadhyfsnhS79lsgkDDpjGMVR5ZPwflCOTpx5+opqQEICi
         sMB4TRJkX7Joy3hrtgTdi/DctQA96V70GjeOr2lFEUtFthP7ao3Xm+v6TnQqTU5LlTaL
         fwtK0Xen5oHudx0gZ504jq3rlvc18e3EdXOafOywl8eZo441xck5C4Od2KZsTlztCk5T
         veIFezKjzE8SbT0rIWC8T0DXNNYC9HE5Sl/CQDPRsp2ZCO7MlvNKz8lk327xjpEaJqjK
         1JCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705579393; x=1706184193;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vsI0Ch/qVsfOF0d+CdyP4dvR75VDYzMpTXr7yqGicLg=;
        b=B+4X95yP9ztPjegK4b+agJiFNm/+EJKxKwfQPoKJo3pD69sexAISbIf3A9yDm6DYye
         +5U1LLmHjM4Yfc8+AQEdIoHDIs8+EleygjC7QLiAyahZ/XbZIj6rgLEgtTSfwYGNTdMm
         emtEu7fI2udo8dsY+1bA0yg+LKXFQ6dhA7j2IjakYasQQszjCbmwQLsReFCmc2odLcAo
         zLwaT3hYRzfDgefC0gznRA/aYlme+A9mVQHT84qbND7C8KzFl2DYW4L4lk1RYY1/FVRH
         S4Igys5k+tprqMIXmU3Caf+0jdvBGpEKq0b+JBFdmI5oSQI4kcKsfHOcGElUj3BrKuId
         Cspw==
X-Gm-Message-State: AOJu0YwxRbf1TXHgOgMe+8XRWKtT2Uekv0THorfzK4OFC+CnjjGzgYw0
	ei+iCHoIPuGi1F0sVCoOPt31hDHIsZQ7Ppukh1bF323E4hQKA/XdzYjuxHlI8IPz4jFWVaYgrun
	Lc4FO5R6jHC8a2k458/KvihPhLiS8QS8spvbRKQ==
X-Google-Smtp-Source: AGHT+IE8N9qNktxvYw54hNeBF0UY0YCK8cdIG4M9iLJUgmHiooG8FBKh/EiZfO7aqwKcqY8/WAxCJrdztrM8b3lgQfo=
X-Received: by 2002:a05:6870:3b09:b0:210:b7f3:5094 with SMTP id
 gh9-20020a0568703b0900b00210b7f35094mr751224oab.101.1705579393226; Thu, 18
 Jan 2024 04:03:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240117083251.53868-1-hector.palacios@digi.com>
 <20240117083251.53868-2-hector.palacios@digi.com> <CAHp75Vci=1nAvxRcbkK2SxGWGbQVbzQMTycMt8tZ5snPRTYXOg@mail.gmail.com>
 <fd5550ad-76c0-419b-aa07-a0493a57286e@digi.com> <CAHp75Vf4wXLEjmfpz6KQSCB0Jd8LNv6+SU_ikbhR_8PsJHuq-g@mail.gmail.com>
In-Reply-To: <CAHp75Vf4wXLEjmfpz6KQSCB0Jd8LNv6+SU_ikbhR_8PsJHuq-g@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 18 Jan 2024 13:03:02 +0100
Message-ID: <CAMRc=MfAW5NDJHtZ1333-xrcCyQfft-pQF1-0Vv_ehY16agShw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] gpio: vf610: add support to DT 'ngpios' property
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Hector Palacios <hector.palacios@digi.com>, linus.walleij@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, andy@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-imx@nxp.com, stefan@agner.ch, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 18, 2024 at 10:04=E2=80=AFAM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Thu, Jan 18, 2024 at 10:25=E2=80=AFAM Hector Palacios
> <hector.palacios@digi.com> wrote:
> > On 1/17/24 21:51, Andy Shevchenko wrote:
> > >> Some SoCs, such as i.MX93, don't have all 32 pins available
> > >> per port. Allow optional generic 'ngpios' property to be
> > >> specified from the device tree and default to
> > >> VF610_GPIO_PER_PORT (32) if the property does not exist.
>
> ...
>
> > >> +       ret =3D device_property_read_u32(dev, "ngpios", &ngpios);
> > >> +       if (ret || ngpios > VF610_GPIO_PER_PORT)
> > >> +               gc->ngpio =3D VF610_GPIO_PER_PORT;
> > >> +       else
> > >> +               gc->ngpio =3D (u16)ngpios;
> > >
> > > This property is being read by the GPIOLIB core. Why do you need to r=
epeat this?
> >
> > My apologies; I had not seen this.
> > I'll use gpiochip_get_ngpios() on the next iteration.
>
> But still why?
> https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib.c#L86=
7
>
> It's called for every driver.
>
> Maybe it's needed to be refactored to allow fallbacks? Then can the
> GPIO MMIO case also be updated?
>

I guess it's because Hector wants to set an upper limit on the number of GP=
IOs?

Bart

> --
> With Best Regards,
> Andy Shevchenko

