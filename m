Return-Path: <devicetree+bounces-255718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DB4D26926
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 868E23042D87
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073C13D34A3;
	Thu, 15 Jan 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="SXsKB2Gt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEEA3D348A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498053; cv=none; b=ClMXxPanviSaeKhGT09iNJ/cmEZQUCanMkpkElkklt54p9szxQrDZzQ+t7+kZC1UROnq3X7BSpBonk0vlRZUuXQh7fKy64AE9A5asFKSka7usk0Njg5wGmr66Z7eWYrtziPE1jp2/R27tx+hq1eF82X3TlcQqTqLkw8HL1d+Q5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498053; c=relaxed/simple;
	bh=RFVzaFNUJbNJvOAruDNOXBDJqYqVmAKMFg8L7IhuIv0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R4uodbUidbo4uZMcXehTkPNpnvtCosal6FGzUWoysbEi1c9+QJ3r7Lb4nWHkKdMUy+TDP3gMKjhq0NNanoX6ASRJ3ZEHP8PbHiRUyunoUlNs6rl431ADaKahhHDOaIfLRnZminlAKcke2n4qo2tkNZjJOgej2Thac3Xvko2rLUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=SXsKB2Gt; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-8888a16d243so11718636d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768498050; x=1769102850; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fiKJ849xhUg0B5j5HLWz1UsKpOTFhEdl4ZZuo9C0n8U=;
        b=SXsKB2Gt0eRsPPAaINjWeUruFXD2l+OLLtft6tXefjLYhLNRQ9huqeBS8syBuIQ4PD
         sXgZUBxhxIgEOUvJZu74NcChug9Gy0bCS0K/9poAgNLO8kPUQIw5dQZx152WLELwvHOq
         OszGKRc31+kTvur1LqjQNF8h3uxSv5ykQ4MZkcs9BSz5FkHbe1o3YkE31zVPCYza0S4d
         S0zpapzIiWZsFSv1Cg8E7/U1pvGZif86c7HHV3hr7sL3IL6UIWvs7oPgriI1h0MXszp3
         v6uXtB1rE0wms9BqXhcqL2Y55wK4n1Aj4TSLzaELhj6SyibT2cUNq1OE5Aqb2W91OfuF
         NaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768498050; x=1769102850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiKJ849xhUg0B5j5HLWz1UsKpOTFhEdl4ZZuo9C0n8U=;
        b=o2H/eAK/RaB2kD8vNvSM5xBmOuRTXdhN7o7pPbtm8ZEStbriOr7PJ3H2uHBF/JL3Tw
         t6Byct/zy/JNUiKWkbgtOnE7EgHDiGdX2Psp45rEoVdEdfnOqC5uVB36AcVyu0sKcyfM
         1zStoegF+ejMbG8t3KzdIyx9vhHhFyH+WwMJFn56UoMLq5CMTJ0JdAkGVovdHshPhM3q
         N6IYIAkT9RP1EMz3itE0PNk1V0rGl3dAq38/swld94cNiQzl5bAq6Kbi5wZmywIgvuB2
         kFMulYearkL6Wq2As9du8gT5VHJ2+RgSMf5Loh5ik8A7uO848oJdvJVjzNCmDvWrzAyA
         n0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCX3oABoRVK17o2uIXXVYKM7PgeqlXeAS4jU3BRvxy8iXuddirUL7WatFeSzWmxev9eHUxJYs3rCnkOg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2Tlqj6kHbqliG2bXE+TI19PDKcDdq69MucuZLOSUSWYQOVrNZ
	leX2gsBIunSvO1+UAD42b5xpZQqAW6ZvAeIj4qyw6UbgeCDrTxFQKUXxQBH+KJS/eFY=
X-Gm-Gg: AY/fxX54WRbynRk8e8+0OfA+QHvyJCdWmDHTAIWL7kl6HKhL7c1eUAV0e2nBqvcM+o5
	zGMxTdwAImQRN/7wpzpNJrKNzoGOXtmmOuESSOgBr0B4RsvRRxjo9uoPD9rvbZ+Wkx9OvOn81Ma
	JIzK5jBLogf17LT2dgbg+JhFPMq7BHZtrX25oFmcI1pjpn3+haqPq6Bg310ltafcFC9fodrCITt
	MnSkzr+Bhh4dh66ASbA3Fx6TGC+FU/XGPF58f6GbinOpZb1XNx794Yjjh5g46cmaTGdMYsPRlXF
	9oURmVaw3CzMin8fPdXv53l1sZT61SzYB+cG/Ee3OaMd4nP1OGC29GtMixG82wkYRLDGIpL8vO3
	6SWyppvx96GCadtiuAlisdkdWUBGCs9Nhp13yviAGfuQp64lPxyoJblddn1gda+fmolwsLdS8hD
	l4ufOHj5Diaadq2bAWQkwzv5g7AJvhcPU9W9kC56vf29KxWP7RkCpBHMhTmEbDjLw=
X-Received: by 2002:a05:6214:1243:b0:892:65bb:124b with SMTP id 6a1803df08f44-8942ddf4171mr2103946d6.70.1768498049994;
        Thu, 15 Jan 2026 09:27:29 -0800 (PST)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c530a9e5d1sm452354985a.18.2026.01.15.09.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 09:27:29 -0800 (PST)
Message-ID: <80161b42-c665-4fe8-bc7c-845ca44bc723@riscstar.com>
Date: Thu, 15 Jan 2026 11:27:28 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] reset: spacemit: Extract common K1 reset code
To: Guodong Xu <guodong@riscstar.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Haylen Chu <heylenay@4d2.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
 <20260108-k3-reset-v2-3-457df235efe9@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260108-k3-reset-v2-3-457df235efe9@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/8/26 8:22 AM, Guodong Xu wrote:
> Extract the common reset controller code from the K1 driver into
> separate reset-spacemit-common.{c,h} files to prepare for additional
> SpacemiT SoCs that share the same reset controller architecture.
> 
> The common code includes handlers for reset assert and deassert
> operations and probing for auxiliary bus devices.
> 
> Changes during extraction:
> - Module ownership: Use dev->driver->owner instead of THIS_MODULE in
>    spacemit_reset_controller_register() to correctly reference the
>    calling driver's module.
> - Rename spacemit_reset_ids to spacemit_k1_reset_ids.
> - Define new namespace "RESET_SPACEMIT" for the exported common
>    functions (spacemit_reset_probe) and update K1 driver to import it.
> 
> This prepares for additional SpacemiT SoCs (K3) that share the same reset
> controller architecture.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

This looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v2: Use dev->driver->owner for the reset controller owner instead of
>      THIS_MODULE to fix the module reference counting issue pointed out
>      by Krzysztof Kozlowski.
> ---
>   drivers/reset/spacemit/Kconfig                 |  17 +++-
>   drivers/reset/spacemit/Makefile                |   2 +
>   drivers/reset/spacemit/reset-spacemit-common.c |  77 ++++++++++++++++++
>   drivers/reset/spacemit/reset-spacemit-common.h |  42 ++++++++++
>   drivers/reset/spacemit/reset-spacemit-k1.c     | 107 +++----------------------
>   5 files changed, 144 insertions(+), 101 deletions(-)
> 
> diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
> index 552884e8b72afeb05cdb9b6565ad8e7fd32f990b..56a4858b30e136296e1f9c85b7b13ccee91fe7b4 100644
> --- a/drivers/reset/spacemit/Kconfig
> +++ b/drivers/reset/spacemit/Kconfig
> @@ -1,10 +1,20 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   
> -config RESET_SPACEMIT_K1
> -	tristate "SpacemiT K1 reset driver"
> +menu "Reset support for SpacemiT platforms"
>   	depends on ARCH_SPACEMIT || COMPILE_TEST
> -	depends on SPACEMIT_K1_CCU
> +
> +config RESET_SPACEMIT_COMMON
> +	tristate
>   	select AUXILIARY_BUS
> +	help
> +	  Common reset controller infrastructure for SpacemiT SoCs.
> +	  This provides shared code and helper functions used by
> +	  reset drivers for various SpacemiT SoC families.
> +
> +config RESET_SPACEMIT_K1
> +	tristate "Support for SpacemiT K1 SoC"
> +	depends on SPACEMIT_K1_CCU
> +	select RESET_SPACEMIT_COMMON
>   	default SPACEMIT_K1_CCU
>   	help
>   	  Support for reset controller in SpacemiT K1 SoC.
> @@ -12,3 +22,4 @@ config RESET_SPACEMIT_K1
>   	  unit (CCU) driver to provide reset control functionality
>   	  for various peripherals and subsystems in the SoC.
>   
> +endmenu
> diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
> index de7e358c74fd7b0fac3ec2c18d985331af64fcbb..fecda9f211b24a54707b3f425b9325be1f2f7738 100644
> --- a/drivers/reset/spacemit/Makefile
> +++ b/drivers/reset/spacemit/Makefile
> @@ -1,3 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_RESET_SPACEMIT_COMMON)	+= reset-spacemit-common.o
> +
>   obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
>   
> diff --git a/drivers/reset/spacemit/reset-spacemit-common.c b/drivers/reset/spacemit/reset-spacemit-common.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..0626633a5e7db6e31be4ed36505b15291eb186b1
> --- /dev/null
> +++ b/drivers/reset/spacemit/reset-spacemit-common.c
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/* SpacemiT reset controller driver - common implementation */
> +
> +#include <linux/container_of.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +
> +#include <soc/spacemit/ccu.h>
> +
> +#include "reset-spacemit-common.h"
> +
> +static int spacemit_reset_update(struct reset_controller_dev *rcdev,
> +				 unsigned long id, bool assert)
> +{
> +	struct ccu_reset_controller *controller;
> +	const struct ccu_reset_data *data;
> +	u32 mask;
> +	u32 val;
> +
> +	controller = container_of(rcdev, struct ccu_reset_controller, rcdev);
> +	data = &controller->data->reset_data[id];
> +	mask = data->assert_mask | data->deassert_mask;
> +	val = assert ? data->assert_mask : data->deassert_mask;
> +
> +	return regmap_update_bits(controller->regmap, data->offset, mask, val);
> +}
> +
> +static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
> +				 unsigned long id)
> +{
> +	return spacemit_reset_update(rcdev, id, true);
> +}
> +
> +static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
> +				   unsigned long id)
> +{
> +	return spacemit_reset_update(rcdev, id, false);
> +}
> +
> +static const struct reset_control_ops spacemit_reset_control_ops = {
> +	.assert		= spacemit_reset_assert,
> +	.deassert	= spacemit_reset_deassert,
> +};
> +
> +static int spacemit_reset_controller_register(struct device *dev,
> +					      struct ccu_reset_controller *controller)
> +{
> +	struct reset_controller_dev *rcdev = &controller->rcdev;
> +
> +	rcdev->ops = &spacemit_reset_control_ops;
> +	rcdev->owner = dev->driver->owner;
> +	rcdev->of_node = dev->of_node;
> +	rcdev->nr_resets = controller->data->count;
> +
> +	return devm_reset_controller_register(dev, &controller->rcdev);
> +}
> +
> +int spacemit_reset_probe(struct auxiliary_device *adev,
> +			 const struct auxiliary_device_id *id)
> +{
> +	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
> +	struct ccu_reset_controller *controller;
> +	struct device *dev = &adev->dev;
> +
> +	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
> +	if (!controller)
> +		return -ENOMEM;
> +	controller->data = (const struct ccu_reset_controller_data *)id->driver_data;
> +	controller->regmap = rdev->regmap;
> +
> +	return spacemit_reset_controller_register(dev, controller);
> +}
> +EXPORT_SYMBOL_NS_GPL(spacemit_reset_probe, "RESET_SPACEMIT");
> +
> +MODULE_DESCRIPTION("SpacemiT reset controller driver - common code");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/reset/spacemit/reset-spacemit-common.h b/drivers/reset/spacemit/reset-spacemit-common.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..ffaf2f86eb39df72b079095b3f5da3622e132c8d
> --- /dev/null
> +++ b/drivers/reset/spacemit/reset-spacemit-common.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * SpacemiT reset controller driver - common definitions
> + */
> +
> +#ifndef _RESET_SPACEMIT_COMMON_H_
> +#define _RESET_SPACEMIT_COMMON_H_
> +
> +#include <linux/auxiliary_bus.h>
> +#include <linux/regmap.h>
> +#include <linux/reset-controller.h>
> +#include <linux/types.h>
> +
> +struct ccu_reset_data {
> +	u32 offset;
> +	u32 assert_mask;
> +	u32 deassert_mask;
> +};
> +
> +struct ccu_reset_controller_data {
> +	const struct ccu_reset_data *reset_data;	/* array */
> +	size_t count;
> +};
> +
> +struct ccu_reset_controller {
> +	struct reset_controller_dev rcdev;
> +	const struct ccu_reset_controller_data *data;
> +	struct regmap *regmap;
> +};
> +
> +#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
> +	{							\
> +		.offset		= (_offset),			\
> +		.assert_mask	= (_assert_mask),		\
> +		.deassert_mask	= (_deassert_mask),		\
> +	}
> +
> +/* Common probe function */
> +int spacemit_reset_probe(struct auxiliary_device *adev,
> +			 const struct auxiliary_device_id *id);
> +
> +#endif /* _RESET_SPACEMIT_COMMON_H_ */
> diff --git a/drivers/reset/spacemit/reset-spacemit-k1.c b/drivers/reset/spacemit/reset-spacemit-k1.c
> index cc7fd1f8750d422f3d8f96367ae259f38418c44b..8f3b5329ea5f627ab454e15bf485b155c9f48ca5 100644
> --- a/drivers/reset/spacemit/reset-spacemit-k1.c
> +++ b/drivers/reset/spacemit/reset-spacemit-k1.c
> @@ -1,41 +1,13 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   
> -/* SpacemiT reset controller driver */
> +/* SpacemiT K1 reset controller driver */
>   
> -#include <linux/auxiliary_bus.h>
> -#include <linux/container_of.h>
> -#include <linux/device.h>
>   #include <linux/module.h>
> -#include <linux/regmap.h>
> -#include <linux/reset-controller.h>
> -#include <linux/types.h>
>   
> -#include <soc/spacemit/k1-syscon.h>
>   #include <dt-bindings/clock/spacemit,k1-syscon.h>
> +#include <soc/spacemit/k1-syscon.h>
>   
> -struct ccu_reset_data {
> -	u32 offset;
> -	u32 assert_mask;
> -	u32 deassert_mask;
> -};
> -
> -struct ccu_reset_controller_data {
> -	const struct ccu_reset_data *reset_data;	/* array */
> -	size_t count;
> -};
> -
> -struct ccu_reset_controller {
> -	struct reset_controller_dev rcdev;
> -	const struct ccu_reset_controller_data *data;
> -	struct regmap *regmap;
> -};
> -
> -#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
> -	{							\
> -		.offset		= (_offset),			\
> -		.assert_mask	= (_assert_mask),		\
> -		.deassert_mask	= (_deassert_mask),		\
> -	}
> +#include "reset-spacemit-common.h"
>   
>   static const struct ccu_reset_data k1_mpmu_resets[] = {
>   	[RESET_WDT]	= RESET_DATA(MPMU_WDTPCR,		BIT(2), 0),
> @@ -214,91 +186,30 @@ static const struct ccu_reset_controller_data k1_apbc2_reset_data = {
>   	.count		= ARRAY_SIZE(k1_apbc2_resets),
>   };
>   
> -static int spacemit_reset_update(struct reset_controller_dev *rcdev,
> -				 unsigned long id, bool assert)
> -{
> -	struct ccu_reset_controller *controller;
> -	const struct ccu_reset_data *data;
> -	u32 mask;
> -	u32 val;
> -
> -	controller = container_of(rcdev, struct ccu_reset_controller, rcdev);
> -	data = &controller->data->reset_data[id];
> -	mask = data->assert_mask | data->deassert_mask;
> -	val = assert ? data->assert_mask : data->deassert_mask;
> -
> -	return regmap_update_bits(controller->regmap, data->offset, mask, val);
> -}
> -
> -static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
> -				 unsigned long id)
> -{
> -	return spacemit_reset_update(rcdev, id, true);
> -}
> -
> -static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
> -				   unsigned long id)
> -{
> -	return spacemit_reset_update(rcdev, id, false);
> -}
> -
> -static const struct reset_control_ops spacemit_reset_control_ops = {
> -	.assert		= spacemit_reset_assert,
> -	.deassert	= spacemit_reset_deassert,
> -};
> -
> -static int spacemit_reset_controller_register(struct device *dev,
> -					      struct ccu_reset_controller *controller)
> -{
> -	struct reset_controller_dev *rcdev = &controller->rcdev;
> -
> -	rcdev->ops = &spacemit_reset_control_ops;
> -	rcdev->owner = THIS_MODULE;
> -	rcdev->of_node = dev->of_node;
> -	rcdev->nr_resets = controller->data->count;
> -
> -	return devm_reset_controller_register(dev, &controller->rcdev);
> -}
> -
> -static int spacemit_reset_probe(struct auxiliary_device *adev,
> -				const struct auxiliary_device_id *id)
> -{
> -	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
> -	struct ccu_reset_controller *controller;
> -	struct device *dev = &adev->dev;
> -
> -	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
> -	if (!controller)
> -		return -ENOMEM;
> -	controller->data = (const struct ccu_reset_controller_data *)id->driver_data;
> -	controller->regmap = rdev->regmap;
> -
> -	return spacemit_reset_controller_register(dev, controller);
> -}
> -
>   #define K1_AUX_DEV_ID(_unit) \
>   	{ \
>   		.name = "spacemit_ccu.k1-" #_unit "-reset", \
>   		.driver_data = (kernel_ulong_t)&k1_ ## _unit ## _reset_data, \
>   	}
>   
> -static const struct auxiliary_device_id spacemit_reset_ids[] = {
> +static const struct auxiliary_device_id spacemit_k1_reset_ids[] = {
>   	K1_AUX_DEV_ID(mpmu),
>   	K1_AUX_DEV_ID(apbc),
>   	K1_AUX_DEV_ID(apmu),
>   	K1_AUX_DEV_ID(rcpu),
>   	K1_AUX_DEV_ID(rcpu2),
>   	K1_AUX_DEV_ID(apbc2),
> -	{ },
> +	{ /* sentinel */ }
>   };
> -MODULE_DEVICE_TABLE(auxiliary, spacemit_reset_ids);
> +MODULE_DEVICE_TABLE(auxiliary, spacemit_k1_reset_ids);
>   
>   static struct auxiliary_driver spacemit_k1_reset_driver = {
>   	.probe          = spacemit_reset_probe,
> -	.id_table       = spacemit_reset_ids,
> +	.id_table       = spacemit_k1_reset_ids,
>   };
>   module_auxiliary_driver(spacemit_k1_reset_driver);
>   
> +MODULE_IMPORT_NS("RESET_SPACEMIT");
>   MODULE_AUTHOR("Alex Elder <elder@kernel.org>");
> -MODULE_DESCRIPTION("SpacemiT reset controller driver");
> +MODULE_DESCRIPTION("SpacemiT K1 reset controller driver");
>   MODULE_LICENSE("GPL");
> 


