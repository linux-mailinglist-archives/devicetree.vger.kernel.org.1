Return-Path: <devicetree+bounces-19463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6527FB0FC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 05:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDB1D1C20BF0
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 04:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED88715BB;
	Tue, 28 Nov 2023 04:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qcY2Sttz"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E46AE1AA;
	Mon, 27 Nov 2023 20:39:54 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AS4dgkA059659;
	Mon, 27 Nov 2023 22:39:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701146382;
	bh=BNZOAwv/SFdsrT2BqbrYqFaB/sRl1v5LnNmh4JQIzAc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=qcY2SttznIS9s/Ck9ibmz/5A8z/3R2a71/E3uQujhJnkCM+TZnwuBvJKqs7WmEXDm
	 JHPmrUDxANZN/xWJLvG2RM2kbSpkg1RkPMcRv7BdBaIogF3k6+D8vEqYPdYxIZBKnU
	 Ig918gV6Kp7OHe657A0UtthtuZAcTQoWnf0MZ/DY=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AS4dgBw092697
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 27 Nov 2023 22:39:42 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 27
 Nov 2023 22:39:42 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 27 Nov 2023 22:39:42 -0600
Received: from [10.250.148.120] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AS4daH4065850;
	Mon, 27 Nov 2023 22:39:37 -0600
Message-ID: <db70f42e-0296-4f36-ac97-2ecf38b84f51@ti.com>
Date: Tue, 28 Nov 2023 10:09:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: k3-am62a-main: Add sdhci0 instance
To: Judith Mendez <jm@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20231030063108.1242981-1-n-yadav@ti.com>
 <20231030063108.1242981-2-n-yadav@ti.com>
 <4953b4e5-0f9c-4a3a-ae69-40716750cb40@ti.com>
Content-Language: en-US
From: Nitin Yadav <n-yadav@ti.com>
In-Reply-To: <4953b4e5-0f9c-4a3a-ae69-40716750cb40@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180



On 11/28/2023 3:11 AM, Judith Mendez wrote:
> On 10/30/23 1:31 AM, Nitin Yadav wrote:
>> Add sdhci0 DT node in k3-am62a-main for eMMC support. Droping
>> ITAP values as they are NA in datasheet[0] for lower speed modes.
>>
>> [0]https://www.ti.com/lit/gpn/am62a3 Table: 7-79 (Page No. 179)
>>
> 
> Minor comment below. All else looks good to me.
> 
> Reviewed by: Judith Mendez <jm@ti.com>
> 
>> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
>> index de36abb243f1..89b8b7d302cd 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
>> @@ -488,6 +488,25 @@ main_gpio1: gpio@601000 {
>>           status = "disabled";
>>       };
>>   +    sdhci0: mmc@fa10000 {
>> +        compatible = "ti,am62-sdhci";
>> +        reg = <0x00 0xfa10000 0x00 0x260>, <0x00 0xfa18000 0x00 0x134>;
>> +        interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
>> +        power-domains = <&k3_pds 57 TI_SCI_PD_EXCLUSIVE>;
>> +        clocks = <&k3_clks 57 5>, <&k3_clks 57 6>;
>> +        clock-names = "clk_ahb", "clk_xin";
>> +        assigned-clocks = <&k3_clks 57 6>;
>> +        assigned-clock-parents = <&k3_clks 57 8>;
>> +        mmc-hs200-1_8v;
>> +        ti,trm-icp = <0x2>;
>> +        ti,otap-del-sel-legacy = <0x0>;
>> +        ti,otap-del-sel-mmc-hs = <0x0>;
>> +        ti,otap-del-sel-hs200 = <0x6>;
> 
> I am wondering why DDR52 speed mode was not added?
plz refer datasheet. No mention of DDR52 in this revised addition.
> 
>> +        bus-width = <8>;
>> +        ti,clkbuf-sel = <0x7>;
>> +        status = "disabled";
>> +    };
>> +
>>       sdhci1: mmc@fa00000 {
>>           compatible = "ti,am62-sdhci";
>>           reg = <0x00 0xfa00000 0x00 0x260>, <0x00 0xfa08000 0x00 0x134>;
> 
> ~ Judith

