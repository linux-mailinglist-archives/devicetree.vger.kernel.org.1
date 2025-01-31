Return-Path: <devicetree+bounces-142146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3538EA2449E
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F0751626B6
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A961F3FF6;
	Fri, 31 Jan 2025 21:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="e4Y2HIpN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C169139E
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738358870; cv=none; b=X5ftna0dWGo72frP7W6u1AOl13UdHK891VP03ceSIwwLBuR5CZrKFSVszBbhhFuUVp1kNath2IrmkYKQ2Tv+/L9m2bP/+vG8zBOlSC6ph2WfokqZs/a1BNeJlng6bBvigye2+QeKwWVJRO313GqwMS0Hn8lD10mbHsld2EKQw24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738358870; c=relaxed/simple;
	bh=FDeA4+B4xxJNSnAzEXIAJkVJ3PT2yy8D1E7IuSV3R88=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0FLCYbJfGYYiygnuAXDQUmtYpxd7KXw2V76c3sfc4AktQVUiPBW7rb/Efvv85dgAW8i12I3CoBZ/wlg3EE4A0Ex93Etp3hoc/Ww+lIInMWdv17KgAOH5mrQliP9tKQFwz3S6T5vYzyA0+ki7cR/eZ9aBryBQmTjRISQzrFx9CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=e4Y2HIpN; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3ebbec36900so1292057b6e.1
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 13:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738358866; x=1738963666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KVkeKDp8BQvTTjbPQCb4QrIee9efxV1gjW786NpzUDs=;
        b=e4Y2HIpNPOehBcQ62KnLSDVdiZeuhR/hkb6MfarMJpdP2IkfPUktCRbtU60WMSR/Ka
         8nXPWepALROf00EBfMTeIyOLDC5RQqGDruP/1gxACEwoHx+HtJhLQqNt5sEjk5+yVABO
         Mn4XD1ybl6wNVERAeH6sXljGolDQn8tTb5585NwWrhUEOQaAi8Zf/TlLMymU0c36osKA
         2M07WVZBdKs+XroXX2H/mCk2RcBG+9VSkMKfA0FKa5AeKpytlq5L8t6U8p2v4H/cIJFp
         BuQ1wNbK38sXCgSDDi5ZcowgD/Na4lfWM8RChd6O6dPP5Vt5466ph7ryRJq8aQrxS6Te
         90zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738358866; x=1738963666;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KVkeKDp8BQvTTjbPQCb4QrIee9efxV1gjW786NpzUDs=;
        b=akXzYgLuEmh99MLAayyOSb/L2s+/MND00qqQuLJiShU73eWhWaNF1PSWu8mC+W33wj
         YZnLd+X+CEx55I/vb4wZoTCXbjytNDED+4yZ+tSLszhL9beOHIjDxu8JT8RkbzsnCbHZ
         fR9ZrVThIdwcCIAXbySC6GB8OkXnWgTYCeo2duCguQDS/LdCI1SxQeXjO6mU/VKV70J/
         HDTyNTb/2YcyPvclMLPO5A1hXhcWNM9/6SeljZXUJR25kXgr9nAp9f70A1+MMo+kzeCl
         /8dv0IUMWyCoz0ICQB6Mcu20IDde/YbER7vSgyXMAhE85LiHASRVc7KYex4u/NZQtXb6
         xa+g==
X-Forwarded-Encrypted: i=1; AJvYcCWVLKISRam1INXQ/n2cyDMOeIG3E4k3yWw6g1AOsEP073yujTiKdZZe8LeP6fv5z4Y5T7o5YQPFrXFi@vger.kernel.org
X-Gm-Message-State: AOJu0YxyLX+qADkh2CFVa/SxYB0QMTyS1XehYWHwpI86maIh/XgsVMuM
	RXfF/Fn2dzUdGIid8SYPKP7lKCaAPaBo4nPgJhmX9I5APToZwX2QIjdo+A4QbWo=
X-Gm-Gg: ASbGncsP1kSsemTiJHpcJNdOa7vHbVjM/oV64DDLYsVEWlXLO9MgBS6FC97Rud63rdW
	TwXiPJoczuaFEciXgeTIcz7It9c0lmME6U0OFfM8YZ+tCM4UaGWqy7CgiDuhiKBwFqOjXWm7Vvy
	gX4QC0sbmaabSsoQaqO8ZtAvrAsM4IjNfh+oa6t5s5MK5fgYmkGkr86sk6kHtJWtiKT7VZzXh5H
	83wtUHdPmH9VqfjTPRUHuMTBACUr4z8ws6rzJf+UUJgm9l4b80sU+4tgtV+VPJ2FpDX5D41tS5t
	SXh7R1VHGa3n/urnea1tBi/c6t+DnJFWFs1tDi/KpubbuYVsmZPY
X-Google-Smtp-Source: AGHT+IEEpoW16oUpV4LltsxdkHnvZnJdHh1ZTd/FlmpTGCBVtpCPewZ9omSGGA1Q5C14YqPjOnjbAw==
X-Received: by 2002:a05:6808:1649:b0:3eb:5c03:2508 with SMTP id 5614622812f47-3f323a591ccmr8758300b6e.18.1738358866490;
        Fri, 31 Jan 2025 13:27:46 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f33367f6c6sm1016692b6e.42.2025.01.31.13.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2025 13:27:45 -0800 (PST)
Message-ID: <1da68f05-9d53-44dc-bef4-4364e841b791@baylibre.com>
Date: Fri, 31 Jan 2025 15:27:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] iio: adc: adi-axi-adc: add support for AD7606
 register writing
To: Angelo Dureghello <adureghello@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandru Ardelean <aardelean@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Guillaume Stols <gstols@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
 <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-7-c3aec77c0ab7@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-7-c3aec77c0ab7@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/29/25 5:03 AM, Angelo Dureghello wrote:
> From: Guillaume Stols <gstols@baylibre.com>
> 
> Since we must access the bus parallel bus using a custom procedure,
> let's add a specialized compatible, and define specialized callbacks for
> writing the registers using the parallel interface.
> 
> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> Co-developed-by: Angelo Dureghello <adureghello@baylibre.com>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  drivers/iio/adc/adi-axi-adc.c | 100 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 
> diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
> index 0923565cf5bb..aaeb445a8a3e 100644
> --- a/drivers/iio/adc/adi-axi-adc.c
> +++ b/drivers/iio/adc/adi-axi-adc.c
> @@ -27,6 +27,7 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/iio.h>
>  
> +#include "ad7606_bus_iface.h"
>  /*
>   * Register definitions:
>   *   https://wiki.analog.com/resources/fpga/docs/axi_adc_ip#register_map
> @@ -73,6 +74,12 @@
>  #define ADI_AXI_ADC_REG_DELAY(l)		(0x0800 + (l) * 0x4)
>  #define   AXI_ADC_DELAY_CTRL_MASK		GENMASK(4, 0)
>  
> +#define ADI_AXI_REG_CONFIG_WR			0x0080
> +#define ADI_AXI_REG_CONFIG_RD			0x0084
> +#define ADI_AXI_REG_CONFIG_CTRL			0x008c
> +#define   ADI_AXI_REG_CONFIG_CTRL_READ		0x03
> +#define   ADI_AXI_REG_CONFIG_CTRL_WRITE		0x01
> +
>  #define ADI_AXI_ADC_MAX_IO_NUM_LANES		15
>  
>  #define ADI_AXI_REG_CHAN_CTRL_DEFAULTS		\
> @@ -80,6 +87,10 @@
>  	 ADI_AXI_REG_CHAN_CTRL_FMT_EN |		\
>  	 ADI_AXI_REG_CHAN_CTRL_ENABLE)
>  
> +#define ADI_AXI_REG_READ_BIT			0x8000
> +#define ADI_AXI_REG_ADDRESS_MASK		0xff00
> +#define ADI_AXI_REG_VALUE_MASK			0x00ff
> +
>  struct axi_adc_info {
>  	unsigned int version;
>  	const struct iio_backend_info *backend_info;
> @@ -313,6 +324,81 @@ static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
>  	return iio_dmaengine_buffer_setup(st->dev, indio_dev, dma_name);
>  }
>  
> +static int axi_adc_raw_write(struct iio_backend *back, void *buf, unsigned int len)
> +{
> +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> +	u32 data;
> +
> +	data = *(u32 *)(buf);

Hmm... could result in unaligned access and len is not used. Can we just have
`u32 val` as the parameter instead of buf and len?

> +
> +	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_WR, data);
> +	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL,
> +		     ADI_AXI_REG_CONFIG_CTRL_WRITE);
> +	usleep_range(50, 100);

Use fsleep().

> +	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL, 0x00);
> +	usleep_range(50, 100);
> +
> +	return 0;
> +}
> +
> +static int axi_adc_raw_read(struct iio_backend *back, void *buf, unsigned int len)
> +{
> +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> +	u32 *bdata = buf;

ditto (about buf and len)

> +
> +	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL,
> +		     ADI_AXI_REG_CONFIG_CTRL_READ);
> +	usleep_range(50, 100);
> +	regmap_read(st->regmap, ADI_AXI_REG_CONFIG_RD, bdata);
> +	regmap_write(st->regmap, ADI_AXI_REG_CONFIG_CTRL, 0x00);
> +	usleep_range(50, 100);

ditto (fsleep)

> +
> +	return 0;
> +}
> +
> +static int ad7606_bus_reg_read(struct iio_backend *back, u32 reg, u32 *val)
> +{
> +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> +	u32 buf;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/*
> +	 * The address is written on the highest weight byte, and the MSB set
> +	 * at 1 indicates a read operation.
> +	 */
> +	buf = FIELD_PREP(ADI_AXI_REG_ADDRESS_MASK, reg) | ADI_AXI_REG_READ_BIT;
> +	axi_adc_raw_write(back, &buf, sizeof(buf));
> +	axi_adc_raw_read(back, val, 4);
> +
> +	/* Write 0x0 on the bus to get back to ADC mode */
> +	buf = 0;
> +	axi_adc_raw_write(back, &buf, sizeof(buf));
> +	return 0;
> +}
> +
> +static int ad7606_bus_reg_write(struct iio_backend *back, u32 reg, u32 val)
> +{
> +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> +	u32 buf;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* Write any register to switch to register mode */
> +	buf = 0xaf00;
> +	axi_adc_raw_write(back, &buf, sizeof(buf));
> +
> +	buf = FIELD_PREP(ADI_AXI_REG_ADDRESS_MASK, reg) |
> +	      FIELD_PREP(ADI_AXI_REG_VALUE_MASK, val);
> +	axi_adc_raw_write(back, &buf, sizeof(buf));
> +
> +	/* Write 0x0 on the bus to get back to ADC mode */
> +	buf = 0;
> +	axi_adc_raw_write(back, &buf, sizeof(buf));
> +
> +	return 0;
> +}
> +
>  static void axi_adc_free_buffer(struct iio_backend *back,
>  				struct iio_buffer *buffer)
>  {
> @@ -484,9 +570,23 @@ static const struct axi_adc_info adc_generic = {
>  	.backend_info = &adi_axi_adc_generic,
>  };
>  
> +static const struct ad7606_platform_data ad7606_pdata = {
> +	.bus_reg_read = ad7606_bus_reg_read,
> +	.bus_reg_write = ad7606_bus_reg_write,
> +};
> +
> +static const struct axi_adc_info adc_ad7606 = {
> +	.version = ADI_AXI_PCORE_VER(10, 0, 'a'),

Is this the actual current version we are testing with? IIRC there were some
changes made recently for this variant of the IP block so would be best to make
sure we have the latest version here since older versions might not be working.

> +	.backend_info = &adi_axi_adc_generic,
> +	.bus_controller = true,
> +	.pdata = &ad7606_pdata,
> +	.pdata_sz = sizeof(ad7606_pdata),
> +};
> +
>  /* Match table for of_platform binding */
>  static const struct of_device_id adi_axi_adc_of_match[] = {
>  	{ .compatible = "adi,axi-adc-10.0.a", .data = &adc_generic },
> +	{ .compatible = "adi,axi-ad7606x", .data = &adc_ad7606 },
>  	{ /* end of list */ }
>  };
>  MODULE_DEVICE_TABLE(of, adi_axi_adc_of_match);
> 


