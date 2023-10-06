Return-Path: <devicetree+bounces-6598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D087BBEB0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 436F1281F98
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613CF37C85;
	Fri,  6 Oct 2023 18:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptVo9Kb2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4472E30F90
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:28:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8708CC433C8;
	Fri,  6 Oct 2023 18:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696616907;
	bh=419cJuZmJuJNTF0RmDLSgwkt/ONnou7TalvMAEjbMCo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ptVo9Kb2WOXjnOHBICUNbRBDehPqeulTNd6R4UwSscC5vjfJlicbneeh8DdnN4rPP
	 jkoxKsJqHDImQ8XzBke7clntSzL1NqlkH3lDpCcEkGdf0kHRqHbHlU8zgj12huY+//
	 0xkgMf8si23cEiFdoZzPBTnTYnFk80ROr1WRYCUh91jWR0n1SrKC4PGExsKc5wbd6H
	 Po69NMFqTdAsZcZBhUyoFduXDUfzNQfWI9R1AsPy+7p4U9Bj3b1Q7RLk0jSwm+wvNx
	 1naXy4taAD7Lb+LlNGdEgu4mIPuhs+MtXnSdmw/mX7Whg77TQ/zxINq/2Rq2TTRUof
	 qPRpx0rxnuTKA==
Message-ID: <860d60a7-9f03-1bf0-5061-8012d9da957b@kernel.org>
Date: Sat, 7 Oct 2023 03:28:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 13/26] PM / devfreq: rockchip-dfi: Pass private data
 struct to internal functions
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
 <20230704093242.583575-14-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-14-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> The internal functions do not need the struct devfreq_event_dev *,
> so pass them the struct rockchip_dfi *. This is a preparation for
> adding perf support later which doesn't have a struct devfreq_event_dev *.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 0a568c5551699..d39db5de7f19c 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -72,9 +72,8 @@ struct rockchip_dfi {
>  	unsigned int channel_mask;
>  };
>  
> -static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> +static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
>  
>  	/* clear DDRMON_CTRL setting */
> @@ -102,18 +101,16 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  		       dfi_regs + DDRMON_CTRL);
>  }
>  
> -static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
> +static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
>  
>  	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>  		       dfi_regs + DDRMON_CTRL);
>  }
>  
> -static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
> +static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> @@ -131,7 +128,7 @@ static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  
> -	rockchip_dfi_stop_hardware_counter(edev);
> +	rockchip_dfi_stop_hardware_counter(dfi);
>  	clk_disable_unprepare(dfi->clk);
>  
>  	return 0;
> @@ -148,7 +145,7 @@ static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
>  		return ret;
>  	}
>  
> -	rockchip_dfi_start_hardware_counter(edev);
> +	rockchip_dfi_start_hardware_counter(dfi);
>  	return 0;
>  }
>  
> @@ -166,7 +163,7 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	u32 access = 0, total = 0;
>  	int i;
>  
> -	rockchip_dfi_read_counters(edev, &count);
> +	rockchip_dfi_read_counters(dfi, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
>  	for (i = 0; i < DMC_MAX_CHANNELS; i++) {

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


