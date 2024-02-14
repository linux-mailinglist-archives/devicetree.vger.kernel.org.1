Return-Path: <devicetree+bounces-41800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D67F38551C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 19:13:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 931D3299534
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 18:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA84D12BEA7;
	Wed, 14 Feb 2024 18:10:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50AF12BE9B
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 18:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707934221; cv=none; b=Nl6fb1TcG5G1Iw3EjY3AlWktWgdZX3cl+47Daq8GwJ10oRWjt8GI3VRjtEYf1pXA32wbaPwb6Wfp2avlBkPde7B7oxix1NEXFSL8P6iioHeBEnqummmVuFUDjzp1HjPDXAuUvqXLBac/pPkKvOC8GZMZF7OP9yQHlAMA5tO0zOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707934221; c=relaxed/simple;
	bh=7WHypSyBTQURJb5wYeOqNKQSqCQBE8H+799axs0Jw9s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=eN2ZRD7VO3Bw4X/Rx/oo5O8jfrCT1yx9qFc8EOxj2OL11U4OHo3hoyHAAG5tocnW3PXDNLAfTUjkKd/FzUc+2lc992cYNhOjwOFgClThJ2eQ04qcfVymhLlC2nmE29x9Z/oSg6mCrjR7P6BqR1L85wUyyrW8m5VmEd5KVHgF1cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6e1126f57f1so44958b3a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 10:10:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707934218; x=1708539018;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+mkaTMkL4XuODOYIB1UDzOU7ovvrohzK27gHXfKWZ0=;
        b=sKdTLDllRB/t+lBX0116zNoJlj/kFQga6jACwdQ3+OPs6MG9P0U0qLpyNWY5UeoaCr
         E3aZ6U/elcifxF/obNAO0fYhZdztQV1PPsIb/6PjhBDkbpnnbSYeGtsqJme/8LfVgQKi
         XODF9kyFTyfWctQ+5DzFL15RTLRJU0BQe9ksT2/ozrCpgeghgOrYUgKIIqJL13WfnzzE
         +RsK5e8hR4iNmjfiNEYtIPvno0zbG6NZGbhXmmCTcp9dtIMl5V8cvTlIQZOGI5AmPC59
         8bux1nAxoyMxsaworI62+2Ht6R2B4UblzgAOT1htjNl8EeotKLJ7kZSB+vwaJTtYIIno
         whSA==
X-Forwarded-Encrypted: i=1; AJvYcCX4VG26vq9VQoOOAOLZacCZrX7BNbGg5LcnoCSJ1vmMQUB5TEVvxwLd6WtffAKQkQzvAoz/QdKrDC+lQmLkchXHoa1b8fEXrpjkEg==
X-Gm-Message-State: AOJu0Yz/6ps9UUAo0nwTq86sY+wY6VoYbJOBcC6KdG1ihrEMk99+xJYe
	zjvQm0vC6ShJgvi77ngcrVQyOfMS0wXmkOwQ1ZShJTrdnB8C9rz3B48hpuahf2U=
X-Google-Smtp-Source: AGHT+IFK8wvq8PyTXN9WiF1EgezBeODa2rncnP+7DQvKpvpDW4iDd5x4TKvcCiEvEGI0JGnO+CQD1A==
X-Received: by 2002:a17:90a:c38e:b0:297:966:8f4d with SMTP id h14-20020a17090ac38e00b0029709668f4dmr3199103pjt.46.1707934218133;
        Wed, 14 Feb 2024 10:10:18 -0800 (PST)
Received: from localhost (71-212-63-227.tukw.qwest.net. [71.212.63.227])
        by smtp.gmail.com with ESMTPSA id sb14-20020a17090b50ce00b00298bc475539sm1766130pjb.33.2024.02.14.10.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 10:10:17 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jpanis@baylibre.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, lgirdwood@gmail.com, broonie@kernel.org,
 linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, Bhargav Raviprakash <bhargav.r@ltts.com>
Subject: Re: [RESEND PATCH v1 05/13] mfd: tps6594-spi: Add TI TPS65224 PMIC SPI
In-Reply-To: <20240208105343.1212902-6-bhargav.r@ltts.com>
References: <20240208105343.1212902-1-bhargav.r@ltts.com>
 <20240208105343.1212902-6-bhargav.r@ltts.com>
Date: Wed, 14 Feb 2024 10:10:17 -0800
Message-ID: <7hcysy6ho6.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Bhargav Raviprakash <bhargav.r@ltts.com> writes:

> Add support for TPS65224 PMIC in the TPS6594 driver as they share
> significant functional overlap.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>  drivers/mfd/tps6594-spi.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mfd/tps6594-spi.c b/drivers/mfd/tps6594-spi.c
> index 5afb1736f..7ec66d31b 100644
> --- a/drivers/mfd/tps6594-spi.c
> +++ b/drivers/mfd/tps6594-spi.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * SPI access driver for TI TPS6594/TPS6593/LP8764 PMICs
> + * SPI access driver for TI TPS65224/TPS6594/TPS6593/LP8764 PMICs
>   *
>   * Copyright (C) 2023 BayLibre Incorporated - https://www.baylibre.com/
>   */
> @@ -66,7 +66,7 @@ static int tps6594_spi_reg_write(void *context, unsigned int reg, unsigned int v
>  	return spi_write(spi, buf, count);
>  }
>  
> -static const struct regmap_config tps6594_spi_regmap_config = {
> +static struct regmap_config tps6594_spi_regmap_config = {
>  	.reg_bits = 16,
>  	.val_bits = 8,
>  	.max_register = TPS6594_REG_DWD_FAIL_CNT_REG,
> @@ -81,6 +81,7 @@ static const struct of_device_id tps6594_spi_of_match_table[] = {
>  	{ .compatible = "ti,tps6594-q1", .data = (void *)TPS6594, },
>  	{ .compatible = "ti,tps6593-q1", .data = (void *)TPS6593, },
>  	{ .compatible = "ti,lp8764-q1",  .data = (void *)LP8764,  },
> +	{ .compatible = "ti,tps65224-q1", .data = (void *)TPS65224, },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, tps6594_spi_of_match_table);
> @@ -101,15 +102,18 @@ static int tps6594_spi_probe(struct spi_device *spi)
>  	tps->reg = spi_get_chipselect(spi, 0);
>  	tps->irq = spi->irq;
>  
> -	tps->regmap = devm_regmap_init(dev, NULL, spi, &tps6594_spi_regmap_config);
> -	if (IS_ERR(tps->regmap))
> -		return dev_err_probe(dev, PTR_ERR(tps->regmap), "Failed to init regmap\n");
> -
>  	match = of_match_device(tps6594_spi_of_match_table, dev);
>  	if (!match)
>  		return dev_err_probe(dev, -EINVAL, "Failed to find matching chip ID\n");
>  	tps->chip_id = (unsigned long)match->data;
>  
> +	if (tps->chip_id == TPS65224)
> +		tps6594_spi_regmap_config.volatile_table = &tps65224_volatile_table;

Similar to my comment on the i2c series, but to be more specific:

Rather than use the .data pointer in the of_match_table as simply a
chip_id, instead make that into a struct that can contain chip-specific
values/pointers etc, and then each compatible can have a custom struct
(if needed.)

This way, at probe/match time, all the chip-specific data is setup using
that struct, so that at runtime, there doesn't need to be any "if
(chip_id)" checking.

Kevin

