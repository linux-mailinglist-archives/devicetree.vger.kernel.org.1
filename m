Return-Path: <devicetree+bounces-6577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE187BBD92
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E8BF282052
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB39C30D1F;
	Fri,  6 Oct 2023 17:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCtCmb+t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B1A2AB3B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524E7C433C7;
	Fri,  6 Oct 2023 17:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696612875;
	bh=hEX8GICdbnocfUQaerMPod0XxNCYLb4HKRbbA7Fb65g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rCtCmb+tjfrjb/T/TOG+QdU88a3tIujtPHGZNkq6Bkpmffy1q9BSym/lhBeLt29n4
	 Sx8hik6Av7AiF/apzPTW03eHrgGzR6cGTZXXdbZxzWvRR92IYXu3E67OgmaigXVMan
	 S37MIdGaAmaC2PRd1DEQCWx82lq0RkQNgWqiuGKJ2AWlHqLHu5vvKSxZh8VGdBwXUc
	 8ww4yQS1DzJtP6SIrJp3U01s7mvZWMC4SkFDScR6iWhoZTMIYRuWt9T+MQP0nvwG7y
	 muXXCL0vKpRxXAEHC1XLIwUrPsZx5de8sK11VdZT+4tEHKjx5HExMJB24PZjCSPphf
	 ni96WDrKD1OqA==
Message-ID: <859b0091-e361-6060-2977-4aba13af418a@kernel.org>
Date: Sat, 7 Oct 2023 02:21:10 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 07/26] PM / devfreq: rockchip-dfi: introduce channel
 mask
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
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
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Different Rockchip SoC variants have a different number of channels.
> Introduce a channel mask to make the number of channels configurable
> from SoC initialization code.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 126bb744645b6..82de24a027579 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -18,10 +18,11 @@
>  #include <linux/list.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/bits.h>
>  
>  #include <soc/rockchip/rk3399_grf.h>
>  
> -#define RK3399_DMC_NUM_CH	2
> +#define DMC_MAX_CHANNELS	2
>  
>  /* DDRMON_CTRL */
>  #define DDRMON_CTRL	0x04
> @@ -44,7 +45,7 @@ struct dmc_count_channel {
>  };
>  
>  struct dmc_count {
> -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
>  };
>  
>  /*
> @@ -61,6 +62,7 @@ struct rockchip_dfi {
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
>  	u32 ddr_type;
> +	unsigned int channel_mask;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> @@ -95,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> @@ -145,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	rockchip_dfi_read_counters(edev, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> -		u32 a = count.c[i].access - last->c[i].access;
> -		u32 t = count.c[i].total - last->c[i].total;
> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {

Instead of DMC_MAX_CHANNELS defintion,
you can initialize the max channel in each rkXXXX_dfi_init() like 'dfi->channel_count'.
It reduces the unnecessary loop by initializing the proper max channel.

> +		u32 a, t;
> +
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
> +
> +		a = count.c[i].access - last->c[i].access;
> +		t = count.c[i].total - last->c[i].total;
>  
>  		if (a > access) {
>  			access = a;
> @@ -185,6 +194,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
>  			RK3399_PMUGRF_DDRTYPE_MASK;
>  
> +	dfi->channel_mask = GENMASK(1, 0);
> +
>  	return 0;
>  };
>  

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


