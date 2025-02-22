Return-Path: <devicetree+bounces-149826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C73A40878
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 13:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 392DC18971A6
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 12:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A217A209F4E;
	Sat, 22 Feb 2025 12:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk+Z3hC5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E0D20766E;
	Sat, 22 Feb 2025 12:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740228829; cv=none; b=sypta5uWovgcI6m8Y7Aras6lcvu5WXk+S25LZYQUoCdnpiTjevRLVDoNyyvTPqSQDjfymIAlY0C5UA8G4th/2vK0fDAUfePXFyuIM2zc1N7qQ6FxXWOCRIvS8BwfO9bha0avOI1MvwN9IZDekkvyjp7eaaw/g5nWn/MQDBukv7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740228829; c=relaxed/simple;
	bh=oqJN/sPCZaLoAPPOe7uUHklrzuH3yr710lMdVhi0Qno=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HvHYjBKFctNw7uPJ5EosFlPARhbceqQDvnlKyS9sPsh+SYfiPzkATAo9BTvVo9hZS8NKOZzu5AJdb9bADZjGQsHTk78X1q7O8wOj382v3qIrQ9HEL8pa94vCf/RVfJCsY2bqkUwVFL46AwmDpTWsv4/uQaG28qpKSeejtEDOufo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk+Z3hC5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F202C4CED1;
	Sat, 22 Feb 2025 12:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740228828;
	bh=oqJN/sPCZaLoAPPOe7uUHklrzuH3yr710lMdVhi0Qno=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Yk+Z3hC5KOE/6MsFx/Z5x2/LnU8vjW5lliJTA2N77BSWBAp6SRN8rnN8efyMb5RkE
	 zeaupHTMirYMfIyJX8fL6kGp9FieZ+gkX6SnDfPEQQH0mW5HhdPHh9KzNF7GxGtBvx
	 qF/Mp2wXMPDL+RXIMBQjey4Iop8jHsrpNmufli8OgVk+8Wu5xlnd6fhRloSte4K/84
	 iH5KWKD1APqjU7+ql+wAAkfKVeu0vJSBfHw5b+Y/oc3m/6BlDeCbGmkkz46aXSxqJG
	 8qbzIfpYXDPPWFqLtxRgZrfPY9lprNizet8sOfJ/NVuoME9pQauqaZjwHklSEvdIyl
	 QNR4Ck8t6VZUA==
Date: Sat, 22 Feb 2025 12:53:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan
 Hunter <jonathanh@nvidia.com>, Javier Carrasco
 <javier.carrasco.cruz@gmail.com>, Matti Vaittinen
 <mazziesaccount@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Emil Gedenryd
 <emil.gedenryd@axis.com>, Arthur Becker <arthur.becker@sentec.com>, Mudit
 Sharma <muditsharma.info@gmail.com>, Per-Daniel Olsson
 <perdaniel.olsson@axis.com>, Subhajit Ghosh
 <subhajit.ghosh@tweaklogic.com>, Ivan Orlov <ivan.orlov0322@gmail.com>,
 David Heidelberg <david@ixit.cz>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v4 2/3] iio: light: Add support for AL3000a illuminance
 sensor
Message-ID: <20250222125335.177fc746@jic23-huawei>
In-Reply-To: <20250217140336.107476-3-clamor95@gmail.com>
References: <20250217140336.107476-1-clamor95@gmail.com>
	<20250217140336.107476-3-clamor95@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 17 Feb 2025 16:03:35 +0200
Svyatoslav Ryhel <clamor95@gmail.com> wrote:

> AL3000a is a simple I2C-based ambient light sensor, which is
> closely related to AL3010 and AL3320a, but has significantly
> different way of processing data generated by the sensor.
> 
> Tested-by: Robert Eckelmann <longnoserob@gmail.com>
> Tested-by: Antoni Aloy Torrens <aaloytorrens@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: David Heidelberg <david@ixit.cz>

Whilst I am confused by earlier statements about not
having information on the conversion to illuminance values, I'm
going to assume the look up table in here is based on some
reasonable data from somewhere and hence that this is a sensor
with appropriate filtering of the light to be able to do a non linear
conversion from the value read and standard light curves.

As such the IIO_LIGHT channel type is fine for this device.

Applied patches 1 and 2 to the togreg branch of iio.git.
Note that I'll initially push this out as testing to allow
the autobuilders to see if they can find any issues that we missed.
Patch 3 will need to go via the appropriate SoC tree as normal.

Jonathan

> ---
>  drivers/iio/light/Kconfig   |  10 ++
>  drivers/iio/light/Makefile  |   1 +
>  drivers/iio/light/al3000a.c | 209 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 220 insertions(+)
>  create mode 100644 drivers/iio/light/al3000a.c
> 
> diff --git a/drivers/iio/light/Kconfig b/drivers/iio/light/Kconfig
> index 29ffa8491927..37f83e1d8893 100644
> --- a/drivers/iio/light/Kconfig
> +++ b/drivers/iio/light/Kconfig
> @@ -43,6 +43,16 @@ config ADUX1020
>  	 To compile this driver as a module, choose M here: the
>  	 module will be called adux1020.
>  
> +config AL3000A
> +	tristate "AL3000a ambient light sensor"
> +	depends on I2C
> +	help
> +	  Say Y here if you want to build a driver for the Dyna Image AL3000a
> +	  ambient light sensor.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called al3000a.
> +
>  config AL3010
>  	tristate "AL3010 ambient light sensor"
>  	depends on I2C
> diff --git a/drivers/iio/light/Makefile b/drivers/iio/light/Makefile
> index f14a37442712..03f10786273a 100644
> --- a/drivers/iio/light/Makefile
> +++ b/drivers/iio/light/Makefile
> @@ -7,6 +7,7 @@
>  obj-$(CONFIG_ACPI_ALS)		+= acpi-als.o
>  obj-$(CONFIG_ADJD_S311)		+= adjd_s311.o
>  obj-$(CONFIG_ADUX1020)		+= adux1020.o
> +obj-$(CONFIG_AL3000A)		+= al3000a.o
>  obj-$(CONFIG_AL3010)		+= al3010.o
>  obj-$(CONFIG_AL3320A)		+= al3320a.o
>  obj-$(CONFIG_APDS9300)		+= apds9300.o
> diff --git a/drivers/iio/light/al3000a.c b/drivers/iio/light/al3000a.c
> new file mode 100644
> index 000000000000..e2fbb1270040
> --- /dev/null
> +++ b/drivers/iio/light/al3000a.c
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <linux/array_size.h>
> +#include <linux/bitfield.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/pm.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/types.h>
> +
> +#include <linux/iio/iio.h>
> +
> +#define AL3000A_REG_SYSTEM		0x00
> +#define AL3000A_REG_DATA		0x05
> +
> +#define AL3000A_CONFIG_ENABLE		0x00
> +#define AL3000A_CONFIG_DISABLE		0x0b
> +#define AL3000A_CONFIG_RESET		0x0f
> +#define AL3000A_GAIN_MASK		GENMASK(5, 0)
> +
> +/*
> + * These are pre-calculated lux values based on possible output of sensor
> + * (range 0x00 - 0x3F)
> + */
> +static const u32 lux_table[] = {
> +	1, 1, 1, 2, 2, 2, 3, 4,					/* 0 - 7 */
> +	4, 5, 6, 7, 9, 11, 13, 16,				/* 8 - 15 */
> +	19, 22, 27, 32, 39, 46, 56, 67,				/* 16 - 23 */
> +	80, 96, 116, 139, 167, 200, 240, 289,			/* 24 - 31 */
> +	347, 416, 499, 600, 720, 864, 1037, 1245,		/* 32 - 39 */
> +	1495, 1795, 2155, 2587, 3105, 3728, 4475, 5373,		/* 40 - 47 */
> +	6450, 7743, 9296, 11160, 13397, 16084, 19309, 23180,	/* 48 - 55 */
> +	27828, 33408, 40107, 48148, 57803, 69393, 83306, 100000 /* 56 - 63 */
> +};


