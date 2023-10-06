Return-Path: <devicetree+bounces-6564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0331A7BBCD2
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B224A28216F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58896266CF;
	Fri,  6 Oct 2023 16:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbsK2Tdi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6E28E0F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:34:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DDA2C433C8;
	Fri,  6 Oct 2023 16:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696610067;
	bh=1HcmpHjvQ0eMD+nDrJ3xLK1sZ1Um3mNVlGOZd0rUGWQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QbsK2TdiCNYvwi75XBByYOb4fM1yAFUGIh/CljHhZghz5tbhcaeeFJFq/wT2B5xhk
	 dhjDraRzwOrPDbsp75VhI7amEg0spNerkdLwD3TA12F21eVcW9K806vcdDqeFsOX5S
	 yuLHV8etb9TczUBgWU1ROsWiqy01mvoXj3DdmN9lbv4yhfU/g75GUkRYpu/Qi6yu/n
	 LAZwS7N+cWu7mYcU48aAHB4k3iexxzC3ICN7B1hU/Clkr2rFna7EXq5ZUrxpyRU7iM
	 VLW00Ol305cyMMBSyprYOJ9NtLyEJ+J16BdpD5eIog2rUfn5TCfgCbcDgfeh9kmfn5
	 k0zGTUcaXEobg==
Message-ID: <0b4adfee-b559-aa87-93c3-7591faf0dabc@kernel.org>
Date: Sat, 7 Oct 2023 01:34:22 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 05/26] PM / devfreq: rockchip-dfi: dfi store raw values
 in counter struct
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
 <20230704093242.583575-6-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> When adding perf support to the DFI driver the perf part will
> need the raw counter values, so move the fixed * 4 factor to
> rockchip_dfi_get_event().
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 6b1ef29df7048..680f629da64fc 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -97,7 +97,7 @@ static int rockchip_dfi_get_busier_ch(struct devfreq_event_dev *edev)
>  	/* Find out which channel is busier */
>  	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
>  		dfi->ch_usage[i].access = readl_relaxed(dfi_regs +
> -				DDRMON_CH0_DFI_ACCESS_NUM + i * 20) * 4;
> +				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		dfi->ch_usage[i].total = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  		tmp = dfi->ch_usage[i].access;
> @@ -149,7 +149,7 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  
>  	busier_ch = rockchip_dfi_get_busier_ch(edev);
>  
> -	edata->load_count = dfi->ch_usage[busier_ch].access;
> +	edata->load_count = dfi->ch_usage[busier_ch].access * 4;
>  	edata->total_count = dfi->ch_usage[busier_ch].total;
>  
>  	return 0;

Applied it. Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


