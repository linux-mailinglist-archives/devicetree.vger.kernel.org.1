Return-Path: <devicetree+bounces-5786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C77937B7E24
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 5D6461F222FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B363112B6A;
	Wed,  4 Oct 2023 11:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4211E111B5
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:27:38 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53406BD;
	Wed,  4 Oct 2023 04:27:36 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394BRRBI019656;
	Wed, 4 Oct 2023 06:27:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696418847;
	bh=MYW10WHUJuyHzwLhxD13IPemvHbtZbd+pSZPu76OQbI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=orKg6CW4yxPxpS7uE+sOLeCxv+8ZpHyARPyeTWw01e8quauqDoX50d8yUgPJY4axY
	 6GHQ0yvzrlwkjpkii0gizYzYaV1Pzu3PsHBlJI5CyoyZgFn5olNz/v+1rXbD0PmM1Q
	 yDOtjawD9atmp/kmKr9vrU9/WdA9VLGp9M12uoV8=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394BRRLc032465
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 06:27:27 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 06:27:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 06:27:27 -0500
Received: from [10.250.135.44] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394BRKea021896;
	Wed, 4 Oct 2023 06:27:21 -0500
Message-ID: <34845445-91d7-1cb9-3a75-bc591c6c1560@ti.com>
Date: Wed, 4 Oct 2023 14:27:19 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 1/3] arm64: dts: ti: Add GPMC support for AM62x LP SK
Content-Language: en-US
To: Nitin Yadav <n-yadav@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231004111238.3968984-1-n-yadav@ti.com>
 <20231004111238.3968984-2-n-yadav@ti.com>
From: Roger Quadros <rogerq@ti.com>
In-Reply-To: <20231004111238.3968984-2-n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 4.10.2023 14.12, Nitin Yadav wrote:
> Add gpmc0 and elm0 nodes in k3-am62-main. Add GPMC0_CFG and
> GPMC0_DATA entry in cbass_main node.
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 29 ++++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am62.dtsi      |  2 ++
>   2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index ac760d9b831d..f854369dfc27 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -965,4 +965,33 @@ mcasp2: audio-controller@2b20000 {
>   		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
>   		status = "disabled";
>   	};

Please add blank line here.

> +	gpmc0: memory-controller@3b000000 {
> +		compatible = "ti,am64-gpmc";
> +		reg = <0x00 0x03b000000 0x00 0x400>,
> +		      <0x00 0x050000000 0x00 0x8000000>;
> +		reg-names = "cfg", "data";
> +		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 80 0>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +		gpmc,num-cs = <3>;
> +		gpmc,num-waitpins = <2>;
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		status = "disabled";
> +	};
> +
> +	elm0: ecc@25010000 {
> +		compatible = "ti,am3352-elm";
> +		reg = <0x00 0x25010000 0x00 0x2000>;
> +		interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 54 0>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 54 TI_SCI_PD_EXCLUSIVE>;
> +		status = "disabled";
> +	};
>   };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
> index f1e15206e1ce..b9b1e522d74c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
> @@ -77,6 +77,8 @@ cbass_main: bus@f0000 {
>   			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00010000>, /* OCSRAM */
>   			 <0x01 0x00000000 0x01 0x00000000 0x00 0x00310000>, /* A53 PERIPHBASE */
>   			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS0 DAT3 */
> +			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0 CFG */
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC0 DATA */
>   
>   			 /* MCU Domain Range */
>   			 <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>,

-- 
cheers,
-roger

