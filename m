Return-Path: <devicetree+bounces-6592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 976887BBE8F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3E351C20912
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F4A36B04;
	Fri,  6 Oct 2023 18:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx/Z2Mez"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F302AB3B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334F3C433C8;
	Fri,  6 Oct 2023 18:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696616241;
	bh=Q5nU/VnkY41EgR/l98nYHQwwOM+DruvUM8ho7kEhbRA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Yx/Z2MezLls8bssK8inWG6QIM0MhXOLRR7hmISdcAzRWTNwLKvZmD1pNagCqVXfSl
	 S5oXVsbVRk5qtmmQBbXkc03z/UVNFSTvu90R7N8po8u3NYTCUEEVsX77cfEJ1jXVn1
	 zrGvg9TAUMlO5bQ5FAk1FM3YxYNedM8E/2o1Xl14xjytHXWnbQk0l506NHVwepliJn
	 JQTbALADom1AK532Pcqc7iAOJuQSfg7OChOAN5BY2P3fZnugPSsPqwCMNqLU0R6Sgj
	 dXEpop5n0iTWWFje3eKRfzmXJ3TJ1g6H7IKIRTTmv19P51e+o46rxl45SpeKfcOL+W
	 I4kb54FdDrE4A==
Message-ID: <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
Date: Sat, 7 Oct 2023 03:17:14 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
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
 <20230704093242.583575-11-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> This adds RK3568 support to the DFI driver.  Only iniitialization
> differs from the currently supported RK3399.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
>  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 include/soc/rockchip/rk3568_grf.h
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 6b3ef97b3be09..261d112580c9e 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -23,6 +23,7 @@
>  
>  #include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
> +#include <soc/rockchip/rk3568_grf.h>
>  
>  #define DMC_MAX_CHANNELS	2
>  
> @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	return 0;
>  };
>  
> +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
> +{
> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> +	u32 reg2, reg3;
> +
> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
> +
> +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> +
> +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;

There are no reason of why shifting the '3'.
Could you add the comment about '3' or add the constant definition '3'?

> +
> +	dfi->channel_mask = 1;

nitpick.
On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
In order to keep the consistency, it is better to use BIT() macro as following:
	dfi->channel_mask = BIT(0);

> +
> +	return 0;
> +};
> +
>  static const struct of_device_id rockchip_dfi_id_match[] = {
>  	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
> +	{ .compatible = "rockchip,rk3568-dfi", .data = rk3568_dfi_init },
>  	{ },
>  };
> +
>  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
>  
>  static int rockchip_dfi_probe(struct platform_device *pdev)
> diff --git a/include/soc/rockchip/rk3568_grf.h b/include/soc/rockchip/rk3568_grf.h
> new file mode 100644
> index 0000000000000..575584e9d8834
> --- /dev/null
> +++ b/include/soc/rockchip/rk3568_grf.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +#ifndef __SOC_RK3568_GRF_H
> +#define __SOC_RK3568_GRF_H
> +
> +#define RK3568_PMUGRF_OS_REG2		0x208
> +#define RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO		GENMASK(15, 13)
> +
> +#define RK3568_PMUGRF_OS_REG3		0x20c
> +#define RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3		GENMASK(13, 12)
> +#define RK3568_PMUGRF_OS_REG3_SYSREG_VERSION		GENMASK(31, 28)
> +
> +#endif /* __SOC_RK3568_GRF_H */

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


