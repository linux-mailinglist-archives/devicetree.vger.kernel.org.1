Return-Path: <devicetree+bounces-134713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D47779FE5A8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3D097A0840
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CF4199FB2;
	Mon, 30 Dec 2024 11:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlQb4Fpn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD295126BEE;
	Mon, 30 Dec 2024 11:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735558430; cv=none; b=boV+jfmAoWaoXp+YgaLUikj9tftM8CqKFGq0w3aHFpZ9d3/p9IZsrORdtb3+/yN5ZdPklZlmqrHrFLpL2EWBJQ1MFFCN869SNOLJg3k2DtFgYNgIJE1i1AJUUD1/2ZUNeAyXqU79LfB7LPHvfkK2KKwWY+SKrA2sLPmqEtSnXzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735558430; c=relaxed/simple;
	bh=6DxrvhM/hKAAXwlDlZQgVvbaUjiww7N0PPTqcsIwKBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sc/Kn0Ih0rewixgMR6DaUzuzTHKUGdv4+uXNmmsevMVUo9dhSc9bTjqiN4wP+W62mrotmcu5DQpPA3F2eY5LG3XLuYb7rnNrm4kJoZcdeQUVKnxP43HBlQ2JBntlQ2L96nbULDfVOLk1YH+Ej2GgUdZofntTKF+QL8EbYrbBNCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlQb4Fpn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21B69C4CED0;
	Mon, 30 Dec 2024 11:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735558430;
	bh=6DxrvhM/hKAAXwlDlZQgVvbaUjiww7N0PPTqcsIwKBU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tlQb4FpnEzWMVW8A0/C5+kSJ/+XrBlOvUkX0kDITTiRjelQeYRHBmaWXCfsdthzw6
	 enumVqsgXugxJC0NT53QAZ8jcX2MwxESVtYafw04fKHfE0Bc7c/F21P0qw8KZVH7Cp
	 y3eJEeXslFlHtQS0LWtid9ty3HFSL4cqzhnUmJWLf6RyTnYlpGecBhwz161jFZ0Cnf
	 zSyF5XX3GsPRwDFO4j6pJKRiMDFhCWlQhFoNcQGjJtBehDjxWuNH0J7v7TNhwjb17Y
	 0oPeBB7BidTJkTlrKIsOfUFx+BB/Aeu5+/XNP/rmaEMymsJi1aq//SSGj8+4ivRBia
	 1hzYEW4CvaEUg==
Message-ID: <c0714653-f7b0-4bd3-877e-55682847d619@kernel.org>
Date: Mon, 30 Dec 2024 12:33:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] mfd: add new driver for P1 PMIC from SpacemiT
To: Troy Mitchell <troymitchell988@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
 <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241230-k1-p1-v1-2-aa4e02b9f993@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/12/2024 11:02, Troy Mitchell wrote:
> Add the core MFD driver for P1 PMIC. I define four sub-devices


I do not see any definition of MFD subdevices.

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
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2024 Troy Mitchell <troymitchell988@gmail.com>
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/mfd/core.h>
> +#include <linux/mfd/spacemit/spacemit-pmic.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>

I don't see usage of this header. Include what is used directly.

> +#include <linux/pm_wakeirq.h>
> +#include <linux/reboot.h>
> +
> +P1_REGMAP_CONFIG;
> +P1_IRQS_DESC;
> +P1_IRQ_CHIP_DESC;
> +P1_POWER_KEY_RESOURCES_DESC;
> +P1_RTC_RESOURCES_DESC;
> +P1_MFD_CELL;
> +P1_MFD_MATCH_DATA;

Hm? Declarations and definitions go here, not to somewhere else.



> +
> +static int spacemit_pmic_probe(struct i2c_client *client)
> +{
> +	const struct spacemit_pmic_match_data *match_data;
> +	const struct mfd_cell *cells;
> +	struct spacemit_pmic *pmic;
> +	int nr_cells, ret;
> +
> +	if (!client->irq)
> +		return dev_err_probe(&client->dev, -ENXIO, "no interrupt supported");

And why is this fatal error? If interrupt is not supported by hardware,
why would you add "unsupported" interrupt?

> +
> +	match_data = of_device_get_match_data(&client->dev);
> +	if (WARN_ON(!match_data))
> +		return -EINVAL;
> +
> +	pmic = devm_kzalloc(&client->dev, sizeof(*pmic), GFP_KERNEL);
> +	if (!pmic)
> +		return -ENOMEM;
> +
> +	cells = match_data->mfd_cells;
> +	nr_cells = match_data->nr_cells;
> +
> +	pmic->regmap_cfg = match_data->regmap_cfg;
> +	pmic->regmap_irq_chip = match_data->regmap_irq_chip;
> +	pmic->i2c = client;
> +	pmic->match_data = match_data;
> +	pmic->regmap = devm_regmap_init_i2c(client, pmic->regmap_cfg);
> +	if (IS_ERR(pmic->regmap))
> +		return dev_err_probe(&client->dev,
> +				     PTR_ERR(pmic->regmap),
> +				     "regmap initialization failed");
> +
> +	regcache_cache_bypass(pmic->regmap, true);
> +
> +	i2c_set_clientdata(client, pmic);
> +
> +	if (pmic->regmap_irq_chip) {


It's impossible to have it false. Test your driver.

> +		ret = regmap_add_irq_chip(pmic->regmap, client->irq, IRQF_ONESHOT, -1,
> +						pmic->regmap_irq_chip, &pmic->irq_data);
> +		if (ret)
> +			return dev_err_probe(&client->dev, ret, "failed to add irqchip");
> +	}
> +
> +	dev_pm_set_wake_irq(&client->dev, client->irq);
> +	device_init_wakeup(&client->dev, true);
> +
> +	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
> +				   cells, nr_cells, NULL, 0,
> +				   regmap_irq_get_domain(pmic->irq_data));
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "failed to add MFD devices");
> +
> +	if (match_data->shutdown.reg) {

Also not possible, useless if.

> +		ret = devm_register_sys_off_handler(&client->dev,
> +						    SYS_OFF_MODE_POWER_OFF_PREPARE,
> +						    SYS_OFF_PRIO_HIGH,
> +						    &spacemit_pmic_shutdown,
> +						    pmic);
> +		if (ret)
> +			return dev_err_probe(&client->dev,
> +					     ret,
> +					     "failed to register restart handler");
> +
> +	}
> +
> +	if (match_data->reboot.reg) {

Also not possible.

> +		ret = devm_register_sys_off_handler(&client->dev,
> +						    SYS_OFF_MODE_RESTART,
> +						    SYS_OFF_PRIO_HIGH,
> +						    &spacemit_pmic_restart,
> +						    pmic);
> +		if (ret)
> +			return dev_err_probe(&client->dev,
> +					     ret,
> +					     "failed to register restart handler");
> +	}
> +
> +	return 0;
> +}
> +
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
> +
> +module_init(spacemit_pmic_init);
> +module_exit(spacemit_pmic_exit);

Use proper wrapper for these above.

> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("mfd core driver for the SpacemiT PMIC");

...

> +
> +#define P1_MAX_REG			0xA8
> +
> +#define P1_BUCK_VSEL_MASK		0xff
> +#define P1_BUCK_EN_MASK			0x1
> +
> +#define P1_BUCK1_CTRL_REG		0x47
> +#define P1_BUCK2_CTRL_REG		0x4a


Either lowercase or uppercase hex, not both.

> +#define P1_BUCK3_CTRL_REG		0x4d
> +#define P1_BUCK4_CTRL_REG		0x50
> +#define P1_BUCK5_CTRL_REG		0x53
> +#define P1_BUCK6_CTRL_REG		0x56
> +
> +#define P1_BUCK1_VSEL_REG		0x48
> +#define P1_BUCK2_VSEL_REG		0x4b
> +#define P1_BUCK3_VSEL_REG		0x4e
> +#define P1_BUCK4_VSEL_REG		0x51
> +#define P1_BUCK5_VSEL_REG		0x54
> +#define P1_BUCK6_VSEL_REG		0x57
> +
> +#define P1_ALDO1_CTRL_REG		0x5b
> +#define P1_ALDO2_CTRL_REG		0x5e
> +#define P1_ALDO3_CTRL_REG		0x61
> +#define P1_ALDO4_CTRL_REG		0x64
> +
> +#define P1_ALDO1_VOLT_REG		0x5c
> +#define P1_ALDO2_VOLT_REG		0x5f
> +#define P1_ALDO3_VOLT_REG		0x62
> +#define P1_ALDO4_VOLT_REG		0x65
> +
> +#define P1_ALDO_EN_MASK			0x1
> +#define P1_ALDO_VSEL_MASK		0x7f
> +
> +#define P1_DLDO1_CTRL_REG		0x67
> +#define P1_DLDO2_CTRL_REG		0x6a
> +#define P1_DLDO3_CTRL_REG		0x6d
> +#define P1_DLDO4_CTRL_REG		0x70
> +#define P1_DLDO5_CTRL_REG		0x73
> +#define P1_DLDO6_CTRL_REG		0x76
> +#define P1_DLDO7_CTRL_REG		0x79
> +
> +#define P1_DLDO1_VOLT_REG		0x68
> +#define P1_DLDO2_VOLT_REG		0x6b
> +#define P1_DLDO3_VOLT_REG		0x6e
> +#define P1_DLDO4_VOLT_REG		0x71
> +#define P1_DLDO5_VOLT_REG		0x74
> +#define P1_DLDO6_VOLT_REG		0x77
> +#define P1_DLDO7_VOLT_REG		0x7a
> +
> +#define P1_DLDO_EN_MASK			0x1
> +#define P1_DLDO_VSEL_MASK		0x7f
> +
> +#define P1_SWITCH_CTRL_REG		0x59
> +#define P1_SWTICH_EN_MASK		0x1
> +
> +#define P1_PWR_CTRL2			0x7e
> +#define P1_SW_SHUTDOWN_BIT_MSK		0x4
> +#define P1_SW_RESET_BIT_MSK		0x2
> +
> +#define P1_E_GPI0_MSK			BIT(0)
> +#define P1_E_GPI1_MSK			BIT(1)
> +#define P1_E_GPI2_MSK			BIT(2)
> +#define P1_E_GPI3_MSK			BIT(3)
> +#define P1_E_GPI4_MSK			BIT(4)
> +#define P1_E_GPI5_MSK			BIT(5)
> +
> +#define P1_E_ADC_TEMP_MSK		BIT(0)
> +#define P1_E_ADC_EOC_MSK		BIT(1)
> +#define P1_E_ADC_EOS_MSK		BIT(2)
> +#define P1_E_WDT_TO_MSK			BIT(3)
> +#define P1_E_ALARM_MSK			BIT(4)
> +#define P1_E_TICK_MSK			BIT(5)
> +
> +#define P1_E_LDO_OV_MSK			BIT(0)
> +#define P1_E_LDO_UV_MSK			BIT(1)
> +#define P1_E_LDO_SC_MSK			BIT(2)
> +#define P1_E_SW_SC_MSK			BIT(3)
> +#define P1_E_TEMP_WARN_MSK		BIT(4)
> +#define P1_E_TEMP_SEVERE_MSK		BIT(5)
> +#define P1_E_TEMP_CRIT_MSK		BIT(6)
> +
> +#define P1_E_BUCK1_OV_MSK		BIT(0)
> +#define P1_E_BUCK2_OV_MSK		BIT(1)
> +#define P1_E_BUCK3_OV_MSK		BIT(2)
> +#define P1_E_BUCK4_OV_MSK		BIT(3)
> +#define P1_E_BUCK5_OV_MSK		BIT(4)
> +#define P1_E_BUCK6_OV_MSK		BIT(5)
> +
> +#define P1_E_BUCK1_UV_MSK		BIT(0)
> +#define P1_E_BUCK2_UV_MSK		BIT(1)
> +#define P1_E_BUCK3_UV_MSK		BIT(2)
> +#define P1_E_BUCK4_UV_MSK		BIT(3)
> +#define P1_E_BUCK5_UV_MSK		BIT(4)
> +#define P1_E_BUCK6_UV_MSK		BIT(5)
> +
> +#define P1_E_BUCK1_SC_MSK		BIT(0)
> +#define P1_E_BUCK2_SC_MSK		BIT(1)
> +#define P1_E_BUCK3_SC_MSK		BIT(2)
> +#define P1_E_BUCK4_SC_MSK		BIT(3)
> +#define P1_E_BUCK5_SC_MSK		BIT(4)
> +#define P1_E_BUCK6_SC_MSK		BIT(5)
> +
> +#define P1_E_PWRON_RINTR_MSK		BIT(0)
> +#define P1_E_PWRON_FINTR_MSK		BIT(1)
> +#define P1_E_PWRON_SINTR_MSK		BIT(2)
> +#define P1_E_PWRON_LINTR_MSK		BIT(3)
> +#define P1_E_PWRON_SDINTR_MSK		BIT(4)
> +#define P1_E_VSYS_OV_MSK		BIT(5)
> +
> +#define P1_E_STATUS_REG_BASE		0x91
> +#define P1_E_EN_REG_BASE		0x98
> +
> +#define P1_REGMAP_CONFIG	\
> +	static const struct regmap_config p1_regmap_config = {	\
> +		.reg_bits = 8,					\
> +		.val_bits = 8,					\
> +		.max_register = P1_MAX_REG,			\
> +		.cache_type = REGCACHE_RBTREE,			\
> +	}
> +
> +#define P1_IRQS_DESC					\
> +static const struct regmap_irq p1_irqs[] = {		\


No, all these defines are just not needed, not readable. Please follow
existing kernel style - just look at recent drivers in drivers/mfd/ to
see how they are designed and developed.

> +	[P1_E_GPI0] = {					\
> +		.mask = P1_E_GPI0_MSK,			\
> +		.reg_offset = 0,			\
> +	},						\
> +							\
> +	[P1_E_GPI1] = {					\
> +		.mask = P1_E_GPI1_MSK,			\

Best regards,
Krzysztof

