Return-Path: <devicetree+bounces-8354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 835817C7CEA
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 07:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6376B20924
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 05:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C613D02A;
	Fri, 13 Oct 2023 05:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JBpbE3KG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EEB3D022
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 05:09:04 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1099B7;
	Thu, 12 Oct 2023 22:09:02 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39D58mXY053987;
	Fri, 13 Oct 2023 00:08:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697173728;
	bh=2+cvJVnOhFVfgkEgfsoaZQcfvoEufy700Ckb9mO3bRs=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=JBpbE3KGsfK4QZ3JWEjvjSaIG+Dwb5N/FdiUbX7eqSccXy1veHbtHcg5Xwtrt8B4m
	 Idr/IMD3Gpgk+B+IgP7A9IEu6zkMc40rXpjPESr8/jae5HIeIj+/Wmi6QTCdXa0UxU
	 XJnt1VyneastL9Tx8E7k9WNPk0cER4QqwqcmguOE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39D58mc8028923
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Oct 2023 00:08:48 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 13
 Oct 2023 00:08:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 13 Oct 2023 00:08:47 -0500
Received: from [172.24.227.112] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39D58gh1101318;
	Fri, 13 Oct 2023 00:08:43 -0500
Message-ID: <4fed02bb-3f10-4694-800a-484d76833414@ti.com>
Date: Fri, 13 Oct 2023 10:38:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/5] arm64: dts: ti: k3-j784s4-evm: Enable
 DisplayPort-0
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <nm@ti.com>, <rogerq@kernel.org>,
        Andrew Davis
	<afd@ti.com>, Aradhya Bhatia <a-bhatia1@ti.com>
CC: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, <s-vadapalli@ti.com>,
        <kristo@kernel.org>, <conor+dt@kernel.org>, <r-ravikumar@ti.com>,
        <sabiya.d@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20230803080441.367341-1-j-choudhary@ti.com>
 <20230803080441.367341-5-j-choudhary@ti.com>
 <9f19e01e-6211-16eb-c911-998ee2d46161@ti.com>
 <2ddc34f9-92ad-9a0c-8044-0ec671e55e9e@ti.com>
 <06708b12-34af-bcb5-7b65-c9bdd830b9f0@ti.com>
 <7c2b0f22-95d3-2976-7999-7e65c6d9801b@ti.com>
 <435f9b99-b888-2e18-cf70-8c7d074b68be@ti.com>
 <570903b6-8239-d44a-5fac-71700804cb5d@ti.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <570903b6-8239-d44a-5fac-71700804cb5d@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On 08/08/23 00:24, Andrew Davis wrote:
> On 8/7/23 1:29 PM, Aradhya Bhatia wrote:
>>
>>
>> On 07-Aug-23 21:19, Andrew Davis wrote:
>>> On 8/7/23 7:56 AM, Aradhya Bhatia wrote:
>>>> Hi Jayesh,
>>>>
>>>> On 07-Aug-23 17:54, Jayesh Choudhary wrote:
>>>>> Hello Aradhya,
>>>>>
>>>>> Thank you for the review.
>>>>>
>>>>> On 05/08/23 00:52, Aradhya Bhatia wrote:
>>>>>> Hi Jayesh,
>>>>>>
>>>>>>
>>>>>> On 03-Aug-23 13:34, Jayesh Choudhary wrote:
>>>>>>> From: Rahul T R <r-ravikumar@ti.com>
>>>>>>>
>>>>>>> Enable display for J784S4 EVM.
>>>>>>>
>>>>>>> Add assigned clocks for DSS, DT node for DisplayPort PHY and pinmux
>>>>>>> for
>>>>>>> DP HPD. Add the clock frequency for serdes_refclk.
>>>>>>>
>>>>>>> Add the endpoint nodes to describe connection from:
>>>>>>> DSS => MHDP => DisplayPort connector.
>>>>>>>
>>>>>>> Also add the GPIO expander-4 node and pinmux for main_i2c4 which is
>>>>>>> required for controlling DP power. Set status for all required nodes
>>>>>>> for DP-0 as "okay".
>>>>>>>
>>>>>>> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
>>>>>>> [j-choudhary@ti.com: move all the changes together to enable DP-0 in
>>>>>>> EVM]
>>>>>>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
>>>>>>> ---
>>>>>>>     arch/arm64/boot/dts/ti/k3-j784s4-evm.dts | 119
>>>>>>> +++++++++++++++++++++++
>>>>>>>     1 file changed, 119 insertions(+)
>>>>>
>>>>> [...]
>>>>>
>>>>>>> +        reg = <0>;
>>>>>>> +        cdns,num-lanes = <4>;
>>>>>>> +        #phy-cells = <0>;
>>>>>>> +        cdns,phy-type = <PHY_TYPE_DP>;
>>>>>>> +        resets = <&serdes_wiz4 1>, <&serdes_wiz4 2>,
>>>>>>> +             <&serdes_wiz4 3>, <&serdes_wiz4 4>;
>>>>>>> +    };
>>>>>>> +};
>>>>>>> +
>>>>>>> +&mhdp {
>>>>>>> +    status = "okay";
>>>>>>> +    pinctrl-names = "default";
>>>>>>> +    pinctrl-0 = <&dp0_pins_default>;
>>>>>>> +    phys = <&serdes4_dp_link>;
>>>>>>> +    phy-names = "dpphy";
>>>>>>> +};
>>>>>>> +
>>>>>>> +&dss_ports {
>>>>>>> +    port {
>>>>>>
>>>>>> Port index has not been added here. Since this port outputs to MHDP
>>>>>> bridge, this should be "port@0", and a "reg = <0>;" property 
>>>>>> should be
>>>>>> added below (along with the address and size cells properties).
>>>>>>
>>>>>> I suppose this works functionally in this case, because the port gets
>>>>>> defaulted to "0" by the driver. But in future, when we add support 
>>>>>> for
>>>>>> other dss output(s) on j784s4-evm, the driver will need indices to
>>>>>> distinguish among them.
>>>>>>
>>>>>
>>>>> Okay. It makes sense.
>>>>> Just one thing here. Adding reg here would require it to have 
>>>>> #address-
>>>>> cells and #size-cell but since we have only single child port that too
>>>>> at reg=<0>, it would throw dtbs_check warning:
>>>>>
>>>>> arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi:1828.20-1831.5: Warning
>>>>> (graph_child_address): /bus@100000/dss@4a00000/ports: graph node has
>>>>> single child node 'port@0', #address-cells/#size-cells are not 
>>>>> necessary
>>>>>     also defined at 
>>>>> arch/arm64/boot/dts/ti/k3-j784s4-evm.dts:911.12-919.3
>>>>>
>>>>
>>>> Okay! Was not aware about this. I still think "port@0" should be
>>>> specified instead of just "port" and the warning should be ignored, if
>>>> possible.
>>>>
>>>
>>> Do not ignore new DT check warnings, if you go with "port@0" (which you
>>> need to do as the "ti,j721e-dss" binding requires it) you must also add
>>> the #address-cells/#size-cells.
>>>
>>
>> The warning that Jayesh mentioned above comes when "port@0" is
>> mentioned, *along-with* the #address-cells/#size-cells properties.
>> Essentially, it wants us to not use "port@0" when only single port is
>> being added whose reg values is 0.
>>
>> This warning does not come when only a single port other than 0,
>> "port@1" for e.g., is being used. That's the warning, that should get
>> ignored, if possible.
>>
> 
> Ah, I see now.
> 
> Almost seems like a bug in dtc checks, but checking the code it
> looks deliberate, although I cannot see why..
> 
> Rob,
> 
> Could you provide some guidance on why graph nodes are handled
> this way? Seems this is valid:
> 
> ports {
>      #address-cells = <1>;
>      #size-cells = <0>;
> 
>      port@1 {
>          reg = <1>;
>      };
> }
> 
> but this is not:
> 
> ports {
>      #address-cells = <1>;
>      #size-cells = <0>;
> 
>      port@0 {
>          reg = <0>;
>      };
> };
> 
> I'm guessing we allow port 0 to not be numbered if it is the only
> one for legacy convenience, but *forcing* it to not be numbered
> when it would otherwise be more consistent seems overly strict.
> 
> Andrew

Hello Rob, Krzysztof,

For this series, v11 has been already reviewed by Roger and Aradhya:
<https://lore.kernel.org/all/77701023-7bd1-4e04-aa44-0e46aa087c4f@kernel.org/>

Only this warning persist. Can you ACK the series so that it can
be queued/merged.
If W=1 warning is not acceptable, I can revert to port description
here in v9.

Warm Regards,
Jayesh



> 
>> However, just mentioning "port@0", without the #address-cells/
>> #size-cells, would be plain wrong.
>>
>> Regards
>> Aradhya
>>
>>>
>>>> If there were only a "port@1" child node, this warning would not have
>>>> come up, and I believe "port@0" should be treated just the same.
>>>>
>>>> Moreover, while we can add these properties at a later stage as an
>>>> incremental patch, adding the size and address cells in the dtsi would
>>>> affect other platform dts files as well, that use this SoC.
>>>>
>>>> For e.g., the patch 5/5 of this series, on AM69-SK will still require
>>>> the size and address cells for its ports. The clean up then will be 
>>>> that
>>>> much more, when adding those incremental patches.
>>>>
>>>> Anyway, I will let Nishanth and Vignesh take the final call on this.
>>>>
>>>> Regards
>>>> Aradhya
>>>>
>>>>>
>>>>>>> +        dpi0_out: endpoint {
>>>>>>> +            remote-endpoint = <&dp0_in>;
>>>>>
>>>>>
>>>>> [...]
>>>>
>>

