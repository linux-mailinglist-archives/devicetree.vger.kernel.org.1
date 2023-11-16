Return-Path: <devicetree+bounces-16402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43A7EE82B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:13:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADFA4B20A76
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80DF43BB3E;
	Thu, 16 Nov 2023 20:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE0E3D49
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 12:12:53 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3ijM-0005ZM-6V; Thu, 16 Nov 2023 21:12:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, shironeko <shironeko@tesaguri.club>
Cc: conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, shironeko <shironeko@tesaguri.club>
Subject: Re: [PATCH] arm64: dts: rockchip: add missing tx/rx-fifo-depth
Date: Thu, 16 Nov 2023 21:12:51 +0100
Message-ID: <10369814.nUPlyArG6x@phil>
In-Reply-To: <20231115210417.144134-1-shironeko@tesaguri.club>
References: <20231115210417.144134-1-shironeko@tesaguri.club>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Mittwoch, 15. November 2023, 22:04:17 CET schrieb shironeko:

just if you need to resend, the patch subject could please
mention both the gmac and rk3328 :-)

> Without fifo depths attempting to change the MTU will fail. These values
> are from the RK3328 Technical Reference Manual, briefly tested with Rock64.
> 
> Signed-off-by: shironeko <shironeko@tesaguri.club>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index e729e7a22b23..1573250ac24e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -916,6 +916,8 @@ gmac2io: ethernet@ff540000 {
>  		resets = <&cru SRST_GMAC2IO_A>;
>  		reset-names = "stmmaceth";
>  		rockchip,grf = <&grf>;
> +		tx-fifo-depth = <2048>;
> +		rx-fifo-depth = <4096>;
>  		snps,txpbl = <0x4>;
>  		status = "disabled";
>  	};
> 

hmm, what about the other gmac-interface (gmac2phy).
Does the TRM provide depth information for that too?


Thanks
Heiko



