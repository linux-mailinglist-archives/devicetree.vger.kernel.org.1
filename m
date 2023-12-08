Return-Path: <devicetree+bounces-22981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF82809CDA
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73ACD1F20FE9
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B355D308;
	Fri,  8 Dec 2023 07:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C3171731;
	Thu,  7 Dec 2023 23:03:58 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id CE80124E287;
	Fri,  8 Dec 2023 15:03:50 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 8 Dec
 2023 15:03:50 +0800
Received: from [192.168.125.88] (183.27.97.199) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 8 Dec
 2023 15:03:49 +0800
Message-ID: <0760972e-6f8a-4e7f-8dd9-57ba7f2787a1@starfivetech.com>
Date: Fri, 8 Dec 2023 15:00:37 +0800
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
 <7bba5723-97c2-4301-9864-353d8bfda752@linaro.org>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <7bba5723-97c2-4301-9864-353d8bfda752@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag



On 2023/11/27 20:23, Krzysztof Kozlowski wrote:
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
> BTW, one more thing, I really doubt that starfive created "cdns" block.
> "cdns" is vendor prefix. Use SoCs-specific compatibles.
> 

The StarFive SoC contains cdns dsi ip inside. It did not create cdns block. Sorry about that.
It will be fixed by using SoCs-specific compatibles.
thanks

> Best regards,
> Krzysztof
> 

