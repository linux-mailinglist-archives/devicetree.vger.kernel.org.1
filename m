Return-Path: <devicetree+bounces-25366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AC581308E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B7E7B20C02
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C7C4BA90;
	Thu, 14 Dec 2023 12:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Xsc4kUvH"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFB7113;
	Thu, 14 Dec 2023 04:51:38 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BECpVch033275;
	Thu, 14 Dec 2023 06:51:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702558291;
	bh=/9jtNyDDhoXaq6g2ujsv+iw1ZZiTAQQuZfO9t1kVU6w=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Xsc4kUvHW7ogRvhZTpGMqPGZZNt/rdOu2gRjGflGmaQ7ZiXldTdFEp2vgKeimEgK2
	 T33YHrvr/vGgZQtIKOydUqJzJI+vx27ncfxw1ta0uTFDUS5N3TdWc8WFdUXO/9WcNH
	 YUUjDTyb07+vs3qfsLULo3znK6xl9cP7jK8B/RqI=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BECpUWS032389
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Dec 2023 06:51:30 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 14
 Dec 2023 06:51:30 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 14 Dec 2023 06:51:30 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BECpUD9103783;
	Thu, 14 Dec 2023 06:51:30 -0600
Date: Thu, 14 Dec 2023 06:51:30 -0600
From: Nishanth Menon <nm@ti.com>
To: Neha Malcom Francis <n-francis@ti.com>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <a-nandan@ti.com>, <kristo@kernel.org>, <u-kumar1@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j721e: Add support for DFS in J721E
 A72
Message-ID: <20231214125130.zqtq6ioj4c533wha@elbow>
References: <20231214075637.176586-1-n-francis@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231214075637.176586-1-n-francis@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 13:26-20231214, Neha Malcom Francis wrote:
> Add 2G, 1.5G, 1G, 750M, 500M and 250M as the supported frequencies for
> A72. This enables support for Dynamic Frequency Scaling (DFS).
> 

Just curious, since I picked up the PMIC support... can we do dvfs? if
not, please indicate that in the commit message.

> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
> ---
> Boot logs:
> https://gist.github.com/nehamalcom/e3c3d0446f0467e7fd28706f7ffaeea8
> 
> J721E SoC has three different speed grade devices (see [1], 7.5
> Operating Performance Points) which as of today are indiscernible in
> software, users of a different speed grade device must manually change
> the DTS to ensure their maximum speed frequency is supported.
> 
> [1] https://www.ti.com/lit/gpn/tda4vm
This is critical info in the commit message and in documentation of
source.

I am also concerned if the table should be separated out as a dtsi and
included at board.dts level to prevent downstream users going crazy..

Are you absolutely sure this has no detection logic that can be
implemented? Almost all TI K3 SoCs seem to have a standard scheme to
detect the speed grades till date. /me wonders what the heck happened
here..

> 
>  arch/arm64/boot/dts/ti/k3-j721e.dtsi | 35 ++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
> index a200810df54a..fe92879f5812 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
> @@ -48,6 +48,9 @@ cpu0: cpu@0 {
>  			d-cache-line-size = <64>;
>  			d-cache-sets = <256>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&k3_clks 202 2>;
> +			clock-names = "cpu";
> +			operating-points-v2 = <&cpu0_opp_table>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -62,9 +65,41 @@ cpu1: cpu@1 {
>  			d-cache-line-size = <64>;
>  			d-cache-sets = <256>;
>  			next-level-cache = <&L2_0>;
> +			clocks = <&k3_clks 203 0>;
> +			clock-names = "cpu";
> +			operating-points-v2 = <&cpu0_opp_table>;
>  		};
>  	};
>  
> +	cpu0_opp_table: opp-table {
> +		compatible = "operating-points-v2";
Don't you need opp-shared ?
> +
> +		opp6-2000000000 {
> +			opp-hz = /bits/ 64 <2000000000>;
> +		};
> +
> +		opp5-1500000000 {
> +			opp-hz = /bits/ 64 <1500000000>;
> +		};
> +
> +		opp4-1000000000 {
> +			opp-hz = /bits/ 64 <1000000000>;
> +		};
> +
> +		opp3-750000000 {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +
> +		opp2-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +		};
> +
> +		opp1-250000000 {
> +			opp-hz = /bits/ 64 <250000000>;
Could you add clock-latency-ns ?
> +		};
> +
> +	};
> +
>  	L2_0: l2-cache0 {
>  		compatible = "cache";
>  		cache-level = <2>;
> -- 
> 2.34.1
> 


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

