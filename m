Return-Path: <devicetree+bounces-236603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BC27CC45C68
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:58:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BFA134EF348
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97670307AE8;
	Mon, 10 Nov 2025 09:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DTanp70k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20C301707
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762768362; cv=none; b=UZyKnbQ3+GACJpUyiMGtbcfWlc2I85eo/QKxHZoGQQiDuzkqffckIKIkGtGo/k2Tkc6ttEkDxenf1D7ditGbGzG1DdfRoMhg2zX3Sj3XZszGIqJNe4DiYi+KkVNgA29dquXtYNvSYnoHlZTW/G5bjP9+5o5vHeLf4MDmnmL8190=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762768362; c=relaxed/simple;
	bh=/7xhR+Vm7WW6F0L/UDUv4zh0j0pHhb3GvkNc0PZ4Ikg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JCfVypVaJr5T+11DCyHCQTk9Rv9FuYuE53TSEKGyQXk6PZ+HR/Vm99ckmdUC6q5WhlnTCQNYz96cxnDTchKfpfrcNSj5dFrq6bdG0gtGUmZpb86z909bD/h+Kzcs0gkgkpEuE4kPesLExprVjRt2ntiyRYcNFeC5EjvidYb9JVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DTanp70k; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47754e9cc7fso18296035e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762768359; x=1763373159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rhp4YgfhsRZMzX8NUUCQPo90BZ3bChzDwUAKuvs0tfk=;
        b=DTanp70kwhb67cMG9jqcNehRx9D9nrbaC8D3xwWVAiRd5lmJSLzF8MZtQskxmRRGYs
         SlF3ksNhpF+e041rG94xVUzRrc+gew3vjCqHQ95qV5CRh0g/h7xsvDUL7nmI7h1uoVN6
         Eq+EzaCS+RAUUPj16j8FH++epOSDljFVU25EG0oFfLzrpAM89N/nWdqtJ+HTZAfzRu7Q
         7ft5CixoAVqeA9TlkwahZQKvl3VdYXxBcpfMYllFpsmbmGrRHY5qtJ5pm5HIeA1gfRpG
         xrP+APQ0E3GYeqwcqZyH37hG6I41DvDmK/F4vqveWqnQemyHYivAP/k2DlXHejgM8x36
         tx4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762768359; x=1763373159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rhp4YgfhsRZMzX8NUUCQPo90BZ3bChzDwUAKuvs0tfk=;
        b=RTxq/GQs8lleOzZVrUoB+yKaNWx98yjMrqf8zZcsA0kcfkBs1aoOeeEztK7WukEwat
         9F3iuZ/Nu9jIOBXlXRe0Jxb5Bdb7HyH7y8486OeikD6HgwFLH9JfjZY+6SFv4aVaN0Zm
         Gaa4MXUT/IdC94H6DeMIzzeHI8ibByha+Ucc0yEe31MTJm8Tts+1x1nHd2A/gb77DLiE
         DTH0XZCb19nvJuTpxZfBovbAMtoATUVFVcHO6bbU6cwzBT54rtmeK4NgoI39R5lK8kze
         CKidDbskhtSoUBuRBbWpy2WB+D30dcpZi8YFsOdOX8FydYyW7DWnsRsJj7LJg1HOzLdk
         ZBDg==
X-Forwarded-Encrypted: i=1; AJvYcCVa4SitkDCyqjwrFVJcKfD5e0RKLmQ+i3YdHC8PrN4q5klBPZnlMRbUoCdHVlPOCHnSdVC0dSJo2yq/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/N52KYWJ43iPYV5b5IHDCYyDXpoeVSYYW9Cz+RSSFw0mEoum7
	bWxhsD5Ko2CwO5ax/ZEj9ZNWgZf+XTByhvU80fBMPhK39PtBtlT48K0kNjqxNwv4nJc=
X-Gm-Gg: ASbGncsThs42hScv1++kX+G7FC2anIlHDpneFCRQRWaSm+1Eq0jOEEjH8t7ZXDx4nXG
	42UPlOnKzzot5rLJsGbF0W9kMjRXHAOEUr7brSbwrP9Kd4omBBrRo2+a5jkhHHWKMKFH5hAli0w
	OaK9h9Kai5bdq0kjpjEgiEP/e0j588Uh6oOP+SUctT8ODRelmDB+PhYLvh4uMTxS6c9C/Y4/BcF
	IQITrGLOJxvhFBGcEQxQuu9YkG7HTXpqcU3uTI17aT04eVi/lRIMg3Q7gqYxWjVvFNxgsxVdwTM
	h9W1Fg+SvjaTrF/4UpVn4Sg+Zb21BovhvE8CUBc0ndSwhmpd3/4hoOQd3pDSpoSxs64MOgYEAHm
	P2vpOi9vSd2qGr3yjarMzkMv9EyQIAIFnIgGejGiuY8xg7fnDbbBltO7p3Ermb7C+bcKaCpGBQf
	zyyCwN+Q==
X-Google-Smtp-Source: AGHT+IHCMEptRrO3Xd4sJVJqG0K81DdTzjfPzWE+SEpDSUp7i+llvbmd/DfdXqcN55ZcAaess9TJ5w==
X-Received: by 2002:a05:600c:3011:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-477797535a8mr26023715e9.29.1762768358611;
        Mon, 10 Nov 2025 01:52:38 -0800 (PST)
Received: from [10.11.12.107] ([5.12.85.52])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47774df2d80sm121261635e9.14.2025.11.10.01.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 01:52:38 -0800 (PST)
Message-ID: <513678ee-b93d-40a4-a565-ca6ae41bdde7@linaro.org>
Date: Mon, 10 Nov 2025 11:52:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] nvmem: add Samsung Exynos OTP support
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
 <20251031-gs101-otp-v1-2-2a54f6c4e7b6@linaro.org>
 <93d5636b-a515-4976-b68c-9606924eab8f@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <93d5636b-a515-4976-b68c-9606924eab8f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/4/25 9:19 AM, Krzysztof Kozlowski wrote:
> On 31/10/2025 13:45, Tudor Ambarus wrote:
>> Add support for the Samsung Exynos OTP controller. On the Google GS101
>> SoC, this controller provides 32 Kbit of OTP memory space that can be
>> read/program/lock using a specific sequence of register accesses.
>>
>> The OTP controller register space is of interest as well because it
>> contains dedicated registers for the Product ID and the Chip ID (apart
>> other things like TMU or ASV info). Register the OTP controller
>> register space as a nvmem device so that other drivers can access its
>> contents using nvmem cells.
>>
>> Support for the OTP memory space can follow and be modeled as a
>> dedicated nvmem device.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/nvmem/Kconfig      | 10 +++++
>>  drivers/nvmem/Makefile     |  2 +
>>  drivers/nvmem/exynos-otp.c | 98 ++++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 110 insertions(+)
>>
>> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
>> index e0d88d3199c11a3b71cc274b2114e9554ac486fc..f973e009737f2fbdc8511e50f1aa9e6003286065 100644
>> --- a/drivers/nvmem/Kconfig
>> +++ b/drivers/nvmem/Kconfig
>> @@ -84,6 +84,16 @@ config NVMEM_BRCM_NVRAM
>>  	  This driver provides support for Broadcom's NVRAM that can be accessed
>>  	  using I/O mapping.
>>  
>> +config NVMEM_EXYNOS_OTP
>> +	tristate "Samsung Exynos OTP support"
>> +	depends on ARCH_EXYNOS || COMPILE_TEST
>> +	help
>> +	  This driver provides support for the OTP controller found on some
>> +	  Samsung Exynos SoCs.
>> +
>> +	  This driver can also be built as a module. If so, the module
>> +	  will be called exynos-otp.
>> +
>>  config NVMEM_IMX_IIM
>>  	tristate "i.MX IC Identification Module support"
>>  	depends on ARCH_MXC || COMPILE_TEST
>> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
>> index 70a4464dcb1e25cf9116280a32f4a0f4f9941a75..920a536fc359a5a7d8f3aabba6a712e85c277ee7 100644
>> --- a/drivers/nvmem/Makefile
>> +++ b/drivers/nvmem/Makefile
>> @@ -20,6 +20,8 @@ obj-$(CONFIG_NVMEM_BCM_OCOTP)		+= nvmem-bcm-ocotp.o
>>  nvmem-bcm-ocotp-y			:= bcm-ocotp.o
>>  obj-$(CONFIG_NVMEM_BRCM_NVRAM)		+= nvmem_brcm_nvram.o
>>  nvmem_brcm_nvram-y			:= brcm_nvram.o
>> +obj-$(CONFIG_NVMEM_EXYNOS_OTP)		+= nvmem-exynos-otp.o
>> +nvmem-exynos-otp-y			:= exynos-otp.o
>>  obj-$(CONFIG_NVMEM_IMX_IIM)		+= nvmem-imx-iim.o
>>  nvmem-imx-iim-y				:= imx-iim.o
>>  obj-$(CONFIG_NVMEM_IMX_OCOTP)		+= nvmem-imx-ocotp.o
>> diff --git a/drivers/nvmem/exynos-otp.c b/drivers/nvmem/exynos-otp.c
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..3bff9421e6f2b80a8f20533b490a289687d117e8
>> --- /dev/null
>> +++ b/drivers/nvmem/exynos-otp.c
>> @@ -0,0 +1,98 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright 2025 Linaro Ltd.
>> + *
>> + * Samsung Exynos OTP driver.
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/device.h>
>> +#include <linux/err.h>
>> +#include <linux/ioport.h>
>> +#include <linux/module.h>
>> +#include <linux/nvmem-provider.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/regmap.h>
>> +#include <linux/mod_devicetable.h>
>> +
>> +struct exynos_otp {
>> +	struct clk *pclk;
>> +	struct regmap *regmap;
>> +};
>> +
>> +static int exynos_otp_read(void *context, unsigned int offset, void *val,
>> +			   size_t bytes)
>> +{
>> +	struct exynos_otp *eotp = context;
>> +
>> +	return regmap_bulk_read(eotp->regmap, offset, val, bytes / 4);
> 
> 
> So you are just reading MMIO and pretending this is NVMEM?

Right. I thought of registering the OTP register space as a nvmem
device, so that consumers can read it. The OTP memory space (32Kbit,
the one accessed via OTP commands) can then be registered as another
nvmem device.

> 
> Is it possible to actually do the other actions from your commit msg
> "read/program/lock"? If not, then you just created NVMEM abstraction

It is possible to add support for the OTP memory space (32Kbit) and model
it as a nvmem device, but I don't really care about it because downstream
does not use the OTP memory space in the kernel.

I now think that the correct way to handle the chipid for gs101 is to
register to the SoC interface directly from the efuse driver. Support
for the OTP memory space can come later on if needed, I don't really need
to register any nvmem space for now.

Thanks,
ta

> over existing chipid completely duplicating the driver (with more
> translation layers).
> 
> Best regards,
> Krzysztof

