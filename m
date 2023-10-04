Return-Path: <devicetree+bounces-5781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD72A7B7DEC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BA6B01C203B5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA4311CA9;
	Wed,  4 Oct 2023 11:13:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE22111B6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:13:52 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09B71B0;
	Wed,  4 Oct 2023 04:13:48 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394BDgCc018714;
	Wed, 4 Oct 2023 06:13:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696418022;
	bh=3uoyr+JW6VEuPEtXqA1Yqm1VcrYyfrhzgcubOT8isrU=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=w3XsiyKowWSjx81bGg9zl+c0yAoDfAE5vzs9gv22VvpCTgMP5AU+KWb5Y6+j/gef1
	 8J+9AKPp3dQ9L8Q9QtVhYP0nhTb2ZlrYoZXP2GxYHAXf2ZUCu6W0su9Nk3ACd8wQtN
	 yMu5uQs5Jto1VaF9FjGmD8z8naeH5qT1wD88WYtY=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394BDgf8024666
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 06:13:42 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 06:13:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 06:13:41 -0500
Received: from [172.24.227.112] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394BDbOp098083;
	Wed, 4 Oct 2023 06:13:37 -0500
Message-ID: <395f1670-d9cd-42ed-99f0-8d33bc6164e5@ti.com>
Date: Wed, 4 Oct 2023 16:43:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/5] arm64: dts: ti: k3-j784s4-main: Add DSS and
 DP-bridge node
Content-Language: en-US
To: Nishanth Menon <nm@ti.com>
CC: <vigneshr@ti.com>, <a-bhatia1@ti.com>, <afd@ti.com>, <rogerq@kernel.org>,
        <s-vadapalli@ti.com>, <conor+dt@kernel.org>, <r-ravikumar@ti.com>,
        <sabiya.d@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20230927121157.278592-1-j-choudhary@ti.com>
 <20230927121157.278592-4-j-choudhary@ti.com>
 <20230927122437.4a76enao7xqyw7hp@retreat>
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20230927122437.4a76enao7xqyw7hp@retreat>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 27/09/23 17:54, Nishanth Menon wrote:
> On 17:41-20230927, Jayesh Choudhary wrote:
>> From: Rahul T R <r-ravikumar@ti.com>
>>
>> Add DSS and DP-bridge node for J784S4 SoC. DSS IP in J784S4 is
>> same as DSS IP in J721E, so same compatible is being used.
>> The DP is Cadence MHDP8546.
>>
>> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
>> [j-choudhary@ti.com: move dss & mhdp node together in main, fix dss node]
>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
>> Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 61 ++++++++++++++++++++++
>>   1 file changed, 61 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> index a0e4d8808693..5ae11b0d5d0a 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>> @@ -1772,4 +1772,65 @@ c71_3: dsp@67800000 {
>>   		firmware-name = "j784s4-c71_3-fw";
>>   		status = "disabled";
>>   	};
>> +
>> +	mhdp: bridge@a000000 {
>> +		compatible = "ti,j721e-mhdp8546";
>> +		reg = <0x0 0xa000000 0x0 0x30a00>,
>> +		      <0x0 0x4f40000 0x0 0x20>;
>> +		reg-names = "mhdptx", "j721e-intg";
>> +		clocks = <&k3_clks 217 11>;
>> +		interrupt-parent = <&gic500>;
>> +		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
>> +		power-domains = <&k3_pds 217 TI_SCI_PD_EXCLUSIVE>;
>> +		status = "disabled";
> 
> Document why disabled.

Okay.

> 
>> +
>> +		dp0_ports: ports {
>> +		};
> 
> Document why empty node

I will mention that the remote-endpoint are on the board so all the
properties are defined there together. So keeping it empty here.

Other way could be to add #address-cells and #size-cell here with port
child-node. And its remote end point added in the board file. But node
would still be incomplete here.

Warm Regards,
-Jayesh

> 
>> +	};
>> +
>> +	dss: dss@4a00000 {
>> +		compatible = "ti,j721e-dss";
>> +		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
>> +		      <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
>> +		      <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
>> +		      <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
>> +		      <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
>> +		      <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
>> +		      <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
>> +		      <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
>> +		      <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
>> +		      <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
>> +		      <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
>> +		      <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
>> +		      <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
>> +		      <0x00 0x04aa0000 0x00 0x10000>, /* vp1 */
>> +		      <0x00 0x04ac0000 0x00 0x10000>, /* vp1 */
>> +		      <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
>> +		      <0x00 0x04af0000 0x00 0x10000>; /* wb */
>> +		reg-names = "common_m", "common_s0",
>> +			    "common_s1", "common_s2",
>> +			    "vidl1", "vidl2","vid1","vid2",
>> +			    "ovr1", "ovr2", "ovr3", "ovr4",
>> +			    "vp1", "vp2", "vp3", "vp4",
>> +			    "wb";
>> +		clocks = <&k3_clks 218 0>,
>> +			 <&k3_clks 218 2>,
>> +			 <&k3_clks 218 5>,
>> +			 <&k3_clks 218 14>,
>> +			 <&k3_clks 218 18>;
>> +		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
>> +		power-domains = <&k3_pds 218 TI_SCI_PD_EXCLUSIVE>;
>> +		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
>> +		interrupt-names = "common_m",
>> +				  "common_s0",
>> +				  "common_s1",
>> +				  "common_s2";
>> +		status = "disabled";
> 
> Same
> 
>> +
>> +		dss_ports: ports {
> 
> Same
> 
>> +		};
>> +	};
>>   };
>> -- 
>> 2.25.1
>>
> 

