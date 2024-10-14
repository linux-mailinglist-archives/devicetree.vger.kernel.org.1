Return-Path: <devicetree+bounces-111186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D38399D8DE
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 23:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 304711C213BF
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 21:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8810D1CC173;
	Mon, 14 Oct 2024 21:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BVgp73N3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF77214B965
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 21:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728940598; cv=none; b=oNM3qFE3qWXMTztUgIJpbYoP27UKzaKTrucjdURWSToP6lE3FnPx+9w2GvQn2yQUcfMbamMDxK6bi0Ly3MveU855TYb44CG8mZyqHAhmhKLKc/tb4XIQTJ5D+IIQaODcn0hqs9jfsKYi+21ZuWloA4byV542AMIBOnJhRw5Y3Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728940598; c=relaxed/simple;
	bh=f6easdfqrPfEnPDvs3ECRq5IhG9j+NYiwlv/FKvt+YM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fU6IzYtxtu9kMm3YwbPYXOaFdmETdN9WufA8KreVAQp1rEkBMM/GrzF0PcxydBEIptErEsEngOJ+tJ5Lj5l9y9XuyLJQoa+gdHOb2cM0hQRoLDOaJM+bQ652majrXk0qVG04s39iHzACcK9oGPYDmZ/fRHfNQKbBM5ecB3zj7vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BVgp73N3; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-717d524a382so998710a34.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728940596; x=1729545396; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5m42CC3PapBhKGzBxcu9Dx95Q+EHToydn7yFpDgci+4=;
        b=BVgp73N3JhsY3zDeNUdWwZPiOrS4RlX18Je1MYy5jqCj9pPsjAq7nBS2HF6W5tgjIZ
         exy8N7WFYyAn3DFT2hQR9ycEiKmUC8+06tr6bIFg0Y/JciLPlOYrLtu+orWqlRiyK8qb
         ETevDmCnWAJPkvGH4ccbRdZLKUF4OHb23p9CIl0rixKbTlrAknvTPUtHlKcdKv2LWLaf
         uYXJqMqszza1+YkX4tyemkZUyUwUvL6xKBzG/Qtx+L+vpHg2ZbPZendT5UpCjsM7Ro3S
         Jd+XSvOhJu33EGBo/ICFbuNiVSR9Vg8k9JlHni1gJahSjasfTNqKYlN0hNUH9Rcvengo
         PY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728940596; x=1729545396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5m42CC3PapBhKGzBxcu9Dx95Q+EHToydn7yFpDgci+4=;
        b=f1mu5lCWKgd5eFYskUogJPj72Q86u6O2hxA5/A/OiyXuRd1SmAILDV+JPCtPXGWNbG
         MhIV/vbAm4ieQWHu+Sxez/coIHpI/jp673gu063swTOzZ5AO7vsSumGIsvcrCXC5FLsx
         wqpbFt7UAkgG9IemQ+VbGRJKP80TXzB5vMtO+WS7QwZ6DZ5x6ch3Myyr9ivZVr8MhoVi
         jPJgbGTxjuCbJVAPR3Lp9nBKPTumGcTXQLE41q32L41dFht91HUzBze8u4ryC5fAkHhs
         ig2f5zqDxlS/Ws6bCfHf5ekxhDXjLhs7qM/4+V/DxkMSk2YhvQuC1z6qFjgGiWLFnpKk
         tpLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxi0g1MbWjEWGxz+FmWbmn6Fr3QnnRvNmdZOW7It8nwgfOsZas98SMfB3jaW6x0n7P4za75Un8xCxR@vger.kernel.org
X-Gm-Message-State: AOJu0YxvegvcEfX2eH91u7aHWxmm4ydjcXALF1Ej8Wyt4i3+dBXw0QGz
	lvyEd5roe3TZ000zNDzF98qIcGfmXc6Jqc2euy+sT4rPJPJ+8mplWqC/KQxBTLs=
X-Google-Smtp-Source: AGHT+IGlm/3GJ8ER5//2iW0FSaOd66EDmjQR0gqPzN7pR3wtTGkaRxx6MGDI0EyDKiUa5FigTQ6cQw==
X-Received: by 2002:a05:6830:7102:b0:70d:f448:575c with SMTP id 46e09a7af769-717df28464bmr6785039a34.7.1728940595838;
        Mon, 14 Oct 2024 14:16:35 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-717d0005fbcsm2120967a34.50.2024.10.14.14.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 14:16:35 -0700 (PDT)
Message-ID: <022be235-f028-4b6e-9589-b0066df5d459@baylibre.com>
Date: Mon, 14 Oct 2024 16:16:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 8/8] iio: dac: adi-axi-dac: add registering of child
 fdt node
To: Angelo Dureghello <adureghello@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-8-eeef0c1e0e56@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-8-eeef0c1e0e56@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Change to obtain the fdt use case as reported in the
> adi,ad3552r.yaml file in this patchset.
> 
> The DAC device is defined as a child node of the backend.
> Registering the child fdt node as a platform devices.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
>  drivers/iio/dac/adi-axi-dac.c | 53 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
> index b887c6343f96..f85e3138d428 100644
> --- a/drivers/iio/dac/adi-axi-dac.c
> +++ b/drivers/iio/dac/adi-axi-dac.c
> @@ -29,6 +29,8 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/iio.h>
>  
> +#include "ad3552r-hs.h"
> +
>  /*
>   * Register definitions:
>   *   https://wiki.analog.com/resources/fpga/docs/axi_dac_ip#register_map
> @@ -738,6 +740,39 @@ static int axi_dac_bus_reg_read(struct iio_backend *back, u32 reg, u32 *val,
>  	return regmap_read(st->regmap, AXI_DAC_CUSTOM_RD_REG, val);
>  }
>  
> +static void axi_dac_child_remove(void *data)
> +{
> +	struct platform_device *pdev = data;
> +
> +	platform_device_unregister(pdev);
> +}
> +
> +static int axi_dac_create_platform_device(struct axi_dac_state *st,
> +					  struct fwnode_handle *child)
> +{
> +	struct ad3552r_hs_platform_data pdata = {
> +		.bus_reg_read = axi_dac_bus_reg_read,
> +		.bus_reg_write = axi_dac_bus_reg_write,
> +	};
> +	struct platform_device_info pi = {
> +		.parent = st->dev,
> +		.name = fwnode_get_name(child),
> +		.id = PLATFORM_DEVID_AUTO,
> +		.fwnode = child,
> +		.data = &pdata,
> +		.size_data = sizeof(pdata),
> +	};
> +	struct platform_device *pdev;
> +
> +	pdev = platform_device_register_full(&pi);
> +	if (IS_ERR(pdev))
> +		return PTR_ERR(pdev);
> +
> +	device_set_node(&pdev->dev, child);

Not sure why Nuno suggested adding device_set_node(). It is
redundant since platform_device_register_full() already does
the same thing.

(And setting it after platform_device_register_full() would
be too late anyway since drivers may have already probed.)

> +
> +	return devm_add_action_or_reset(st->dev, axi_dac_child_remove, pdev);
> +}
> +
>  static const struct iio_backend_ops axi_dac_generic_ops = {
>  	.enable = axi_dac_enable,
>  	.disable = axi_dac_disable,
> @@ -874,6 +909,24 @@ static int axi_dac_probe(struct platform_device *pdev)
>  		return dev_err_probe(&pdev->dev, ret,
>  				     "failed to register iio backend\n");
>  
> +	device_for_each_child_node_scoped(&pdev->dev, child) {
> +		int val;
> +
> +		/* Processing only reg 0 node */
> +		ret = fwnode_property_read_u32(child, "reg", &val);
> +		if (ret)
> +			return dev_err_probe(&pdev->dev, ret,
> +						"child node missing.");

Shouldn't the error message say that there is a problem with the reg
property? We already have a handle to the child node, so the child node
isn't missing.

> +		if (val != 0)
> +			return dev_err_probe(&pdev->dev, -EINVAL,
> +						"invalid node address.");
> +
> +		ret = axi_dac_create_platform_device(st, child);
> +		if (ret)
> +			return dev_err_probe(&pdev->dev, -EINVAL,
> +						"could not create device.");
> +	}
> +
>  	dev_info(&pdev->dev, "AXI DAC IP core (%d.%.2d.%c) probed\n",
>  		 ADI_AXI_PCORE_VER_MAJOR(ver),
>  		 ADI_AXI_PCORE_VER_MINOR(ver),
> 


