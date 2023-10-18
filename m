Return-Path: <devicetree+bounces-9701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8212D7CE0B1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:05:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D6AA281C48
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE3637CA2;
	Wed, 18 Oct 2023 15:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3bPPdQv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F61A3C1E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:05:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AECCC433C7;
	Wed, 18 Oct 2023 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641537;
	bh=PIiIXKenjlTWbp5gHz845HTrHDmcuL0MzMQD6MsERgo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=U3bPPdQvqZ+XEXd7ak7qMUBqO7WZuOCU4DR5EpGHN4/6IAlxRPknFvV/Gt5TCvGi1
	 PAk/iRwWaeJlZF1g/G6fqiPIofi0cWU92B1Jj7UtMkuRfbufllIFvkvMCZx7XYmLIA
	 ZIu9prqmZ1/W/1atPM/q0MAkVmHQHSqZqA9PuS6jzJuiNCkfJ6nN0B/Fe/XjzSX/j+
	 CCysyr74f+UDVlwSojvutLUU/IMdeGFrN+GttW/MwCrjGC4pgmmyy8lN7I3igncsyO
	 ezdWEi9s2VcTfz+Mcos0nTaI4MAtil+RetoEulJeVB8m+o0rc3w15q+KjPzADeIqgq
	 Qow1ONdjj7oUg==
Message-ID: <99477a81-08d1-4e5d-8b20-22da58921041@kernel.org>
Date: Thu, 19 Oct 2023 00:05:34 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce channel
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
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-8-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> Different Rockchip SoC variants have a different number of channels.
> Introduce a channel mask to make the number of channels configurable
> from SoC initialization code.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>      - Loop only over channels present on a SoC
> 
>  drivers/devfreq/event/rockchip-dfi.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 126bb744645b6..28c18bbf6baa5 100644
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
> @@ -61,6 +62,8 @@ struct rockchip_dfi {
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
>  	u32 ddr_type;
> +	unsigned int channel_mask;
> +	unsigned int max_channels;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> @@ -95,7 +98,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> +	for (i = 0; i < dfi->max_channels; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> @@ -145,9 +150,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	rockchip_dfi_read_counters(edev, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> -		u32 a = count.c[i].access - last->c[i].access;
> -		u32 t = count.c[i].total - last->c[i].total;
> +	for (i = 0; i < dfi->max_channels; i++) {
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
> @@ -185,6 +195,9 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
>  			RK3399_PMUGRF_DDRTYPE_MASK;
>  
> +	dfi->channel_mask = GENMASK(1, 0);
> +	dfi->max_channels = 2;
> +
>  	return 0;
>  };
>  

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


