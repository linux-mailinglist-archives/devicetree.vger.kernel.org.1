Return-Path: <devicetree+bounces-203846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FCBB22A7B
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACB165824E8
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 14:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72F12D7819;
	Tue, 12 Aug 2025 14:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="VbB2Av/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D954528DB52
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 14:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755008418; cv=none; b=Po8fUMqDfeMkej9EYN6QjiFG9WKYP8P/uq7Q6QG9I02IR7N9Kan+WoNvgQiWYsylTLKlmes2AaTdGhuSSUMXe4IX/cIOxj5o6oEd/9nRrJQrrGx0conAuYgNHFfVJyFLFY50X1MDg/Kg5zOqHp/Jp3ekEpZrg2zcVZvmts3f7WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755008418; c=relaxed/simple;
	bh=r/g7cxm9Na/CcdAsWOeh8hMTNl83bUK5G5JindICPdA=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r+NOHUj/u1uMh7Q0AOzc75w2tVSvgyh6SuCmWeonjxlNKTN2Phs3tiEaqpb8UPgC2Mfslk7kOcfrTiCL0lhJxk1WW0x1Ek2TJ0U3rolR7Y46FMlz+d1FDoaI0ZrC2aSb58LHYDKNem4zRnhoU6tLaHE9ah0vBbe1pSsvn0OISVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=VbB2Av/i; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55cbf3ce8c1so3320910e87.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 07:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1755008415; x=1755613215; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=zMY/csa2U5fal/bu+jvHfhppLjeOUw06LSvQ98vCN+Y=;
        b=VbB2Av/ilyFpfSAy7GSw5jAA2dcwGrFIjhwLIZLgsPne7uhPCPNnzTq75Z7woz4Wzl
         1UqV7H/VtZ3RCbcNzZ2tGZEUCT885M+F0G1cljgS9ZjfKsYpuAwrJJYQdvIbiB46m/XZ
         myEsXrf1cKaTjGoAkDBa27MdEseueIVThlvy0XklSfXw+QuXqPcSsXy5SrU/ZBXqmx8h
         j232RdLXJt+yX7YvcRjQk6ifwnvbdM+Ffd7EiZSGZ/AVQjdBWJKNGVTiv/nWWWtg99Or
         bbKAB/fTgvVbdlbOY/mMjHFmnQ53YNG16PB1EYxMLGab2s1PtrNvAZPZZmGV48am4RXV
         1giQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755008415; x=1755613215;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMY/csa2U5fal/bu+jvHfhppLjeOUw06LSvQ98vCN+Y=;
        b=bQX/XdbwX4jAB9ZYqBTp3MWSep2pFk6OeeMiHtbtFsIllfbO9hsWdUM5vQL9BeLDnV
         OX5HhOcFFcUqkOi3P6f1bjzUR5Xo/2rF1ofdKuPDhvFU0Qms917RtZTQp9LUS5mmrdHH
         LCOt3EvpY0XSM388da7bfXQrKTUEiPa/cfhDSlp0kwcFlPT162l+k+0s3mEXliqupSZr
         D7J+geNfSzUZqz5JWxyc+aEevDPGcRc2lFObGbPaiKJikzKiDpn9kUU7a9afs7Z4DweR
         zki6frbngMnGM1Ux42eGfAF+IdLpn7FKvPslvUn09LLDRO8oEsSUVQVikTN9a1Qmhl4b
         fo2A==
X-Forwarded-Encrypted: i=1; AJvYcCWHxg+iBca/XVqz2oJniRxayCPad2STpoqlmpQP235secvcKfVe1dYFwULvJS9a3HMt1FJJi08PFe2v@vger.kernel.org
X-Gm-Message-State: AOJu0Yzei6MFOvnNryYkd0L32B9FuAr/D7fFjijzzuUBR292RhuIGQZ7
	osgCXlGQFJ+4/s8yFmpYM9WVGAtEYsNRQyKYs1Wn6dVgzhBM4A00v0Hcmib92CsGUjsyhwxpzIE
	QlxZmMHSBuUQPQ/4kg6wEJK5f7At6yq+l+huk2TgoKg==
X-Gm-Gg: ASbGncv3DFOvOIYliSgn3XkipKzmPzTLhoG/URwNDBnGGI3K1SvPjCrmR1VDmZkKz8l
	YWSLmuphb613ERvsbRHqcnbANIoTlWoFvPQAXdy426qpLLKlOEisbMwo6RsteJ9RE/xeFR9VkbX
	/lknhCUAeL3waTENTM8xmMy9oWn+UNAjD1HSjZikWUyLg/09gTpnWNnvrBnYLo/yLfJjM57OdWQ
	X0bILh62a0tNjFfjIwl2BN8xnvKfOVHxsAM
X-Google-Smtp-Source: AGHT+IHuu5wvW4QtT3XRKQhSqRyAl4ltkuZNueZbz0L47TOdCOtZKGDL/QaBXRZMyQYhkVVn0ozd5KBBIXmm6CR5nec=
X-Received: by 2002:a05:6512:1193:b0:55b:84b9:9a32 with SMTP id
 2adb3069b0e04-55cd7602a4dmr1190170e87.30.1755008414804; Tue, 12 Aug 2025
 07:20:14 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:20:14 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Aug 2025 10:20:14 -0400
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <f4d04d0c9d72d089af7490c6ce91bb4c455fbffd.1754996033.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1754996033.git.christophe.leroy@csgroup.eu> <f4d04d0c9d72d089af7490c6ce91bb4c455fbffd.1754996033.git.christophe.leroy@csgroup.eu>
Date: Tue, 12 Aug 2025 10:20:14 -0400
X-Gm-Features: Ac12FXxJwAJyIiJkerY_ZMj0NVdYlnI0XD6BtSNaGx0TIql8RITghXtjTU4PQzQ
Message-ID: <CAMRc=MfkaY5AgYrOE7eVSMbkPjWj6+5XLSrFoaSDjzUWX4Dn0Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] soc: fsl: qe: Change GPIO driver to a proper platform driver
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Qiang Zhao <qiang.zhao@nxp.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Aug 2025 13:02:52 +0200, Christophe Leroy
<christophe.leroy@csgroup.eu> said:
> In order to be able to add interrupts to the GPIOs, first change the
> QE GPIO driver to the proper platform driver in order to allow
> initialisation to be done in the right order, otherwise the GPIOs
> get added before the interrupts are registered.
>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  drivers/soc/fsl/qe/gpio.c | 88 +++++++++++++++++++++++----------------
>  1 file changed, 53 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/soc/fsl/qe/gpio.c b/drivers/soc/fsl/qe/gpio.c
> index 8df1e8fa86a5f..b502377193192 100644
> --- a/drivers/soc/fsl/qe/gpio.c
> +++ b/drivers/soc/fsl/qe/gpio.c
> @@ -19,6 +19,7 @@
>  #include <linux/slab.h>
>  #include <linux/export.h>
>  #include <linux/property.h>
> +#include <linux/platform_device.h>
>
>  #include <soc/fsl/qe/qe.h>
>
> @@ -295,45 +296,62 @@ void qe_pin_set_gpio(struct qe_pin *qe_pin)
>  }
>  EXPORT_SYMBOL(qe_pin_set_gpio);
>
> -static int __init qe_add_gpiochips(void)
> +static int qe_gpio_probe(struct platform_device *ofdev)
>  {
> -	struct device_node *np;
> -
> -	for_each_compatible_node(np, NULL, "fsl,mpc8323-qe-pario-bank") {
> -		int ret;
> -		struct qe_gpio_chip *qe_gc;
> -		struct of_mm_gpio_chip *mm_gc;
> -		struct gpio_chip *gc;
> -
> -		qe_gc = kzalloc(sizeof(*qe_gc), GFP_KERNEL);
> -		if (!qe_gc) {
> -			ret = -ENOMEM;
> -			goto err;
> -		}
> +	struct device *dev = &ofdev->dev;
> +	struct device_node *np = dev->of_node;
> +	int ret;
> +	struct qe_gpio_chip *qe_gc;
> +	struct of_mm_gpio_chip *mm_gc;
> +	struct gpio_chip *gc;
> +
> +	qe_gc = kzalloc(sizeof(*qe_gc), GFP_KERNEL);
> +	if (!qe_gc) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
>
> -		spin_lock_init(&qe_gc->lock);
> +	spin_lock_init(&qe_gc->lock);
>
> -		mm_gc = &qe_gc->mm_gc;
> -		gc = &mm_gc->gc;
> +	mm_gc = &qe_gc->mm_gc;
> +	gc = &mm_gc->gc;
>
> -		mm_gc->save_regs = qe_gpio_save_regs;
> -		gc->ngpio = QE_PIO_PINS;
> -		gc->direction_input = qe_gpio_dir_in;
> -		gc->direction_output = qe_gpio_dir_out;
> -		gc->get = qe_gpio_get;
> -		gc->set = qe_gpio_set;
> -		gc->set_multiple = qe_gpio_set_multiple;
> +	mm_gc->save_regs = qe_gpio_save_regs;
> +	gc->ngpio = QE_PIO_PINS;
> +	gc->direction_input = qe_gpio_dir_in;
> +	gc->direction_output = qe_gpio_dir_out;
> +	gc->get = qe_gpio_get;
> +	gc->set = qe_gpio_set;
> +	gc->set_multiple = qe_gpio_set_multiple;
>
> -		ret = of_mm_gpiochip_add_data(np, mm_gc, qe_gc);
> -		if (ret)
> -			goto err;
> -		continue;
> +	ret = of_mm_gpiochip_add_data(np, mm_gc, qe_gc);

Actually scratch my R-b, on second glance - this should now be
replaced with devm_gpiochip_add_data(). I don't see anything that
would be in the way now that it's an actuall platform device.

Bartosz

> +	if (!ret)
> +		return 0;
>  err:
> -		pr_err("%pOF: registration failed with status %d\n",
> -		       np, ret);
> -		kfree(qe_gc);
> -		/* try others anyway */
> -	}
> -	return 0;
> +	dev_err(dev, "registration failed with status %d\n", ret);
> +	kfree(qe_gc);
> +
> +	return ret;
> +}
> +
> +static const struct of_device_id qe_gpio_match[] = {
> +	{
> +		.compatible = "fsl,mpc8323-qe-pario-bank",
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, qe_gpio_match);
> +
> +static struct platform_driver qe_gpio_driver = {
> +	.probe		= qe_gpio_probe,
> +	.driver		= {
> +		.name	= "qe-gpio",
> +		.of_match_table	= qe_gpio_match,
> +	},
> +};
> +
> +static int __init qe_gpio_init(void)
> +{
> +	return platform_driver_register(&qe_gpio_driver);
>  }
> -arch_initcall(qe_add_gpiochips);
> +arch_initcall(qe_gpio_init);
> --
> 2.49.0
>
>

