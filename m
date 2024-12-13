Return-Path: <devicetree+bounces-130536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C049F05C3
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 08:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40571169FAB
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 07:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5F6192D7E;
	Fri, 13 Dec 2024 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2bSdahD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1451F95E;
	Fri, 13 Dec 2024 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734076156; cv=none; b=SvN1mbUp3QF6CBmEjiNnmBUXWAbTDXAU0LOSjnbw2LZxTWQAr5qfxDFqI4CnFfSi7bIozzxrAB/RxEo4PzbFnGc/6M7B7SP3qJI0uy9SmsJIdSdbttfB7f1JqiGfhizR1sW/UM8REUvnH5a5j20NEOk5KJ9/iSKP49ozzPJWBM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734076156; c=relaxed/simple;
	bh=A44cNvuVBMqYeB+2AiMrfeGslFqsQxxYTTDAwTbk37Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iFvRpOwWMrr4zrIBKU9ecV2nfWtKXkdy2MU3yOyDtFEaN+NUiPjFibkjnK8ZAnnmyjAuzqQQZ++IgFf9f+3OAnsF4TM+ZuAGj9BIBafcSbAHWyPfR4H6wR4BoipH4iYcAx5FRAkaIxs0yXyCjZ9syD4pQLejcNk3WuYFlUyJCwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2bSdahD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57B4DC4CED0;
	Fri, 13 Dec 2024 07:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734076156;
	bh=A44cNvuVBMqYeB+2AiMrfeGslFqsQxxYTTDAwTbk37Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I2bSdahDxjnCp7dLv1zmzKe5OM7+75Lwgt2JVaO9YWqpyX/u/48wSTxdM6qZna0oU
	 eRTKLf7Ozy5RCNoNvJ7LQlDf5Qh86AwCeZWqpbDvO9F988krK0XpoWmARTBNotsA77
	 dt/kJnZcD8bD05XiM+4vxgx9Wze7oTf7SEnhJL9LrQum1Ak0RMMJ9LK6o5jmsdF/Ge
	 qpRpE7sCPEb8uiBaBUs+tnZhw5p2xSaXGzGQo8Npg0+Sz+kj+eTsh104172C7cO9n+
	 u5GMEo5ibJgk/b5Cx/S29rjCRnPPpYjLQU+J90uOdQNhnDBP/9DNK+OHJyWA5PPK/w
	 0o9ER/A/qiScQ==
Message-ID: <f08b068e-bc6b-4d9d-9839-370883309b88@kernel.org>
Date: Fri, 13 Dec 2024 08:49:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: samsung: Add a driver for Samsung SPEEDY host
 controller
To: Markuss Broks <markuss.broks@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Maksym Holovach <nergzd@nergzd723.xyz>
References: <20241212-speedy-v1-0-544ad7bcfb6a@gmail.com>
 <20241212-speedy-v1-2-544ad7bcfb6a@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241212-speedy-v1-2-544ad7bcfb6a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/12/2024 22:09, Markuss Broks wrote:
> Add a driver for Samsung SPEEDY serial bus host controller.
> SPEEDY is a proprietary 1 wire serial bus used by Samsung
> in various devices (usually mobile), like Samsung Galaxy
> phones. It is usually used for connecting PMIC or various
> other peripherals, like audio codecs or RF components.
> 
> This bus can address at most 1MiB (4 bit device address,
> 8 bit registers per device, 8 bit wide registers:
> 256*256*16 = 1MiB of address space.
> 
> Co-developed-by: Maksym Holovach <nergzd@nergzd723.xyz>
> Signed-off-by: Maksym Holovach <nergzd@nergzd723.xyz>
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
> ---
>  drivers/soc/samsung/Kconfig               |  13 +
>  drivers/soc/samsung/Makefile              |   2 +
>  drivers/soc/samsung/exynos-speedy.c       | 457 ++++++++++++++++++++++++++++++
>  include/linux/soc/samsung/exynos-speedy.h |  56 ++++
>  4 files changed, 528 insertions(+)
> 
> diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
> index 1a5dfdc978dc4069eb71c4e8eada7ff1913b86b3..a38150fc9999ded1e1e93e2a9ef43b88175d34bd 100644
> --- a/drivers/soc/samsung/Kconfig
> +++ b/drivers/soc/samsung/Kconfig
> @@ -49,6 +49,19 @@ config EXYNOS_PMU_ARM_DRIVERS
>  	bool "Exynos PMU ARMv7-specific driver extensions" if COMPILE_TEST
>  	depends on EXYNOS_PMU
>  
> +config EXYNOS_SPEEDY
> +	tristate "Exynos SPEEDY host controller driver"
> +	depends on ARCH_EXYNOS || COMPILE_TEST
> +	depends on OF
> +	depends on REGMAP_MMIO
> +	help
> +	  Enable support for Exynos SPEEDY host controller block.
> +	  SPEEDY is a 1 wire proprietary Samsung serial bus, found in
> +	  modern Samsung Exynos SoCs, like Exynos8895 and newer.


I did not check that much but this looks like 1wire for which we have
subsystem. Please investigate more and figure out the differences.

> +
> +	  Select this if you have a Samsung Exynos device which uses
> +	  SPEEDY bus.
> +


> +
> +/* SPEEDY_PACKET_GAP_TIME register bits */
> +#define SPEEDY_FIFO_TX_ALMOST_EMPTY			(1 << 4)
> +#define SPEEDY_FIFO_RX_ALMOST_FULL			(1 << 8)
> +#define SPEEDY_FSM_INIT					(1 << 1)
> +#define SPEEDY_FSM_TX_CMD				(1 << 2)
> +#define SPEEDY_FSM_STANDBY				(1 << 3)
> +#define SPEEDY_FSM_DATA					(1 << 4)
> +#define SPEEDY_FSM_TIMEOUT				(1 << 5)
> +#define SPEEDY_FSM_TRANS_DONE				(1 << 6)
> +#define SPEEDY_FSM_IO_RX_STAT_MASK			(3 << 7)
> +#define SPEEDY_FSM_IO_TX_IDLE				(1 << 9)
> +#define SPEEDY_FSM_IO_TX_GET_PACKET			(1 << 10)
> +#define SPEEDY_FSM_IO_TX_PACKET				(1 << 11)
> +#define SPEEDY_FSM_IO_TX_DONE				(1 << 12)
> +
> +#define SPEEDY_RX_LENGTH(n)				((n) << 0)
> +#define SPEEDY_TX_LENGTH(n)				((n) << 8)
> +
> +#define SPEEDY_DEVICE(x)				((x & 0xf) << 15)
> +#define SPEEDY_ADDRESS(x)				((x & 0xff) << 7)
> +
> +static const struct of_device_id speedy_match[] = {
> +	{ .compatible = "samsung,exynos9810-speedy" },
> +	{ /* Sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, speedy_match);

This is never at top of the file, but immediately before driver
structure. Look at other drivers.

> +
> +static const struct regmap_config speedy_map_cfg = {
> +	.reg_bits = 32,
> +	.val_bits = 32,
> +};
> +
> +/**
> + * speedy_int_clear() - clear interrupt status
> + * @speedy:	pointer to speedy controller struct
> + *
> + * Return: 0 on success, -errno otherwise
> + */
> +static int speedy_int_clear(struct speedy_controller *speedy)
> +{
> +	int ret;
> +
> +	ret = regmap_set_bits(speedy->map, SPEEDY_INT_STATUS, 0xffffffff);
> +	if (ret)
> +		return ret;
> +
> +	udelay(10);
> +
> +	return 0;
> +}
> +
> +/**
> + * speedy_fifo_reset() - reset FIFO of the controller
> + * @speedy:	pointer to speedy controller struct
> + *
> + * Return: 0 on success, -errno otherwise
> + */
> +static int speedy_fifo_reset(struct speedy_controller *speedy)
> +{
> +	int ret;
> +
> +	ret = regmap_set_bits(speedy->map, SPEEDY_FIFO_CTRL, SPEEDY_FIFO_RESET);
> +	if (ret)
> +		return ret;
> +
> +	udelay(10);
> +
> +	return 0;
> +}
> +
> +/**
> + * _speedy_read() - internal speedy read operation
> + * @speedy:	pointer to speedy controller struct
> + * @reg:	address of device on the bus
> + * @addr:       address to read
> + * @val:        pointer to store result
> + *
> + * Return: 0 on success, -errno otherwise
> + */
> +static int _speedy_read(struct speedy_controller *speedy, u32 reg, u32 addr, u32 *val)
> +{
> +	int ret;
> +	u32 cmd, int_ctl, int_status;
> +
> +	mutex_lock(&speedy->io_lock);
> +
> +	ret = speedy_fifo_reset(speedy);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_set_bits(speedy->map, SPEEDY_FIFO_CTRL,
> +			      SPEEDY_RX_LENGTH(1) | SPEEDY_TX_LENGTH(1));
> +	if (ret)
> +		return ret;
> +
> +	cmd = SPEEDY_ACCESS_RANDOM | SPEEDY_DIRECTION_READ |
> +	      SPEEDY_DEVICE(reg) | SPEEDY_ADDRESS(addr);
> +
> +	int_ctl = SPEEDY_TRANSFER_DONE_EN | SPEEDY_FIFO_RX_ALMOST_FULL_EN |
> +		  SPEEDY_RX_FIFO_INT_TRAILER_EN | SPEEDY_RX_MODEBIT_ERR_EN |
> +		  SPEEDY_RX_GLITCH_ERR_EN | SPEEDY_RX_ENDBIT_ERR_EN |
> +		  SPEEDY_REMOTE_RESET_REQ_EN;
> +
> +	ret = speedy_int_clear(speedy);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(speedy->map, SPEEDY_INT_ENABLE, int_ctl);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(speedy->map, SPEEDY_CMD, cmd);
> +	if (ret)
> +		return ret;
> +
> +	/* Wait for xfer done */
> +	ret = regmap_read_poll_timeout(speedy->map, SPEEDY_INT_STATUS, int_status,
> +				       int_status & SPEEDY_TRANSFER_DONE, 5000, 50000);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(speedy->map, SPEEDY_RX_DATA, val);
> +	if (ret)
> +		return ret;
> +
> +	ret = speedy_int_clear(speedy);
> +
> +	mutex_unlock(&speedy->io_lock);
> +
> +	return ret;
> +}
> +
> +int exynos_speedy_read(const struct speedy_device *device, u32 addr, u32 *val)
> +{
> +	return _speedy_read(device->speedy, device->reg, addr, val);
> +}
> +EXPORT_SYMBOL_GPL(exynos_speedy_read);

Nope, drop, unused.

> +
> +/**
> + * _speedy_write() - internal speedy write operation
> + * @speedy:	pointer to speedy controller struct
> + * @reg:	address of device on the bus
> + * @addr:       address to write
> + * @val:        value to write
> + *
> + * Return: 0 on success, -errno otherwise
> + */
> +static int _speedy_write(struct speedy_controller *speedy, u32 reg, u32 addr, u32 val)
> +{
> +	int ret;
> +	u32 cmd, int_ctl, int_status;
> +
> +	mutex_lock(&speedy->io_lock);
> +
> +	ret = speedy_fifo_reset(speedy);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_set_bits(speedy->map, SPEEDY_FIFO_CTRL,
> +			      SPEEDY_RX_LENGTH(1) | SPEEDY_TX_LENGTH(1));
> +	if (ret)
> +		return ret;
> +
> +	cmd = SPEEDY_ACCESS_RANDOM | SPEEDY_DIRECTION_WRITE |
> +	      SPEEDY_DEVICE(reg) | SPEEDY_ADDRESS(addr);
> +
> +	int_ctl = (SPEEDY_TRANSFER_DONE_EN |
> +		   SPEEDY_FIFO_TX_ALMOST_EMPTY_EN |
> +		   SPEEDY_TX_LINE_BUSY_ERR_EN |
> +		   SPEEDY_TX_STOPBIT_ERR_EN |
> +		   SPEEDY_REMOTE_RESET_REQ_EN);
> +
> +	ret = speedy_int_clear(speedy);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(speedy->map, SPEEDY_INT_ENABLE, int_ctl);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(speedy->map, SPEEDY_CMD, cmd);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(speedy->map, SPEEDY_TX_DATA, val);
> +	if (ret)
> +		return ret;
> +
> +	/* Wait for xfer done */
> +	ret = regmap_read_poll_timeout(speedy->map, SPEEDY_INT_STATUS, int_status,
> +				       int_status & SPEEDY_TRANSFER_DONE, 5000, 50000);
> +	if (ret)
> +		return ret;
> +
> +	speedy_int_clear(speedy);
> +
> +	mutex_unlock(&speedy->io_lock);
> +
> +	return 0;
> +}
> +
> +int exynos_speedy_write(const struct speedy_device *device, u32 addr, u32 val)
> +{
> +	return _speedy_write(device->speedy, device->reg, addr, val);

Just write the function here and drop _.

> +}
> +EXPORT_SYMBOL_GPL(exynos_speedy_write);
> +
> +static void devm_speedy_release(struct device *dev, void *res)
> +{
> +	const struct speedy_device **ptr = res;
> +	const struct speedy_device *handle = *ptr;
> +
> +	kfree(handle);
> +}
> +
> +/**
> + * speedy_get_by_phandle() - internal get speedy device handle
> + * @np:	pointer to OF device node of device
> + *
> + * Return: 0 on success, -errno otherwise
> + */
> +static const struct speedy_device *speedy_get_device(struct device_node *np)
> +{
> +	const struct of_device_id *speedy_id;
> +	struct device_node *speedy_np;
> +	struct platform_device *speedy_pdev;
> +	struct speedy_controller *speedy = NULL;
> +	struct speedy_device *handle;
> +	int ret;
> +
> +	if (!np) {
> +		pr_err("I need a device pointer\n");
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	speedy_np = of_get_parent(np);
> +	if (!speedy_np)
> +		return ERR_PTR(-ENODEV);
> +
> +	/* Verify if parent node is a speedy controller */
> +	speedy_id = of_match_node(speedy_match, speedy_np);
> +	if (!speedy_id) {
> +		handle = ERR_PTR(-EINVAL);
> +		goto out;
> +	}
> +
> +	/* Get platform device of the speedy controller */
> +	speedy_pdev = of_find_device_by_node(speedy_np);
> +	if (!speedy_pdev) {
> +		handle = ERR_PTR(-EPROBE_DEFER);
> +		goto out;
> +	}
> +
> +	/* Get drvdata of speedy controller */
> +	speedy = platform_get_drvdata(speedy_pdev);
> +	if (!speedy) {
> +		handle = ERR_PTR(-EINVAL);
> +		goto out;
> +	}
> +
> +	handle = kzalloc(sizeof(struct speedy_device), GFP_KERNEL);
> +	if (!handle) {
> +		handle = ERR_PTR(-ENOMEM);
> +		goto out;
> +	}
> +	handle->speedy = speedy;
> +	ret = of_property_read_u32(np, "reg", &handle->reg);
> +	if (ret) {
> +		kfree(handle);
> +		handle = ERR_PTR(-EINVAL);
> +		goto out;
> +	}
> +
> +out:
> +	of_node_put(speedy_np);
> +	return handle;
> +}
> +
> +const struct speedy_device *devm_speedy_get_device(struct device *dev)

Not used, drop function.

> +{
> +	const struct speedy_device *handle;
> +	const struct speedy_device **ptr;
> +
> +	ptr = devres_alloc(devm_speedy_release, sizeof(*ptr), GFP_KERNEL);
> +	if (!ptr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	handle = speedy_get_device(dev_of_node(dev));
> +	if (!IS_ERR(handle)) {
> +		*ptr = handle;
> +		devres_add(dev, ptr);
> +	} else {
> +		devres_free(ptr);
> +	}
> +
> +	return handle;
> +}
> +EXPORT_SYMBOL_GPL(devm_speedy_get_device);

Not used, drop.



> +
> +static int speedy_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct speedy_controller *speedy;
> +	void __iomem *mem;
> +	int ret;
> +
> +	speedy = devm_kzalloc(dev, sizeof(struct speedy_controller), GFP_KERNEL);

sizeof(*) everywhere. You need to clean the downstream code when
upstreaming.

> +	if (!speedy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, speedy);
> +	speedy->pdev = pdev;
> +
> +	mutex_init(&speedy->io_lock);
> +
> +	mem = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(mem))
> +		return dev_err_probe(dev, PTR_ERR(mem), "Failed to ioremap memory\n");
> +
> +	speedy->map = devm_regmap_init_mmio(dev, mem, &speedy_map_cfg);
> +	if (IS_ERR(speedy->map))
> +		return dev_err_probe(dev, PTR_ERR(speedy->map), "Failed to init the regmap\n");

Wrap at 80.

> +
> +	/* Clear any interrupt status remaining */
> +	ret = speedy_int_clear(speedy);
> +	if (ret)
> +		return ret;
> +
> +	/* Reset the controller */
> +	ret = regmap_set_bits(speedy->map, SPEEDY_CTRL, SPEEDY_SW_RST);
> +	if (ret)
> +		return ret;
> +
> +	msleep(20);
> +
> +	/* Enable the hw */
> +	ret = regmap_set_bits(speedy->map, SPEEDY_CTRL, SPEEDY_ENABLE);
> +	if (ret)
> +		return ret;
> +
> +	msleep(20);
> +
> +	/* Probe child devices */
> +	ret = of_platform_populate(pdev->dev.of_node, NULL, NULL, dev);
> +	if (ret)
> +		dev_err(dev, "Failed to populate child devices: %d\n", ret);
> +
> +	return ret;

Missing cleanup in remove().

> +}
> +
> +static struct platform_driver speedy_driver = {
> +	.probe = speedy_probe,
> +	.driver = {
> +		.name = "exynos-speedy",
> +		.of_match_table = speedy_match,
> +	},
> +};
> +
> +module_platform_driver(speedy_driver);
> +
> +MODULE_DESCRIPTION("Samsung Exynos SPEEDY host controller driver");
> +MODULE_AUTHOR("Markuss Broks <markuss.broks@gmail.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/soc/samsung/exynos-speedy.h b/include/linux/soc/samsung/exynos-speedy.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..b2857d65d3b50927373866dd8ae1c47e98af6d7b
> --- /dev/null
> +++ b/include/linux/soc/samsung/exynos-speedy.h

Drop the header, not used.



Best regards,
Krzysztof

