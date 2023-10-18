Return-Path: <devicetree+bounces-9703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8EA7CE0B9
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 17:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5128B20DBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D5737CA4;
	Wed, 18 Oct 2023 15:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kK8ExdXV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A063C1E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 15:06:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44B40C433C7;
	Wed, 18 Oct 2023 15:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641605;
	bh=KnA7zFpFIl0gSz7qkNqGqWHblOvAj6N6q/W+BHe+eQw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kK8ExdXVtOOjl7Fx+mzoMS+qIkBWE4ob9vQGiBLMaV31jC8e6bFAbE2uYkJ0W+ukk
	 ZQoFtiHg/yEggnDaQfTnDmEepFGEX69N/rxUVn/Cn2Pi1zQ5RNmbx3wP3ZMO+xArZ6
	 iHsfOq3qPZcpWXtpA/Eu48qDF/EtRDXgC50px0uIalWs6fPe/FXk1ld7CJPw7YPnTI
	 ZvXwSnLrZOEApCBae7B8udYh9r2V6HdfKHutmn0QfleSFm5rT5iuapq1b95ZB+WKZO
	 rXzGzf/v17y8MVM2FZB4qRT79pCUecrb/q8eTVZPSHzSPARbwyZMRy0S/KoRn3okjz
	 zKfDWLo6Km3QQ==
Message-ID: <dd51feee-a44c-4d56-808f-6a26d69f2eb9@kernel.org>
Date: Thu, 19 Oct 2023 00:06:43 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 11/26] PM / devfreq: rockchip-dfi: Handle LPDDR2
 correctly
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
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-12-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-12-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> According to the downstream driver the DDRMON_CTRL_LPDDR23 bit must be
> set for both LPDDR2 and LPDDR3. Add the missing LPDDR2 case and while
> at it turn the if/else if/else into switch/case which makes it easier
> to read.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 571d72d1abd1c..8ce0191552ef1 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -83,12 +83,19 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
>  
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> +	switch (dfi->ddr_type) {
> +	case ROCKCHIP_DDRTYPE_LPDDR2:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> +		break;
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> +		break;
> +	default:
> +		break;
> +	}
>  
>  	/* enable count, use software mode */
>  	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


