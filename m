Return-Path: <devicetree+bounces-100592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA2396E301
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59D6C1C238B2
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 19:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C9318DF81;
	Thu,  5 Sep 2024 19:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Zw+VJ3zR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACEE154C0D
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 19:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725563965; cv=none; b=srgM5aSfp3EsSBffmAzEvuC9qCk9Bs5yot6OuBkDwT7L43QY56LpE2O92+T5xAdsq6t8kaM2qKnIcIgL4jLhkTU0ivsSFFr4RxTtG5cqPTJOIUwkDWQb5p3YitIXwwjN6dNE5mIJV3bopMDZSgjzpZGIqDYEeeCk6s+SOXtPYhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725563965; c=relaxed/simple;
	bh=XkIZG7ovIrbjuw3op4BVEREfqbUEEO14cCEXB6FApTU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UD5JeNYYzPvkcQVVB7bsHUZfAiEwYkg61TNDFoCns/SPhLc9F6gvnm5k0u76aJm8epNHwYZLZ7sNGnRG+Yq7jo/eHIpkRvR08/+8BDJYi+QLm7LRoZTQ23VWZgVcZkAQieLfTTZzdXKElUHSZ0i6M6SovvJyEoiVIrRl6d3+yNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Zw+VJ3zR; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3df0ad9c791so667720b6e.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 12:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725563960; x=1726168760; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DKI175OvUgk2/hVEXHdZ/ZCtyuF+3PlpxqWpXuSByso=;
        b=Zw+VJ3zRfIE1utls28rYHZ8OB9VMjPKiRDPvhVGMpJLacej/xEprkhx7Tm0na3BcJp
         TM4W0YTmWbm9Q27aX+V8kpQi7dDfPWEHlHxuBzFNh+vK60CDd2000QZd9ITWEA8KvHW6
         9ANAA1C1Lq75my1g60zojt5RyknYv3w4x+VmeZJ2aDxH8zEHdPruomi0mVHhpq6t98L2
         m0PcKKJvUYlfmsXjRxiX72V6fu9paDPAy4uGVhV9bxq1/r1jPlHforKVUAShfuYebAbY
         mBq2Sjtu6RAFQreAeQ9r2yPemgCCPtMq+XxDvCispe+wMihPPSw1qP6PUKNFHmkNV3Jd
         hT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725563960; x=1726168760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKI175OvUgk2/hVEXHdZ/ZCtyuF+3PlpxqWpXuSByso=;
        b=bhHl6BeNHmWCuewgR39FwOnjaurxlSvkEjqSFOmS+QslLsnQAwwYXCFyKdd6RPbyZP
         x6IwyhJGIyd0kaC2nTB78/gGxPUbnf7JxotxwvHgJsWMx23r+cqnoXhZHK5bqu8qDTrx
         khQ+BBdaZufemctS5iidR89vqeMiQuSNA3gXwJNSt8hAnYbBAzd4ixnhP8nBhu4ZlN2l
         uu7gGo5dcI/U5m34pSDWoY2zraOhNh2d5n4HiU+uHvx+9p9BYU0S2TwcTyaA6BTV9AvU
         ADkbUGWJDoEOeNdWzKU0R2mA1Og/Kec4lw0rVeayC8RcwrKnw6zoF+leQUVLCzBM2anw
         PMXA==
X-Forwarded-Encrypted: i=1; AJvYcCV7D7h2ystlv02I2RWx663Rc5J4fPBWweVdOROJo2dBzjUrhptvBx3tyfHdzRG5YbWi5ZwHpmMUCj3T@vger.kernel.org
X-Gm-Message-State: AOJu0YziR6SZQ7ZGkXNxKm0qSLiGKZLPBmWiqjCh3DNF9MgFLfI5DcJX
	+9BjODUxjVbSdpapiY2Vdzub/StpAbSr8XMo8I+b9h+aQzVtrjVAq6xzCurJFVI=
X-Google-Smtp-Source: AGHT+IFqFdkvkFKkfaD7b8Xx4D7Lpe8EI0i2NfBtPzhi06qyf8Nobt4f4horoUF8GOfQ8LSac3fhsA==
X-Received: by 2002:a05:6808:1705:b0:3db:15a9:4a1f with SMTP id 5614622812f47-3df05eb021fmr26126208b6e.49.1725563960297;
        Thu, 05 Sep 2024 12:19:20 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df1188612fsm3335300b6e.58.2024.09.05.12.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 12:19:19 -0700 (PDT)
Message-ID: <7bd162bb-dce8-4aff-9f56-1ab73b091a28@baylibre.com>
Date: Thu, 5 Sep 2024 14:19:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] iio: backend adi-axi-dac: add registering of child
 fdt node
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-4-87d669674c00@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-4-87d669674c00@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/5/24 10:17 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Change to obtain the fdt use case as reported in the
> adi,ad3552r.yaml file in this patchset, with the DAC device that
> is actually using the backend set as a child node of the backend.
> 
> To obtain this, registering all the child fdt nodes as platform
> devices.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> Co-developed-by: David Lechner <dlechner@baylibre.com>
> Co-developed-by: Nuno Sá <nuno.sa@analog.com>
> ---
>  drivers/iio/dac/adi-axi-dac.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
> index cc31e1dcd1df..e883cd557b6a 100644
> --- a/drivers/iio/dac/adi-axi-dac.c
> +++ b/drivers/iio/dac/adi-axi-dac.c
> @@ -783,6 +783,7 @@ static int axi_dac_probe(struct platform_device *pdev)
>  {
>  	struct axi_dac_state *st;
>  	const struct axi_dac_info *info;
> +	struct platform_device *child_pdev;
>  	void __iomem *base;
>  	unsigned int ver;
>  	struct clk *clk;
> @@ -862,6 +863,20 @@ static int axi_dac_probe(struct platform_device *pdev)
>  		return dev_err_probe(&pdev->dev, ret,
>  				     "failed to register iio backend\n");
>  
> +	device_for_each_child_node_scoped(&pdev->dev, child) {

This should use fwnode_for_each_available_child_node() so that it skips
nodes with status != "okay".

Would be nice to introduce a scoped version of this function too.

Also, if we are allowing multiple devices on the bus, the DT bindings
need to have a reg property that is unique for each child.

> +		struct platform_device_info pi;
> +
> +		memset(&pi, 0, sizeof(pi));

struct platform_device_info pi = { };

avoids the need for memset().

> +
> +		pi.name = fwnode_get_name(child);
> +		pi.id = PLATFORM_DEVID_AUTO;
> +		pi.fwnode = child;

Need to have pi.parent = &pdev->dev;

It could also make sense to have all of the primary bus functions
(reg read/write, ddr enable/disable, etc.) passed here as platform
data instead of having everything go through the IIO backend.

> +
> +		child_pdev = platform_device_register_full(&pi);
> +		if (IS_ERR(child_pdev))
> +			return PTR_ERR(child_pdev);

These devices need to be unregistered on any error return and when
the parent device is removed.

> +	}
> +
>  	dev_info(&pdev->dev, "AXI DAC IP core (%d.%.2d.%c) probed\n",
>  		 ADI_AXI_PCORE_VER_MAJOR(ver),
>  		 ADI_AXI_PCORE_VER_MINOR(ver),
> 


