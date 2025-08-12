Return-Path: <devicetree+bounces-203847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F8DB22A2E
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 910C07AA49E
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 217002D97BD;
	Tue, 12 Aug 2025 14:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ACrYPi1G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5788328D828
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755008481; cv=none; b=oXl5n627FjCNUOMtUUSEyBlC91Q1g6i0qosjQ7LF10TbdYsASSwMhwFw0jxes8sBy8+rZwkF4TYSCAe1r76zlreo8BbrFN73S8wkh/0EoOA4PCwxrysYlMUvWhSoZKuDjVe1wic0+yV0Fr2WmXqxW4FCjRUU/8sBcQdY8PUwzz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755008481; c=relaxed/simple;
	bh=gTExID4wuITaEjsxhkhg6JC6w2mdmko+dxNU8h1RJ6c=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XpqZO8SxoM53yLrHgIAkiRdLPBxSZlq+vQ2yUcqpDwtVj+TElN3rZJXsXytFYM9b+FSRwnC7sjMxJqVY9ZZrBgb/AgCTrntwPlIKawg+peUotNHwa8smem5qAIlXBpsyIJ2f9lt6iQwAIBa6ExFWfZVeN46KhGQR7TrQeUQVhDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ACrYPi1G; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5561ab55c4dso5696309e87.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 07:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1755008477; x=1755613277; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1pIv9AKRbkc8MISxXeVoPZny7F4ALH4S067Y82mAaRs=;
        b=ACrYPi1GWO59qPSOkIhmIWcq1VJSTrEKZ/zNL5gErUIwR6VfK8wmsymhXedbkB8v5S
         jVPVLOIOw9KXTnb1twvIGYDoc+w2fnS7FG5LJz6l90o7H3eXLWV7qP0+bd7NUeNL2hYa
         Jh7grhwBJ0O3F6C7KfZdJcw0Ut9ZOtig5FaPcw3McVG2jXJfv8VC4P/enQHemq0dEA7f
         5U3ai5sMompD4kcVgDaWsxV/+czotpEAfwpnoY2OXxnV8/sSBK0YT9Bljtng4WoFiGIo
         wofCXRQnFedu4ASIBbzxUW+SBMDwlKmSmFH+VoQE5tQSplSOZxtsmT/ao01F5cQHaSBw
         tikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755008477; x=1755613277;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1pIv9AKRbkc8MISxXeVoPZny7F4ALH4S067Y82mAaRs=;
        b=wAaOlHozeTLkgK4bQeMMxHGG5sPe/vGFQ1+zfXoorw4gBBHBQNgSJcCbDIahYpFl2L
         WrLYwvxBA+dVuIryiE+YqzppljXRhRizwZgUXyqQKz8919Yq/5vktUv3+BzJxLGXDu+h
         p/11Nu1LaNDoHIp8sICa/Yr1B7mCb+3DnZSbjtjdQEQNauQPp6FcLYzpEmbzSvvqoTge
         tmCzQkC1IGoNw+1hqAOWLvmEtRNMrHC/P5/5vilh8bnvtjinnDw/Tl7WN4M5VpQGAQ/H
         /fThuW1OXtQwa8Y95lWyqejKNlSRV20LlcMhPfJBznhtVzntPL+3CUJGIt/RA5/vDqEV
         Gk6w==
X-Forwarded-Encrypted: i=1; AJvYcCUzVPfCPlFIRGv4xtiSu/A3hmXzOYhzj3hEKwyZ01ljxaviPdKBARFXxouH8APeOg8AaRCXxVq39qdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwKbiWOllKjO8tU1Qgtvg5v14T9IpeS3QTT8FgtDlwITwyt7yOV
	CejS2pQdAwAsu6rZFPMjwXqAzraSLvEfToBV6/drrZEaMO6ADk5ww+hG9HGt2kiHFv6h05dPjXj
	EDDaKZKem7OwP1dXGB44JglRRPkLA7YiHs/w0mZdR0g==
X-Gm-Gg: ASbGnctK8Qz5XtBFuio6Asa1FHWY/DQlZ5FQtNvjfIfcVwSIH97mJ2TquLE1VYmAveZ
	wLSM9OcZGF/FAB1jIwQCh05/uCBp8D6a3KuzCRd5u8/Shi5vNskIL3wBCGRvMqQt2CycbqZczCM
	JZu/+KlXJcF2HX4RDPBnOgL2IwkCrnIoT0P+/i5Pfpjg+MLsJIIeZmGmoIxFCuKr5KDLk8AVekQ
	mvAz1BJFbyyHqeAM5vPY1cqcniLcNuJsZ3PIVnEhgUpyHI=
X-Google-Smtp-Source: AGHT+IFpF97gii6lher4rE+Sc7yp8gRIDiPYexKTadETndnmLkjhegMyhbbEFCVjEnmVLwNTmnfVhhtavmnpc1sTYHY=
X-Received: by 2002:a05:6512:15a7:b0:55c:bfe7:f056 with SMTP id
 2adb3069b0e04-55cd759716emr1203480e87.18.1755008477463; Tue, 12 Aug 2025
 07:21:17 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:21:16 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:21:16 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <22b3847fd0011024c10aff48f1e5223894ce718a.1754996033.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754996033.git.christophe.leroy@csgroup.eu> <22b3847fd0011024c10aff48f1e5223894ce718a.1754996033.git.christophe.leroy@csgroup.eu>
Date: Tue, 12 Aug 2025 10:21:16 -0400
X-Gm-Features: Ac12FXwYayzSV7JbaH60c8JY_pypspfPypyhh9tZpmA_WhfNTdKcELAccenZyWo
Message-ID: <CAMRc=Mce3LHtCUd-oO3uZjVAS-fywn86Zn+qmehZPJTKLzk6Sg@mail.gmail.com>
Subject: Re: [PATCH 3/4] soc: fsl: qe: Add support of IRQ in QE GPIO
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Qiang Zhao <qiang.zhao@nxp.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Aug 2025 13:02:53 +0200, Christophe Leroy
<christophe.leroy@csgroup.eu> said:
> In the QE, a few GPIOs are IRQ capable. Similarly to
> commit 726bd223105c ("powerpc/8xx: Adding support of IRQ in MPC8xx
> GPIO"), add IRQ support to QE GPIO.
>
> Add property 'fsl,qe-gpio-irq-mask' similar to
> 'fsl,cpm1-gpio-irq-mask' that define which of the GPIOs have IRQs.
>
> Here is an exemple for port B of mpc8323 which has IRQs for
> GPIOs PB7, PB9, PB25 and PB27.
>
> 	qe_pio_b: gpio-controller@1418 {
> 		#gpio-cells = <2>;
> 		compatible = "fsl,mpc8323-qe-pario-bank";
> 		reg = <0x1418 0x18>;
> 		interrupts = <4 5 6 7>;
> 		fsl,qe-gpio-irq-mask = <0x01400050>;
> 		interrupt-parent = <&qepic>;
> 		gpio-controller;
> 	};
>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  drivers/soc/fsl/qe/gpio.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
> index b502377193192..59145652ad850 100644
> --- a/drivers/soc/fsl/qe/gpio.c
> +++ b/drivers/soc/fsl/qe/gpio.c
> @@ -13,6 +13,7 @@
>  #include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/of.h>
> +#include <linux/of_irq.h>
>  #include <linux/gpio/legacy-of-mm-gpiochip.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/gpio/driver.h>
> @@ -32,6 +33,8 @@ struct qe_gpio_chip {
>
>  	/* saved_regs used to restore dedicated functions */
>  	struct qe_pio_regs saved_regs;
> +
> +	int irq[32];
>  };
>
>  static void qe_gpio_save_regs(struct of_mm_gpio_chip *mm_gc)
> @@ -141,6 +144,13 @@ static int qe_gpio_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
>  	return 0;
>  }
>
> +static int qe_gpio_to_irq(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct qe_gpio_chip *qe_gc = gpiochip_get_data(gc);
> +
> +	return qe_gc->irq[gpio] ? : -ENXIO;
> +}
> +
>  struct qe_pin {
>  	/*
>  	 * The qe_gpio_chip name is unfortunate, we should change that to
> @@ -304,6 +314,7 @@ static int qe_gpio_probe(struct platform_device *ofdev)
>  	struct qe_gpio_chip *qe_gc;
>  	struct of_mm_gpio_chip *mm_gc;
>  	struct gpio_chip *gc;
> +	u32 mask;
>
>  	qe_gc = kzalloc(sizeof(*qe_gc), GFP_KERNEL);
>  	if (!qe_gc) {
> @@ -313,6 +324,14 @@ static int qe_gpio_probe(struct platform_device *ofdev)
>
>  	spin_lock_init(&qe_gc->lock);
>
> +	if (!of_property_read_u32(np, "fsl,qe-gpio-irq-mask", &mask)) {

AFAICT: you can drop the of.h include and just use
device_property_present() here.

> +		int i, j;
> +
> +		for (i = 0, j = 0; i < 32; i++)
> +			if (mask & (1 << (31 - i)))
> +				qe_gc->irq[i] = irq_of_parse_and_map(np, j++);
> +	}
> +
>  	mm_gc = &qe_gc->mm_gc;
>  	gc = &mm_gc->gc;
>
> @@ -323,6 +342,7 @@ static int qe_gpio_probe(struct platform_device *ofdev)
>  	gc->get = qe_gpio_get;
>  	gc->set = qe_gpio_set;
>  	gc->set_multiple = qe_gpio_set_multiple;
> +	gc->to_irq = qe_gpio_to_irq;
>
>  	ret = of_mm_gpiochip_add_data(np, mm_gc, qe_gc);
>  	if (!ret)
> --
> 2.49.0
>
>

Bart

