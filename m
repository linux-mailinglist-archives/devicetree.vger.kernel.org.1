Return-Path: <devicetree+bounces-70063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2A48D24B8
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 21:36:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01C7EB28CFA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 19:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205EF178363;
	Tue, 28 May 2024 19:36:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw23-7.mail.saunalahti.fi (fgw23-7.mail.saunalahti.fi [62.142.5.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89223176FA5
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 19:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716924971; cv=none; b=e2lOEeJ7zeihX1JHHl3h4VDa+kg3RiaqUgS9QCA6cidwTgUBH2z15ZqSeHA6RtmflQQY1hxFltyXkgp8jcnz9y7uKUbF7zClkzW3H5rwGF7bzG1XZu3kHgtE7PJ2qOK2jrF4kY/ejfX4N8hJ0YMVDU+mueuEYThndGL2D9htq/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716924971; c=relaxed/simple;
	bh=mcRUMZ4dwHJV5/dMwob3lapuhQw0EPjhT9rLeKNTsfc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DaNLMHFy/ERE4+xquD1S2JFjN6FK+NarxouksQ53lyuFkYSFF2ybEzEMBkSwMWsjZuDvx85kl6D6VWfBVKoUbyXqeyh/6j5ziPqJPjqyqJvOzz848pshf+tHEl3F9GmE/Z2mRRCr3Gt5rTDH0tA48OKW/8cR5JoCd1npKWUlR1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 8703f71f-1d29-11ef-80c1-005056bdfda7;
	Tue, 28 May 2024 22:36:06 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 28 May 2024 22:36:06 +0300
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Haibo Chen <haibo.chen@nxp.com>
Subject: Re: [PATCH v2 3/4] gpio: adp5585: Add Analog Devices ADP5585 support
Message-ID: <ZlYyJpLeDLD_T5V6@surfacebook.localdomain>
References: <20240528190315.3865-1-laurent.pinchart@ideasonboard.com>
 <20240528190315.3865-4-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528190315.3865-4-laurent.pinchart@ideasonboard.com>

Tue, May 28, 2024 at 10:03:13PM +0300, Laurent Pinchart kirjoitti:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> The ADP5585 is a 10/11 input/output port expander with a built in keypad
> matrix decoder, programmable logic, reset generator, and PWM generator.
> This driver supports the GPIO function using the platform device
> registered by the core MFD driver.
> 
> The driver is derived from an initial implementation from NXP, available
> in commit 451f61b46b76 ("MLK-25917-2 gpio: adp5585-gpio: add
> adp5585-gpio support") in their BSP kernel tree. It has been extensively
> rewritten.

Why is this not using gpio-regmap?

...

> +#include <linux/device.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/mfd/adp5585.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>

+ types.h

...

> +	bit = off * 2 + (off > 5 ? 4 : 0);

Right, but can you use >= 6 here which immediately follows to the next
question, i.e. why not use bank in this conditional?

...

> +	struct adp5585_dev *adp5585 = dev_get_drvdata(pdev->dev.parent);

(see below)

> +	struct adp5585_gpio_dev *adp5585_gpio;
> +	struct device *dev = &pdev->dev;

	struct adp5585_dev *adp5585 = dev_get_drvdata(dev->parent);

> +	struct gpio_chip *gc;
> +	int ret;

...

> +	platform_set_drvdata(pdev, adp5585_gpio);

Any use of driver data?

...

> +	device_set_of_node_from_dev(dev, dev->parent);

Why not device_set_node()?

-- 
With Best Regards,
Andy Shevchenko



