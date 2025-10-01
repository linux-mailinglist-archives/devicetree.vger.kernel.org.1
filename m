Return-Path: <devicetree+bounces-223066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0E8BB0A7C
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2E1634E022D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9E03019DE;
	Wed,  1 Oct 2025 14:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="QKukphD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596C52EC0B4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759327931; cv=none; b=sBl6S/5gLlskyOcZS+8wzo7u3fDl3Owck9lzMQLuftnke5FPbMsq9zkAX7cDM7JG8ScOo+BtX0HX+TBFALB9CjJvagGCgA/Lx3gbvYG04KspVxeaWeMHLS8/XdOn+wI+hQzbz8EPOhWRGQar+Bknm83KE1xS1pKDlKcWeFITSpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759327931; c=relaxed/simple;
	bh=wFyFhTbS6MYQfUcIRKicbUEZvplEsfeplnap1waRaQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o4K5jSCPLbl5jSsYPi9ZoGFnNmXG6czV7ndm4KLB6ISsHv85+SBVSH06Y23Dk5K1nNejXFMmzYGaS3nCTBEdYVyjPoXWZF6LzWBbG5Pqq36TuxHD5tJjq2NSbcak10zxjO4HlvfUpFYNUipwarMvAh6KHdUDCsP7dpB9pnBiSHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=QKukphD1; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3682ac7f33fso13082161fa.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759327927; x=1759932727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UIO3uPK5ZuAhIy7LIVCZMJNgvs3A+QGnfF2bur8/4Gc=;
        b=QKukphD1C0MmR65Sf1btFq2nxvCf5myywiLKOGkgeF5yEM0HQkJTKryNtVZ7guQlAm
         qG67HzpXXjKX5bMAYCVySzkKPjfUqbDlLMrzrcosQkkAbHDeX91owOcEO2cfEFPdb7NI
         YHANQMA10jJMt976OuISBzrJPwIJe4DKAU8XRsbarjUbyyYBxN1aQjp4/UJe4BhmIAZb
         W377KcePmoPfx4KMjflxc0a+aCOln4YsYjReOjjm13dlZbAAK4MHLe+HeSAwkZSAwaEr
         +5oAp23oJV8GW7wPqdNLlRij13YxHRgQDHoDdgFors1FQ2SyAApucZeX568M8WPZXCEx
         e2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759327927; x=1759932727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UIO3uPK5ZuAhIy7LIVCZMJNgvs3A+QGnfF2bur8/4Gc=;
        b=el+9C2PIyP+m/6BJcttIJ+m6oznT2hH/dOfE72dgLPRBQr9le5PrBRK16On7aNyClP
         /pFwUZEJgVa1PZXT11h+heZMi/LrlKdhqqVEq9hOOpGsiFcx3Oaw7W2WfHfJOy4jVJzB
         r7tB/mraBVtYRaw7humoXuNH3LiKYA2oKWvXHV7+h4IoKMovAbG+gmViK1yWE+iozjnC
         vh4esg3lHYsDdUGEt80d8/xG3J9ZZPLKLpVHbz/wOKpoKy/iYOijYh/lRnt5XYeK7fE/
         PmBDIhUIWkV1+7RTbhfDdppPqBvIRg6xTBFSUB2oBSiX4yNSeHiCWI3qU/cKRJxfSYJm
         Yakg==
X-Forwarded-Encrypted: i=1; AJvYcCWNLxrg+LiFmsndJz1QwzB876IMy6/VRZ81Si5bLD/SsqVrn7Si62jxeZpB42cinlt8ccLu/oruYoCf@vger.kernel.org
X-Gm-Message-State: AOJu0YwrbklmGtNEh3n7O3cQIL8GgjL1qT7NVFiIPsbwnO3RkyIHSvbr
	hTkAWVNjHLRESPcxuOqCpOeDOT8W1AAC/Wfc7Epqu2DLc5YUv0tl2PUeAeNdD0jDXQWEp4ROLHe
	mg1k8zLOrI6lv6d+HfSe+huWiiPmt4XSzMvReN7LqTg==
X-Gm-Gg: ASbGncsHG6PHVNFIOx7ZiGSVhEosnCdt43pjnJQDjDPSPLJcUEB9T15HzvM1Wea1g10
	JM39nPQhzOoM5TXemGj711R3DWn061d9qz8hB33J7TPJ+KjhhIcVGhopZkG1iUBeMV10XFSQNjG
	0EE48d6YmDdFWwOc7VZ3JxQ9pr2O6mbSHSX39vPwX1ISr08jUgDr4ihHxjyShbvVIOw5A1vXLV/
	twh+3LN+Kq6/3m3h+2FF8b8w8p3PIjRQfeoELFT3O9+oG9UI/a8+hZOorg93cw=
X-Google-Smtp-Source: AGHT+IGYKyPwOjoJA/hN/vRW2SG6PgxLO9/q7FFW4TMg9Moy1/qo7wnwhOI+IYoqfFAAWCFgOdsUybjzG2hZKPloTzo=
X-Received: by 2002:a05:651c:b2a:b0:36b:2fab:fa6f with SMTP id
 38308e7fff4ca-372fa205bc5mr26251721fa.3.1759327926662; Wed, 01 Oct 2025
 07:12:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com>
 <20251001091006.4003841-6-viken.dadhaniya@oss.qualcomm.com>
 <CAMRc=MfMO-+SSrTY-XQLtsDnxpj_E3TdTJ43ZxCUi-iDrvnc2w@mail.gmail.com> <20251001-fascinating-orange-skunk-7545f3-mkl@pengutronix.de>
In-Reply-To: <20251001-fascinating-orange-skunk-7545f3-mkl@pengutronix.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 1 Oct 2025 16:11:55 +0200
X-Gm-Features: AS18NWBg8ZyVBRpzM7I__xJ4toRDqBMebQLTblgXUJ2wZSl8Fd91gvWOuz_1g1A
Message-ID: <CAMRc=MfhyX+5hTz2BqSuBaZbbtayJWzR75EQeniPv6KCOSaWUA@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] can: mcp251xfd: add gpio functionality
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, mani@kernel.org, 
	thomas.kopp@microchip.com, mailhol.vincent@wanadoo.fr, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mukesh.savaliya@oss.qualcomm.com, 
	anup.kulkarni@oss.qualcomm.com, 
	Gregor Herburger <gregor.herburger@ew.tq-group.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 3:59=E2=80=AFPM Marc Kleine-Budde <mkl@pengutronix.d=
e> wrote:
>
> On 01.10.2025 15:52:56, Bartosz Golaszewski wrote:
> > On Wed, Oct 1, 2025 at 11:10=E2=80=AFAM Viken Dadhaniya
> > <viken.dadhaniya@oss.qualcomm.com> wrote:
> > > +
> > > +       if (!device_property_present(&priv->spi->dev, "gpio-controlle=
r"))
> > > +               return 0;
> > > +
> >
> > Hi! I didn't notice this before you're returning 0 here, meaning the
> > device will be attached to the driver even though it doesn't do
> > anything. It would make more sense to return -ENODEV.
>
> I consider the GPIO functionality of the mcp251xfd CAN controllers
> optional. So if the DT doesn't contain gpio-controller, continue without
> GPIO functionality.
>

Ah, sorry, I thought this was the driver's probe() callback. It's
actually just a function. This could probably be registered as an
auxiliary device for less build-time dependencies but whatever.
Nevermind my last comment.

Bart

