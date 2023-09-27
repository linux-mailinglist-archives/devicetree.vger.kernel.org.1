Return-Path: <devicetree+bounces-3695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6227AFE38
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A3AD1283562
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB842585;
	Wed, 27 Sep 2023 08:24:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E39F46A3
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:24:16 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0140B95;
	Wed, 27 Sep 2023 01:24:13 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38R8NxKO106127;
	Wed, 27 Sep 2023 03:23:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695803039;
	bh=KVPQP9iGYJ3tp6PmrcVX4eUF5yXfRjhIcxebBh+/Sv4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=WYUDN/PNEX0/E0KybWxdBzWoW9eEt0h8SmiZ4qJAZ1TqqF59mNylzn224zM7B9EKx
	 jW/t41VVLXpvGWA3uOusTUcXITxHeYhLEmm2JbQZj8dBYpIdKv7BOizxRAm1OQxBd4
	 emfcJ1uMFBnY3KENdXP5jLWL4T36/JysKhL+na+U=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38R8NxAw019056
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 03:23:59 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 03:23:59 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 03:23:59 -0500
Received: from [10.24.68.251] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38R8NtJ6092142;
	Wed, 27 Sep 2023 03:23:56 -0500
Message-ID: <b7c87a3a-32ef-fe58-0cf2-230100f377d5@ti.com>
Date: Wed, 27 Sep 2023 13:53:55 +0530
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
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>,
        <nm@ti.com>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
CC: <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230926132805.6518-1-j-keerthy@ti.com>
 <20230926132805.6518-5-j-keerthy@ti.com>
 <0c709939-9867-4d80-ba7e-640b594f8d7a@linaro.org>
From: "J, KEERTHY" <j-keerthy@ti.com>
In-Reply-To: <0c709939-9867-4d80-ba7e-640b594f8d7a@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/27/2023 1:24 PM, Krzysztof Kozlowski wrote:
> On 26/09/2023 15:28, Keerthy wrote:
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
> This is a friendly reminder during the review process.
> 
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.

Apologies. I have fixed the order in v6.

> 
> Thank you.
> 
> Best regards,
> Krzysztof
> 

