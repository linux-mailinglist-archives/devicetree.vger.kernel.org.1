Return-Path: <devicetree+bounces-3612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 422127AF828
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 04:33:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E64162813EA
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 02:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4BE41878;
	Wed, 27 Sep 2023 02:33:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D208D2F24
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:33:24 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E54D7AA5;
	Tue, 26 Sep 2023 19:33:23 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38R2XHfP013973;
	Tue, 26 Sep 2023 21:33:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695781997;
	bh=7AKkCUIIjXosndBxlHmGTWyhZDiPu05U+B4Tu8+KOIU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=FWMWOdL2282Hn15OJHg+R6Uj7jQasuCdJja0grMRBeDFTpEXYnWsw8CNVWmM67gjZ
	 b6iDwjdMup+0C1bGqzzqWf/K/I1VMGjYwWJ+ctBGIrvOJx6UpG3qBTLqTEKE3BJVWL
	 BAws93Y4/9W+wuNcuJFZV8nE1ILXNI+X/W44ewDs=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38R2XHmO023481
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 26 Sep 2023 21:33:17 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 26
 Sep 2023 21:33:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 26 Sep 2023 21:33:17 -0500
Received: from [10.249.131.134] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38R2XDGJ096415;
	Tue, 26 Sep 2023 21:33:13 -0500
Message-ID: <2f9d2c67-a056-3422-baff-9398a4c6b147@ti.com>
Date: Wed, 27 Sep 2023 08:03:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 4/7] arm64: dts: ti: k3-j784s4-main: Add the main
 domain watchdog instances
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230926132805.6518-1-j-keerthy@ti.com>
 <20230926132805.6518-5-j-keerthy@ti.com>
 <20230926171213.nihjj2nsnnvnxhel@gradation>
From: "J, KEERTHY" <j-keerthy@ti.com>
In-Reply-To: <20230926171213.nihjj2nsnnvnxhel@gradation>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/26/2023 10:42 PM, Nishanth Menon wrote:
> On 18:58-20230926, Keerthy wrote:
>> There are totally 19 instances of watchdog module. One each for the
>> 8 A72 cores, one each for the 4 C7x cores, 1 for the GPU, 1 each
>> for the 6 R5F cores in the main domain. Keeping only the A72 instances
>> enabled and disabling the rest by default.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 182 +++++++++++++++++++++
>>   1 file changed, 182 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> index 26dc3776f911..8c3efe066803 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> @@ -1576,4 +1576,186 @@
>>   			      <695>;
>>   		bootph-pre-ram;
>>   	};
>> +
>> +	watchdog0: watchdog@2200000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2200000 0x00 0x100>;
>> +		clocks = <&k3_clks 348 1>;
>> +		power-domains = <&k3_pds 348 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 348 0>;
>> +		assigned-clock-parents = <&k3_clks 348 4>;
>> +	};
>> +
>> +	watchdog1: watchdog@2210000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2210000 0x00 0x100>;
>> +		clocks = <&k3_clks 349 1>;
>> +		power-domains = <&k3_pds 349 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 349 0>;
>> +		assigned-clock-parents = <&k3_clks 349 4>;
>> +	};
>> +
>> +	watchdog2: watchdog@2220000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2220000 0x00 0x100>;
>> +		clocks = <&k3_clks 350 1>;
>> +		power-domains = <&k3_pds 350 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 350 0>;
>> +		assigned-clock-parents = <&k3_clks 350 4>;
>> +	};
>> +
>> +	watchdog3: watchdog@2230000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2230000 0x00 0x100>;
>> +		clocks = <&k3_clks 351 1>;
>> +		power-domains = <&k3_pds 351 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 351 0>;
>> +		assigned-clock-parents = <&k3_clks 351 4>;
>> +	};
>> +
>> +	watchdog4: watchdog@2240000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2240000 0x00 0x100>;
>> +		clocks = <&k3_clks 352 1>;
>> +		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 352 0>;
>> +		assigned-clock-parents = <&k3_clks 352 4>;
>> +	};
>> +
>> +	watchdog5: watchdog@2250000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2250000 0x00 0x100>;
>> +		clocks = <&k3_clks 353 1>;
>> +		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 353 0>;
>> +		assigned-clock-parents = <&k3_clks 353 4>;
>> +	};
>> +
>> +	watchdog6: watchdog@2260000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2260000 0x00 0x100>;
>> +		clocks = <&k3_clks 354 1>;
>> +		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 354 0>;
>> +		assigned-clock-parents = <&k3_clks 354 4>;
>> +	};
>> +
>> +	watchdog7: watchdog@2270000 {
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2270000 0x00 0x100>;
>> +		clocks = <&k3_clks 355 1>;
>> +		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 355 0>;
>> +		assigned-clock-parents = <&k3_clks 355 4>;
>> +	};
>> +
>> +	watchdog16: watchdog@2300000 {
>> +		status = "disabled";
> 
> wow.. lots of watchdogs.. but you seem to have missed the document why
> disabled comment here AND missed the comment about using status
> as the last property.
> https://lore.kernel.org/all/5187c590-ee9a-4c46-b326-655f4c371aaf@linaro.org/

I will fix it in v6.

> 
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2300000 0x00 0x100>;
>> +		clocks = <&k3_clks 356 1>;
>> +		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 356 0>;
>> +		assigned-clock-parents = <&k3_clks 356 4>;
>> +	};
>> +
>> +	watchdog17: watchdog@2310000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2310000 0x00 0x100>;
>> +		clocks = <&k3_clks 357 1>;
>> +		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 357 0>;
>> +		assigned-clock-parents = <&k3_clks 357 4>;
>> +	};
>> +
>> +	watchdog18: watchdog@2320000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2320000 0x00 0x100>;
>> +		clocks = <&k3_clks 358 1>;
>> +		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 358 0>;
>> +		assigned-clock-parents = <&k3_clks 358 4>;
>> +	};
>> +
>> +	watchdog19: watchdog@2330000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2330000 0x00 0x100>;
>> +		clocks = <&k3_clks 359 1>;
>> +		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 359 0>;
>> +		assigned-clock-parents = <&k3_clks 359 4>;
>> +	};
>> +
>> +	watchdog15: watchdog@22f0000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x22f0000 0x00 0x100>;
>> +		clocks = <&k3_clks 360 1>;
>> +		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 360 0>;
>> +		assigned-clock-parents = <&k3_clks 360 4>;
>> +	};
>> +
>> +	watchdog28: watchdog@23c0000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23c0000 0x00 0x100>;
>> +		clocks = <&k3_clks 361 1>;
>> +		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 361 0>;
>> +		assigned-clock-parents = <&k3_clks 361 4>;
>> +	};
>> +
>> +	watchdog29: watchdog@23d0000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23d0000 0x00 0x100>;
>> +		clocks = <&k3_clks 362 1>;
>> +		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 362 0>;
>> +		assigned-clock-parents = <&k3_clks 362 4>;
>> +	};
>> +
>> +	watchdog30: watchdog@23e0000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23e0000 0x00 0x100>;
>> +		clocks = <&k3_clks 363 1>;
>> +		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 363 0>;
>> +		assigned-clock-parents = <&k3_clks 363 4>;
>> +	};
>> +
>> +	watchdog31: watchdog@23f0000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x23f0000 0x00 0x100>;
>> +		clocks = <&k3_clks 364 1>;
>> +		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 364 0>;
>> +		assigned-clock-parents = <&k3_clks 364 4>;
>> +	};
>> +
>> +	watchdog32: watchdog@2540000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2540000 0x00 0x100>;
>> +		clocks = <&k3_clks 365 1>;
>> +		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 365 0>;
>> +		assigned-clock-parents = <&k3_clks 366 4>;
>> +	};
>> +
>> +	watchdog33: watchdog@2550000 {
>> +		status = "disabled";
>> +		compatible = "ti,j7-rti-wdt";
>> +		reg = <0x00 0x2550000 0x00 0x100>;
>> +		clocks = <&k3_clks 366 1>;
>> +		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
>> +		assigned-clocks = <&k3_clks 366 0>;
>> +		assigned-clock-parents = <&k3_clks 366 4>;
>> +	};
>>   };
>> -- 
>> 2.17.1
>>
> 

