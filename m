Return-Path: <devicetree+bounces-252817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C3D030A7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 546A2300764D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7144AC7A8;
	Thu,  8 Jan 2026 12:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MC5YmvjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC65C4ABBA9
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876287; cv=none; b=S8qrPtlB+RwOoPsGuSnc2+/xblVfqZez4SlDHb9IGIL2bu0fnlrnCFWXviRENCa50ydttCOBjmtW5KNvLVqy1UTxfbqSXXaywELNhjrGcJ2U72ojAQjqiacOUOPop2eCLwVMIsJ+Hkk8oA+MFWYnV5ZzgLHVlC5JVxfvG0A8b48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876287; c=relaxed/simple;
	bh=AwhGImIvcBaR3vyUVl2KbbFcTijy2PNb0a3UiV69YTc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aZoyA/3XShRKakkwzdZtwzVgoxZogFbh+l3OcsoBxBSAM5FznmsUAImu5rsbXxfGQTx6KCWAEsj3F2ueDWi/IUJos3EunkN2WyvYJ8I63LkEOx2WOkZsAHYl7Mw4lV6JeSp9Ux9kgoNh5dyRkZ4uw7/+e0BXfMOElp5WVqmTYRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MC5YmvjQ; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-11f42e97340so2528935c88.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767876285; x=1768481085; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=whT378guI+ZEoS3nkN8PXSvu/iXsM/AnSpQS/H8en2M=;
        b=MC5YmvjQm+UmRiWaXlQkEU+AAORWiPyM3qfksFFMnYBs1NoPMEUkUYAxuSpw3NJWot
         iUD5qv/lx89VVetTIsjEcTyOVRBEiG+PvmJBcoRSla6xxvf4z9KbSywF2DiPA+kg7oPV
         OEXqHDtLj8m9sy7AMOTnnh5RtMrRE2XiltNhHzPpuIyJCY4CiwVs7MmewPUQ10jjTb4e
         ZMUO3ShnU6YGg5qp2+sETIwMQ5WjdRcBtCH7Zbtjl5zFpmiBD5FFhlr+CyySO/J/nec5
         L0LH89vQ3lXbPIzncXliJdLbC1DclYLgstw+XYJvl2tXH+vAzyl2viG0NuRnOXZIW0EP
         63Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767876285; x=1768481085;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=whT378guI+ZEoS3nkN8PXSvu/iXsM/AnSpQS/H8en2M=;
        b=LcBzSn9wPqSava5BjxTRsAd2IpZcx5MZtPHMCIZMRjmEgnbxFTZjW0IRI+3rQEhgXp
         2tWO4ZjJwk7gZxaaswktFnqphW8H30fF8HdkkASnq64n/5b1+J8eyOOZoIOTRvnfDH8B
         Vli2opYIqtCBXkY3ZPIUSTFUDWOflRzb5YW3SB5uYPuCZ1sqF5th8BHgjROeqM8K8JKx
         0723+etk8FWAxLHnio/FHZCGFC1ZaWPypHFisFMCaGQAhwmhJljCQc3OSvcPsYrV0IPt
         kpdYi9/Nc3fo2RxEbgCznVVy/Oo4G7L/R+QVLerNMRr0D20b2nH5w7nLlZHFCjStuu+k
         +bSg==
X-Forwarded-Encrypted: i=1; AJvYcCVlvhvzcPvAJdYjYDjFxs9QARiz2y2CuynV0maTMXX8gwfvzvK1dC8ogYWYOFlQPA6DzlCE5e0anqfu@vger.kernel.org
X-Gm-Message-State: AOJu0YzYYr7Cj1m7Ww1iDT+N8s+R3nH4lyemjamRtB1B7qtupSQpQdgV
	8araGBchGFTU6+UzOHg12veMVTrqtskIEfMulERc4SArLgHlQHo0PC/m
X-Gm-Gg: AY/fxX4nGPh8bXg6+fqDqQv6JS2W4CA+SpihZJMBG8PHiOBD98iwxtjdHnX2P5RjeaF
	dmxRuk58QegO6FCryvRc4RESEtVzk45rVB/mjSPS+YcBpr73TDTMow0sJMnk8v0kJZnc41o3jre
	xsED8jByaOCndyPNyEYKfsiX8P/6iCfq4K/sTHkklqq1/GLws1V3nI0QWMFfvjLFNR2JF1se5ik
	vY1s8SUA78pT3WK7cFuKt2Rx4FjLhGtOXKHYz4lKemu8kj8tmr6F1xCvuLgxv++8JxqQy/qpQB+
	yXcrUcx+Oz3oar9bVDmu9ub0l2TtuiR+oRro1nyK+NZCvqUNvvTF2XGxKwv0gtvPrG+g0N0gDlo
	Ha25AlYlAjCt2AhnnAvCSSlhDskIQ0foh2xZ9fWeSPB2Y0OwbBlKBcTNPqRbYZQnqDU2/VGu8Oy
	3DjBM+OJOfXsV4tEt3tAB9hfCe0az6UQ==
X-Google-Smtp-Source: AGHT+IGUmQ23SV+7CSSWfVlEULrNabCZpw88V1MXglBdAIwNayHbWakVzrJclbrbPZNyKd8leH4uRw==
X-Received: by 2002:a05:7022:6728:b0:119:e56b:9592 with SMTP id a92af1059eb24-121f8b4dbc9mr4671745c88.23.1767876284619;
        Thu, 08 Jan 2026 04:44:44 -0800 (PST)
Received: from localhost ([2804:30c:2766:a500:b70:8c42:f792:bef6])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f248bb6esm13361817c88.12.2026.01.08.04.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:44:43 -0800 (PST)
Date: Thu, 8 Jan 2026 09:46:30 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 9/9] iio: adc: ad7380: add support for multiple SPI
 lanes
Message-ID: <aV-nJtPKWbmDSlah@debian-BULLSEYE-live-builder-AMD64>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-9-145dc5204cd8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-9-145dc5204cd8@baylibre.com>

On 12/19, David Lechner wrote:
> Add support for multiple SPI lanes to increase throughput. The AD7380
> family of ADCs have multiple SDO lines on the chip that can be used to
> read each channel on a separate SPI lane. If wired up to a SPI
> controller that supports it, the driver will now take advantage of this
> feature. This allows reaching the maximum sample rate advertised in the
> datasheet when combined with SPI offloading.
> 
> Reviewed-by: Nuno Sá <nuno.sa@analog.com>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
...
>  	st->sample_freq_range[0] = 1; /* min */
>  	st->sample_freq_range[1] = 1; /* step */
> @@ -1887,6 +1899,11 @@ static int ad7380_probe(struct spi_device *spi)
>  	if (!st->chip_info)
>  		return dev_err_probe(dev, -EINVAL, "missing match data\n");
>  
> +	st->num_sdo_lines = spi->num_rx_lanes;
> +
> +	if (st->num_sdo_lines < 1 || st->num_sdo_lines > st->chip_info->num_simult_channels)
> +		return dev_err_probe(dev, -EINVAL, "invalid number of SDO lines\n");
> +
Maybe also print st->num_sdo_lines here?

Nevertheless,
Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

>  	ret = devm_regulator_bulk_get_enable(dev, st->chip_info->num_supplies,
>  					     st->chip_info->supplies);
>  

