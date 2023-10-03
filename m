Return-Path: <devicetree+bounces-5372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 025057B6100
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5B0EC28171D
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4557263D9;
	Tue,  3 Oct 2023 06:50:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476BCA65
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 06:50:36 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19584D7;
	Mon,  2 Oct 2023 23:50:34 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3936oLJH000707;
	Tue, 3 Oct 2023 01:50:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696315821;
	bh=YGh6a5pct/BcvzZ/ZbQpeosijac60AkHDdaLwzdOthg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=vOft47OCbNcIkvoqxIgvBaGOAKf3ZPtZCpnAJ9aAWL3witXQtHJtiwb1ZSOMlW12J
	 qbzlfjRQZ2zBQUZXw0k11KJ9nM4h9zarkl2wdBi7YIDWuVI1l+G+pL0/Uc495bvRZL
	 q0rSigNx99A6lkW6ufwQMzCrkIH/yETbrZJvCR8k=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3936oLee078302
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 01:50:21 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 01:50:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 01:50:21 -0500
Received: from [172.24.227.94] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3936oHUV038569;
	Tue, 3 Oct 2023 01:50:18 -0500
Message-ID: <4b89a45e-d68d-f1f7-4681-63be972c52cf@ti.com>
Date: Tue, 3 Oct 2023 12:20:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 1/7] arm64: dts: ti: k3-j721s2: Add ESM instances
To: Keerthy <j-keerthy@ti.com>, <robh+dt@kernel.org>, <nm@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230927023357.9883-1-j-keerthy@ti.com>
 <20230927023357.9883-2-j-keerthy@ti.com>
Content-Language: en-US
From: Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20230927023357.9883-2-j-keerthy@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 27/09/23 08:03, Keerthy wrote:
> Patch adds the ESM instances for j721s2. It has 3 instances.
> One in the main domain and two in the mcu-wakeup domian.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi       |  7 +++++++
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 14 ++++++++++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> index 084f8f5b6699..8a717b592238 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> @@ -1695,4 +1695,11 @@
>  		dss_ports: ports {
>  		};
>  	};
> +
> +	main_esm: esm@700000 {
> +		compatible = "ti,j721e-esm";
> +		reg = <0x00 0x700000 0x00 0x1000>;
> +		ti,esm-pins = <688>, <689>;
> +		bootph-pre-ram;


Similar to other k3-*.dts here and elsewhere
		bootph-all


Better drop them altogether, and lets have a single patch for the j721s2
platform to add bootph* flags as necessary.


> +	};
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> index 2ddad9318554..4b29418a6076 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> @@ -655,4 +655,18 @@
>  		power-domains = <&k3_pds 154 TI_SCI_PD_SHARED>;
>  		#thermal-sensor-cells = <1>;
>  	};
> +
> +	mcu_esm: esm@40800000 {
> +		compatible = "ti,j721e-esm";
> +		reg = <0x00 0x40800000 0x00 0x1000>;
> +		ti,esm-pins = <95>;
> +		bootph-pre-ram;
> +	};
> +
> +	wkup_esm: esm@42080000 {
> +		compatible = "ti,j721e-esm";
> +		reg = <0x00 0x42080000 0x00 0x1000>;
> +		ti,esm-pins = <63>;
> +		bootph-pre-ram;
> +	};
>  };

-- 
Regards
Vignesh

