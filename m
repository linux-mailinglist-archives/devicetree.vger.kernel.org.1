Return-Path: <devicetree+bounces-1856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7192D7A8A08
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:06:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D38282046
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB723E48F;
	Wed, 20 Sep 2023 17:06:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A6815BC
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:06:45 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82688A3;
	Wed, 20 Sep 2023 10:06:43 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38KH6XEQ117345;
	Wed, 20 Sep 2023 12:06:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695229593;
	bh=JPp8EjwI/JfwJ8zhlSnLz71JIkxoGMMEH6ncFguUk6Q=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=b/8kxMaxYONKAJHqGJjpli2i/dzwzOtemCVcevo58sz9uCHNWFA2q5oQYac6hCFxF
	 c+QPS86ST7KhRXPZxa95J0yPg08exTeH2RlrrIAOFFbBOQcMJF4rlmMAVN0d+PMXgb
	 TmGfm1qdYpq40N5lCY6TRPJe46W7WBwJ4jv32sG0=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38KH6XCM116391
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 20 Sep 2023 12:06:33 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 20
 Sep 2023 12:06:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 20 Sep 2023 12:06:33 -0500
Received: from [10.250.38.120] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38KH6WeY088335;
	Wed, 20 Sep 2023 12:06:32 -0500
Message-ID: <c7ec6ccd-37de-244d-0b3b-cb5d13bae539@ti.com>
Date: Wed, 20 Sep 2023 12:06:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/2] arm64: dts: ti: am642-evm: Add overlay for NAND
 expansion card
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>, Roger Quadros <rogerq@kernel.org>
CC: <vigneshr@ti.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <srk@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230920133450.54226-1-rogerq@kernel.org>
 <20230920133450.54226-3-rogerq@kernel.org>
 <20230920135802.3ej2wcuaruqjidel@uncouth>
 <e8f26137-1284-4f45-a74d-a0a5f2aa2f93@kernel.org>
 <20230920164424.rrjvm6nvtv4ysyrw@unreal>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20230920164424.rrjvm6nvtv4ysyrw@unreal>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/20/23 11:44 AM, Nishanth Menon wrote:
> On 18:18-20230920, Roger Quadros wrote:
>>
>>
>> On 20/09/2023 16:58, Nishanth Menon wrote:
>>> On 16:34-20230920, Roger Quadros wrote:
>>>> The NAND expansion card plugs in over the HSE (High Speed Expansion)
>>>> connector. Add support for it.
>>>>
>>>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>>>> ---
>>>>   arch/arm64/boot/dts/ti/Makefile               |   1 +
>>>>   arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso | 140 ++++++++++++++++++
>>>>   2 files changed, 141 insertions(+)
>>>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>>>> index 06d6f264f292..ece74085a6be 100644
>>>> --- a/arch/arm64/boot/dts/ti/Makefile
>>>> +++ b/arch/arm64/boot/dts/ti/Makefile
>>>> @@ -29,6 +29,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-sk.dtb
>>>>   
>>>>   # Boards with AM64x SoC
>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
>>>> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm-nand.dtbo
>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>>>>   dtb-$(CONFIG_ARCH_K3) += k3-am642-tqma64xxl-mbax4xxl.dtb
>>>
>>> Also see https://lore.kernel.org/all/20230911165610.GA1362932-robh@kernel.org/
>>>
>>> you may not get the dtbo installed when doing make dtbs_install
>>>
>>> [...]
>>>
>>
>> $ v8make dtbs_install INSTALL_DTBS_PATH=/tmp
>>    INSTALL /tmp/ti/k3-am625-beagleplay.dtb
>>    INSTALL /tmp/ti/k3-am625-phyboard-lyra-rdk.dtb
>>    INSTALL /tmp/ti/k3-am625-sk.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dahlia.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-dev.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-nonwifi-yavia.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-dahlia.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-dev.dtb
>>    INSTALL /tmp/ti/k3-am625-verdin-wifi-yavia.dtb
>>    INSTALL /tmp/ti/k3-am62-lp-sk.dtb
>>    INSTALL /tmp/ti/k3-am62x-sk-hdmi-audio.dtbo
>>    INSTALL /tmp/ti/k3-am62a7-sk.dtb
>>    INSTALL /tmp/ti/k3-am62p5-sk.dtb
>>    INSTALL /tmp/ti/k3-am642-evm.dtb
>>    INSTALL /tmp/ti/k3-am642-evm-nand.dtbo
>> ^^^^
>>    INSTALL /tmp/ti/k3-am642-phyboard-electra-rdk.dtb
>>    INSTALL /tmp/ti/k3-am642-sk.dtb
>>
>>
>> What did I miss?
> 
> I missed it, actually. See Rob's comment:
> https://lore.kernel.org/all/CAL_Jsq+GR3hP6hFvFn2z5aXvSXnh9butD3aKZ-y_XJgx0_YPTw@mail.gmail.com/
> 
> Having orphan dtbo is apparently frowned upon
> 

And if you apply these overlays to the base DTB then it gets
symbols added automatically, no need for your patch [1/2] here.

Andrew

