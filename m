Return-Path: <devicetree+bounces-22980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21465809CA5
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DD1B281A4E
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 06:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7765748D;
	Fri,  8 Dec 2023 06:58:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44A981718;
	Thu,  7 Dec 2023 22:58:13 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id C6C2817F11;
	Fri,  8 Dec 2023 14:58:05 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 8 Dec
 2023 14:58:05 +0800
Received: from [192.168.125.88] (183.27.97.199) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 8 Dec
 2023 14:58:04 +0800
Message-ID: <1242f790-7d4f-488a-9046-2b7e361e2da8@starfivetech.com>
Date: Fri, 8 Dec 2023 14:54:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: display: bridge: cdns: Add properties
 to support StarFive JH7110 SoC
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	<devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
	<mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<tomi.valkeinen@ideasonboard.com>, <r-ravikumar@ti.com>,
	<rdunlap@infradead.org>, <u.kleine-koenig@pengutronix.de>,
	<bbrezillon@kernel.org>, <changhuang.liang@starfivetech.com>,
	<keith.zhao@starfivetech.com>, <jack.zhu@starfivetech.com>,
	<linux-kernel@vger.kernel.org>
References: <20231127113436.57361-1-shengyang.chen@starfivetech.com>
 <20231127113436.57361-2-shengyang.chen@starfivetech.com>
 <a1c651a3-31ed-4ee0-a7bf-a9f5e107bd33@linaro.org>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <a1c651a3-31ed-4ee0-a7bf-a9f5e107bd33@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

Hi,Krzysztof

Thanks for review and comment.

On 2023/11/27 20:22, Krzysztof Kozlowski wrote:
> On 27/11/2023 12:34, Shengyang Chen wrote:
>> From: Keith Zhao <keith.zhao@starfivetech.com>
>> 
>> Add properties in CDNS DSI yaml file to match with
>> CDNS DSI module in StarFive JH7110 SoC.
>> 
>> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
>> ---
>>  .../bindings/display/bridge/cdns,dsi.yaml     | 38 ++++++++++++++++++-
>>  1 file changed, 36 insertions(+), 2 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
>> index 23060324d16e..3f02ee383aad 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,dsi.yaml
>> @@ -17,6 +17,7 @@ properties:
>>      enum:
>>        - cdns,dsi
>>        - ti,j721e-dsi
>> +      - starfive,cdns-dsi
> 
> Keep alphabetical order.
> 

ok, will keep it order

>>  
>>    reg:
>>      minItems: 1
>> @@ -27,14 +28,20 @@ properties:
>>            Register block for wrapper settings registers in case of TI J7 SoCs.
>>  
>>    clocks:
>> +    minItems: 2
>>      items:
>>        - description: PSM clock, used by the IP
>>        - description: sys clock, used by the IP
>> +      - description: apb clock, used by the IP
>> +      - description: txesc clock, used by the IP
>>  
>>    clock-names:
>> +    minItems: 2
>>      items:
>>        - const: dsi_p_clk
>>        - const: dsi_sys_clk
>> +      - const: apb
>> +      - const: txesc
>>  
>>    phys:
>>      maxItems: 1
>> @@ -46,10 +53,21 @@ properties:
>>      maxItems: 1
>>  
>>    resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    items:
>> +      - description: dsi sys reset line
>> +      - description: dsi dpi reset line
>> +      - description: dsi apb reset line
>> +      - description: dsi txesc reset line
>> +      - description: dsi txbytehs reset line
>>  
>>    reset-names:
>> -    const: dsi_p_rst
>> +    items:
>> +      - const: dsi_p_rst
>> +      - const: dsi_dpi
>> +      - const: dsi_apb
>> +      - const: dsi_txesc
>> +      - const: dsi_txbytehs
>>  
>>    ports:
>>      $ref: /schemas/graph.yaml#/properties/ports
>> @@ -90,6 +108,22 @@ allOf:
>>          reg:
>>            maxItems: 1
>>  
> 
> You need to restrict other variants, because you just relaxed several
> properties for everyone...
> 
> 

ok, will fix it

> Best regards,
> Krzysztof
> 

thanks.

Best Regards,
Shengyang

