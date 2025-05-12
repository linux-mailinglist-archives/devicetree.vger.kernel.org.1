Return-Path: <devicetree+bounces-176380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF1AB3C3A
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 17:35:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89CF119E1BED
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 15:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4825E23CEFF;
	Mon, 12 May 2025 15:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bqXCYsgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8218B23C4EB
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747064097; cv=none; b=jhyOt47gpW9EYfG3K0Jw28qgFJ8a6sbLKgASb66OLYSR7CnuLwRoK8zGfYxsCfsNgQLjon/bYqW9u+HmRzvk9CiMQNNu1+8VhRlz2htpgMeXq2YTighd+9OLWQf0hquGLwHIiE6b0ke2LG0SjT6ocPtY7M45/nUjuR1Fko+mr/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747064097; c=relaxed/simple;
	bh=pv78F9stsJ8G3bZB63UkFBcvn8rAZ1R9f12eL6IUMao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KJmFSULSvDX9VYWb2RXVt1Vu/ESoi4OwxWLthT3YjxX8O5Vtdl60fQbijrtB5srQoTgapNRYKdz9DlS3FdsYT5qQqNf7sM/QouuhJa0o8KiZHlKZ7cDlZgrftpbFtxx90WQONen84j3NKvzkcXFT6n/Hu8Qn+sIAsrma1+E0O+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bqXCYsgA; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-8644aa73dfcso121705739f.0
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 08:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747064092; x=1747668892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lYJaGZXZUyw5dmv6C4SZsZQfI6bTO70Cjj2nmUvqWrc=;
        b=bqXCYsgAGSH15OPeC9/2Sjd7vlz+0DP06PBgoe6rV8oMSSNBvAxIr4+acYol0IUXZC
         S6asXE4dKPa6B6wxclr3X8f4L+DTuRFkroIxjR6mQIewQCjsrO6pUVPOBitqPO6haWSp
         RSXbiQqF5UxCrsGfD7H0v7ozAqZ5XrjOKFeyVmpbip1LeoGAJ5aCOuzbhP0dbjgV8hWT
         yCOvra/zUGWNOXF3+ACrd1LQSenI76wZm/jTsNK/LrVXtZURdbPYP1D4X3nBh5h0A+Pt
         pTXlcxtDMHnp/cuCoGXaLwnabqg9+hNaa8fTOLhJYMMDMGLk81OSqa3cUPXuWIjNH1FI
         9a2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747064092; x=1747668892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lYJaGZXZUyw5dmv6C4SZsZQfI6bTO70Cjj2nmUvqWrc=;
        b=L9wxT04W09S8+xkVJFecPl2oiJQk8KqL6FevgJrKldLtV8mvkQUOyRLHE7QOAjf/mk
         yvayiSS19dnbOvnGR5zDsPIym60t9y/rkiGsxB5GZkYqtAEQEqLgF1w+yBiEYDro5nNJ
         POas63zSFbpyae3CMn+PUAe9XgTRpJsEygbo8EGfOUcZda/AdISiANkgsCWEkENumNqi
         ETODtnyXmLF6r/y7ANzdklEsgVGeJFE+tEeBcyV36qY5Drdlyh44yh6d+wAedNo32GjA
         I8m16Az2KaQDtoQEs0kQMtOgXRUbNrbMIOyixTXTfuUCVRT+f/HZRCC0TwAyndE72iGj
         y7jw==
X-Forwarded-Encrypted: i=1; AJvYcCXUOtC5ih0vbE5/YoaBKxdsRSOSCH0Ws2s63BnQDtWVDRgqNwS0c/0B5J3MmBoA3GQjCbw0FAa61Pf1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmor7hn4PXaUtD73u2LgYpEwGxzq4wiDOsHRe+Kloam0MlZqV9
	pV1TEnCZlDGlOowjW1x0nPPtlKmBx/G+4M0Ap+iyYrw1z/X1JFu6Ihh9xuAjABQ=
X-Gm-Gg: ASbGncs/4U97QDmtO4TYXQvkpa01+0YPSGufHDRjOVrb4tTQGnP/qDe3tmJX4MzL2UI
	O/Lv1NJYbiiglgYYjgc4aEKlgEP9mQqYUsX1ganGPZ/FpIcp9LrnzDpQxA9lcPrefEdDlnrWkKQ
	tll3wrfKPjfMmYM6wBSk+Nfwc+pMHYhpdBWzBtsF9/2oakolL/MbAT+RQNImgtpQBwI8XvhrW4d
	F6nZVUf5z0BhgVl93ojhE7BGacrHLu2H7RJTpwriN/dMgrOG1dyu0XujKkU+I1EaxRScbkIOaAq
	Tx9rO22P11YutTCJtic8iAByKsTMdXy3MAreTqJivEfLikY6r7hpi2i7dzjVERrf4GmiJMLZFve
	C6vfu66KdwT5WiZA=
X-Google-Smtp-Source: AGHT+IH16NsP5SQEwuJ4If2aiYvLrNSPMhqtNtOBoBzqL+qXeoZ6Dn+0ikRgSmuBULdjkG/IsIjvIw==
X-Received: by 2002:a05:6e02:154e:b0:3d6:d18b:868c with SMTP id e9e14a558f8ab-3da7e1e71a0mr134648155ab.10.1747064092279;
        Mon, 12 May 2025 08:34:52 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3da7e10477csm23785295ab.27.2025.05.12.08.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 08:34:51 -0700 (PDT)
Message-ID: <abfd4c78-2592-4b8a-97be-109a8fd1bed6@riscstar.com>
Date: Mon, 12 May 2025 10:34:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/6] clk: spacemit: set up reset auxiliary devices
To: Yixun Lan <dlan@gentoo.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, heylenay@4d2.org, inochiama@outlook.com,
 guodong@riscstar.com, devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250509112032.2980811-1-elder@riscstar.com>
 <20250509112032.2980811-4-elder@riscstar.com>
 <20250512135429-GYA517867@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250512135429-GYA517867@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/12/25 8:54 AM, Yixun Lan wrote:
> On 06:20 Fri 09 May     , Alex Elder wrote:
>> Add a new reset_name field to the spacemit_ccu_data structure.  If it is
>> non-null, the CCU implements a reset controller, and the name will be
>> used in the name for the auxiliary device that implements it.
>>
>> Define a new type to hold an auxiliary device as well as the regmap
>> pointer that will be needed by CCU reset controllers.  Set up code to
>> initialize and add an auxiliary device for any CCU that implements reset
>> functionality.
>>
>> Make it optional for a CCU to implement a clock controller.  This
>> doesn't apply to any of the existing CCUs but will for some new ones
>> that will be added soon.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>> v8: Allocate the auxiliary device using kzalloc(), not devm_kzalloc()
>>
>>   drivers/clk/spacemit/Kconfig     |  1 +
>>   drivers/clk/spacemit/ccu-k1.c    | 90 ++++++++++++++++++++++++++++----
>>   include/soc/spacemit/k1-syscon.h | 12 +++++
>>   3 files changed, 93 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/clk/spacemit/Kconfig b/drivers/clk/spacemit/Kconfig
>> index 4c4df845b3cb2..3854f6ae6d0ea 100644
>> --- a/drivers/clk/spacemit/Kconfig
>> +++ b/drivers/clk/spacemit/Kconfig
>> @@ -3,6 +3,7 @@
>>   config SPACEMIT_CCU
>>   	tristate "Clock support for SpacemiT SoCs"
>>   	depends on ARCH_SPACEMIT || COMPILE_TEST
>> +	select AUXILIARY_BUS
>>   	select MFD_SYSCON
>>   	help
>>   	  Say Y to enable clock controller unit support for SpacemiT SoCs.
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index 801150f4ff0f5..551df9d076859 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
>> @@ -5,12 +5,14 @@
>>    */
>>   
>>   #include <linux/array_size.h>
>> +#include <linux/auxiliary_bus.h>
>>   #include <linux/clk-provider.h>
>>   #include <linux/delay.h>
>>   #include <linux/mfd/syscon.h>
>>   #include <linux/minmax.h>
>>   #include <linux/module.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/slab.h>
>>   #include <soc/spacemit/k1-syscon.h>
>>   
>>   #include "ccu_common.h"
>> @@ -21,6 +23,7 @@
>>   #include <dt-bindings/clock/spacemit,k1-syscon.h>
>>   
>>   struct spacemit_ccu_data {
>> +	const char *reset_name;
> see my comment below..
> 
>>   	struct clk_hw **hws;
>>   	size_t num;
>>   };
>> @@ -710,8 +713,9 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
>>   };
>>   
>>   static const struct spacemit_ccu_data k1_ccu_pll_data = {
>> -	.hws	= k1_ccu_pll_hws,
>> -	.num	= ARRAY_SIZE(k1_ccu_pll_hws),
>> +	/* The PLL CCU implements no resets */
>> +	.hws		= k1_ccu_pll_hws,
>> +	.num		= ARRAY_SIZE(k1_ccu_pll_hws),
>>   };
>>   
>>   static struct clk_hw *k1_ccu_mpmu_hws[] = {
>> @@ -751,8 +755,9 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
>>   };
>>   
>>   static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
>> -	.hws	= k1_ccu_mpmu_hws,
>> -	.num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
>> +	.reset_name	= "mpmu-reset",
>> +	.hws		= k1_ccu_mpmu_hws,
>> +	.num		= ARRAY_SIZE(k1_ccu_mpmu_hws),
>>   };
>>   
>>   static struct clk_hw *k1_ccu_apbc_hws[] = {
>> @@ -859,8 +864,9 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
>>   };
>>   
>>   static const struct spacemit_ccu_data k1_ccu_apbc_data = {
>> -	.hws	= k1_ccu_apbc_hws,
>> -	.num	= ARRAY_SIZE(k1_ccu_apbc_hws),
>> +	.reset_name	= "apbc-reset",
>> +	.hws		= k1_ccu_apbc_hws,
>> +	.num		= ARRAY_SIZE(k1_ccu_apbc_hws),
>>   };
>>   
>>   static struct clk_hw *k1_ccu_apmu_hws[] = {
>> @@ -929,8 +935,9 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
>>   };
>>   
>>   static const struct spacemit_ccu_data k1_ccu_apmu_data = {
>> -	.hws	= k1_ccu_apmu_hws,
>> -	.num	= ARRAY_SIZE(k1_ccu_apmu_hws),
>> +	.reset_name	= "apmu-reset",
>> +	.hws		= k1_ccu_apmu_hws,
>> +	.num		= ARRAY_SIZE(k1_ccu_apmu_hws),
>>   };
>>   
>>   static int spacemit_ccu_register(struct device *dev,
>> @@ -941,6 +948,10 @@ static int spacemit_ccu_register(struct device *dev,
>>   	struct clk_hw_onecell_data *clk_data;
>>   	int i, ret;
>>   
>> +	/* Nothing to do if the CCU does not implement any clocks */
>> +	if (!data->hws)
>> +		return 0;
>> +
>>   	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->num),
>>   				GFP_KERNEL);
>>   	if (!clk_data)
>> @@ -981,9 +992,63 @@ static int spacemit_ccu_register(struct device *dev,
>>   	return ret;
>>   }
>>   
>> +static void spacemit_cadev_release(struct device *dev)
> why this function define as _cadev_ prefix, while below as _adev_
> is it a typo? or c short for ccu, I just feel it isn't consistent..

It is not a typo.  Yes, it was intended to represent CCU
Auxiliary device, while "adev" represents just Auxiliary
Device.  It is releasing (freeing) a spacemit_ccu_adev
structure.

>> +{
>> +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
>> +
>> +	kfree(to_spacemit_ccu_adev(adev));
>> +}
>> +

This function is operating on an auxiliary_device structure,
so "adev" is used in its name.

>> +static void spacemit_adev_unregister(void *data)
>> +{
>> +	struct auxiliary_device *adev = data;
>> +
>> +	auxiliary_device_delete(adev);
>> +	auxiliary_device_uninit(adev);
>> +}
>> +
>> +static int spacemit_ccu_reset_register(struct device *dev,
>> +				       struct regmap *regmap,
>> +				       const char *reset_name)
>> +{
>> +	struct spacemit_ccu_adev *cadev;
>> +	struct auxiliary_device *adev;
>> +	static u32 next_id;
>> +	int ret;
>> +
>> +	/* Nothing to do if the CCU does not implement a reset controller */
>> +	if (!reset_name)
>> +		return 0;
>> +
>> +	cadev = kzalloc(sizeof(*cadev), GFP_KERNEL);
>> +	if (!cadev)
>> +		return -ENOMEM;
> add one blank line here?

If I do a new version that's easy but this was intentional.

>> +	cadev->regmap = regmap;
>> +
>> +	adev = &cadev->adev;
>> +	adev->name = reset_name;
>> +	adev->dev.parent = dev;
>> +	adev->dev.release = spacemit_cadev_release;
>> +	adev->dev.of_node = dev->of_node;
> [..]
>> +	adev->id = next_id++;
> so I'd assume the underlying device doesn't really care the id?
> but with different order of registration, it will result random id for the device

These things are identified in DTS files by their index values
defined in "spacemit,k1-syscon.h".  If there is a need for the
assigned device ID to be consistent, I'm not aware of it.  Can
you think of one?  I think all that matters is that they're
unique, and this ensures that (for up to 2^32 PMICs).

> how about define a reset struct, and group reset_name and next_id together,
> then we can intialize them with fixed value
> (this will also let us dropping 'static next_id' variable)

I don't see why isolating the visibility of the next_id variable
inside here is a problem.

> with this change, it's more easy to extend in the future (a weak reason)..

How does this make it easier to extend?  How do you anticipate
it will need to be extended?


If you can explain why it's necessary to use fixed IDs for the
auxiliary devices I'll gladly post a new version.  But outside
that I would really prefer to just leave this code as-is.

					-Alex

>> +
>> +	ret = auxiliary_device_init(adev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = auxiliary_device_add(adev);
>> +	if (ret) {
>> +		auxiliary_device_uninit(adev);
>> +		return ret;
>> +	}
>> +
>> +	return devm_add_action_or_reset(dev, spacemit_adev_unregister, adev);
>> +}
>> +
>>   static int k1_ccu_probe(struct platform_device *pdev)
>>   {
>>   	struct regmap *base_regmap, *lock_regmap = NULL;
>> +	const struct spacemit_ccu_data *data;
>>   	struct device *dev = &pdev->dev;
>>   	int ret;
>>   
>> @@ -1012,11 +1077,16 @@ static int k1_ccu_probe(struct platform_device *pdev)
>>   					     "failed to get lock regmap\n");
>>   	}
>>   
>> -	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
>> -				    of_device_get_match_data(dev));
>> +	data = of_device_get_match_data(dev);
>> +
>> +	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap, data);
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "failed to register clocks\n");
>>   
>> +	ret = spacemit_ccu_reset_register(dev, base_regmap, data->reset_name);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret, "failed to register resets\n");
>> +
>>   	return 0;
>>   }
>>   
>> diff --git a/include/soc/spacemit/k1-syscon.h b/include/soc/spacemit/k1-syscon.h
>> index 039a448c51a07..53eff7691f33d 100644
>> --- a/include/soc/spacemit/k1-syscon.h
>> +++ b/include/soc/spacemit/k1-syscon.h
>> @@ -5,6 +5,18 @@
>>   #ifndef __SOC_K1_SYSCON_H__
>>   #define __SOC_K1_SYSCON_H__
>>   
>> +/* Auxiliary device used to represent a CCU reset controller */
>> +struct spacemit_ccu_adev {
>> +	struct auxiliary_device adev;
>> +	struct regmap *regmap;
>> +};
>> +
>> +static inline struct spacemit_ccu_adev *
>> +to_spacemit_ccu_adev(struct auxiliary_device *adev)
>> +{
>> +	return container_of(adev, struct spacemit_ccu_adev, adev);
>> +}
>> +
>>   /* APBS register offset */
>>   #define APBS_PLL1_SWCR1			0x100
>>   #define APBS_PLL1_SWCR2			0x104
>> -- 
>> 2.45.2
>>
>>
> 


