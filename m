Return-Path: <devicetree+bounces-19134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4937F9CDD
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A7CF1C20A8E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3FC171B4;
	Mon, 27 Nov 2023 09:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FFC4DE;
	Mon, 27 Nov 2023 01:42:05 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7Y7u-0008ND-Sp; Mon, 27 Nov 2023 10:42:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Lukasz Luba <lukasz.luba@arm.com>
Cc: lukasz.luba@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 daniel.lezcano@linaro.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
Date: Mon, 27 Nov 2023 10:42:02 +0100
Message-ID: <14787054.VsHLxoZxqI@diego>
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lukasz,

Am Montag, 27. November 2023, 09:15:11 CET schrieb Lukasz Luba:
> Add dynamic-power-coefficient to the GPU node. That will create Energy
> Model for the GPU based on the coefficient and OPP table information.
> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
> In similar way the Energy Model for CPUs in rk3399 is created, so both
> are aligned in power scale. The maximum power used from this coefficient
> is 1.5W at 600MHz.

2640 is a pretty arbitary value, so it would be really helpful to describe
in the commit message, how you arrived with that specific value.


Thanks
Heiko


> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 9da0b6d77c8d..87cfdf570b19 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
>  		interrupt-names = "job", "mmu", "gpu";
>  		clocks = <&cru ACLK_GPU>;
>  		#cooling-cells = <2>;
> +		dynamic-power-coefficient = <2640>;
>  		power-domains = <&power RK3399_PD_GPU>;
>  		status = "disabled";
>  	};
> 





