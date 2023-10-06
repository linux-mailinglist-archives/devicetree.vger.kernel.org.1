Return-Path: <devicetree+bounces-6445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D64257BB67D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11C5F1C2099E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238021C6A2;
	Fri,  6 Oct 2023 11:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="jIINuBiO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DF11C69C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 11:34:28 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B85CE;
	Fri,  6 Oct 2023 04:34:25 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 396BYAi1067584;
	Fri, 6 Oct 2023 06:34:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696592050;
	bh=L/qBAZRai9WwR2dMYvfxO/fOppmi703eQAvgBvW19LU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=jIINuBiOF5EPoD7GkfNHSFzXOwb7d8EJYYNw+j68gWbGGeJwXTQpIDw8vJBOSm73M
	 9YSXxsSkPwBFeKYe0rV2KA2v80wprYnLimES3lNQ+xiVbjzFSgTeDT5UGjnV4mwFxc
	 biRn59B1MwZdczEwnHtW8b8ABOuH4uyZOpna9oVU=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 396BYAIw020690
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 6 Oct 2023 06:34:10 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 6
 Oct 2023 06:34:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 6 Oct 2023 06:34:10 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 396BYAEJ024616;
	Fri, 6 Oct 2023 06:34:10 -0500
Date: Fri, 6 Oct 2023 06:34:10 -0500
From: Nishanth Menon <nm@ti.com>
To: Keerthy <j-keerthy@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 5/7] arm64: dts: ti: k3-j784s4-mcu: Add the mcu domain
 watchdog instances
Message-ID: <20231006113410.tibvxxkeuujqnbv4@evolution>
References: <20231006042901.6474-1-j-keerthy@ti.com>
 <20231006042901.6474-6-j-keerthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231006042901.6474-6-j-keerthy@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 09:58-20231006, Keerthy wrote:
> There are totally 2 instances of watchdog module in MCU domain.
> These instances are coupled with the MCU domain R5F instances.

> Disabling them as they are not used by Linux.
Device tree is hardware description - not tied to how Linux uses it.

Reason these wdts are disabled by default is because they are tightly
coupled with R5Fs.

> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> index a7b5c4cb7d3e..809a0b1cf038 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> @@ -714,4 +714,28 @@
>  		ti,esm-pins = <63>;
>  		bootph-pre-ram;
>  	};
> +
> +	/*
> +	 * The 2 RTI instances are couple with MCU R5Fs so keeping them
> +	 * disabled as these will be used by their respective firmware
> +	 */
> +	mcu_watchdog0: watchdog@40600000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x40600000 0x00 0x100>;
> +		clocks = <&k3_clks 367 1>;
> +		power-domains = <&k3_pds 367 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 367 0>;
> +		assigned-clock-parents = <&k3_clks 367 4>;
> +		status = "disabled";
> +	};
> +
> +	mcu_watchdog1: watchdog@40610000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x40610000 0x00 0x100>;
> +		clocks = <&k3_clks 368 1>;
> +		power-domains = <&k3_pds 368 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 368 0>;
> +		assigned-clock-parents = <&k3_clks 368 4>;

Please DONOT ignore the review comments - I did ask the documentation in
dts as well. reason being that this is what people will see rather than
dig up the commit log. it should be intutive when reading the dts why
nodes are disabled by default Vs the standard of leaving it enabled by
default. Given esp that these peripherals do not have anything to do
with board semantics (pinmux or something similar) to be complete.

> +		status = "disabled";
> +	};
>  };
> -- 
> 2.17.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

