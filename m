Return-Path: <devicetree+bounces-9695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 204387CE088
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 16:58:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 294B7B211ED
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 14:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2331237C9A;
	Wed, 18 Oct 2023 14:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgD7Pp0V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068D916427
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C479C433C8;
	Wed, 18 Oct 2023 14:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641114;
	bh=mnkWVLZ9Y8i+zHIjgcDkOug6dQ2uTfJgT66hAd4Xvtc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QgD7Pp0V88krqY1oBxYwCS92ixQo//Vwtp9jh845KAT3jF0gjvx/sdf/eWVTjqp83
	 +4VnOiVvJXRFRw43u0361PDY+WRPV5hWUmzJHadC8QHcBqN05SaiTyeGOXCaHKYXgP
	 m3VI06pLpPTyEEZZG9uygZPgN3NCDU6kDPWwL3Q90Ex2MK4jUKcJopZoUo6D9BgNr5
	 ylCytT9ugsX064yE+6RY6RRHqD5KHEOVIOHG0ehig1GR+hVtfemlIJxvJZzSkcrXnM
	 NCGgYsYIEloCPy0TreK0hNLprCrp/8mRbWXvmfMmFmqTRxstrHxWRTSwPKvIHKHqKL
	 NnTAybN5AQDwA==
Message-ID: <115e3643-d290-492c-926a-e11e9964ed3a@kernel.org>
Date: Wed, 18 Oct 2023 23:58:25 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 04/26] PM / devfreq: rockchip-dfi: Add SoC specific
 init function
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
 <20231018061714.3553817-5-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> Move the RK3399 specifics to a SoC specific init function to make
> the way free for supporting other SoCs later.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>      - use of_device_get_match_data()
>      - use a callback rather than a struct type as driver data
> 
>  drivers/devfreq/event/rockchip-dfi.c | 48 +++++++++++++++++++---------
>  1 file changed, 33 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index e19e5acaa362c..6b1ef29df7048 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -17,6 +17,7 @@
>  #include <linux/slab.h>
>  #include <linux/list.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  
>  #include <soc/rockchip/rk3399_grf.h>
>  
> @@ -55,27 +56,21 @@ struct rockchip_dfi {
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
> +	u32 ddr_type;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
> -	u32 val;
> -	u32 ddr_type;
> -
> -	/* get ddr type */
> -	regmap_read(dfi->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -		    RK3399_PMUGRF_DDRTYPE_MASK;
>  
>  	/* clear DDRMON_CTRL setting */
>  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
>  
>  	/* set ddr type to dfi */
> -	if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> +	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
>  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> -	else if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> +	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
>  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
>  
>  	/* enable count, use software mode */
> @@ -167,8 +162,26 @@ static const struct devfreq_event_ops rockchip_dfi_ops = {
>  	.set_event = rockchip_dfi_set_event,
>  };
>  
> +static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> +{
> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> +	u32 val;
> +
> +	dfi->clk = devm_clk_get(dfi->dev, "pclk_ddr_mon");
> +	if (IS_ERR(dfi->clk))
> +		return dev_err_probe(dfi->dev, PTR_ERR(dfi->clk),
> +				     "Cannot get the clk pclk_ddr_mon\n");
> +
> +	/* get ddr type */
> +	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> +	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> +			RK3399_PMUGRF_DDRTYPE_MASK;
> +
> +	return 0;
> +};
> +
>  static const struct of_device_id rockchip_dfi_id_match[] = {
> -	{ .compatible = "rockchip,rk3399-dfi" },
> +	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
> @@ -179,6 +192,12 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	struct rockchip_dfi *dfi;
>  	struct devfreq_event_desc *desc;
>  	struct device_node *np = pdev->dev.of_node, *node;
> +	int (*soc_init)(struct rockchip_dfi *dfi);
> +	int ret;
> +
> +	soc_init = of_device_get_match_data(&pdev->dev);
> +	if (!soc_init)
> +		return -EINVAL;
>  
>  	dfi = devm_kzalloc(dev, sizeof(*dfi), GFP_KERNEL);
>  	if (!dfi)
> @@ -188,11 +207,6 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	if (IS_ERR(dfi->regs))
>  		return PTR_ERR(dfi->regs);
>  
> -	dfi->clk = devm_clk_get(dev, "pclk_ddr_mon");
> -	if (IS_ERR(dfi->clk))
> -		return dev_err_probe(dev, PTR_ERR(dfi->clk),
> -				     "Cannot get the clk pclk_ddr_mon\n");
> -
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);
>  	if (!node)
>  		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
> @@ -209,6 +223,10 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	desc->driver_data = dfi;
>  	desc->name = np->name;
>  
> +	ret = soc_init(dfi);
> +	if (ret)
> +		return ret;
> +
>  	dfi->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
>  	if (IS_ERR(dfi->edev)) {
>  		dev_err(&pdev->dev,

Already applied it on v7.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


