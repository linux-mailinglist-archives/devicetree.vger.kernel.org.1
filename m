Return-Path: <devicetree+bounces-9702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D77B7CE0B4
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 672271C20D1C
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5589C37CA3;
	Wed, 18 Oct 2023 15:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z68qjQ5e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A07D3C1E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:06:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4899CC433C8;
	Wed, 18 Oct 2023 15:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641560;
	bh=79ldLFk2fNTorPToymaXkLXT8GpbzW+LQ+mGqD1l0gY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Z68qjQ5eITEEOyppWrfB3SQfGDQBi8R9FV/FV4MUoiobTcTgcvBXBsVbWPSiNMAw5
	 xe0fPfD7p5d5pGM+FYrvEiWn6XuXmXwppyKmsegODVzpL9CSzD3tW1e33zmIw/jXfV
	 Cn7pQ/6Bvu35CGh/hxHNv4AHQkmgFE2xbhmsqvHvoDN9DSYTkzU7U5V9xy612Kf9lQ
	 CTOqMYA7qh5ld2v0EbPoSpRpdRcwdlDvnxGf+NfzeHYYezpNthyglo+By/WiC/UOI7
	 bq+ihlBeNC03/4tBPM3D3qPz8zt5mXfHcjFC6ayufCpzCc72qEEMgWc/e0J+8cQOl1
	 LnZEN1sF8AxWA==
Message-ID: <0c83d9ee-ee31-4b8e-b635-f929fda27f20@kernel.org>
Date: Thu, 19 Oct 2023 00:05:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
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
 <20231018061714.3553817-11-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> This adds RK3568 support to the DFI driver.  Only iniitialization
> differs from the currently supported RK3399.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>      - Add comment to explain << 3
> 
>  drivers/devfreq/event/rockchip-dfi.c | 27 +++++++++++++++++++++++++++
>  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
>  2 files changed, 39 insertions(+)
>  create mode 100644 include/soc/rockchip/rk3568_grf.h
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 12f9096879235..571d72d1abd1c 100644
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
> @@ -211,10 +212,36 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
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
> +	/* lower 3 bits of the DDR type */
> +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> +
> +	/*
> +	 * For version three and higher the upper two bits of the DDR type are
> +	 * in RK3568_PMUGRF_OS_REG3
> +	 */
> +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
> +
> +	dfi->channel_mask = BIT(0);
> +	dfi->max_channels = 1;
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

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


