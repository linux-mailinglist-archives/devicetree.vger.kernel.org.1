Return-Path: <devicetree+bounces-29382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 062AF822A6D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 10:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8576D1F23DF7
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 09:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550F8182DB;
	Wed,  3 Jan 2024 09:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VNE1vr6+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ECD18626
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 09:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7ccdb4b764cso2150695241.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 01:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704275265; x=1704880065; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Uu3c8CS1lVfKVNMcApNeIRZ8Y8V3EqweSncyL4lcTY=;
        b=VNE1vr6+zbcW+RbuKh48/16HqjYZBHVcz0NYHe6UiYsVmbAde+BZjIMHpmbK8O+C4M
         hjK+UG4v0/aOOvpogWzUWGJJw2wWt3BTRPKh9BH7OMJ2RFLeyJuE5wGdRzAdmx6taF3U
         WosPh1KaxZAHyIQqYqbN73SbzE8hOAm6miln6AlWZasmp+iPBfx6nOmY97nWlQk2F040
         eKx4W169JBStTe+7qr2H9KhYEAVSeECiVfaKokqZ9eB1MomNCXAZnQeOMMalwmfQs/eU
         gXHxFwewzNeZ7Ga16rKuBAlLxfrQhY8rajcwasv3SW6lehcMRtl1BHOqkdKnt4dEVZKg
         Rofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704275265; x=1704880065;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Uu3c8CS1lVfKVNMcApNeIRZ8Y8V3EqweSncyL4lcTY=;
        b=FKPzxAzPFYGQPPjN5YVbQzb3NRNhoMq14ohpm/lBU6e6mzoqyHp2NAslYW+RM2/V3y
         FM46GDRV904iGVX/iLgl7WITuo9Ll1xMnYq592qTbpjq8YlESLbZUoex7KW93SFOKGji
         382Ls+Oz3buC8moHhZPC6xkeKaT1sAhoZ7HmOOW2Zif6LdFIJvQkmB5K5Onp3ztu9oAn
         sJmo35tnpGrDnR9HsEgJwjJqsE386gd4RTtCIlb10dMckMXbduwjNV4ApT/8VgzKyq9j
         h1HKx117rDpJh7BqSFDK2qak72tN4bKM+ZdwWZ1oT8WcBU3LPTmtw6JlfmSrsrLYaTBo
         tC5w==
X-Gm-Message-State: AOJu0YxA83ap+s3pS9dvsMJeoH9j6uWjLWoyaRu/cM8hSL5TIZAD14v8
	YGxUe/X2a029+7SW78Y3eLVUxJhbEojCyh9hrUFkwB0aAG77OQ==
X-Google-Smtp-Source: AGHT+IEYu7lrKPktfj6xVwnpsPDmZsLaProxg+WpiLZAf8IdKHO8AmnXGk+VkPfNvNleTDCFWcsjOBbBtgiFrLe2YUo=
X-Received: by 2002:a05:6102:2b86:b0:467:7814:ec21 with SMTP id
 ib6-20020a0561022b8600b004677814ec21mr2561562vsb.9.1704275264727; Wed, 03 Jan
 2024 01:47:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228104800.24913-1-tychang@realtek.com>
In-Reply-To: <20231228104800.24913-1-tychang@realtek.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 3 Jan 2024 10:47:33 +0100
Message-ID: <CAMRc=MeB6UBf2cCrB8XHtfKigmS3Gb41SV-G6F+0X7Dd+7oatw@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add gpio driver support for Realtek DHC SoCs
To: Tzuyi Chang <tychang@realtek.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 28, 2023 at 11:48=E2=80=AFAM Tzuyi Chang <tychang@realtek.com> =
wrote:
>
> These patches add the bindings and the gpio driver for Realtek
> DHC(Digital Home Center) RTD SoCs, including RTD1295, RTD1395,
> RTD1619, RTD1319, RTD1619B, RTD1319D and RTD1315E.
>
> Change log:
> v4->v5:
> 1. Add more description in the Kconfig.
> 2. Add comment for the counter-intuitive number 31.
> 3. Convert to use cleanup API and module_platform_driver() macro.
> 4. Simplify some of the code as suggested in patch v4.
> v3->v4:
> 1. Arrange the compatible list in alphanumerical order.
> 2. Remove the size check for the offset array.
> 3. Add the debounce callback.
> 4. Conducted a review of the critical section, employing raw_spinlock_t f=
or locking purposes.
> 5. Add gpiochip_enable_irq/gpiochip_disable_irq to fulfill the immutabili=
ty requirements.
> 6. Use irqd_to_hwirq to get hwirq.
> v2->v3:
> 1. Remove generic compatible and use SoC-specific compatible instead.
> 2. Add the missing descriptions for the rtd_gpio_info structure members.
> 3. Assign gpio_chip fwnode.
> v1->v2:
> 1. Add description for DHC RTD SoCs in the bindings.
> 2. Revise the compatible names in the bindings.
> 3. Transitioned from OF API to platform_device API.
> 4. Use u8 for the offset array within the rtd_gpio_info structure.
> 5. Record the size of each array within the rtd_gpio_info structure and
>    implement checks to prevent out-of-bounds access.
> 6. Use GPIOLIB_IRQCHIP helpers to register interrupts.
> 7. Use dynamic allocation for GPIO base.
>
> Tzuyi Chang (2):
>   dt-bindings: gpio: realtek: Add realtek,rtd-gpio
>   Add GPIO support for Realtek DHC(Digital Home Center) RTD SoCs.
>
>  .../bindings/gpio/realtek,rtd-gpio.yaml       |  69 ++
>  drivers/gpio/Kconfig                          |  13 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-rtd.c                       | 604 ++++++++++++++++++
>  4 files changed, 687 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/realtek,rtd-gp=
io.yaml
>  create mode 100644 drivers/gpio/gpio-rtd.c
>
> --
> 2.43.0
>

I applied this series. For the future: the commit subject should have
the "gpio: rtd: ..." prefix. I added it this time.

Bart

