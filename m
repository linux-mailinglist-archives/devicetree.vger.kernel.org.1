Return-Path: <devicetree+bounces-175016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E20BAAF953
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 133A24A335A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED521CD2C;
	Thu,  8 May 2025 12:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="HXOtcA1g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0A521D3F1
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746705915; cv=none; b=EcY8emMRGqX8bpMB+6O+1n8XXQw9HVAOWIUpOf+ICOn1dnIPyTsiBnxceytYmtQObTedPmZHKg5h5NByjjVp894OOvHOSuSCCxxG3iqN7oX5S6uxIYm3siEb9wdW2fiHEbaz96F0ysfBP05fz9BqnGbySzhySQCC/b7WAUZDaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746705915; c=relaxed/simple;
	bh=ugXrKwqz64w4DDTRNujDV+pDki1osur9W9trLUaS/1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ejs6Yfr7XIH4vHNDATZfZtjpLk1yHSCYELIwOG/pKQKHNQHUl9rQijTsv6o1XQcBe1AtjRozrtyZTJ3BEIIHCnYZi8VWOH8KIhI/K6yTaXx1RV6jmKQXoI8q+XATuc6mnAKhGbN8BBKkR1ArOgBqpkgC8a7oeLUAyJmZLtycxFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=HXOtcA1g; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-85e751cffbeso70536139f.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1746705913; x=1747310713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8M0x8NEzmO2L8ditubkbYYKzlcC91sxEJhQj0PA8tI=;
        b=HXOtcA1gq9nAXMPbmN2mMDxeSpJbLig6gjezjyasPMtcSO1BScSg0Wz4iBaChW+hd2
         rq/kgOsX41u+1AAILSREWeqlv+Dy0jnMA7adn7YD4FJhR1UyNF89hcbWL+HxDkLly6M3
         v2Wo4Ip2UDWG7anxzd2io6FHU0Zm5try9c1ol9rL/8xi+VwGrbl9B0+NfxFVIKMDs1Vl
         V5gFh4oEKnIaLWq500RmB5hmiVkpu9VLdOTQ6CJyQxBL1xAiB7bXWPMGD5CwSPRmDs8r
         f739p1HP/qt0eCLY6I2BlnOBYtO0akQDJAqsq3GJPLAtLqJ4CDN4PLN4LfNdCD7XKmzG
         fdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746705913; x=1747310713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K8M0x8NEzmO2L8ditubkbYYKzlcC91sxEJhQj0PA8tI=;
        b=ag/HWOmFAYZCokDjmc/F276WF3dngOAtImpGeebHg7FTZgOpdu4LvDuXAU8EmQsrpX
         YzYaUYd8Ns9LVH4aeT17onNyubtXJ8yKnlNAULrsq09qICv8V8munPy8pjQTjAEVjHDs
         jiFcPXwgqgY97ABWTNdSnnNLw8KNxf8FBLU0uJJ8VBhL/7MVRyVrYz1Z2KkgxGGCLsVX
         LJpsgpGQmHFE9LIXznc44du0ZudmODsgHwB03pFNsk8a6Sg3TOqrGIrqIwuZ9DE1ZLBs
         rA2LRrV3tjnyeONrvRU/jkKt/3Aq2Hy7IXJwpyJp1iYwCmg89Xor5WEs2MmZmqghXZ+E
         UPsg==
X-Forwarded-Encrypted: i=1; AJvYcCWiXgMWkoCpe1ZgkPj9VFpXM9A4xKJhwOHuVfWz11MMDZgKrSrn5ALMxy11QhAl9vh//dQU8/BjQhkZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwiKNXlkyXCXq5RLVYxyAer8eXT8m59lXw9Tu6NUeqbDWVJXl/6
	LVx+35XzkPXYcAZqO5/hNhPDKauaPGDKoQd9KY/Bc9QVBmNBpPatyIb+KW9TJCQ=
X-Gm-Gg: ASbGncuZfizhaOtASUKvLS0ygybzB5IJHS8N7Ejm63I8JxXBzTR4tbrYuxOIIaG15O6
	wrOmi61G+sYE1o4W5O5HEvm79OBCkK3fGqLfdIhYcd/Tb+91nU4rLkU2qa5prrx9gZeAbe38WIQ
	FW+TJ3JFLO6lZY/DLT+MC10vOi51aYQgQhJn6Fxnxl1q5u7zzSjfUdGr6n7WptJ6/5ywIdwe08C
	+sNozrJe+EthFqY1r1Cv5R+WXNj9DxY+oBIpii3HNNSs0jwxfmp8v9uavaIDZwXRSP3n+rv7MuM
	cld4XppL4FavBLPZkLcIIfX0Q6XCAFdaxXuErfCo2mBfUPzmdm01DH37uDRSNC7LrDJnmXD2PuU
	Y+nerIFQdMyqkZ34=
X-Google-Smtp-Source: AGHT+IENqOgzqKVvC6xZkVLM4GsFD62j+3s7icngKTzU2XQvVbzom+EN/JjFN+hVz861VlB35c5Qhw==
X-Received: by 2002:a05:6602:29c5:b0:864:a228:92b4 with SMTP id ca18e2360f4ac-8674727ecd2mr957925539f.7.1746705912788;
        Thu, 08 May 2025 05:05:12 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f88a8cf7c5sm3139756173.14.2025.05.08.05.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 05:05:11 -0700 (PDT)
Message-ID: <70fb558d-2da6-4b4d-a34c-9d992b700a50@riscstar.com>
Date: Thu, 8 May 2025 07:05:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] reset: spacemit: add support for SpacemiT CCU
 resets
To: Philipp Zabel <p.zabel@pengutronix.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, dlan@gentoo.org
Cc: heylenay@4d2.org, inochiama@outlook.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250506210638.2800228-1-elder@riscstar.com>
 <20250506210638.2800228-5-elder@riscstar.com>
 <8b5d8045041f2f07b68066e4e541d5e42282fa9b.camel@pengutronix.de>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <8b5d8045041f2f07b68066e4e541d5e42282fa9b.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/8/25 4:01 AM, Philipp Zabel wrote:
> Hi Alex,
> 
> On Di, 2025-05-06 at 16:06 -0500, Alex Elder wrote:
>> Implement reset support for SpacemiT CCUs.  The code is structured to
>> handle SpacemiT resets generically, while defining the set of specific
>> reset controllers and their resets in an SoC-specific source file.
> 
> Are you confident that future SpacemiT CCUs will be sufficiently
> similar for this split to make sense? This feels like it could be a
> premature abstraction to me.

Honestly, no.  I decided to do it this way to mirror how
the clock driver is structured, but I agree with you.  The
code is pretty simple currently, and it could all go in a
single file.  Splitting it later would be easy if needed.

I'll do that for the next version.

>> A SpacemiT reset controller device is an auxiliary device associated with
>> a clock controller (CCU).
>>
>> This initial patch defines the reset controllers for the MPMU, APBC, and
>> MPMU CCUs, which already defined clock controllers.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/reset/Kconfig           |   1 +
>>   drivers/reset/Makefile          |   1 +
>>   drivers/reset/spacemit/Kconfig  |  12 +++
>>   drivers/reset/spacemit/Makefile |   7 ++
>>   drivers/reset/spacemit/core.c   |  61 +++++++++++
>>   drivers/reset/spacemit/core.h   |  39 +++++++
>>   drivers/reset/spacemit/k1.c     | 177 ++++++++++++++++++++++++++++++++
>>   7 files changed, 298 insertions(+)
>>   create mode 100644 drivers/reset/spacemit/Kconfig
>>   create mode 100644 drivers/reset/spacemit/Makefile
>>   create mode 100644 drivers/reset/spacemit/core.c
>>   create mode 100644 drivers/reset/spacemit/core.h
>>   create mode 100644 drivers/reset/spacemit/k1.c
>>
>> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
>> index 99f6f9784e686..b1f1af50ca10b 100644
>> --- a/drivers/reset/Kconfig
>> +++ b/drivers/reset/Kconfig
>> @@ -354,6 +354,7 @@ source "drivers/reset/amlogic/Kconfig"
>>   source "drivers/reset/starfive/Kconfig"
>>   source "drivers/reset/sti/Kconfig"
>>   source "drivers/reset/hisilicon/Kconfig"
>> +source "drivers/reset/spacemit/Kconfig"
>>   source "drivers/reset/tegra/Kconfig"
>>   
>>   endif
>> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
>> index 31f9904d13f9c..6c19fd875ff13 100644
>> --- a/drivers/reset/Makefile
>> +++ b/drivers/reset/Makefile
>> @@ -2,6 +2,7 @@
>>   obj-y += core.o
>>   obj-y += amlogic/
>>   obj-y += hisilicon/
>> +obj-y += spacemit/
>>   obj-y += starfive/
>>   obj-y += sti/
>>   obj-y += tegra/
>> diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
>> new file mode 100644
>> index 0000000000000..4ff3487a99eff
>> --- /dev/null
>> +++ b/drivers/reset/spacemit/Kconfig
>> @@ -0,0 +1,12 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +config RESET_SPACEMIT
>> +	bool
>> +
>> +config RESET_SPACEMIT_K1
>> +	tristate "SpacemiT K1 reset driver"
>> +	depends on ARCH_SPACEMIT || COMPILE_TEST
>> +	select RESET_SPACEMIT
>> +	default ARCH_SPACEMIT
>> +	help
>> +	  This enables the reset controller driver for the SpacemiT K1 SoC.
> 
> Does the size of the K1 specific parts even warrant this per-SoC
> Kconfig option? I suggest to only have a user visible tristate
> RESET_SPACEMIT option.

I don't know if the size warrants it, it was more about structuring
config options to match the separation of the reset definitions.
Along with consolidating into a single source file, I'll just use
a single config option.

> 
>> diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
>> new file mode 100644
>> index 0000000000000..3a064e9d5d6b4
>> --- /dev/null
>> +++ b/drivers/reset/spacemit/Makefile
>> @@ -0,0 +1,7 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +
>> +obj-$(CONFIG_RESET_SPACEMIT)			+= reset_spacemit.o
>> +
>> +reset_spacemit-y				:= core.o
>> +
>> +reset_spacemit-$(CONFIG_RESET_SPACEMIT_K1)	+= k1.o
>> diff --git a/drivers/reset/spacemit/core.c b/drivers/reset/spacemit/core.c
>> new file mode 100644
>> index 0000000000000..5cd981eb3f097
>> --- /dev/null
>> +++ b/drivers/reset/spacemit/core.c
>> @@ -0,0 +1,61 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +
>> +/* SpacemiT reset driver core */
>> +
>> +#include <linux/container_of.h>
>> +#include <linux/regmap.h>
>> +#include <linux/reset-controller.h>
>> +#include <linux/types.h>
>> +
>> +#include "core.h"
>> +
>> +static int spacemit_reset_update(struct reset_controller_dev *rcdev,
>> +				 unsigned long id, bool assert)
>> +{
>> +	struct ccu_reset_controller *controller;
>> +	const struct ccu_reset_data *data;
>> +	u32 mask;
>> +	u32 val;
>> +
>> +	controller = container_of(rcdev, struct ccu_reset_controller, rcdev);
>> +	data = &controller->data->reset_data[id];
>> +	mask = data->assert_mask | data->deassert_mask;
>> +	val = assert ? data->assert_mask : data->deassert_mask;
>> +
>> +	return regmap_update_bits(controller->regmap, data->offset, mask, val);
>> +}
>> +
>> +static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
>> +				 unsigned long id)
>> +{
>> +	return spacemit_reset_update(rcdev, id, true);
>> +}
>> +
>> +static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
>> +				   unsigned long id)
>> +{
>> +	return spacemit_reset_update(rcdev, id, false);
>> +}
>> +
>> +static const struct reset_control_ops spacemit_reset_control_ops = {
>> +	.assert		= spacemit_reset_assert,
>> +	.deassert	= spacemit_reset_deassert,
>> +};
>> +
>> +/**
>> + * spacemit_reset_controller_register() - register a reset controller
>> + * @dev:	Device that's registering the controller
>> + * @controller:	SpacemiT CCU reset controller structure
>> + */
>> +int spacemit_reset_controller_register(struct device *dev,
>> +				       struct ccu_reset_controller *controller)
>> +{
>> +	struct reset_controller_dev *rcdev = &controller->rcdev;
>> +
>> +	rcdev->ops = &spacemit_reset_control_ops;
>> +	rcdev->owner = THIS_MODULE;
>> +	rcdev->of_node = dev->of_node;
>> +	rcdev->nr_resets = controller->data->count;
>> +
>> +	return devm_reset_controller_register(dev, &controller->rcdev);
>> +}
>> diff --git a/drivers/reset/spacemit/core.h b/drivers/reset/spacemit/core.h
>> new file mode 100644
>> index 0000000000000..a71f835ccb779
>> --- /dev/null
>> +++ b/drivers/reset/spacemit/core.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +
>> +/* SpacemiT reset driver core */
>> +
>> +#ifndef __RESET_SPACEMIT_CORE_H__
>> +#define __RESET_SPACEMIT_CORE_H__
>> +
>> +#include <linux/device.h>
> 
> This include can be replaced by forward declarations for struct device
> and struct regmap.

You're right, but I think this will be moot with a single source file.
Anyway, I'll fix this.

>> +#include <linux/reset-controller.h>
>> +#include <linux/types.h>
>> +
>> +struct ccu_reset_data {
>> +	u32 offset;
>> +	u32 assert_mask;
>> +	u32 deassert_mask;
>> +};
>> +
>> +#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
>> +	{							\
>> +		.offset		= (_offset),			\
>> +		.assert_mask	= (_assert_mask),		\
>> +		.deassert_mask	= (_deassert_mask),		\
>> +	}
>> +
>> +struct ccu_reset_controller_data {
>> +	const struct ccu_reset_data *reset_data;	/* array */
>> +	size_t count;
>> +};
>> +
>> +struct ccu_reset_controller {
>> +	struct reset_controller_dev rcdev;
>> +	const struct ccu_reset_controller_data *data;
>> +	struct regmap *regmap;
>> +};
>> +
>> +extern int spacemit_reset_controller_register(struct device *dev,
>> +			      struct ccu_reset_controller *controller);
> 
> Drop the extern keyword.

OK, but here too I think there will be no external declaration in
the next version.

>> +
>> +#endif /* __RESET_SPACEMIT_CORE_H__ */
>> diff --git a/drivers/reset/spacemit/k1.c b/drivers/reset/spacemit/k1.c
>> new file mode 100644
>> index 0000000000000..19a34f151b214
>> --- /dev/null
>> +++ b/drivers/reset/spacemit/k1.c
>> @@ -0,0 +1,177 @@
> [...]
>> +static int spacemit_k1_reset_probe(struct auxiliary_device *adev,
>> +				   const struct auxiliary_device_id *id)
>> +{
>> +	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
>> +	const void *data = (void *)id->driver_data;
>> +	struct ccu_reset_controller *controller;
>> +	struct device *dev = &adev->dev;
>> +
>> +	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
>> +	if (!controller)
>> +		return -ENODEV;
> 
> -ENOMEM, this is a failed memory allocation.

Yes, you're correct, I'll fix this.  Thank you very much
for your review.

					-Alex

> regards
> Philipp


