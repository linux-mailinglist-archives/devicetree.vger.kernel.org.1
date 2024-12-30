Return-Path: <devicetree+bounces-134707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2139FE52E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A30C160C42
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 10:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1001990C1;
	Mon, 30 Dec 2024 10:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LN5oOU20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC453C17;
	Mon, 30 Dec 2024 10:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553722; cv=none; b=GOfdnhrVvrpUfEAC7wcJNCtseeO6HNMN3P4jCDI+br4Uv7oPV+j3l16wbclE+2v7JUwhHUBRjj5Fnug8sV7nE+dVraCs5fH8USBJlEQAgQTHc88+kR2i1/VR9KATzSfj5lO/e01ZzhJ3LsR/p4q26+QkZuWk3dsFovmU1T4TgcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553722; c=relaxed/simple;
	bh=PTyelKprYdL5Zz2GTb9cI8/PQIwVhIqO4+CYfUhVnoM=;
	h=Message-ID:Date:MIME-Version:Cc:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=eklz7/W4GzWBq6SpBsYfq4NvpfexComX0i3ijN03MVAtQeP+7K6wkV1eA/Z/fO3T0cwG532B4H9YeB0vmVs0RVOz/UBFXbsifFOgchroPSza1pLZ13V+4zHZII0ZkJlS0Hil6EkxGzjdk0GfbpGiMeKrXbE590M7MVRlnZc+4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LN5oOU20; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2164b1f05caso114286075ad.3;
        Mon, 30 Dec 2024 02:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735553720; x=1736158520; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rVInIqxLrBrAuugfOgJNvwfeXB6eQ8A/wRn1cNxsX+M=;
        b=LN5oOU205wG/8qWXlqbTloEoDaROOqxpVYZyGJqVwLnvhN+HL7H3xLq7tioS6V9B5u
         meo70G4hbLXBIYXUAtAb2sodsAbR/IDCIwTR2gojiXEAwH2xOPATI2WCSMwzMQBAKAqa
         aYm4swcWumur+Ot56XcAHVNz7V0mSs5AGiAVkohzvQBT5qRonQoCH8QlF+/QDEbHERFm
         1fdcSKsICdgejjQKvwk3Hl6e7hLn9Pda8uWW8NsJwMXIjO5Y6d4pAVUq7KxpUwoConUb
         PtSjzvEu7ELPM5EGGqPyn4kQQBZbrBuz9rBYHEHat4Z7B657NSt+QU3p64OB0Grc5G9q
         QDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735553720; x=1736158520;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:cc:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVInIqxLrBrAuugfOgJNvwfeXB6eQ8A/wRn1cNxsX+M=;
        b=n4K9pgsibQutrMY4Rs1uL0ebsPoDad92Bw+19bhCzcQMNzI6Qxk7zCD/HScvOAnJSw
         xww5QLXNTY9jm4mghEajcPpLO6FLQo9g3gnQdplQCoGCKQdYcPXycbC+vHU9KwShSGvc
         iHHnutED4X7hwdKuz6Tga0v9UnJhyca0xzdvfm2yh4sJwmWAB0GY75XzDpn1FhPlcTza
         OhtxjHjZfegZ8t/pJzKn78mn9pT1Ho0urXVR9gW08hCZUhZRIdoUL+tLd/MkyAE4ZRxG
         F66U26hfPKLv/HSfk7GueeqqpCrM5A/WJA2x2/cUZTyl+LNHxBgQhOZ/PuPDKnJISlMI
         PwSg==
X-Forwarded-Encrypted: i=1; AJvYcCUseHMD9kEeD0nXiIrTFmCL9fHaj4ciQrB28Fh1kfMj/Ob+eJVZYBNn5OacQnAA96CQYjsYAGt8EQ7nnJkt@vger.kernel.org, AJvYcCVE0HUyvgk3oeWUNJiYbVrKYvUuaZM2MsrTx+RJ1uict7gz/iw5SOLbKIeHty82kVR7gyAKskpSgbj+@vger.kernel.org
X-Gm-Message-State: AOJu0YybvBsq3CwXGyspYXkr9UBVrPsyH92nnyiFTrOnouApM0G/o+so
	8tY/yEKkR2sapRg7VZLKxOuJ1MeUlx6YUP5F2Tir2QQlIzju8qr2
X-Gm-Gg: ASbGncsaSeYU6026MDjcpogAGrj0tNCamw2xpV4hsqJRHdOe2IavHhNxB6V7TTqgn4N
	VXlov4l77xXFHiGD3FP5hl6dSx3IHNVUeW4jdNhBmiam//oQzaJeafxiff9xUdAbMDHZdvdrwfC
	qglL0//1HJ/TIJONA+wT8dID/ExBI/fGfVKkYlbxnSbffOJqJs/Ujz0JKHQlHeufNOYzB7NflVp
	1nyQsVLs6Iy+geLxXs1txB+zUqU/h2wAJ0ri/Zs
X-Google-Smtp-Source: AGHT+IEmHTaD9Tr2Y3HlJEmDcZxsL1OdsknlRynt/KU7MYC0MksDO07aK93FpqJAkDEuP++flRmEUw==
X-Received: by 2002:a05:6a21:3994:b0:1e1:afa9:d39b with SMTP id adf61e73a8af0-1e5e044fcbfmr52519792637.7.1735553719894;
        Mon, 30 Dec 2024 02:15:19 -0800 (PST)
Received: from [127.0.0.1] ([2a0d:2683:c100::bf])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842e32f6aa2sm17186103a12.75.2024.12.30.02.15.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 02:15:19 -0800 (PST)
Message-ID: <adcbe3b6-fd19-4bd3-941d-f17fff62720c@gmail.com>
Date: Mon, 30 Dec 2024 18:15:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: troymitchell988@gmail.com, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mfd: add new driver for P1 PMIC from SpacemiT
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
 <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
Content-Language: en-US
From: Troy Mitchell <troymitchell988@gmail.com>
In-Reply-To: <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024/12/30 18:02, Troy Mitchell wrote:
> Add the core MFD driver for P1 PMIC. I define four sub-devices
> for which the drivers will be added in subsequent patches.
> 
> For this patch, It supports `reboot` and `shutdown`.
> 
> Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
> ---
>  drivers/mfd/Kconfig                        |  14 +
>  drivers/mfd/Makefile                       |   1 +
>  drivers/mfd/spacemit-pmic.c                | 159 ++++++++++
>  include/linux/mfd/spacemit/spacemit-p1.h   | 491 +++++++++++++++++++++++++++++
>  include/linux/mfd/spacemit/spacemit-pmic.h |  39 +++
>  5 files changed, 704 insertions(+)
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index ae23b317a64e49f0cb529ae6bd1becbb90b7c282..c062bf6b11fd23d420a6d5f6ee51b3ec97f9fcbb 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1173,6 +1173,20 @@ config MFD_QCOM_RPM
>  	  Say M here if you want to include support for the Qualcomm RPM as a
>  	  module. This will build a module called "qcom_rpm".
>  
> +config MFD_SPACEMIT_PMIC
> +	tristate "SpacemiT PMIC"
> +	depends on ARCH_SPACEMIT || COMPILE_TEST
> +	depends on I2C && OF
> +	select MFD_CORE
> +	select REGMAP_I2C
> +	select REGMAP_IRQ
> +	help
> +	  If this option is turned on, the P1 chip produced by SpacemiT will
> +	  be supported.
> +
> +	  This driver can also be compiled as a module. If you choose to build
> +	  it as a module, the resulting kernel module will be named `spacemit-pmic`.
> +
>  config MFD_SPMI_PMIC
>  	tristate "Qualcomm SPMI PMICs"
>  	depends on ARCH_QCOM || COMPILE_TEST
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index e057d6d6faef5c1d639789e2560f336fa26cd872..284dbb8fe2ef83bdd994a598504fe315f2eabbdf 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -266,6 +266,7 @@ obj-$(CONFIG_MFD_SUN4I_GPADC)	+= sun4i-gpadc.o
>  obj-$(CONFIG_MFD_STM32_LPTIMER)	+= stm32-lptimer.o
>  obj-$(CONFIG_MFD_STM32_TIMERS) 	+= stm32-timers.o
>  obj-$(CONFIG_MFD_MXS_LRADC)     += mxs-lradc.o
> +obj-$(CONFIG_MFD_SPACEMIT_PMIC)	+= spacemit-pmic.o
>  obj-$(CONFIG_MFD_SC27XX_PMIC)	+= sprd-sc27xx-spi.o
>  obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
>  obj-$(CONFIG_MFD_ROHM_BD71828)	+= rohm-bd71828.o
> diff --git a/drivers/mfd/spacemit-pmic.c b/drivers/mfd/spacemit-pmic.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..d9f6785cecbd405821dead13cdf8d1f9fd64e508
> --- /dev/null
> +++ b/drivers/mfd/spacemit-pmic.c
> @@ -0,0 +1,159 @@
> +static const struct of_device_id spacemit_pmic_of_match[] = {
> +	{ .compatible = "spacemit,p1", .data = &pmic_p1_match_data },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, spacemit_pmic_of_match);
> +
> +static struct i2c_driver spacemit_pmic_i2c_driver = {
> +	.driver = {
> +		.name = "spacemit-pmic",
> +		.of_match_table = spacemit_pmic_of_match,
> +	},
> +	.probe    = spacemit_pmic_probe,
> +};
> +
> +static int __init spacemit_pmic_init(void)
> +{
> +	return platform_driver_register(&spacemit_pmic_i2c_driver);
> +}
> +
> +static void __exit spacemit_pmic_exit(void)
> +{
> +	platform_driver_unregister(&spacemit_pmic_i2c_driver);
> +}
I should use i2c_add_driver/i2c_del_driver here.
I forgot to add my modified c file via stg :(
> +
> +module_init(spacemit_pmic_init);
> +module_exit(spacemit_pmic_exit);
> 

-- 
Troy Mitchell

