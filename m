Return-Path: <devicetree+bounces-218244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7270B7E837
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E856A1BC7FD6
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C27305941;
	Wed, 17 Sep 2025 08:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lkePpMzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65AA3054C9
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758096010; cv=none; b=LVo59kfbZLINDnbDqeftipaCv/JO7t4E16ev/t8YCo5xbMQcZs9sOeg+y6iFnEh71XpGBmgrbgj1wz72DrPZNHs/yNHjrCIrlI3VdUQq/Qnj9dqw3w/j6q1aZ5BrxEgLT98M+JAeNlJHHB1VexgVDTQheDDujvJqGiSCrlrXA2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758096010; c=relaxed/simple;
	bh=dq3u9o5VWwtiIVB9KcK9a0uDpon6l3TwOmFBbD+ZsXQ=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h86ks7hEy41DdnWBpXqk6Ti7ZExy8Jy6hlkW0m6p9Nwfbd7gQsbSeTBlRwVcEZFsPgL6QyAQJrzeuuaw8rBw3L6cgPt71AQkAW19JGR97mT5Wd8goVcYnAVCBDFHUZHJ90vHUgUf8xZjyv+dWQq7Bnq6RLZLuFZuGskXnRYDamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lkePpMzL; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5688ac2f39dso7694968e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 01:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758096007; x=1758700807; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=UEKtnillVVFfRZ+5u504JAMAMZFI1GIHyIZay2lch2M=;
        b=lkePpMzLNcm7aCq272zukiz/FVDmvMyQlS67iwrPiPQOXg44ECBVrtKATxCROLXrPg
         UEfhItceDdfZFf4tyG8LN4L0Hs2ZddvbYwXOzfLty0jTvVJCigbDP0hWkaav5ftIqp80
         i4A11ruQpDhXCpBAchMuU6XdF//4OS51z/u/kkAab/+wsCc4YLMN6+2Ob/ttMZRej/cT
         vRNa0qUAd/kQChcXtlOzyZc3Wq/wKAQhOs0p7p6liV2vpDWYGhcLSV2FmusnNpz05Wbl
         vz8WKXGxBfnynnSYfAP81dljJWUdNmSSKnRoNUL3CdiyeJCrLkyTtKEZ5rZcOqm3ntyq
         LFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758096007; x=1758700807;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UEKtnillVVFfRZ+5u504JAMAMZFI1GIHyIZay2lch2M=;
        b=uumzvqCch00wkJX8kiZvDwXJR4glhF78DzdVB5EOnng9gcYyTeoiRGZTREBb82rTY1
         3eAwjDJR+kpcVacpVWTys4C8ivF5mMLvlZbOBCwPPFHoVG2haoDQfjxMvOxm9s07IUny
         h6YD3BXyni61xlXUDaUlVKfaUu7KoqAaRiH2OkJ2gUl95cW9s3dLIy/6/oBvQH/AvRAe
         ufaUMiobPl7FFOIHHqDrwT98A60zTXPhbj3LsbnivYBMQkSELSxZ7fOgMKJ1g0n0OF0H
         IlIgexB+e7RRFNMjnll/37DnR4i3ngzmXKWuG5Q1rNWluUhRU85HgO8RcEgLdUICIxPA
         0HAQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1DGN1/nOa3ePNaFoYGdn+LL5LpeKuK9DDr9CV59Fa9vc0XFkzPvvxY6VRpTJFmsMMaXF0cRyY4YVb@vger.kernel.org
X-Gm-Message-State: AOJu0YwFYVtejeHcJKv+C5wKblUlEGv8lSKd+/boRbFEFfmPSelyG43n
	t0z0sldVAA1kRAS1tmK5362FW2cH0CdzfHUT/b110V9Kt4cWc11xaT7ECHMTW1EcJL0YcTrmSxw
	flgorzWqTAp6l/JlkoQJMVA5DC6bnWhHLIZOV9vOmqQ==
X-Gm-Gg: ASbGncuB3W3xB/hYmfRLR/Sh+VBIeWzwHr4V4xmX2sCKuNu7MPnXW8UyZ9Fy346fKjG
	UaE8OoSrjmoKR50Til6XDbWiawt3MtrYiWbhCgRNky4nxKmTo4joZJOKaP1D96v2tej3pZpZnMD
	XTo2jc53HM+cDh9dRObiAtQf+TnZ/fWiPeBbPyhigUpk+7+fKYgsWhfskQeRKvpWGcE94ghKpku
	dbnNGM=
X-Google-Smtp-Source: AGHT+IFb7uT1amCYEcbDk/aG1gXDqhuVxynj2vweh0X8HkHwURxRRNA23Yw7fUXf7MR74tQK3DcqqGV4vVXMX6Mmtb8=
X-Received: by 2002:a05:651c:1503:b0:35e:401e:a8a2 with SMTP id
 38308e7fff4ca-35f653c888emr3283521fa.39.1758096006643; Wed, 17 Sep 2025
 01:00:06 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 17 Sep 2025 04:00:03 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 17 Sep 2025 04:00:03 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250917-rda8810pl-drivers-v1-17-9ca9184ca977@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917-rda8810pl-drivers-v1-0-9ca9184ca977@mainlining.org> <20250917-rda8810pl-drivers-v1-17-9ca9184ca977@mainlining.org>
Date: Wed, 17 Sep 2025 04:00:03 -0400
X-Gm-Features: AS18NWCZjow2-dnpLe_oaxtKdrNMg3nTySj8u9HPhpYEQB-s6-z3-oDqLWpwlyY
Message-ID: <CAMRc=MeHQf_Oa2DRR0T7tum-Tuk3qPh5r5gimxGY3EXTyvoKZQ@mail.gmail.com>
Subject: Re: [PATCH 17/25] drivers: gpio: rda: Make direction register unreadable
To: dang.huynh@mainlining.org
Cc: Dang Huynh via B4 Relay <devnull+dang.huynh.mainlining.org@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-unisoc@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-rtc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-hardening@vger.kernel.org, 
	linux-mmc@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sre@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Sep 2025 22:25:14 +0200, Dang Huynh via B4 Relay
<devnull+dang.huynh.mainlining.org@kernel.org> said:
> From: Dang Huynh <dang.huynh@mainlining.org>
>
> The register doesn't like to be read, this causes the SD Card
> Card Detect GPIO to misbehaves in the OS.
>

Hi!

Sorry but this message is unintelligible, please say precisely what is going
on and why you need this and why it won't break existing users.

Also: the title should be "gpio: rda: ...".

Bartosz

> Signed-off-by: Dang Huynh <dang.huynh@mainlining.org>
> ---
>  drivers/gpio/gpio-rda.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-rda.c b/drivers/gpio/gpio-rda.c
> index b4db8553a2371ae407fdb7e681d0f82c4d9f74b7..56aaa9f33d29469dfb1bf86ed7b63c54b413c89c 100644
> --- a/drivers/gpio/gpio-rda.c
> +++ b/drivers/gpio/gpio-rda.c
> @@ -245,7 +245,7 @@ static int rda_gpio_probe(struct platform_device *pdev)
>  		.clr = rda_gpio->base + RDA_GPIO_CLR,
>  		.dirout = rda_gpio->base + RDA_GPIO_OEN_SET_OUT,
>  		.dirin = rda_gpio->base + RDA_GPIO_OEN_SET_IN,
> -		.flags = BGPIOF_READ_OUTPUT_REG_SET,
> +		.flags = BGPIOF_READ_OUTPUT_REG_SET | BGPIOF_UNREADABLE_REG_DIR,
>  	};
>
>  	ret = gpio_generic_chip_init(&rda_gpio->chip, &config);
>
> --
> 2.51.0
>
>
>

