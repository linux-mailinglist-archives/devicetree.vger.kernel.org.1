Return-Path: <devicetree+bounces-70061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AF28D2495
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 21:27:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D83811C26AF8
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 19:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F54171679;
	Tue, 28 May 2024 19:27:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw21-7.mail.saunalahti.fi (fgw21-7.mail.saunalahti.fi [62.142.5.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925C5174EDE
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 19:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716924464; cv=none; b=E87Iem0GtOHxlchR5xa7diEo8JzyJMRlaMzQPEQ9/cR03Eh10kxO+8qLDAQuE9OydYUOzICE+FtY+SKLlZRcEFpqUEtiCCgKfc+36BAlqj6s4mIj//NZcX4mFRlMJUThPxew66aPlWmIz9Mhvf6y3k3xs76oZYhDgtGZHKqb7nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716924464; c=relaxed/simple;
	bh=cTKbpAhjrjCxOHCkBE9KZlU76K9Ysjv16xE/+1J9QZM=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SENudC+wmdmR25doPo/3bquiKmsz5H8NoitU67xiz9UntacCq2grRved4jov1Nj7rY/k319jwT+EsPam8bLvG+8pwNXEo3Zf/5nFL+gTbeOURdkWdKGjeX0F0o3BNfPV0XwxfpG2BNPOPqBBHtLN22OhKGFTPXaHnD4U4XjOThE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 55c6fc82-1d28-11ef-80c1-005056bdfda7;
	Tue, 28 May 2024 22:27:35 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 28 May 2024 22:27:34 +0300
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
Subject: Re: [PATCH v2 2/4] mfd: adp5585: Add Analog Devices ADP5585 core
 support
Message-ID: <ZlYwJryxeZ2LAKYG@surfacebook.localdomain>
References: <20240528190315.3865-1-laurent.pinchart@ideasonboard.com>
 <20240528190315.3865-3-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528190315.3865-3-laurent.pinchart@ideasonboard.com>

Tue, May 28, 2024 at 10:03:12PM +0300, Laurent Pinchart kirjoitti:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> The ADP5585 is a 10/11 input/output port expander with a built in keypad
> matrix decoder, programmable logic, reset generator, and PWM generator.
> This driver supports the chip by modelling it as an MFD device, with two
> child devices for the GPIO and PWM functions.
> 
> The driver is derived from an initial implementation from NXP, available
> in commit 8059835bee19 ("MLK-25917-1 mfd: adp5585: add ADI adp5585 core
> support") in their BSP kernel tree. It has been extensively rewritten.

...

> +	tristate "Analog Devices ADP5585 MFD driver"
> +	select MFD_CORE
> +	select REGMAP_I2C
> +	depends on I2C && OF

Why OF?
No COMPILE_TEST?

...

+ array_size.h
+ device.h // e.g., devm_kzalloc()

> +#include <linux/module.h>
> +#include <linux/moduleparam.h>
> +#include <linux/init.h>
> +#include <linux/slab.h>
> +#include <linux/i2c.h>

> +#include <linux/of.h>
> +#include <linux/of_device.h>

You don't need them, instead of proxying...

> +#include <linux/mfd/core.h>
> +#include <linux/mfd/adp5585.h>

m is earlier than 'o', but with above drop no more issue :-)

...just include mod_devicetable.h.

> +#include <linux/regmap.h>

+ types.h // e.g., u8

...

> +	regmap_config = of_device_get_match_data(&i2c->dev);

We have i2c_get_match_data().

...

> +#ifndef __LINUX_MFD_ADP5585_H_
> +#define __LINUX_MFD_ADP5585_H_
> +
> +#include <linux/bits.h>

...

> +#define		ADP5585_MAN_ID(v)		(((v) & 0xf0) >> 4)

GENMASK()

...

> +#define		ADP5585_Rx_PULL_CFG_MASK	(3)

GENMASK()

Why parentheses in all of them, btw?

...

> +#define		ADP5585_C4_EXTEND_CFG_MASK	(1U << 6)

> +#define		ADP5585_R4_EXTEND_CFG_MASK	(1U << 5)

> +#define		ADP5585_R3_EXTEND_CFG_MASK	(3U << 2)

> +#define		ADP5585_R0_EXTEND_CFG_MASK	(1U << 0)

> +#define		ADP5585_OSC_FREQ_MASK		(3U << 5)

BIT() / GENMASK()

> +#endif

-- 
With Best Regards,
Andy Shevchenko



