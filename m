Return-Path: <devicetree+bounces-248450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48705CD2C2D
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 10:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B65D3011F9B
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 09:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE7D3002A5;
	Sat, 20 Dec 2025 09:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsfzUnrG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D532BF000;
	Sat, 20 Dec 2025 09:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766222769; cv=none; b=SuJ97CeDlQlG00P0e8AQ63XIDq1mVeHcgvKmXgO8rSz0Yq+mJE83jMe+axjEjmV1bXA0RoCoOvjv8Newpoergj7sosskt30DoikaMPCNhZKrJ9+hCIyFt+Mdx0Efz+BqPzVZBUR2kXUt2PupzYO7+oxN6bXKYQRreN8ImExg8ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766222769; c=relaxed/simple;
	bh=vwfvX8wfT2r3BX5j/apD+wKIc6KI9sgwiC8FdLx0B3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ixMyM13wWHRvg7WIJ4FQjvDrAjCkfOSEYXQUj+XlvZKZq21keLKh5CBW2UAp5IJH1SWh4fSIU5AnR06y32XrTsHvlTLdH73HnBEIShp4zBMt3sPTjpZwQIijnCQw3YiFYtYWenq8ANrEUGwGkltZogBnpGdYDbAzN6evoRPleew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsfzUnrG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D43B9C4CEF5;
	Sat, 20 Dec 2025 09:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766222768;
	bh=vwfvX8wfT2r3BX5j/apD+wKIc6KI9sgwiC8FdLx0B3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hsfzUnrGTyNq0bRPvy089vZJbmBTrj4PTPMndPQ8LhDXpK2NjJbTuTLVYQS30FUmK
	 kBZYfvbsyNEbuLj8vXDDvGHoptBxUYWfdPYlvNVj4B6gJ2o7dn93ar4FaMYB+KJaEN
	 lVrn2Lk167CcvirnTQxwXL1My4q8Uk5THA1PUf5e2y8/Lb36D/YIR/3hOoTIWDfu8c
	 XwJrQX2l53Y/vgPm/IGZbLTUmjup+YsObYGNQ58p/fEhD6PUnMI6As0edsSYfuxGbk
	 4HD3GDgBJvt5pJ6oW4RFcmY+IdvrmyW4HHmxIzdmh6i0OlhBJ+jifaX7oHhIPPiQ2w
	 LgDkGRR+Yvyfw==
Date: Sat, 20 Dec 2025 10:26:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mux: adg2404: add driver support
Message-ID: <20251220-busy-grinning-iguana-87fdac@quoll>
References: <20251219143244.21674-1-antoniu.miclaus@analog.com>
 <20251219143244.21674-3-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251219143244.21674-3-antoniu.miclaus@analog.com>

On Fri, Dec 19, 2025 at 04:31:45PM +0200, Antoniu Miclaus wrote:
> Add support for ADG2404, a 4:1 analog multiplexer.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  drivers/mux/Kconfig   |  12 ++++
>  drivers/mux/Makefile  |   2 +
>  drivers/mux/adg2404.c | 133 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 drivers/mux/adg2404.c
> 
> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> index c68132e38138..5aba66e6e210 100644
> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -9,6 +9,18 @@ config MULTIPLEXER
>  menu "Multiplexer drivers"
>  	depends on MULTIPLEXER
>  
> +config MUX_ADG2404
> +	tristate "Analog Devices ADG2404 Multiplexer"
> +	depends on GPIOLIB || COMPILE_TEST
> +	help
> +	  ADG2404 4:1 single-ended analog multiplexer controlled by GPIO.
> +
> +	  The multiplexer state is controlled by 3 GPIO pins: A0, A1
> +	  (address selection) and EN (enable).
> +
> +	  To compile the driver as a module, choose M here: the module will
> +	  be called mux-adg2404.
> +
>  config MUX_ADG792A
>  	tristate "Analog Devices ADG792A/ADG792G Multiplexers"
>  	depends on I2C
> diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
> index 6e9fa47daf56..d3df403f8978 100644
> --- a/drivers/mux/Makefile
> +++ b/drivers/mux/Makefile
> @@ -4,12 +4,14 @@
>  #
>  
>  mux-core-objs			:= core.o
> +mux-adg2404-objs		:= adg2404.o
>  mux-adg792a-objs		:= adg792a.o
>  mux-adgs1408-objs		:= adgs1408.o
>  mux-gpio-objs			:= gpio.o
>  mux-mmio-objs			:= mmio.o
>  
>  obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
> +obj-$(CONFIG_MUX_ADG2404)	+= mux-adg2404.o
>  obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
>  obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
>  obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
> diff --git a/drivers/mux/adg2404.c b/drivers/mux/adg2404.c
> new file mode 100644
> index 000000000000..5e7352ac7290
> --- /dev/null
> +++ b/drivers/mux/adg2404.c
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Analog Devices ADG2404 4:1 multiplexer driver
> + *
> + * Copyright 2025 Analog Devices Inc.
> + *
> + * Author: Antoniu Miclaus <antoniu.miclaus@analog.com>
> + */
> +
> +#include <linux/bitmap.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/mux/driver.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +
> +#define ADG2404_CHANNELS	4
> +
> +struct adg2404_mux {
> +	struct gpio_descs *addr_gpios;
> +	struct gpio_desc *en_gpio;
> +};
> +
> +static int adg2404_set(struct mux_control *mux, int state)
> +{
> +	struct adg2404_mux *adg2404 = mux_chip_priv(mux->chip);
> +	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
> +	u32 value = state;
> +
> +	if (state == MUX_IDLE_DISCONNECT) {
> +		gpiod_set_value_cansleep(adg2404->en_gpio, 0);
> +		return 0;
> +	}
> +
> +	/*
> +	 * Disable the mux before changing address lines to prevent
> +	 * glitches. Changing address while enabled could briefly activate
> +	 * an unintended channel during the transition.
> +	 */
> +	gpiod_set_value_cansleep(adg2404->en_gpio, 0);
> +
> +	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
> +	gpiod_set_array_value_cansleep(adg2404->addr_gpios->ndescs,
> +				       adg2404->addr_gpios->desc,
> +				       adg2404->addr_gpios->info,
> +				       values);
> +
> +	/* Enable the mux with the new address */
> +	gpiod_set_value_cansleep(adg2404->en_gpio, 1);

All this looks exactly the same as your other driver, so I don't get why
we need two.

Not sure if we even need any of them and this should be just
incorporated into gpio-mux driver.

...

> +
> +	ret = devm_mux_chip_register(dev, mux_chip);
> +	if (ret < 0)
> +		return ret;
> +
> +	dev_info(dev, "ADG2404 %u-way mux-controller registered\n",
> +		 mux_chip->mux->states);

Drop. We really do not need to know that every single device probed.

Best regards,
Krzysztof


