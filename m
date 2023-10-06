Return-Path: <devicetree+bounces-6609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF53F7BBF9A
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 21:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F03471C208EB
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C959B3AC2E;
	Fri,  6 Oct 2023 19:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LorROfMe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCBA14017
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 19:11:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA781C433C7;
	Fri,  6 Oct 2023 19:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696619493;
	bh=Lj4fRkQCzIZ7u/HC0Jn56DkeYzZ+0j/V7yUN5egW+T8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LorROfMehaUyQjuc79SoBmYewe4Ejvwe8RZmEI8S1CxZpcKZ+mYQFx2OovsVINsO/
	 W7OUqlEf8dIPRZAzpS9AxBZymH+yI/3u3GUOEAzBE9H5U1jP5jj6eXDibcldF0U33G
	 khN63W7+Dz9qmKqaPdiGOQ6OEvTzs6xv4h0FJkg1TlLluy6QsZjp93T7sq0yTHVkk2
	 BykeLxJWmgK2+G8pGHz1MNvkIuGZMzVlyESd7a09IgWrDOis3RDzvjnqs6iZcV1UgH
	 SC32WBmme2qMxIhP+ALT4gZEdImPeN1UVo6vl5U3vwXNx/SpFSjpDUB25IS98AJa4Z
	 ZSJH86WNV4Lxw==
Message-ID: <1eaa8d5b-af6b-71bb-df7a-d438b483f5bb@kernel.org>
Date: Sat, 7 Oct 2023 04:11:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 09/26] PM / devfreq: rockchip-dfi: Clean up DDR type
 register defines
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
 <20230704093242.583575-10-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Use the HIWORD_UPDATE() define known from other rockchip drivers to
> make the defines look less odd to the readers who've seen other
> rockchip drivers.
> 
> The HIWORD registers have their functional bits in the lower 16 bits
> whereas the upper 16 bits contain a mask. Only the functional bits that
> have the corresponding mask bit set are modified during a write. Although
> the register writes look different, the end result should be the same,
> at least there's no functional change intended with this patch.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 6bccb6fbcfc0c..6b3ef97b3be09 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -26,15 +26,19 @@
>  
>  #define DMC_MAX_CHANNELS	2
>  
> +#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
> +
>  /* DDRMON_CTRL */
>  #define DDRMON_CTRL	0x04
> -#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
> -#define LPDDR4_EN	(0x10001 << 4)
> -#define HARDWARE_EN	(0x10001 << 3)
> -#define LPDDR3_EN	(0x10001 << 2)
> -#define SOFTWARE_EN	(0x10001 << 1)
> -#define SOFTWARE_DIS	(0x10000 << 1)
> -#define TIME_CNT_EN	(0x10001 << 0)
> +#define DDRMON_CTRL_DDR4		BIT(5)
> +#define DDRMON_CTRL_LPDDR4		BIT(4)
> +#define DDRMON_CTRL_HARDWARE_EN		BIT(3)
> +#define DDRMON_CTRL_LPDDR23		BIT(2)
> +#define DDRMON_CTRL_SOFTWARE_EN		BIT(1)
> +#define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
> +#define DDRMON_CTRL_DDR_TYPE_MASK	(DDRMON_CTRL_DDR4 | \
> +					 DDRMON_CTRL_LPDDR4 | \
> +					 DDRMON_CTRL_LPDDR23)
>  
>  #define DDRMON_CH0_COUNT_NUM		0x28
>  #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
> @@ -73,16 +77,20 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  	void __iomem *dfi_regs = dfi->regs;
>  
>  	/* clear DDRMON_CTRL setting */
> -	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
> +		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);

You mentioned that there are no behavior changes even if the different value is written.
But, it looks strange. Could you please explain more detailed about it?


CLR_DDRMON_CTRL is 0x1f0000
vs.
HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN) = (0 | (BIT(0)|BIT(1)|BIT(3))<<16) = 0xb0000
			
>  
>  	/* set ddr type to dfi */
>  	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> -		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
> +			       dfi_regs + DDRMON_CTRL);

LPDDR3_EN	(0x10001 << 2) = 0x40004
vs.
HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK) = (BIT(2) | (BIT(5)|BIT(4)|BIT(2))<<16) = 0x340004


>  	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> -		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
> +			       dfi_regs + DDRMON_CTRL);
>  
>  	/* enable count, use software mode */
> -	writel_relaxed(SOFTWARE_EN, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
> +		       dfi_regs + DDRMON_CTRL);
>  }
>  
>  static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
> @@ -90,7 +98,8 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
> +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
> +		       dfi_regs + DDRMON_CTRL);
>  }
>  
>  static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


