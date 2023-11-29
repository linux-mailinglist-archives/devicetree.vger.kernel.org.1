Return-Path: <devicetree+bounces-20182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B067FE2CF
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 23:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17540B20FC9
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 22:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D1F3B18F;
	Wed, 29 Nov 2023 22:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s1X+fy1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 421031FED
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:13:36 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d28f5bbd6cso2591647b3.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 14:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701296015; x=1701900815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7zAvZE64Av3iMZn5Eh9VgKdftj7iGkvQAlpyfIxNzk=;
        b=s1X+fy1TSS5U2x30lXEocJrRvM1iyWdpYPesx4DnDw4BRGXfHAEQcsLK01ghaskrex
         IkSv0yp+jOMhy6Jf6O3b+ePitDRDR0vDh+9E/bszWYHi1GHqXq1nKZaMDTyAQx6l3Q8q
         owj1dSCOQYmHz1ERN1xewFBA0u6JDVykmVNqf7awQfao2F/njScWIcfJdybkpT6Vg8C3
         fc1/5JW8xahkYzGrXzym6WpdxVJWkvAUwhfFKv4t69Chcnv/L2bonvDe8o+WkcsmdL7H
         1zrgeIrDwqeOc/IKowth9f42PR92049jUf4ocCTVJsnZsC7UDNyd5Ya4W92fLA847Cyf
         kysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701296015; x=1701900815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h7zAvZE64Av3iMZn5Eh9VgKdftj7iGkvQAlpyfIxNzk=;
        b=eNhMVq6DJr85W+SQ+Kp2a8jScH/P2nrvt+OYzTK9LrRQhrbL4bOR9SpGWWWMayDnwK
         wbpYcUjFe9QbFsRtyOQRtzIXIer72tZWC7VZb0F/1MHg28v8FcgOnY/hPSqfBC9Px4bU
         aRxONQrbEkIMLawHisBNojSHm0bOcPWNl/d1hb4pE47nY0fi4AjIFQj4VQHBdn8xZhjH
         w6ipKQmvnARrERC36kxkZ7pvppGq9i19a1VyfqxxbZnizcZOrkzeHTkyYZrJoCPw1OSh
         gU6xSOwgUELZyMiIi6dPtkuhCOr74jETQ3THe10PFyT19270yRjIzPUXsT5aULFxlen5
         skhA==
X-Gm-Message-State: AOJu0YzKdNivznSD5qGxu83KH1UvtXJHb1CjHGompQIrkfSpKBkArQji
	B1cSEN4AzMXyAgCrBoUJBKU7QCqluSzYw6aNRjbnkg==
X-Google-Smtp-Source: AGHT+IHi9PAHDNdNTVjkMABS8IexpBOKUkvljy5XW0pSSuVHHivjU0Zlmw2WXYefgdSFh3FADld97MbepO57npptrmY=
X-Received: by 2002:a81:4322:0:b0:5d1:d1de:e8eb with SMTP id
 q34-20020a814322000000b005d1d1dee8ebmr6401684ywa.18.1701296015439; Wed, 29
 Nov 2023 14:13:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230923-ixp4xx-gpio-clocks-v3-0-66f8fe4e7f15@linaro.org>
 <20230923-ixp4xx-gpio-clocks-v3-2-66f8fe4e7f15@linaro.org> <ZRE0WgZ0v4/cMI/E@smile.fi.intel.com>
In-Reply-To: <ZRE0WgZ0v4/cMI/E@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Nov 2023 23:13:24 +0100
Message-ID: <CACRpkdbWdPXcrw6Q0E1S7kpwaeursaGAPkWvpiyasuA_4a1p9w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] gpio: ixp4xx: Handle clock output on pin 14 and 15
To: Andy Shevchenko <andy@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
	Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oops found some unaddressed feedback and outliers since
september.

Time to catch up.

On Mon, Sep 25, 2023 at 9:19=E2=80=AFAM Andy Shevchenko <andy@kernel.org> w=
rote:

> Given that cover letter implicitly explains why not PPS,
> Reviewed-by: Andy Shevchenko <andy@kernel.org>

Thanks!

> Can be optimized this way (not insisting, though):

It's nice, I changed it.

> I'm wondering if it's fine to have them both to be cleared if not defined=
?
> I.o.w. does it meant that appearance of one of the properties (to be set)
> implies the other (to be not set)?

I'm just cautious, there may be some components that require this
clocking that we don't know about, and that may be a reason why
they are enabled by e.g. RedBoot (the bootloader) at power on
and never touched.

The entire support is reverse-engineered so... we don't know exactly
what is going on. Would be easier if we has source for everything :/

>                         val &=3D ~(IXP4XX_GPCLK_MUX14 | IXP4XX_GPCLK_MUX1=
5);
>                         val &=3D ~IXP4XX_GPCLK_CLK0_MASK;
>                         val &=3D ~IXP4XX_GPCLK_CLK1_MASK;
>                 }
>         }
>
>         if (clk_14) {
>
>                 val |=3D (0 << IXP4XX_GPCLK_CLK0DC_SHIFT);
>
> Wondering why you simply can't replace this...
>
>                 val |=3D (1 << IXP4XX_GPCLK_CLK0TC_SHIFT);
>                 val |=3D IXP4XX_GPCLK_MUX14;
>         }
>
>         if (clk_15) {
>                 val |=3D (0 << IXP4XX_GPCLK_CLK1DC_SHIFT);
>
> ...and this by a comment?

Yup, fixed it.

Yours,
Linus Walleij

