Return-Path: <devicetree+bounces-3611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA927AF827
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 04:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 28B9E2813AA
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 02:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F7F01878;
	Wed, 27 Sep 2023 02:33:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523A810E7
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:33:02 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7278A76BB;
	Tue, 26 Sep 2023 19:33:00 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38R2WpOe013881;
	Tue, 26 Sep 2023 21:32:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695781971;
	bh=+Uh5/QP7eWcgQv+zkuC7zXRZotbOJ2GnCVny/UinaLg=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=zP/S+pn1yNu/mXz9CQ6lexMyHNC9cdKse+i4KikVYy+xXGsMbog9R1sEv4ayNt6bi
	 FAipfeTnDUaSDvU217JiihVCwOcKgkTYZzTlgpIjDGrgfmwkXzVQW8odYSXaVkkn1K
	 WpDi/iDT2QCMlp7uvopJCWxRxB1rPr2qIg47ZY8o=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38R2WpiH016677
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 26 Sep 2023 21:32:51 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 26
 Sep 2023 21:32:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 26 Sep 2023 21:32:51 -0500
Received: from [10.249.131.134] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38R2WlbP090471;
	Tue, 26 Sep 2023 21:32:47 -0500
Message-ID: <1a60d1a1-53ba-5dac-07fe-d32fab0fb1b5@ti.com>
Date: Wed, 27 Sep 2023 08:02:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 6/7] arm64: dts: ti: k3-j721s2-main: Add the main
 domain watchdog instances
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230926132805.6518-1-j-keerthy@ti.com>
 <20230926132805.6518-7-j-keerthy@ti.com>
 <20230926171340.t227lqfjjcitx37z@clump>
From: "J, KEERTHY" <j-keerthy@ti.com>
In-Reply-To: <20230926171340.t227lqfjjcitx37z@clump>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/26/2023 10:43 PM, Nishanth Menon wrote:
> On 18:58-20230926, Keerthy wrote:
>> There are totally 9 instances of watchdog module. One each for the
>> 2 A72 cores, one each for the 2 C7x cores, 1 for the GPU, 1 each
>> for the 4 R5F cores in the main domain. Keeping only the A72 instances
>> enabled and disabling the rest by default.
> 
> Will be good to explain why in the commit message as well.

I will add that.

> 
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 88 ++++++++++++++++++++++
>>   1 file changed, 88 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> index 8a717b592238..5e3c0ef9b10b 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
>> @@ -1702,4 +1702,92 @@
>>   		ti,esm-pins = <688>, <689>;
>>   		bootph-pre-ram;
>>   	};
>> +
>> +	watchdog0: watchdog@2200000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2200000 0x00 0x100>;
>> +		clocks = <&k3_clks 286 1>;
>> +		power-domains = <&k3_pds 286 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 286 1>;
>> +		assigned-clock-parents = <&k3_clks 286 5>;
>> +	};
>> +
>> +	watchdog1: watchdog@2210000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2210000 0x00 0x100>;
>> +		clocks = <&k3_clks 287 1>;
>> +		power-domains = <&k3_pds 287 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 287 1>;
>> +		assigned-clock-parents = <&k3_clks 287 5>;
>> +	};
>> +
>> +	watchdog16: watchdog@2300000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2300000 0x00 0x100>;
>> +		clocks = <&k3_clks 288 1>;
>> +		power-domains = <&k3_pds 288 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 288 1>;
>> +		assigned-clock-parents = <&k3_clks 288 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog17: watchdog@2310000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2310000 0x00 0x100>;
>> +		clocks = <&k3_clks 289 1>;
>> +		power-domains = <&k3_pds 289 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 289 1>;
>> +		assigned-clock-parents = <&k3_clks 289 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog15: watchdog@22f0000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x22f0000 0x00 0x100>;
>> +		clocks = <&k3_clks 290 1>;
>> +		power-domains = <&k3_pds 290 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 290 1>;
>> +		assigned-clock-parents = <&k3_clks 290 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog28: watchdog@23c0000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23c0000 0x00 0x100>;
>> +		clocks = <&k3_clks 291 1>;
>> +		power-domains = <&k3_pds 291 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 291 1>;
>> +		assigned-clock-parents = <&k3_clks 291 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog29: watchdog@23d0000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23d0000 0x00 0x100>;
>> +		clocks = <&k3_clks 292 1>;
>> +		power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 292 1>;
>> +		assigned-clock-parents = <&k3_clks 292 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog30: watchdog@23e0000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23e0000 0x00 0x100>;
>> +		clocks = <&k3_clks 293 1>;
>> +		power-domains = <&k3_pds 293 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 293 1>;
>> +		assigned-clock-parents = <&k3_clks 293 5>;
>> +		status = "disabled";
>> +	};
>> +
>> +	watchdog31: watchdog@23f0000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23f0000 0x00 0x100>;
>> +		clocks = <&k3_clks 294 1>;
>> +		power-domains = <&k3_pds 294 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 294 1>;
>> +		assigned-clock-parents = <&k3_clks 294 5>;
>> +		status = "disabled";
> 
> Missing documentation here as well.

Sure. I will add that.

> 
>> +	};
>>   };
>> -- 
>> 2.17.1
>>
> 

