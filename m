Return-Path: <devicetree+bounces-161673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4618A74F30
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 18:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 902903AE064
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 17:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D0E1DB131;
	Fri, 28 Mar 2025 17:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="E4BdFjh+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD79C1B5EA4
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 17:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743182676; cv=none; b=mPISXeXtbjhmJqKY8q9NQ6jThadDGR50U6vfzagHtSn5R7itnH1t3zKkWprSSL+TK+Kp5xBZM7RBiXAbkdTp6s/omk1z8nw7aISGG7Ttt6QVMaVmkYHtKu+hto2XAzqC5HmOv+9S0QFOv2o29gzLAF9uw7snNUbvWUdCjrNkfVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743182676; c=relaxed/simple;
	bh=nEklW06M3v53fdnzxP4T3kBexookIkVk+rhEw0JCwpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ipD5McjlrhK1gkNPKIrSwb46HaoZt3LYyldDdLcOXOo6jWVPDIr5IhiDEh/+sTaBJFNg8dkT2FTxppVB6Oo9pVOlAKfFMet/oMC8h2Q3QeLpOUaP1lJ82rPamK6fYHMC9RaF14MWbfNGENvNqC0nEN0qKF1t3ILIWIscOgprnI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=E4BdFjh+; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72c019869eeso995935a34.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1743182674; x=1743787474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mzrxTuw1glnQc1Rwu7OVa3OJ84tPcZV4rNFQcBi3m6A=;
        b=E4BdFjh+Q5uEKuwFrrNAZN30QJC+q3ZJ7HOHihlN9XhLDgLz7H3gxHLVMo4aYgpFlK
         bhvwTqxbHu7mp+igpQooSuznmSUXGNoFTdTvyI0F2vypMNgslf6P4qCSmDf2yJXqOVax
         6q+nE3FnijVgcNNQ1x5mGtua1A9XTL+hYIhhAcLLcUbVI8tThjaNIYBh/ntjJhewFgN5
         xVG8yC80lqHlJILDDFCAyXnddZK4zoLSytcG7HiNDuNM3fU/e6K3DCM8HSzNbwhbnlUJ
         Xp77FMQFIi3G/I00dsJRUYJrB30ZdJZrk55fbz2deH+KpjYDLODRIDaQwQu+IIQHk2M+
         lXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743182674; x=1743787474;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mzrxTuw1glnQc1Rwu7OVa3OJ84tPcZV4rNFQcBi3m6A=;
        b=aq/BSHiSDcB+vrzAeRRQb6wZoph3PcQPpuHIGBDWLxmAtANIwPHXAcDBTFwM8PB0PX
         FubFbU+CAHZsJwP+STdmFepsd9EFVu3Q7WRLfv3VFntFEKkx5u1UQSw7OabDKrK4zehI
         GFr0wYwvGGG3eGVode5tknmloUqgWBJXbpZkdZv9jsM9MO98GhYBd4sJDYQ1dLoeNmFw
         2+511uggeRB0OyqGX/fB4tQNqR0loIL82gxEWx2+w3T1ah3A164cLcmp+NRolSLOLxjX
         GprW7+QbvqdRWsoKqGLxaUyA1D4wCglLPFhUbZn5v5UMIgjpjKorryja1WjnIxkuVb+3
         Kmpg==
X-Forwarded-Encrypted: i=1; AJvYcCWjXkIjlqIwUHi8HXdseUhckM+yIxkZJ6+U2Me6qle90zB+SGjz0pi/clK/AhJ5moeri6bjHlO8oQju@vger.kernel.org
X-Gm-Message-State: AOJu0YxM7opzfHzBRrwDG5xNcWbmdjpD+vU3J6TCinhsNidInq73DXBf
	Vcvv88K3IjYO5de2suGqJfplWWi5j2Yp0m1a8zpQ4VL7DDy3XR5nhKIShvSlLEIBG8NE5wKITmM
	k28dHbQ==
X-Gm-Gg: ASbGncv41odIoq7Ru8GXVYBmdevtu4TFdcJmZButZenKfSu1KeTfIkpRGvHiUATZlQ3
	5FtjENFxuZUA8lrq0hM/IdYlAzb6ULmu9+GNKAF1IpnhfwxCTA9XAnw4Fdf/s/VtPI5FKicv7/+
	pHZrmJFSVTefS85XMNaLzGp8jTKRTCMkxTY7c+v2j7H31K3uvpIup5wpquS7cgvvf5GuwSIDo8b
	RTfqcjaVyy1xRxAH9aYk97XoefcXEEhGwcj+k2csF8qAFP2JnSqlOapCYn01ooZDnTsA650jdeF
	OPN1nZQHFacUuDpCKD34MyITIAywtcCnJX11QlAOoyU5xr01rbT7BwgqGZkU/j6aFgNLnfjToOA
	MldcgO9ZI
X-Google-Smtp-Source: AGHT+IGyjy8B7DadiigM/xeS79qe+47ot9k7yWzDBDqfQeQidZF7a2d8EVjKnnq/rTcqt3/OlQlrZw==
X-Received: by 2002:a05:6830:264f:b0:72a:1a9f:7dc7 with SMTP id 46e09a7af769-72c6378f5b5mr131526a34.7.1743182673484;
        Fri, 28 Mar 2025 10:24:33 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-602844e6574sm401475eaf.2.2025.03.28.10.24.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 10:24:33 -0700 (PDT)
Message-ID: <3cccf190-112c-47d4-997e-3b3cf5e7a29e@riscstar.com>
Date: Fri, 28 Mar 2025 12:24:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 2/7] clk: spacemit: define struct k1_ccu_data
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-3-elder@riscstar.com> <20250322155034-GYB11633@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250322155034-GYB11633@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/25 10:50 AM, Yixun Lan wrote:
> Hi Alex:
> 
> this patch change relate to clock only, so how about let's fold
> it into clk patches (which now has not been merged), so we make
> the code right at first place? cause some moving around and renaming

I realize now I didn't respond to your other comments.

You suggested incorporating this change in the clock patches,
but I believe Haylen wants to avoid doing that (or doesn't want
to use all of it, anyway).

> 
> On 10:18 Fri 21 Mar     , Alex Elder wrote:
>> Define a new structure type to be used for describing the OF match data.
>> Rather than using the array of spacemit_ccu_clk structures for match
>> data, we use this structure instead.
>>
>> Move the definition of the spacemit_ccu_clk structure closer to the top
>> of the source file, and add the new structure definition below it.
>>
>> Shorten the name of spacemit_ccu_register() to be k1_ccu_register().
> any good reason to change this? it make the code style inconsistent,
> do you just change it for shorten function, or want it to be more k1
> specific, so next SoC - e.g maybe k2? will introduce another function?

I think I was trying to shorten things.  At this point it's hard
to know which things are K1-specific and which things will be
generic for anything from SpacemiT.  Once something new comes
along the code will be updated based on what needs to change.

That said, I'll not rename this, and I will use "spacemit" rather
than "k1" in all of the new symbols I create.

>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 58 ++++++++++++++++++++++++++---------
>>   1 file changed, 43 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index 44db48ae71313..f7367271396a0 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
>> @@ -129,6 +129,15 @@
>>   #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
>>   #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
>>   
>> +struct spacemit_ccu_clk {
>> +	int id;
>> +	struct clk_hw *hw;
>> +};
>> +
>> +struct k1_ccu_data {
>> +	struct spacemit_ccu_clk *clk;		/* array with sentinel */
>> +};
>> +
>>   /*	APBS clocks start	*/
>>   
>>   /* Frequency of pll{1,2} should not be updated at runtime */
>> @@ -1359,11 +1368,6 @@ static CCU_GATE_DEFINE(emmc_bus_clk, CCU_PARENT_HW(pmua_aclk),
>>   		       0);
>>   /*	APMU clocks end		*/
>>   
>> -struct spacemit_ccu_clk {
>> -	int id;
>> -	struct clk_hw *hw;
>> -};
>> -
>>   static struct spacemit_ccu_clk k1_ccu_apbs_clks[] = {
>>   	{ CLK_PLL1,		&pll1.common.hw },
>>   	{ CLK_PLL2,		&pll2.common.hw },
>> @@ -1403,6 +1407,10 @@ static struct spacemit_ccu_clk k1_ccu_apbs_clks[] = {
>>   	{ 0,			NULL },
>>   };
>>   
>> +static const struct k1_ccu_data k1_ccu_apbs_data = {
>> +	.clk		= k1_ccu_apbs_clks,
>> +};
>> +
>>   static struct spacemit_ccu_clk k1_ccu_mpmu_clks[] = {
>>   	{ CLK_PLL1_307P2,	&pll1_d8_307p2.common.hw },
>>   	{ CLK_PLL1_76P8,	&pll1_d32_76p8.common.hw },
>> @@ -1440,6 +1448,10 @@ static struct spacemit_ccu_clk k1_ccu_mpmu_clks[] = {
>>   	{ 0,			NULL },
>>   };
>>   
>> +static const struct k1_ccu_data k1_ccu_mpmu_data = {
>> +	.clk		= k1_ccu_mpmu_clks,
>> +};
>> +
>>   static struct spacemit_ccu_clk k1_ccu_apbc_clks[] = {
>>   	{ CLK_UART0,		&uart0_clk.common.hw },
>>   	{ CLK_UART2,		&uart2_clk.common.hw },
>> @@ -1544,6 +1556,10 @@ static struct spacemit_ccu_clk k1_ccu_apbc_clks[] = {
>>   	{ 0,			NULL },
>>   };
>>   
>> +static const struct k1_ccu_data k1_ccu_apbc_data = {
>> +	.clk		= k1_ccu_apbc_clks,
>> +};
>> +
>>   static struct spacemit_ccu_clk k1_ccu_apmu_clks[] = {
>>   	{ CLK_CCI550,		&cci550_clk.common.hw },
>>   	{ CLK_CPU_C0_HI,	&cpu_c0_hi_clk.common.hw },
>> @@ -1610,9 +1626,13 @@ static struct spacemit_ccu_clk k1_ccu_apmu_clks[] = {
>>   	{ 0,			NULL },
>>   };
>>   
>> -static int spacemit_ccu_register(struct device *dev,
>> -				 struct regmap *regmap, struct regmap *lock_regmap,
>> -				 const struct spacemit_ccu_clk *clks)
>> +static const struct k1_ccu_data k1_ccu_apmu_data = {
>> +	.clk		= k1_ccu_apmu_clks,
>> +};
>> +
>> +static int k1_ccu_register(struct device *dev, struct regmap *regmap,
>> +			   struct regmap *lock_regmap,
>> +			   struct spacemit_ccu_clk *clks)
>>   {
>>   	const struct spacemit_ccu_clk *clk;
>>   	int i, ret, max_id = 0;
>> @@ -1648,15 +1668,24 @@ static int spacemit_ccu_register(struct device *dev,
>>   
>>   	clk_data->num = max_id + 1;
>>   
>> -	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
>> +	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
>> +	if (ret)
>> +		dev_err(dev, "error %d adding clock hardware provider\n", ret);
>> +
>> +	return ret;
> I'd use "return 0;", nothing different, just explicitly short

That would mean the caller doesn't know about this error.
Why do that?  The caller is free to ignore it (but really,
shouldn't).  I think it's important to pass this information
back.  I'm going to keep this "return ret" in v2.

> 
> ok, I can understand this change ease debug procedure once there is problem.
> (but I'm fine with either way, failure should rarely happen & will
> identify early)
> 
>>   }
>>   
>>   static int k1_ccu_probe(struct platform_device *pdev)
>>   {
>>   	struct regmap *base_regmap, *lock_regmap = NULL;
>>   	struct device *dev = &pdev->dev;
>> +	const struct k1_ccu_data *data;
>>   	int ret;
>>   
>> +	data = of_device_get_match_data(dev);
>> +	if (!data)
>> +		return -EINVAL;
>> +
>>   	base_regmap = device_node_to_regmap(dev->of_node);
>>   	if (IS_ERR(base_regmap))
>>   		return dev_err_probe(dev, PTR_ERR(base_regmap),
>> @@ -1677,8 +1706,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
>>   					     "failed to get lock regmap\n");
>>   	}
>>   
>> -	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
>> -				    of_device_get_match_data(dev));
>> +	ret = k1_ccu_register(dev, base_regmap, lock_regmap, data->clk);
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "failed to register clocks\n");
>>   
>> @@ -1688,19 +1716,19 @@ static int k1_ccu_probe(struct platform_device *pdev)
>>   static const struct of_device_id of_k1_ccu_match[] = {
>>   	{
>>   		.compatible	= "spacemit,k1-pll",
>> -		.data		= k1_ccu_apbs_clks,
>> +		.data		= &k1_ccu_apbs_data,
>>   	},
>>   	{
>>   		.compatible	= "spacemit,k1-syscon-mpmu",
>> -		.data		= k1_ccu_mpmu_clks,
>> +		.data		= &k1_ccu_mpmu_data,
>>   	},
>>   	{
>>   		.compatible	= "spacemit,k1-syscon-apbc",
>> -		.data		= k1_ccu_apbc_clks,
>> +		.data		= &k1_ccu_apbc_data,
>>   	},
>>   	{
>>   		.compatible	= "spacemit,k1-syscon-apmu",
>> -		.data		= k1_ccu_apmu_clks,
>> +		.data		= &k1_ccu_apmu_data,
>>   	},
>>   	{ }
> 	{ /* sentinel */ }

I think this is unnecessary but I'll do it--you're the SpacemiT
maintainer so you can define the style you want.

					-Alex

>>   };
>> -- 
>> 2.43.0
>>
> 


