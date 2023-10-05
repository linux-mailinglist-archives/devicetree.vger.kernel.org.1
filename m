Return-Path: <devicetree+bounces-6172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5077BA1F9
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2E002281F48
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A2230CEA;
	Thu,  5 Oct 2023 15:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hHIuIw8b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA43C30CE3
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:09:03 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6C0810195;
	Thu,  5 Oct 2023 08:09:01 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 395CVtOJ003542;
	Thu, 5 Oct 2023 07:31:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696509115;
	bh=Md93/u62cMUvzWDYlTUnTZn/X6A+6NLcZw9TJhnVGOs=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=hHIuIw8bWH39P26FOkFD89hLy4ujueP2bVppa4tBfMzCTVJX5ebPCUuLG61I4Wqtz
	 jrFJiTtTEI0B731UrmztSJXaZBkTvhHfWo6kMcMeA8dI5EV6y8zZLy8Bym7BHzuCls
	 aNqbYP7IEvWCeVjl76aEn0tqUTV9IOH/c8RLuZwA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 395CVt9s018007
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 07:31:55 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 07:31:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 07:31:55 -0500
Received: from [10.249.131.134] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 395CVoZJ026440;
	Thu, 5 Oct 2023 07:31:51 -0500
Message-ID: <d5589d2f-013d-4946-9e5c-051c587c2e8b@ti.com>
Date: Thu, 5 Oct 2023 18:01:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/7] arm64: dts: ti: k3-j784s4: Add ESM instances
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20230927023357.9883-1-j-keerthy@ti.com>
 <20230927023357.9883-3-j-keerthy@ti.com>
 <4eb50f24-b6c8-790e-91b0-5646ebbb2d10@ti.com>
 <c7c32ec5-d0c1-443d-9851-3bb8e772c8fc@ti.com>
 <20231005111554.ol4vu4oxlensmx6m@booth>
From: "J, KEERTHY" <j-keerthy@ti.com>
In-Reply-To: <20231005111554.ol4vu4oxlensmx6m@booth>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/5/2023 4:45 PM, Nishanth Menon wrote:
> On 06:45-20231005, J, KEERTHY wrote:
>>
>>
>> On 10/3/2023 12:20 PM, Vignesh Raghavendra wrote:
>>>
>>>
>>> On 27/09/23 08:03, Keerthy wrote:
>>>> Patch adds the ESM instances for j784s4. It has 3 instances.
>>>> One in the main domain and two in the mcu-wakeup domian.
>>>>
>>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>>> ---
>>>>    arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi       |  8 ++++++++
>>>>    arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi | 14 ++++++++++++++
>>>>    2 files changed, 22 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> index efed2d683f63..26dc3776f911 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> @@ -1568,4 +1568,12 @@
>>>>    		firmware-name = "j784s4-c71_3-fw";
>>>>    		status = "disabled";
>>>>    	};
>>>> +
>>>> +	main_esm: esm@700000 {
>>>> +		compatible = "ti,j721e-esm";
>>>> +		reg = <0x00 0x700000 0x00 0x1000>;
>>>> +		ti,esm-pins = <688>, <689>, <690>, <691>, <692>, <693>, <694>,
>>>> +			      <695>;
>>>> +		bootph-pre-ram;
>>>
>>> Similar to other nodes in this file, here and elsewhere use
>>> 		bootph-all
>>
>> Okay. I will switch to bootph-all
> 
> Is'nt esm configuration just needed during pre-ram?

This is needed only the R5 SPL phase. So bootph-pre-ram looks better suited.

https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html

Vignesh,

This ESM nodes should be bootph-pre-ram. I will keep that flag as is.

Best Regards,
Keerthy
> 
>>
>>>
>>>
>>>> +	};
>>>>    };
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
>>>> index 4ab4018d3695..a7b5c4cb7d3e 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
>>>> @@ -700,4 +700,18 @@
>>>>    			status = "disabled";
>>>>    		};
>>>>    	};
>>>> +
>>>> +	mcu_esm: esm@40800000 {
>>>> +		compatible = "ti,j721e-esm";
>>>> +		reg = <0x00 0x40800000 0x00 0x1000>;
>>>> +		ti,esm-pins = <95>;
>>>> +		bootph-pre-ram;
>>>> +	};
>>>> +
>>>> +	wkup_esm: esm@42080000 {
>>>> +		compatible = "ti,j721e-esm";
>>>> +		reg = <0x00 0x42080000 0x00 0x1000>;
>>>> +		ti,esm-pins = <63>;
>>>> +		bootph-pre-ram;
>>>> +	};
>>>>    };
>>>
> 

