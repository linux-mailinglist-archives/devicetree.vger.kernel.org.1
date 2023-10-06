Return-Path: <devicetree+bounces-6599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C2D7BBECD
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E275D1C20868
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B5B2772C;
	Fri,  6 Oct 2023 18:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLiHCtc3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C144266D8
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:37:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A256DC433C7;
	Fri,  6 Oct 2023 18:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696617475;
	bh=IE1bF8kdC9VMb3KABS+1fAZSI1WmO3d4DmO0mYqCYU4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iLiHCtc35wuVkfpj7gS1mDntDlZUCW4IUvjH0kro2FzIQWgv2uTdWKgUpbgKSE+E1
	 3vetV+UMfUZEiVWpR8YR4BtWPDSKpGln/gRpDXTWiPsDfA37dvYp9m+vmScjZp6GJ1
	 3mrMHzvZyY4xeyJSI3i4ARc6OAhuYEo5bgGMUMieLIiqZy7iAk1mZP1QK+elEDykyI
	 MIhZfrvgMhSqnVM0gobcq7T/wsfOW3Jy5yvOQN08FFd3kcOvvCJ06u7GysQ/tPLqL/
	 VmmuKH3b7tAWA2K49DLIPBSDZGI81AP+05F7fUSH/SB1NmPpKMFSjA9wziX7nu2N/3
	 VnAW43xq9IdDg==
Message-ID: <fbe836a5-97c5-340e-3644-1b0e046d3fbb@kernel.org>
Date: Sat, 7 Oct 2023 03:37:51 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 15/26] PM / devfreq: rockchip-dfi: give variable a
 better name
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
 <20230704093242.583575-16-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-16-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> struct dmc_count_channel::total counts the clock cycles of the DDR
> controller. Rename it accordingly to give the reader a better idea
> what this is about. While at it, at some documentation to struct
> dmc_count_channel.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 8a7af7c32ae0d..50e497455dc69 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -46,9 +46,14 @@
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>  
> +/**
> + * struct dmc_count_channel - structure to hold counter values from the DDR controller
> + * @access:       Number of read and write accesses
> + * @clock_cycles: DDR clock cycles
> + */
>  struct dmc_count_channel {
>  	u32 access;
> -	u32 total;
> +	u32 clock_cycles;
>  };
>  
>  struct dmc_count {
> @@ -150,7 +155,7 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> -		count->c[i].total = readl_relaxed(dfi_regs +
> +		count->c[i].clock_cycles = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  	}
>  }
> @@ -182,29 +187,29 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	struct dmc_count count;
>  	struct dmc_count *last = &dfi->last_event_count;
> -	u32 access = 0, total = 0;
> +	u32 access = 0, clock_cycles = 0;
>  	int i;
>  
>  	rockchip_dfi_read_counters(dfi, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
>  	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> -		u32 a, t;
> +		u32 a, c;
>  
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  
>  		a = count.c[i].access - last->c[i].access;
> -		t = count.c[i].total - last->c[i].total;
> +		c = count.c[i].clock_cycles - last->c[i].clock_cycles;
>  
>  		if (a > access) {
>  			access = a;
> -			total = t;
> +			clock_cycles = c;
>  		}
>  	}
>  
>  	edata->load_count = access * 4;
> -	edata->total_count = total;
> +	edata->total_count = clock_cycles;
>  
>  	dfi->last_event_count = count;
>  

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


