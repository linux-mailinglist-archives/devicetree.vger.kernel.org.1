Return-Path: <devicetree+bounces-70080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BA18D2563
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B3051C27390
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95AC178CC5;
	Tue, 28 May 2024 20:02:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi [62.142.5.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1116E172BDB
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716926568; cv=none; b=tfzDLNd4AmmPbz29Rvc018B9Yox4nmgEbEIzDYBK+9DoPzqf3EmNMRc+BpGAV2AU1Kp47iQ9TusSLxNnrElDfbTNijwxKLFmc6CI4MQJkLoyV8x/lFXK1YphneEyUHrj+c3USYFx+RjyH/HCamDO4yZPLJiM3HPUl3BNAEqjREI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716926568; c=relaxed/simple;
	bh=pTf2qUi734ES9Al085wTXfYC8mQU+J7CT38EpK7LQlk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RkDtoihe0yturBbffuYDUxFykdQAZM/rpQC6bKBb3KNtWJHBKeFTF43kGjf4f4zSOU//UBBylEj+G6MxgHv3S+vbZ3Jyqnvd0v5jg+aLjvQCz0sWfugMDkPUyU4+M51DdV5FjnYGkU22fzHKCKBkd7VCKWz/zqMx/ARQqRKpvaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
	by fgw21.mail.saunalahti.fi (Halon) with ESMTP
	id 3cab8281-1d2d-11ef-aaf5-005056bdd08f;
	Tue, 28 May 2024 23:02:41 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 28 May 2024 23:02:39 +0300
To: Alvin =?utf-8?Q?=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: Mark Brown <broonie@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Emil Svendsen <emas@bang-olufsen.dk>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-sound@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>
Subject: Re: [PATCH 06/13] gpio: add AD24xx GPIO driver
Message-ID: <ZlY4X2P1VpF0aqjM@surfacebook.localdomain>
References: <20240517-a2b-v1-0-b8647554c67b@bang-olufsen.dk>
 <20240517-a2b-v1-6-b8647554c67b@bang-olufsen.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240517-a2b-v1-6-b8647554c67b@bang-olufsen.dk>

Fri, May 17, 2024 at 02:58:04PM +0200, Alvin Šipraga kirjoitti:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> This driver adds GPIO function support for AD24xx A2B transceiver chips.

"Add GPIO..."

> When a GPIO is requested, the relevant pin is automatically muxed to
> GPIO mode. The device tree property gpio-reserved-ranges can be used to
> protect certain pins which are reserved for other functionality such as
> I2S/TDM data.

Why this doesn't use gpio-regmap?

...

> +config GPIO_AD24XX
> +	tristate "Analog Devies Inc. AD24xx GPIO support"
> +	depends on A2B_AD24XX_NODE
> +	help
> +	  Say Y here to enable GPIO support for AD24xx A2B transceivers.

checkpatch probably complain about too short help text. You may extend it by
explaining how module will be called.

...

> +#include <linux/a2b/a2b.h>
> +#include <linux/a2b/ad24xx.h>

This seems to me not so generic as below...

+ bits.h
+ device.h
+ err.h

> +#include <linux/gpio/driver.h>

> +#include <linux/interrupt.h>

+ mod_devicetable.h

> +#include <linux/module.h>

+ mutex.h

> +#include <linux/of_irq.h>

Please, can we avoid OF in a new code?

> +#include <linux/regmap.h>

...hence move that group here and put a blank line before.

...

> +struct ad24xx_gpio {
> +	struct device *dev;
> +	struct a2b_func *func;
> +	struct a2b_node *node;
> +	struct regmap *regmap;
> +	int irqs[AD24XX_MAX_GPIOS];

> +	struct gpio_chip gpio_chip;

If you move this to be the first member, you might get less code being
generated at compile time.

> +	struct irq_chip irq_chip;

Should not be here, but static.

> +	struct mutex mutex;
> +	unsigned int irq_invert : AD24XX_MAX_GPIOS;
> +	unsigned int irq_enable : AD24XX_MAX_GPIOS;
> +};

...

> +	if (ret)
> +		dev_err(adg->dev,
> +			"failed to update interrupt configuration: %d\n", ret);

Why and how is this useful?

...

> +	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);

First of all it uses a wrong API (custom to IRQ core), second why do you need
this?

...

> +	struct device_node *np;

> +	np = of_irq_find_parent(dev->of_node);
> +	if (!np)
> +		return -ENOENT;
> +
> +	parent_domain = irq_find_host(np);
> +	of_node_put(np);
> +	if (!parent_domain)
> +		return -ENOENT;

Why is this magic needed?

...

> +	ret = devm_gpiochip_add_data(dev, gpio_chip, adg);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

	return devm_gpiochip_add_data(...);

-- 
With Best Regards,
Andy Shevchenko



