Return-Path: <devicetree+bounces-6834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD14F7BD06F
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 23:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E800F1C2074C
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 21:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85FE18644;
	Sun,  8 Oct 2023 21:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U79ADZLI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD9715ACE
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 21:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F1A4C433C7;
	Sun,  8 Oct 2023 21:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696802244;
	bh=D6g+fHkvWXqT9fQPLmLkAurQi+eFTlkTGLEB1/+HK5o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=U79ADZLI5HNnhwsw/3rhB0wj0GDu3gACikHFAm3MkH2IJ41zjXOtmFEDZD9zsjR1C
	 P+4nRa4+TMWPbwkMFMwEonwk2wd7sUVhQjYMbADGticlmDi4Wl0OP1VWv0hMbWGyfd
	 Q/ioCBkWxvDRIdatsQ6K5gtlIUgXgMzq3uPSq2f/Ga+unVPqews/DIkp0/3FBKijgN
	 lPypN27ujCPn4c13dUFV500lKjXw/PyBHHmgdQaHggB9p7dGlIyOheVxrz6fbIJMcI
	 V4e0RsbKB2/U6PSUADLDYscdQR1lfJFpXFJ/Ff3WnsT37yqAQmVIWLv2qyxyXlX+fV
	 LjFTzBOX1He7g==
Message-ID: <8c97db33-ee83-6f2c-cc5a-00c185e35770@kernel.org>
Date: Mon, 9 Oct 2023 06:57:19 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 17/26] PM / devfreq: rockchip-dfi: make register stride
 SoC specific
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
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-18-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-18-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> The currently supported RK3399 has a stride of 20 between the channel
> specific registers. Upcoming RK3588 has a different stride, so put
> the stride into driver data to make it configurable.
> While at it convert decimal 20 to hex 0x14 for consistency with RK3588
> which has a register stride 0x4000 and we want to write that in hex
> as well.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 969b62f071b83..85ec93fd41858 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -112,6 +112,7 @@ struct rockchip_dfi {
>  	int active_events;
>  	int burst_len;
>  	int buswidth[DMC_MAX_CHANNELS];
> +	int ddrmon_stride;
>  };
>  
>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
> @@ -189,13 +190,13 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  		c->c[i].read_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_RD_NUM + i * 20);
> +				DDRMON_CH0_RD_NUM + i * dfi->ddrmon_stride);
>  		c->c[i].write_access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_WR_NUM + i * 20);
> +				DDRMON_CH0_WR_NUM + i * dfi->ddrmon_stride);
>  		c->c[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> +				DDRMON_CH0_DFI_ACCESS_NUM + i * dfi->ddrmon_stride);
>  		c->c[i].clock_cycles = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_COUNT_NUM + i * 20);
> +				DDRMON_CH0_COUNT_NUM + i * dfi->ddrmon_stride);

Before this path, rk3399 and rk3568 have used the same stride.
But, this patch add the ddrmon_stride for only rk3399. 

It seems that the behavior of rk3568 is changed. 
If ddrmon_stride is not required for rk3568,
you must move this patch before adding rk3568 support patch ("PM / devfreq: rockchip-dfi: Add RK3568 support").

>  	}
>  }
>  
> @@ -664,6 +665,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->buswidth[0] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH0, val) == 0 ? 4 : 2;
>  	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
>  
> +	dfi->ddrmon_stride = 0x14;
> +
>  	return 0;
>  };
>  

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


