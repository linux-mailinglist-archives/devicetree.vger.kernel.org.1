Return-Path: <devicetree+bounces-9148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E137CBD60
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7437B1C208D0
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4593B28B;
	Tue, 17 Oct 2023 08:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrQQ05qC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54B0C2CD
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 08:29:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F6CC433C8;
	Tue, 17 Oct 2023 08:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531343;
	bh=RESuwpGBnAb12MK/MNuF3dBypxSNz2pAixUEdbu0A0E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jrQQ05qC6teSXhyYJm0Ss3ngnUZJG82JYLoNCYwxd7Qm4BpNnxAVY6tuh2teCUuD0
	 eUAiXCPii9O5P59rcy//pEOxE+TOb/jpYwsQ/lEcxXZllZVDw1/jCdRXIt3b6rd0vN
	 EE9UxXzs8ePVIdtwiOsXOCMTRcWfL6419MGz2MKul4FFqf5qqFKX94aYeE4O5dV0HI
	 WCB1Y8kOt0Sri4PkagJzGQ99EMiw8nL868/MMqiYgByycWSV1kEeDmq03GpZ0EGZ9Q
	 fwEMb5cFS3e3GBdvocOmxoKOPYdA1wF5FygdYPnaqdEw/zBH7YXzQEZOQuxMiUikn2
	 RiSG6Z5zIhU3w==
Message-ID: <3d2b2683-3b7f-403c-a717-9c5e3f2c3939@kernel.org>
Date: Tue, 17 Oct 2023 17:28:57 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 07/26] PM / devfreq: rockchip-dfi: introduce channel
 mask
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
 <20230704093242.583575-8-s.hauer@pengutronix.de>
 <859b0091-e361-6060-2977-4aba13af418a@kernel.org>
 <20231016112216.GY3359458@pengutronix.de>
 <20231016124558.GL235829@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
Content-Language: en-US
In-Reply-To: <20231016124558.GL235829@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 16. 21:45, Sascha Hauer wrote:
> On Mon, Oct 16, 2023 at 01:22:16PM +0200, Sascha Hauer wrote:
>> On Sat, Oct 07, 2023 at 02:21:10AM +0900, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> On 23. 7. 4. 18:32, Sascha Hauer wrote:
>>>> Different Rockchip SoC variants have a different number of channels.
>>>> Introduce a channel mask to make the number of channels configurable
>>>> from SoC initialization code.
>>>>
>>>> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>> ---
>>>>  drivers/devfreq/event/rockchip-dfi.c | 23 +++++++++++++++++------
>>>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
>>>> index 126bb744645b6..82de24a027579 100644
>>>> --- a/drivers/devfreq/event/rockchip-dfi.c
>>>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>>>> @@ -18,10 +18,11 @@
>>>>  #include <linux/list.h>
>>>>  #include <linux/of.h>
>>>>  #include <linux/of_device.h>
>>>> +#include <linux/bits.h>
>>>>  
>>>>  #include <soc/rockchip/rk3399_grf.h>
>>>>  
>>>> -#define RK3399_DMC_NUM_CH	2
>>>> +#define DMC_MAX_CHANNELS	2
>>>>  
>>>>  /* DDRMON_CTRL */
>>>>  #define DDRMON_CTRL	0x04
>>>> @@ -44,7 +45,7 @@ struct dmc_count_channel {
>>>>  };
>>>>  
>>>>  struct dmc_count {
>>>> -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
>>>> +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
>>>>  };
>>>>  
>>>>  /*
>>>> @@ -61,6 +62,7 @@ struct rockchip_dfi {
>>>>  	struct regmap *regmap_pmu;
>>>>  	struct clk *clk;
>>>>  	u32 ddr_type;
>>>> +	unsigned int channel_mask;
>>>>  };
>>>>  
>>>>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>>>> @@ -95,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
>>>>  	u32 i;
>>>>  	void __iomem *dfi_regs = dfi->regs;
>>>>  
>>>> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
>>>> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
>>>> +		if (!(dfi->channel_mask & BIT(i)))
>>>> +			continue;
>>>>  		count->c[i].access = readl_relaxed(dfi_regs +
>>>>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>>>>  		count->c[i].total = readl_relaxed(dfi_regs +
>>>> @@ -145,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>>>>  	rockchip_dfi_read_counters(edev, &count);
>>>>  
>>>>  	/* We can only report one channel, so find the busiest one */
>>>> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
>>>> -		u32 a = count.c[i].access - last->c[i].access;
>>>> -		u32 t = count.c[i].total - last->c[i].total;
>>>> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
>>>
>>> Instead of DMC_MAX_CHANNELS defintion,
>>> you can initialize the max channel in each rkXXXX_dfi_init() like 'dfi->channel_count'.
>>> It reduces the unnecessary loop by initializing the proper max channel.
>>
>> That is not easily possible. Some SoCs, eg the RK3588 have four
>> channels, but not all channels are necessarily enabled it also
>> might not be the first channels that are enabled. On a RK3588
>> the channel mask might for example be 0b0101.
> 
> Nah, forget this comment. Of course I can initialize a variable with a
> maximum value of channels that could be available on this SoC and only
> iterate over these. Will do.
> 

Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


