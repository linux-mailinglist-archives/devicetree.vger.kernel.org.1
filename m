Return-Path: <devicetree+bounces-65011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8586B8BC059
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 14:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 338592817C0
	for <lists+devicetree@lfdr.de>; Sun,  5 May 2024 12:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C0818C36;
	Sun,  5 May 2024 12:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="C4rEVt+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D12186A
	for <devicetree@vger.kernel.org>; Sun,  5 May 2024 12:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714911914; cv=none; b=nyiXGaBBS0Z4uL81th2tAdsv/iCtSMuSQflm8c/UeQrY0ytB2QI6n25EJDUfvN7X7PcMSgqpOWkf5sxETz5RhZ1MoeCpC1Zce9YfEOHhNhC9GFVbse7tMmXwpTD9vKmo2FMqqv0U1nzBD3J6WJwjIIxJ/IYxnPnwA/aWpQxxQ+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714911914; c=relaxed/simple;
	bh=yrQqbN5qDXhsCWhv8edlKrikJt0tdGrh2rwpISyK1Jk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BBwpzsvwRWWb2SD9TrvZWouwAzqDVEM04rcAZqJqfJBEnJ29xWGe3ssRm/mpFGsxyuGIFLJDpIlZx4L7OFMx6F02miURkxzPMqnS314fQYZ6Vuy7Uu2QlSVTCK3Q/Qpqxs05scGaWIeZXaHvgmnGcCiIJwukcAF59qcOskJt73M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=C4rEVt+b; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2dd6a7ae2dcso17580841fa.1
        for <devicetree@vger.kernel.org>; Sun, 05 May 2024 05:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1714911911; x=1715516711; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I6d8pltQnbe1BNul8TKdyylJH57jCMCGH7OFNBm5Jck=;
        b=C4rEVt+b13HI8XC3SCWwlaVD4zD2doCRm2g4yQsdhiE5iO35klgZphT3h/u/RpisiH
         7yoHa2nHdEOY3AM9QPMEfwjhBcWkuohBcDXBmjZRy7WMQFknyy+Tq2iX3k0lYdMRCzni
         MlICsHei+6dF5hDf5vV8bz42G7ba8bx1+a5q+Jv5bjl8lPYmxLjzBeORfJBhwxGpcnXU
         ZAWIWIBYpuH+7RQ1oeEnZlm2xfWwU8467OEwzhv8rgeHCJ6Um7AYVyVcLeMPjVXVAvIP
         zXbkJHdqTIPNIN+JyGI5pfnir260CgZMod9PnvVN3ZJs/uXFGqpe6BwlVDQkVOeEvqei
         paig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714911911; x=1715516711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6d8pltQnbe1BNul8TKdyylJH57jCMCGH7OFNBm5Jck=;
        b=n9hLzfTsPhL8AxFsTTuMhNFBcvBInW9bdmlUG3UKH6VTINbyRb/5znIIRQcfybqWos
         Tap5bxUA0nwk0o3qgrcyNFdU5E5G70e3T/dTUW6GXAC0HEOfaSR/XbANnt8IDeS0LJdN
         bn1BVmagQR8VPi2dwiDZfDrz98MCmPON6E4fUPY9SepyLSbY8XI4oRk0S1Mhqh+aGTxb
         VXb7HSZcIg/0SAAXfSCtZaQjnwbqdU34hwDPTUe9KR7z2zTTux3H6XqBtbW6Oga3DgA3
         YGsTCR6aVbXa5iM8G4T6vX1h4D8AKqNE1F1OV02I9iC9yfWKd74sBRNA73Zm0csoTSqK
         yD5g==
X-Forwarded-Encrypted: i=1; AJvYcCXreCZP/8enIjMi8XCYdI5i0/zvmBtzyTnvBcKgRWoTYbm+4gHR6zSHvnHTdhkXNm7/a+rqB+TwUdpKLu+y1fhiHwICMDYoTaKFmA==
X-Gm-Message-State: AOJu0Yz6LV8QBfUCimzTxSiQ0XXBtXi+LXuxV8bVlW8PyvBBxgYygEi6
	R5RgA/18RNPgr2muADbCjIz74Oj83XJcQNgw9dWfjl7O9xWY9myndJPeYmh9QN9MSSW1puaDDxy
	fY5H3519SGTBl9Hyb/ulR7+aKGowDrtJIR+/hkw==
X-Google-Smtp-Source: AGHT+IGHC8sNZwgMzoG3QPzD5Yufu5CNex3JNhg27cIEDBNo3bkezg4pBrhViAS/E/M0FeLM7mdMlT2yKEfcduH5taI=
X-Received: by 2002:a05:6512:4027:b0:51d:d630:365c with SMTP id
 br39-20020a056512402700b0051dd630365cmr8601279lfb.4.1714911910873; Sun, 05
 May 2024 05:25:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424185039.1707812-1-opendmb@gmail.com> <20240424185039.1707812-3-opendmb@gmail.com>
 <CACRpkda4v6Nu8V3MVamDpfs4qnc89e8Vd8fSyaNsqJQ40GQqZg@mail.gmail.com> <45b7742c-9cde-4238-9c2c-c75dfbe9d8f3@gmail.com>
In-Reply-To: <45b7742c-9cde-4238-9c2c-c75dfbe9d8f3@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sun, 5 May 2024 14:25:00 +0200
Message-ID: <CAMRc=MfEVCDf8sn7C-cO_Y1xa4RehQj1tvRSRtC5aj0dF6uJWA@mail.gmail.com>
Subject: Re: [PATCH 2/3] gpio: of: support gpio-ranges for multiple gpiochip devices
To: Doug Berger <opendmb@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Phil Elwell <phil@raspberrypi.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 10:21=E2=80=AFPM Doug Berger <opendmb@gmail.com> wro=
te:
>
> On 5/3/2024 1:25 AM, Linus Walleij wrote:
> > Hi Dough,
> >
> > thanks for your patch!
> Thanks for your review!
>
> >
> > I'm a bit confused here:
> "Communication is hard" and I may be confused about your confusion, but
> hopefully we can work it out.
>
> >
> > On Wed, Apr 24, 2024 at 8:51=E2=80=AFPM Doug Berger <opendmb@gmail.com>=
 wrote:
> >
> >
> >> +               /* Ignore ranges outside of this GPIO chip */
> >> +               if (pinspec.args[0] >=3D (chip->offset + chip->ngpio))
> >> +                       continue;
> >> +               if (pinspec.args[0] + pinspec.args[2] <=3D chip->offse=
t)
> >> +                       continue;
> >
> > Here pinspec.args[0] and [2] comes directly from the device tree.
> >
> > The documentation in Documentation/devicetree/bindings/gpio/gpio.txt
> > says:
> >
> >> 2.2) Ordinary (numerical) GPIO ranges
> >> -------------------------------------
> >>
> >> It is useful to represent which GPIOs correspond to which pins on whic=
h pin
> >> controllers. The gpio-ranges property described below represents this =
with
> >> a discrete set of ranges mapping pins from the pin controller local nu=
mber space
> >> to pins in the GPIO controller local number space.
> >>
> >> The format is: <[pin controller phandle], [GPIO controller offset],
> >>                  [pin controller offset], [number of pins]>;
> >>
> >> The GPIO controller offset pertains to the GPIO controller node contai=
ning the
> >> range definition.
> I think we are in agreement here. For extra clarity, I will add that in
> my understanding pinspec.args[0] corresponds to [GPIO controller offset]
> and pinspec.args[2] corresponds to [number of pins].
>
> >
> > So I do not understand how pinspec[0] and [2] can ever be compared
> > to something involving chip->offset which is a Linux-specific offset.
> >
> > It rather looks like you are trying to accomodate the Linux numberspace
> > in the ranges, which it was explicitly designed to avoid.
> The struct gpio_chip documentation in include/linux/gpio/driver.h says:
>
>  > * @offset: when multiple gpio chips belong to the same device this
>  > *    can be used as offset within the device so friendly names can
>  > *    be properly assigned.
>
> It is my understanding that this value represents the offset of a
> gpiochip relative to the GPIO controller device defined by the GPIO
> controller node in device tree. This puts it in the same number space as
> [GPIO controller offset]. I believe it was introduced for the specific
> purpose of translating [GPIO controller offset] values into
> Linux-specific offsets, which is why it is being reused for that purpose
> in this patch.
>
> For GPIO Controllers that contain a single gpiochip the 'offset' member
> is 0 and the device tree node offsets can be applied directly to the
> gpiochip. However, when a GPIO Controller contains multiple gpiochips,
> the device tree node offsets must be translated to each individual gpioch=
ip.
>
> >
> > I just don't get it.
> >
> > So NACK until I understand what is going on here.
> >
> > Yours,
> > Linus Walleij
> I hope it makes sense now, but if not please help me understand what I
> may be missing.
>
> Thanks,
>      Doug
>

Linus,

Please let me know if this is still a NAK, if so, I'll drop this
series from my tree at least for this release.

Bart

