Return-Path: <devicetree+bounces-159914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D943A6CF74
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 14:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F40F168968
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 13:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811FE134AB;
	Sun, 23 Mar 2025 13:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yfIuDTtn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C646F4ED
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 13:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742736219; cv=none; b=tqRi2QZaBUMrQbDXawbUTw+FvRZvqmDdBlV9G3IGSlE3LXvxHRniEceFkdSg4hb0SYy8eu1C2/eaBDT/lgIbJsqmJ5UuZDp6WDmxkMj1zN4AFynSoS9ZYzIJhYAEeXJ6G4QOZBgY7+V/b/yVCV6xT9cQ+ldNCpp4zhbcTHP1siM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742736219; c=relaxed/simple;
	bh=J6WnXBloPgbeRESCQgIumXIdlxMfgQK65gk/b5pcqGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ax6Tu3EE6DFq3eRdkK+1v3c2iL8wM8GRiZk0V1vQ2/3GURbFfPL/fuwy0pMosMri7yT0Av364lZTRXXRKv2OK0dfVUBM+jDtelN775dqbmpnc2ne91Kui8AcdQmW+axh1qjF2gbbWkuyUKuvhkSuoQj5HdDUXit3x3Sj8CHLfm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yfIuDTtn; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-85b42db7b69so34114739f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 06:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742736215; x=1743341015; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MF1iVT3Gp1JCkjbWX7zYULPkp8dzcYyXF+RzM+PeslQ=;
        b=yfIuDTtnkRvtFFOxT4hMP0etJI0ZhcW4B7oq07SScaIKGfNzYUZ/x62YDql6m+70rk
         TUa0jPQjhQOsOLTwZ6vJrQg91IrbBA2Am44pJKufmgndWcp2IpEZGYOicLX4BJWnVX9S
         DGhPjJ2P5A5vVXLJVsv0HnX+nUkXV/4ZhDn4WgGUTbDF8SEy9mFSHGnRRxblGujaW1mo
         dkdKGJfbedvZQ5VadBXcG/VcH41TF1KlfKR0KwRpsPadO0l9qpCr+8nA/1yNO6jsXNzW
         eKDSr/LYvb0whE8i/pY+erlvVBNQ3G8hQkT72Lz1avq+kL06r8VsyOTkUS50gkQ1tWkP
         kNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742736215; x=1743341015;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MF1iVT3Gp1JCkjbWX7zYULPkp8dzcYyXF+RzM+PeslQ=;
        b=a/aeG7xcNrf4ziUmoOLZPsjflGhrrAf6JctT4S5NJ0bwDrjohMgrRAGS0N0I6iFHYw
         6T/vc7VRddH/7S75fb6VWtQVC3r/99agJWAcbxo7t5urY8bCVykJUrvAlg+RXBH9hx9U
         Fr9ebTQk1o/lxjS0Ms/D1M1bOeOTvyl3LnkDpCu8s+HO6A1PWqCjF50dDKECHRBocfza
         kYSMPeXrVwVUNPo88vflySn848oO0n6ARH4n1KIry79982c1utK4tuys7iP2ybxSGjmy
         WOgJE0vML3v6J8fSt2e/2QhLN64bb7pTshOBpwRCj9B3+NA9Ua+eZm53onzBLHtkUFvZ
         04Ow==
X-Forwarded-Encrypted: i=1; AJvYcCXy0c50vTBTD7ByDMN1eDO3+EwH4ni4eqFMd11yNmZztk92igzmFXK3Mtju+aTIWuRM2yv0tLiNjI0W@vger.kernel.org
X-Gm-Message-State: AOJu0YybAOPtfF34s+ihvM9youVVgqw3rELbuSk+fMuG8Iy5h7Mimr21
	PWuTYZsAI470PbvFQQQfHBPydrvLhlrS6+ji+WZW0dXyB70Yfv7fK+I7jPXC2QQ=
X-Gm-Gg: ASbGncv8Z9exWscURq9oHUG3i1U7nGw9sO0MiE1WQtNEr/LnToYe3et2UZbfEAKPMZ8
	+Ip17QTns/hfbKTTVSMw55mq5W3TR5whanbx+2f5KsIgbG1RkIqT/GkHQt2B3ZR1IPIiympKzpe
	qafJH7WU0BFp1KLtJNO5MsC8eixinwC3r/OyoQUrx9LXvxWI6cvm9U4Zff5YvJhATPUveIgWuuh
	wPchN4Ua4oWWdn6EQHkI626FKh0O3zocB6pG2IFSBnd0R+ERTKg1CcP4Qe77F1OdnGS1N7HDuY7
	Y33HzMKFOjvb3sP5+cNgW+uxKdvWngbTxj2YjMGB6l2bQXiaXAz+CXpt5ZbS4Uw+JlsA9uj2BNm
	S42ERSRmefvEjhyPb9w==
X-Google-Smtp-Source: AGHT+IFR0CjPJdYQFsJ+qkfXY8PeJzk1jrSY+MFWWSTv2UJlux3/unLE6GBpx2aJu492yAFXoDeX/Q==
X-Received: by 2002:a05:6602:a117:b0:85e:2e8b:602 with SMTP id ca18e2360f4ac-85e2e8b0d55mr578692239f.2.1742736215295;
        Sun, 23 Mar 2025 06:23:35 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bc13d74sm125798039f.11.2025.03.23.06.23.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Mar 2025 06:23:34 -0700 (PDT)
Message-ID: <4ad5dc64-c6e5-476f-8674-bbedb8df5f8d@riscstar.com>
Date: Sun, 23 Mar 2025 08:23:33 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 3/7] clk: spacemit: add reset controller support
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-4-elder@riscstar.com> <20250322161945-GYC11633@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250322161945-GYC11633@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/25 11:19 AM, Yixun Lan wrote:
> Hi Alex:
> 
> On 10:18 Fri 21 Mar     , Alex Elder wrote:
>> Define ccu_reset_data as a structure that contains the constant
>> register offset and bitmasks used to assert and deassert a reset
>> control on a SpacemiT K1 CCU. Define ccu_reset_controller_data as
>> a structure that contains the address of an array of those structures
>> and a count of the number of elements in the array.
>>
>> Add a pointer to a ccu_reset_controller_data structure to the
>> k1_ccu_data structure.  Reset support is optional for SpacemiT CCUs;
>> the new pointer field will be null for CCUs without any resets.
>>
>> Finally, define a new ccu_reset_controller structure, which (for
>> a CCU with resets) contains a pointer to the constant reset data,
>> the regmap to be used for the controller, and an embedded a reset
>> controller structure.
>>
>> Each reset control is asserted or deasserted by updating bits in
>> a register.  The bits used are defined by an assert mask and a
>> deassert mask.  In some cases, one (non-zero) mask asserts reset
>> and a different (non-zero) mask deasserts it.  Otherwise one mask
>> is nonzero, and the other is zero.  Either way, the bits in
>> both masks are cleared, then either the assert mask or the deassert
>> mask is set in a register to affect the state of a reset control.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 93 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 93 insertions(+)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index f7367271396a0..6d879411c6c05 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
>> @@ -10,6 +10,7 @@
>>   #include <linux/minmax.h>
>>   #include <linux/module.h>
>>   #include <linux/platform_device.h>
>> +#include <linux/reset-controller.h>
>>   
>>   #include "ccu_common.h"
>>   #include "ccu_pll.h"
>> @@ -134,8 +135,26 @@ struct spacemit_ccu_clk {
>>   	struct clk_hw *hw;
>>   };
>>   
>> +struct ccu_reset_data {
>> +	u32 offset;
>> +	u32 assert_mask;
>> +	u32 deassert_mask;
>> +};
>> +
>> +struct ccu_reset_controller_data {
>> +	u32 count;
>> +	const struct ccu_reset_data *data;	/* array */
>> +};
>> +
>>   struct k1_ccu_data {
>>   	struct spacemit_ccu_clk *clk;		/* array with sentinel */
>> +	const struct ccu_reset_controller_data *rst_data;
>> +};
>> +
>> +struct ccu_reset_controller {
>> +	struct regmap *regmap;
>> +	const struct ccu_reset_controller_data *data;
>> +	struct reset_controller_dev rcdev;
>>   };
>>   
>>   /*	APBS clocks start	*/
>> @@ -1630,6 +1649,48 @@ static const struct k1_ccu_data k1_ccu_apmu_data = {
>>   	.clk		= k1_ccu_apmu_clks,
>>   };
>>   
>> +static struct ccu_reset_controller *
>> +rcdev_to_controller(struct reset_controller_dev *rcdev)
> I'd suggest to avoid the line break to make it slightly more readable, intuitive
> as the 80 column limit isn't hard rule
> 
> there are maybe more place similar to this, I won't add more comments
> https://github.com/torvalds/linux/commit/bdc48fa11e46f867ea4d75fa59ee87a7f48be144

I disagree with this suggestion.  I personally find this
more readable.  As the first line of the patch you link to,
"80 columns is still preferred".  And regardless, it is my
(strong) preference to work within 80 columns in almost all
cases.

>> +{
>> +	return container_of(rcdev, struct ccu_reset_controller, rcdev);
>> +}
> since this function is only used once, open-code it?
> but I'd fine with either way if you prefer to keep it

The "to_<containing_type>()" function pattern is extremely
common, but I like this suggestion, given it's used only
once.  I'll implement it in v2.

> 
>> +
>> +static int
>> +k1_rst_update(struct reset_controller_dev *rcdev, unsigned long id, bool assert)
> s/k1_rst_update/k1_reset_update/g
> this is a taste change, but I found more people follow this when grep driver/reset

I actually had reset (not rst) before, throughout.  But it made
a few lines too long, leading to line wraps, so I did this.

In addition, there was a sort of consistency with the use of
"clk" instead of "clock", though I do recognize that abbreviation
goes way back to when Mike implemented the common clock framework.

I'll switch back to "reset" (and "RESET") in names, but be warned
I'll add some line breaks to fit within 80 columns.

>> +{
>> +	struct ccu_reset_controller *controller = rcdev_to_controller(rcdev);
>> +	struct regmap *regmap = controller->regmap;
>> +	const struct ccu_reset_data *data;
>> +	u32 val;
>> +	int ret;
>> +
>> +	data = &controller->data->data[id];
>> +
>> +	ret = regmap_read(regmap, data->offset, &val);
>> +	if (ret)
>> +		return ret;
>> +
>> +	val &= ~(data->assert_mask | data->deassert_mask);
>> +	val |= assert ? data->assert_mask : data->deassert_mask;
>> +
>> +	return regmap_write(regmap, data->offset, val);
>> +}
>> +
>> +static int k1_rst_assert(struct reset_controller_dev *rcdev, unsigned long id)
> same reason, rst -> reset, more below
>> +{
>> +	return k1_rst_update(rcdev, id, true);
>> +}
>> +
>> +static int k1_rst_deassert(struct reset_controller_dev *rcdev, unsigned long id)
>> +{
>> +	return k1_rst_update(rcdev, id, false);
>> +}
>> +
>> +static const struct reset_control_ops k1_reset_control_ops = {
>> +	.assert		= k1_rst_assert,
>> +	.deassert	= k1_rst_deassert,
>> +};
>> +
>>   static int k1_ccu_register(struct device *dev, struct regmap *regmap,
>>   			   struct regmap *lock_regmap,
>>   			   struct spacemit_ccu_clk *clks)
>> @@ -1675,6 +1736,33 @@ static int k1_ccu_register(struct device *dev, struct regmap *regmap,
>>   	return ret;
>>   }
>>   
>> +static int
>> +k1_reset_controller_register(struct device *dev, struct regmap *regmap,
>> +			     const struct ccu_reset_controller_data *data)
>> +{
>> +	struct ccu_reset_controller *controller;
>> +	struct reset_controller_dev *rcdev;
>> +
>> +	/* Resets are optional */
>> +	if (!data)
>> +		return 0;
>> +
>> +	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
>> +	if (!controller)
>> +		return -ENOMEM;
>> +
>> +	controller->regmap = regmap;
>> +	controller->data = data;
>> +
>> +	rcdev = &controller->rcdev;
> ..
>> +	rcdev->owner = THIS_MODULE;
> move to last?

You mean move nr_resets to last?  I'll do that.  I'll
order the assignments in the order they're defined in
"reset-controller.h".

>> +	rcdev->nr_resets = data->count;
>> +	rcdev->ops = &k1_reset_control_ops;
>> +	rcdev->of_node = dev->of_node;
>> +
>> +	return devm_reset_controller_register(dev, rcdev);
>> +}
>> +
>>   static int k1_ccu_probe(struct platform_device *pdev)
>>   {
>>   	struct regmap *base_regmap, *lock_regmap = NULL;
>> @@ -1710,6 +1798,11 @@ static int k1_ccu_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "failed to register clocks\n");
>>   
>> +	ret = k1_reset_controller_register(dev, base_regmap, data->rst_data);
> ..
>> +	if (ret)
>> +		return dev_err_probe(dev, ret,
>> +				     "failed to register reset controller\n");
> same 100 column reason

This one I might go beyond columns, because it's only a few characters.

					-Alex

>> +
>>   	return 0;
>>   }
>>   
>> -- 
>> 2.43.0
>>
> 


