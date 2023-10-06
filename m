Return-Path: <devicetree+bounces-6536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 142877BBC46
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:03:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E7E9282190
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 866AD286AE;
	Fri,  6 Oct 2023 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lASRVfTL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF7123778
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:03:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB46AC433C7;
	Fri,  6 Oct 2023 16:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696608198;
	bh=R8EzuiOPzX++xJlYgn5dTs5bXl/SqLiLW9dDDvGhA+k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lASRVfTLCObH/UC45oJ698Wzi/++O6o5B25Bbx+OIWwDyhTqNzJeyOWo3Go2adD6C
	 /D2RkLc8BV9pwCFn8bVVuGlkXNOuSy2DXlAiIYtCLk+xAxNoh99OODMSGXC9s46hn1
	 nyAnrvhiSXI+kA9EOIGWAl07ZKEIQ97fW/hg8P8RGEq70O45rBHLue/leUSVSazoQw
	 PJjM6JQ9wYABQxKT0g/pZ7rXjhLIjy0Ql1eMy8LJLj5uyxTb9xaiZBkee+f+VWITZG
	 i/RYhcj4guXxbBh6ysHuwDo61WVw7/PjqGRM15Ci0ofFo2hbkSKvSvPtZCzavPca0I
	 LjuZB5hrDFlgw==
Message-ID: <f9a0cd9b-eba8-2abf-2839-2cf3f230c92c@kernel.org>
Date: Sat, 7 Oct 2023 01:03:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 01/26] PM / devfreq: rockchip-dfi: Make pmu regmap
 mandatory
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
 <20230704093242.583575-2-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
Content-Language: en-US
In-Reply-To: <20230704093242.583575-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> As a matter of fact the regmap_pmu already is mandatory because
> it is used unconditionally in the driver. Bail out gracefully in
> probe() rather than crashing later.
> 
> Fixes: b9d1262bca0af ("PM / devfreq: event: support rockchip dfi controller")
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - move to beginning of the series to make it easier to backport to stable
>     - Add a Fixes: tag
>     - add missing of_node_put()
> 
>  drivers/devfreq/event/rockchip-dfi.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 39ac069cabc75..74893c06aa087 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -193,14 +193,15 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return dev_err_probe(dev, PTR_ERR(data->clk),
>  				     "Cannot get the clk pclk_ddr_mon\n");
>  
> -	/* try to find the optional reference to the pmu syscon */
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);
> -	if (node) {
> -		data->regmap_pmu = syscon_node_to_regmap(node);
> -		of_node_put(node);
> -		if (IS_ERR(data->regmap_pmu))
> -			return PTR_ERR(data->regmap_pmu);
> -	}
> +	if (!node)
> +		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
> +
> +	data->regmap_pmu = syscon_node_to_regmap(node);
> +	of_node_put(node);
> +	if (IS_ERR(data->regmap_pmu))
> +		return PTR_ERR(data->regmap_pmu);
> +
>  	data->dev = dev;
>  
>  	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


