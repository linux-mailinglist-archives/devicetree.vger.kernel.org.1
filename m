Return-Path: <devicetree+bounces-9150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6637CBD75
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E3D21F2145A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1649341B0;
	Tue, 17 Oct 2023 08:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="limWfxRw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38D03C6B2
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 08:31:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59C70C433C8;
	Tue, 17 Oct 2023 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531473;
	bh=sV57NWu1mWWa2mHpvDUHkKn7U2+oSh51miAvxpzYdC8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=limWfxRwQD1a//4aVP0bZ4acqnOQpo/86hRSXt85GQcD0THK4EKvF1kz5dY7zz9ew
	 WMmSBZPEOVl+7eHhnY2VbuZ1JcP/6CYkOzgdsfBuS9c9pa2haV7zGHlCPGFczOI3zh
	 hOc46EJXW4BHj3kA7y7IzOboZiJhFvlPh/vLFDzuU3bMKvvI5H/84fa5lswfBs1O9P
	 FM2Q/7M91KW3s3IJJpx0TZiPubUtNtNlXi5D2dZ3pqbWXfKJfku70lXTMcI+Aj2rGC
	 a89MGuis9NSDIhzkWzhDHwPMoQMEsMm8eXYcSp1fAhLH6ygpWac6I+/u9e1ri/ifem
	 H8/IYIBF9d4jA==
Message-ID: <258a5d1b-46b2-4f79-89cf-157d5bf89f15@kernel.org>
Date: Tue, 17 Oct 2023 17:31:07 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-11-s.hauer@pengutronix.de>
 <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
 <20231016113442.GZ3359458@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231016113442.GZ3359458@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 16. 20:34, Sascha Hauer wrote:
> On Sat, Oct 07, 2023 at 03:17:14AM +0900, Chanwoo Choi wrote:
>> On 23. 7. 4. 18:32, Sascha Hauer wrote:
>>> This adds RK3568 support to the DFI driver.  Only iniitialization
>>> differs from the currently supported RK3399.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
>>>  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
>>>  2 files changed, 33 insertions(+)
>>>  create mode 100644 include/soc/rockchip/rk3568_grf.h
>>>
>>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
>>> index 6b3ef97b3be09..261d112580c9e 100644
>>> --- a/drivers/devfreq/event/rockchip-dfi.c
>>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>>> @@ -23,6 +23,7 @@
>>>  
>>>  #include <soc/rockchip/rockchip_grf.h>
>>>  #include <soc/rockchip/rk3399_grf.h>
>>> +#include <soc/rockchip/rk3568_grf.h>
>>>  
>>>  #define DMC_MAX_CHANNELS	2
>>>  
>>> @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>>>  	return 0;
>>>  };
>>>  
>>> +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
>>> +{
>>> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
>>> +	u32 reg2, reg3;
>>> +
>>> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
>>> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
>>> +
>>> +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> 
> The ddr_type is 5 bits wide. The lower three bits are here.
> 
>>> +
>>> +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
>>> +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
> 
> The upper two bits are here, hence we need to shift the value above the
> lower three bits.
> 
>>
>> There are no reason of why shifting the '3'.
>> Could you add the comment about '3' or add the constant definition '3'?
> 
> I don't think adding a constant makes sense. I'll add a comment making
> it more clear what happens.

It is enough to add the comment. Thanks.

> 
>>
>>> +
>>> +	dfi->channel_mask = 1;
>>
>> nitpick.
>> On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
>> In order to keep the consistency, it is better to use BIT() macro as following:
>> 	dfi->channel_mask = BIT(0);
> 
> Ok, will do.

Thanks.

> 
> Sascha
> 

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


