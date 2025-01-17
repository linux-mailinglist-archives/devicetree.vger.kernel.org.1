Return-Path: <devicetree+bounces-139338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD8EA15320
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46CA33A1292
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78C4F198A06;
	Fri, 17 Jan 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="utrhUUkS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DD0186284
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 15:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737128933; cv=none; b=IF5xTwhxl8yjsQZPaOFU9MMct80K5Kw/oLzpW42EGWSrhwFkvTlP1Z102/URIKOzKOGbaqbWGAuh2gX5lHpLDcyhaihd4MGItJYjYOykar8k5Na4pDHsZsl7Rt30quhLEprUOzyn0TfQi5P7ZGnil7a5Rka3r1i0QioaNDyVYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737128933; c=relaxed/simple;
	bh=T/09PAn0K9MknUR73hMHLd+8kcIwW0SWgv9GknFSW74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IeESpCjThLLevau8YsvLR7eKAANSiFMJI6o4ydlYrePuDP6P+SlbOufvbiSAwdhEEms+73xV5lFqjfWElICdIpqkoAJZNZmeuHNsLO2vicwFoOBRC7mdQ4axI6Gnb42va3JwoxdEH6B4gXkxZwP2npB7/ZazmvdppAF1+y5BWpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=utrhUUkS; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4362f61757fso21953055e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 07:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737128929; x=1737733729; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wp5lDYQ/FVQNKqP77PtuRYPa4kZQpA/61vS4WS8uPJM=;
        b=utrhUUkSFOqlzWV4Llpd7d8mldG61LZ9ibnlmd71duOHj2yEpeWNffBBoNom2/r5Sc
         W9JdQMSd7J/59LehHJlP2hWpE4XuzqtZGzhYYSg/PfWhECtPZynwFRpQ4+gC7ZMC9Fzx
         obIQ1a8TeusDnMcDUUW9iqdM2n/YLuX0gM7JyCJBqdPFAHLREDVbBw49sA0E67SXzg1E
         ehonmWHJuIJ11ZYJ3HkVSDTdue07GtxdApSR3UcRwa/XUBvLx/bAmiNS5flK2SGwMbJS
         HogdvTR0HGYPyCYB51skhLp5gU49sZW0yLfaEVlPgP8zgqXtBhmCATahUAxLlLcuo/JP
         AXYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737128929; x=1737733729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wp5lDYQ/FVQNKqP77PtuRYPa4kZQpA/61vS4WS8uPJM=;
        b=agq80Ucv71F7dXPk3YV87Er7kLtRTWhWXVNKl2oaBk+ppHgoSFkO/RG9hbtAI1hyOd
         h/p8FietwjLgle0iQC/b6uMS7ycLtqXJO2jzyeixS9C0JJtNyDGDqo4MQ9Sy1iyn7vg2
         prJZRM6nn53ud4b7eFFFqXtjIwRKXqlKeevJ+DJ8M69ZwPx2ZjuYqHL4Nrp7MtzK9Qe1
         447oeX1y80huDRYOlrVD9wIkbw+R+yfTm6vMEljeL0Q9h5ppNACD9TWTL2xAK3p+Uvag
         hd91NTJV9PnrfjwzfK7CwcSsWo3RXd/b+BO3QON6Bf2tXQXXE17Df6RZ6/irPZ2IEZmR
         0DLw==
X-Forwarded-Encrypted: i=1; AJvYcCX1KRIMb2GgGAvCY8VsaS9cOt7u25ZpZpvDKTya1QYOfPzZ6ejmPADLvyFZ6Cv+tGeSEgePWFqBUoJQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzEQRKj6NsaJqU5h8kFVUmCwbe+bWxJJOiMqp7yAP9/k+S0ps0G
	hSZS9vNCUmTP/23Q/VHmsVU+/PsCQRpWFMZZ+ngkGJ4KrhirO3/vhfrXBglfeks=
X-Gm-Gg: ASbGncsQyWcWLv3YTEQelnThTUWhGSuIvk/hUau6PvDFTBqtqnDFfDEV4geVOwMckMZ
	5NgRItisrscfkJXWMCHJIs3Sh5ix18vwUKeKWC8BtIJIVw/pkoRFTSXKSccd8Ilsj3MBE4hxD0A
	470cis9SRBJfgRpTsTjF/X/w/OJ1sREob/yEzwB5nSIGhg5qeFh7fsYAi952ODvLniTMUQj/fJQ
	N41dCwO3XVt1g9f0cNb9qMXBBALhI0lN4rlOzRWOE7fm37gsudRulUFjrA8j/iuWJWxgzo+wg+9
	xUvCSEmfXyeDmPKAeDoWK1vzsw==
X-Google-Smtp-Source: AGHT+IEUwldAZQq+9u44Cgxr20RCrrtNFuCZgAttsz2mk4lnSLbnQasV79BguyJKWinaPHhq+x/qVQ==
X-Received: by 2002:a05:6000:1a8c:b0:38b:ed6f:f00f with SMTP id ffacd0b85a97d-38bf56635a1mr2730865f8f.17.1737128929108;
        Fri, 17 Jan 2025 07:48:49 -0800 (PST)
Received: from dfj (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322a506sm2775979f8f.41.2025.01.17.07.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 07:48:48 -0800 (PST)
Date: Fri, 17 Jan 2025 16:47:18 +0100
From: Angelo Dureghello <adureghello@baylibre.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
	Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v7 14/17] iio: adc: ad4695: Add support for SPI offload
Message-ID: <ls32gl5a7nsihmmpfabxhm6ilg7idyxdhyrhbkay6e2fiokoah@o5ujfxlsq3s3>
References: <20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com>
 <20250113-dlech-mainline-spi-engine-offload-2-v7-14-e0860c81caae@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-dlech-mainline-spi-engine-offload-2-v7-14-e0860c81caae@baylibre.com>

Hi,

noticed just one possible issue here, see below.

On 13.01.2025 15:00, David Lechner wrote:
> Add support for SPI offload to the ad4695 driver. SPI offload allows
> sampling data at the max sample rate (500kSPS or 1MSPS).
> 
> This is developed and tested against the ADI example FPGA design for
> this family of ADCs [1].
> 
> [1]: http://analogdevicesinc.github.io/hdl/projects/ad469x_fmc/index.html
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> 
> v7 changes: none
> 
> v6 changes:
> * Fixed use of c++ style comments
> * Moved static const struct definition out of probe function
> * Changes bits_per_word to always be 19 for future oversampling
>   compatibility (Trevor is working on implementing oversampling support
>   on top of this patch, so we have high confidence this is the correct
>   thing to do)
> * Fixed wrong xfer->len
> 
> v5 changes:
> * Register SCLK speed handling has been split out into a separate series.
> * Add sampling_frequency_available attribute.
> * Limit max allowed sampling frequency based on chip info.
> * Expand explanations of offload enable/disable ordering requirements.
> * Finish TODO to use macros for phandle arg values.
> * Don't use dev_info() when falling back to non-offload operation.
> * Update to accommodate changes in other patches in this series.
> 
> v4 changes: new patch in v4
> ---
>  drivers/iio/adc/Kconfig  |   1 +
>  drivers/iio/adc/ad4695.c | 445 +++++++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 429 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index 995b9cacbaa964d26424346120c139858f93cdcd..ec60b64c46e187e2be18ab1f8ca9e6f4f03299f9 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -52,6 +52,7 @@ config AD4695
>  	tristate "Analog Device AD4695 ADC Driver"
>  	depends on SPI
>  	select IIO_BUFFER
> +	select IIO_BUFFER_DMAENGINE
>  	select IIO_TRIGGERED_BUFFER
>  	select REGMAP
>  	help
> diff --git a/drivers/iio/adc/ad4695.c b/drivers/iio/adc/ad4695.c
> index 13cf01d35301be40369571e7dd2aeac1a8148d15..c8cd73d19e869f11999608f61df5724d329b4427 100644
> --- a/drivers/iio/adc/ad4695.c
> +++ b/drivers/iio/adc/ad4695.c
> @@ -19,14 +19,19 @@
>  #include <linux/device.h>
>  #include <linux/err.h>
>  #include <linux/gpio/consumer.h>
> +#include <linux/iio/buffer-dmaengine.h>
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/iio.h>
>  #include <linux/iio/triggered_buffer.h>
>  #include <linux/iio/trigger_consumer.h>
>  #include <linux/minmax.h>
> +#include <linux/mutex.h>
>  #include <linux/property.h>
> +#include <linux/pwm.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/spi/offload/consumer.h>
> +#include <linux/spi/offload/provider.h>
>  #include <linux/spi/spi.h>
>  #include <linux/units.h>

...

> +static int ad4695_offload_trigger_request(struct spi_offload_trigger *trigger,
> +					  enum spi_offload_trigger_type type,
> +					  u64 *args, u32 nargs)
> +{
> +	struct ad4695_state *st = spi_offload_trigger_get_priv(trigger);
> +
> +	/* Should already be validated by match, but just in case. */
> +	if (nargs != 2)
> +		return -EINVAL;
> +
> +	/* DT tells us if BUSY event uses GP0 or GP3. */
> +	if (args[1] == AD4695_TRIGGER_PIN_GP3)
> +		return regmap_set_bits(st->regmap, AD4695_REG_GP_MODE,
> +				       AD4695_REG_GP_MODE_BUSY_GP_SEL);
> +
> +	return regmap_clear_bits(st->regmap, AD4695_REG_GPIO_CTRL,
> +				 AD4695_REG_GP_MODE_BUSY_GP_SEL);

This should probably be:
         
        return regmap_clear_bits(st->regmap, AD4695_REG_GPIO_MODE,
                                 AD4695_REG_GP_MODE_BUSY_GP_SEL);

> +}
> +

Regards,
angelo


