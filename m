Return-Path: <devicetree+bounces-210815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E68B3CE03
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 19:19:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABB811BA22A5
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 17:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09220274B30;
	Sat, 30 Aug 2025 17:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gYU1S8ny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A68F2367BA
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 17:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756574350; cv=none; b=dGQCa0rVTCOxGy41I3EgaPk2W5baTIPt0YbXXPXCL6q96cyKtfr4P1f1ru6yYzOkafawhn0DL67SN5m4t7J2YOOzvreqjhCv11ZKM0FLXGTU6p1go/OxswRK7iwTyFgACxRWb+GPSn1Hv2W6c4U9Af01poTwRWRMoPj2ib6vChY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756574350; c=relaxed/simple;
	bh=UBHG+9SPy9usH/CpfwQR9J5CI7EPxyX/aq86W1GSMjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l9gvO5n2O7rei7rSAC6fLSnnqzOE+oh0YDkB0XDvofMPaVGJ21q8sQHD41BV3AZ8Td0VVcRmSwoADd8kXBbuqcsPp87XXDQ/T9krHUlaQIGg4tZQRC4Wk+shOoFkH8PBhpC9DE94zZv1jD0FgsfTGxthXkKC5tinxtSETwPyXJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gYU1S8ny; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-745514a7b1fso874963a34.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756574346; x=1757179146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YeDVxheW4o9XBGPi8jw/Mc+wVOwdFH2KoFx58cVzgZw=;
        b=gYU1S8nynrNsJhNYvJ104T0sCr/+c8fC5KyGI5mhkTvAW5zcduZVuU4c5F3U8VIeXv
         21R6on+pbraPDN+IHAesKD/YG62DoVNTzNC/3fbVFsaXz2xRl19D9DlA7tacYsMCAOv2
         ieKz+fplGr0VrXwrpVXUMurmey0Pi5dxXrPey7+HI9mbWsTF8NTd8xkl2lx24YEchwnH
         9uTMnYB/d2jT80O8NoX+7mr5qnK6MNQIZX8GfPQzto8IqBOKJafOyhCURyDsePMBGyuG
         kzzAEn4XPQ4hS83hiZGWVewxUBvWHC9luXLX/l0SqSsJw1ftTVwPYK8oCnO5FM0kxhKe
         3yJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756574346; x=1757179146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YeDVxheW4o9XBGPi8jw/Mc+wVOwdFH2KoFx58cVzgZw=;
        b=t7eloBRox+zI1Z6hGHucEVJed8nKViiBmIHMEOikza3qQzMdDz9UBJOPn07s6ZL+aQ
         9Gr1R0EK5G1bicV5hbweYCuo5CvamYRro9do4SttEz2kJFlr3qADTTCXULekjTTJPeXe
         3hkFrkY9Mqe8gPcDLTQSyartNZzY5h0iPHWq0Mhz/je7Wc6nSYVvmVwU1dy2FvXzMXHs
         Hq90SNTFNEsN0zXW3dgpIXjlbE63mN2/dbt9IAQKn/4rRbF3kQjyvYhiW2q+IH6QxnLn
         zpQKp62L2ZKhbjaDm2xhjwhB6cmOxryK74cD1BV8/CXh30A9ACYY6F7pNFLlVz8YOYBU
         kCVA==
X-Forwarded-Encrypted: i=1; AJvYcCWtCi4vRGCa3a1bf+RDndj86XNs7PA6c4lGc0Zwee4H/Xg0EN4HkEFZIH4igTLOZrzXzE89wnMPhVmZ@vger.kernel.org
X-Gm-Message-State: AOJu0YycQ31k+LMsuRqeDviyEYBNwjqIMqbKPHAKmeUAWulmmMsA6pJI
	f2JKG99Gkn+r5KXzl7h+oFkE65Cb+VJLEyKHV5yvBIPTF9UK9FugEcU6kkyO+yLHxOE=
X-Gm-Gg: ASbGncv+kmhEmQlpoyaklsDcFRItJtnp0MO3tVMKcCqTjyMVl8BIkvpYBxbQOe749O7
	gfFDaoRuUBiOQU5fxwMkqP3h9KKyl9MLkGxXEPbsbfDQ9NWtpI8IQxt+qTrvxV5ewKNoW6kJGdo
	99H/djVwKA98JqCbouygmttNnVTBFEDA8qMHiTRmmRtNgiiOP/LDhCBiLlJaNs1IBoWzDvWY4fs
	Hyn+mLn5/vx0tF4on7EyAzii/pWfKFL7AP0qMB4ue4XmEhbKI/sGkumgUfF78/HepcyN5NlDfL5
	oYveXFfcqvihO3WX/1GSOc9kHHgJqlHzVTW3Z7mOv0/LEQ0n3Gnwoiy3rOjJGovlo4tmYLiFjF0
	DlLJo5CjTD3pwXAjr+PKX0cZyN2Fjj0x810V8jcQoV5hBGGMtli9qG2f66Wk1mt/UR6YKwcK0FM
	OKcfdcL012XQ==
X-Google-Smtp-Source: AGHT+IFi29hPex54pz8o3psrTBeZJRuO4YVWG2tWpBUn2CBUnvUy3efI4Ysjb7trhSOOAHvvPg1ZIg==
X-Received: by 2002:a05:6808:152c:b0:437:c839:ef67 with SMTP id 5614622812f47-437f7ca904fmr1009151b6e.3.1756574346490;
        Sat, 30 Aug 2025 10:19:06 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-745742a672csm9076a34.13.2025.08.30.10.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 10:19:05 -0700 (PDT)
Message-ID: <a9b64ad7-41ff-4428-b47a-e3b3e50670a3@baylibre.com>
Date: Sat, 30 Aug 2025 12:19:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/15] iio: adc: ad4030: Support multiple data lanes per
 channel
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc: jic23@kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, sergiu.cuciurean@analog.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <4e2b2d07a255bb249a1dc40a4470c7e123d4213f.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <4e2b2d07a255bb249a1dc40a4470c7e123d4213f.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:43 PM, Marcelo Schmitt wrote:
> AD4030 and similar chips can output ADC sample data through 1, 2, or 4
> lines per channel. The number of SPI lines the device uses to output data
> is specified in firmware. Parse SPI read bus width setting from firmware
> and configure the device to use that amount of lines to output data.
> 
> Co-developed-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/ad4030.c | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad4030.c b/drivers/iio/adc/ad4030.c
> index 68f76432dbfd..e6c1c9be1632 100644
> --- a/drivers/iio/adc/ad4030.c
> +++ b/drivers/iio/adc/ad4030.c
> @@ -20,6 +20,7 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/trigger_consumer.h>
>  #include <linux/iio/triggered_buffer.h>
> +#include <linux/log2.h>
>  #include <linux/pwm.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> @@ -258,6 +259,10 @@ struct ad4030_state {
>  #define AD4030_OFFLOAD_CHAN_DIFF(_idx, _scan_type)			\
>  	__AD4030_CHAN_DIFF(_idx, _scan_type, 1)
>  
> +static const int ad4030_rx_bus_width[] = {
> +	1, 2, 4, 8,
> +};
> +
>  static const int ad4030_average_modes[] = {
>  	1, 2, 4, 8, 16, 32, 64, 128,
>  	256, 512, 1024, 2048, 4096, 8192, 16384, 32768,
> @@ -1197,7 +1202,7 @@ static void ad4030_prepare_offload_msg(struct ad4030_state *st)
>  		 */
>  		offload_bpw = data_width * st->chip->num_voltage_inputs;
>  	else
> -		offload_bpw  = data_width;
> +		offload_bpw  = data_width / (1 << st->lane_mode);

To make proper use of 2 or 4 lines for a single channel, we should be
using the SPI APIs correctly and set rx_nbits in struct spi_transfer
instead of providing an inaccurate bits per word.

>  
>  	st->offload_xfer.speed_hz = AD4030_SPI_MAX_REG_XFER_SPEED;
>  	st->offload_xfer.bits_per_word = offload_bpw;
> @@ -1208,6 +1213,10 @@ static void ad4030_prepare_offload_msg(struct ad4030_state *st)
>  
>  static int ad4030_config(struct ad4030_state *st)
>  {
> +	struct device *dev = &st->spi->dev;
> +	const char *propname;
> +	u32 rx_bus_width;
> +	unsigned int i;
>  	int ret;
>  	u8 reg_modes;
>  
> @@ -1215,10 +1224,28 @@ static int ad4030_config(struct ad4030_state *st)
>  	st->offset_avail[1] = 1;
>  	st->offset_avail[2] = BIT(st->chip->precision_bits - 1) - 1;
>  
> -	if (st->chip->num_voltage_inputs > 1)
> +	/* Optional property specifying the number of lanes to read ADC data */
> +	propname = "spi-rx-bus-width";

This property is already handled by the core SPI code and will set
spi->mode flags SPI_RX_DUAL, SPI_RX_QUAD or SPI_RX_OCTAL. So we don't
need to read the property again.

> +	rx_bus_width = ad4030_rx_bus_width[0]; /* Default to 1 rx lane. */
> +	device_property_read_u32(dev, propname, &rx_bus_width);
> +	/* Check the rx bus width is valid */
> +	for (i = 0; i < ARRAY_SIZE(ad4030_rx_bus_width); i++)
> +		if (ad4030_rx_bus_width[i] == rx_bus_width)
> +			break;
> +
> +	if (i >= ARRAY_SIZE(ad4030_rx_bus_width))
> +		return dev_err_probe(dev, -EINVAL, "Invalid %s: %u\n",
> +				     propname, rx_bus_width);
> +
> +	rx_bus_width = ad4030_rx_bus_width[i];
> +
> +	if (rx_bus_width == 8 && st->chip->num_voltage_inputs == 1)
> +		return dev_err_probe(dev, -EINVAL, "1 channel with 8 lanes?\n");

As mentioned in the dt-bindings patch review, we really should consider
the 2 channel case separate as 2 SPI buses rather than 8 lines on a
single bus. 

Only using "spi-rx-bus-width" also has the shortcoming that if we specify
4, we don't know if is it 4 lines on 1 channel or is it 2 lines each on 2
channels? There is no way to tell from just that information.

> +
> +	if (rx_bus_width == 1 && st->chip->num_voltage_inputs > 1)
>  		st->lane_mode = AD4030_LANE_MD_INTERLEAVED;
>  	else
> -		st->lane_mode = AD4030_LANE_MD_1_PER_CH;
> +		st->lane_mode = ilog2(rx_bus_width / st->chip->num_voltage_inputs);
>  
>  	reg_modes = FIELD_PREP(AD4030_REG_MODES_MASK_LANE_MODE, st->lane_mode);
>  


