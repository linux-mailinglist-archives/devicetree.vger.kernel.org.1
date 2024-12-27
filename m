Return-Path: <devicetree+bounces-134404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C39FD618
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:52:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37F0316328C
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159661F76CA;
	Fri, 27 Dec 2024 16:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ByVWqJmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B6E1F76B7
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318324; cv=none; b=gz7kmFo+gbaRJUU1/TY/luF7vvaUh8YFJWJSYRKrcnmKtCXoX+Qx1H0vk6zTFWxpddhKt0neIPA8PFZNSOFaOwrT+gG++8S4ft68aw1+ZJcnotXBTVW4uZf0ZV8UOLp+GkL1gpCK6RJ3XsPaZb+gK5YiqDoh8laMeTZBjS9SbP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318324; c=relaxed/simple;
	bh=kzPiXafBJmY8qlCYEUykmZiGRWQ/0RcpfA+8VOhH8qw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MPvbHV07s223HWK+BwHQCHG7xV89gvqe6NZb+TaUbmN6NDLu4PchioS5AD3T9Lj+JeXJEzvcsbo3kdswa9WgGefUh1ow13k+ZLH/rNEKPJpDWj7HAb2p2AjRuQJaNsQbe9nVqLDYdMwXESJTaKe0aMJnwTEZhS16hb300pJ+e9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ByVWqJmB; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-3022c61557cso99337201fa.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735318320; x=1735923120; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0J0K6aqgihRpMPdT25Lkd5jtBPGc5dJpjjgeL5v0qM=;
        b=ByVWqJmByWOUn0K7d5wEcBvSfnNplfIQodKp8yTT24V5Sy9lOfzOy4D0WrvDT94FX2
         iTTHqzWthlDZRdG6tkS+L+1cwSSTbLg7JMpkkdon9oKkoXYNUoytokHS8o7J4atzZeES
         bMiC9h/n8p6Xm5edhiRo2TdxQHTe+iGN0G2pNSCDGHgt9qcD00BTuGCWou4OmNthBGob
         65rObgM+04Utl88htSXoSZ3JS7yHy6qEi1OqAFdMtnv3Lx0SzMNM53+05Qd4EaOzqoTG
         mYZwTRWIwUwD4L0VLutqJRXq4ZNHITGuSgW1i3EyGKODH7U3qCu9NOYUzwJaeIniqQJG
         NKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318320; x=1735923120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V0J0K6aqgihRpMPdT25Lkd5jtBPGc5dJpjjgeL5v0qM=;
        b=YzhwJPfD9j6Ud9Ue0EIAIcd/B5tLqtxQn3ehRaxKzGcCk4vt/pM+jcYzvXTGh2tp22
         OPrRibbg4embFxuxdKEuwCRIk5Y9cND7rPEVHHCPe7JAlqYDKWDjJmH7GI24NNHalnMZ
         yHPucVVshWbGHvoGGb8Y05oF7J/vlhYzmKy0I7qkGtV/ksAeC7MSrtuVsyScQQyVhPFW
         RJyU16L3t1f4oRV7/F25o+1Jl2N3IqsRDw7f1SQlG+K9ZDR93t66j0UmsYfs4xaLMt7h
         8ePkQqkLPdjRTIYfYdVoIfa5ADiF5nvacUINbDQU4uqOpIXv1cIVklrcyORc4Cm3eEIA
         osRg==
X-Forwarded-Encrypted: i=1; AJvYcCUfNeUfigP29L5Yj+9V/8+tptT2rrZbFmkmWlPdRNCPtSZ9b6MF4AkmJOTHocfvA5aCKfW9pZ0jaPJF@vger.kernel.org
X-Gm-Message-State: AOJu0YwcKYb8HkNLDXVZMmB2xjaqOyIrG+B7lvrGQrzw4JG3YSdDyH5R
	rNjtxhcKXsLyKMKWz9bgD8XzT0cSujKsz4J4Zk6EqTZakliB9rQLT+pXopHly8Xzde4A2Zf8V4F
	xQ9n6LIyzO10P99yoaE+odbxIaNGsC5c6oRaKvw==
X-Gm-Gg: ASbGncsDGobdLKJdzSAXpZY2jUIi1e++7DTNBJjkzjfIUvp4ztKM6t9DwoEppHjWOEC
	h0y24VpuGnCrdslmGiFyyfwBVYp2viwy5ykrZ
X-Google-Smtp-Source: AGHT+IFbhJkhTwGcQGwmzdZ9ZEVtnJuJfzbxvgbJET6mG/L4rwM6fQpP2k3nWah4RzNxd7nMyu9lr8s1kcIcg2qDzEQ=
X-Received: by 2002:a05:6512:308d:b0:53e:335b:4348 with SMTP id
 2adb3069b0e04-54229582541mr7372384e87.40.1735318320264; Fri, 27 Dec 2024
 08:52:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225035851.420952-1-gch981213@gmail.com> <20241225035851.420952-3-gch981213@gmail.com>
In-Reply-To: <20241225035851.420952-3-gch981213@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:51:49 +0100
Message-ID: <CACRpkdb4bMFqV+hfAHuUvLezyCA8PTE+SQOpYzh_y1JXzDHLvw@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: add support for GPIO controller on Siflower SoCs
To: Chuanhong Guo <gch981213@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Qingfang Deng <qingfang.deng@siflower.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chuanhong,

thanks for your patch!

I think it is better to split the driver instances into 4, one for each
physical block, as explained in the binding patch.

On Wed, Dec 25, 2024 at 4:59=E2=80=AFAM Chuanhong Guo <gch981213@gmail.com>=
 wrote:

> From: Qingfang Deng <qingfang.deng@siflower.com.cn>
>
> Add a driver for the GPIO controller on Siflower SoCs.
> This controller is found on all current Siflower MIPS and RISC-V
> chips including SF19A2890, SF21A6826 and SF21H8898.
>
> Signed-off-by: Qingfang Deng <qingfang.deng@siflower.com.cn>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>



> +config GPIO_SIFLOWER
> +       tristate "SiFlower GPIO support"
> +       depends on OF_GPIO
> +       depends on MIPS || RISCV || COMPILE_TEST
> +       select GPIOLIB_IRQCHIP

select GPIO_GENERIC

As you have only a set of 32-bit registers to handle for each
instance, then some IRQs on top, you can untilize the MMIO
library.

> +#define GPIO_IR(n)     (0x40 * (n) + 0x00)
> +#define GPIO_OR(n)     (0x40 * (n) + 0x04)
> +#define GPIO_OEN(n)    (0x40 * (n) + 0x08)
> +#define GPIO_IMR(n)    (0x40 * (n) + 0x0c)
> +#define GPIO_GPIMR(n)  (0x40 * (n) + 0x10)
> +#define GPIO_PIR(n)    (0x40 * (n) + 0x14)
> +#define GPIO_ITR(n)    (0x40 * (n) + 0x18)
> +#define GPIO_IFR(n)    (0x40 * (n) + 0x1c)
> +#define GPIO_ICR(n)    (0x40 * (n) + 0x20)
> +#define GPIO_GPxIR(n)  (0x4 * (n) + 0x4000)

Just define GPIO_IR 0, GPIO_OR 4, etc.

Look up the GPIO_GPIR register separately from the
device tree and use it without offset.

Always register 16 GPIO lines unless ngpios is set.

Look at example drivers such as
drivers/gpio/gpio-pl061.c
drivers/gpio/gpio-ftgpio010.c
on how to use the MMIO helper library to implement
a simple driver for one instance reusing the common code.

You will also get implementations for get/set_multiple()
for free with this approach, as the library implements
them!

Yours,
Linus Walleij

