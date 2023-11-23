Return-Path: <devicetree+bounces-18169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B590A7F58A9
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 07:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F6FD2816B4
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 06:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59DE125DA;
	Thu, 23 Nov 2023 06:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2C2CB;
	Wed, 22 Nov 2023 22:56:55 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id D8AAF8082;
	Thu, 23 Nov 2023 14:56:46 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 23 Nov
 2023 14:56:46 +0800
Received: from [192.168.125.70] (183.27.97.46) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 23 Nov
 2023 14:56:45 +0800
Message-ID: <c2d818fd-9dad-4beb-82a5-caf30f146bb5@starfivetech.com>
Date: Thu, 23 Nov 2023 14:53:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<minda.chen@starfivetech.com>, <changhuang.liang@starfivetech.com>,
	<rogerq@kernel.org>, <geert+renesas@glider.be>,
	<keith.zhao@starfivetech.com>, <linux-kernel@vger.kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-2-shengyang.chen@starfivetech.com>
 <20231119160938.GA269430-robh@kernel.org>
From: Shengyang Chen <shengyang.chen@starfivetech.com>
In-Reply-To: <20231119160938.GA269430-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

Dear Rob,

Thank you for your review and comment

On 2023/11/20 0:09, Rob Herring wrote:
> On Fri, Nov 17, 2023 at 09:04:20PM +0800, Shengyang Chen wrote:
>> StarFive SoCs like the jh7110 use a MIPI D-PHY TX
>> controller based on a M31 IP. Add a binding for it.
>> 
>> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
>> ---
>>  .../bindings/phy/starfive,jh7110-dphy-tx.yaml | 74 +++++++++++++++++++
>>  1 file changed, 74 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> new file mode 100644
>> index 000000000000..850fe2e61d1d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
>> @@ -0,0 +1,74 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-tx.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Starfive SoC MIPI D-PHY Tx Controller
>> +
>> +maintainers:
>> +  - Keith Zhao <keith.zhao@starfivetech.com>
>> +  - Shengyang Chen <shengyang.chen@starfivetech.com>
>> +
>> +description:
>> +  The Starfive SoC uses the MIPI DSI D-PHY based on M31 IP to transfer
>> +  DSI data.
>> +
>> +properties:
>> +  compatible:
>> +    const: starfive,jh7110-dphy-tx
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dphy_txesc
> 
> Module name is redundant. Drop 'dphy_'.
> 

OK, will drop "dphy_".

>> +
>> +  resets:
>> +    items:
>> +      - description: DSITX_TXBYTEHS reset
>> +      - description: MIPITX_DPHY_SYS reset
>> +      - description: MIPITX_DPHY_TXBYTEHS reset
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dsi_txbytehs
>> +      - const: dphy_sys
>> +      - const: dphy_txbytehs
> 
> Drop 'dphy_'.
> 

OK, will drop "dphy_".

> Is 'dsi_txbytehs' really a part of the DPHY block? Sounds like it is 
> part of the DSI block. If so, the reset belongs there. If the phy driver 
> needs it, then it needs to go find the DSI block and get its reset.
> 

"dsi_txbytehs" is a reset of DSI block, it will be put back to DSI block and remove from DPHY block.

>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - power-domains
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    phy@295e0000 {
>> +      compatible = "starfive,jh7110-dphy-tx";
>> +      reg = <0x295e0000 0x10000>;
>> +      clocks = <&voutcrg 14>;
>> +      clock-names = "dphy_txesc";
>> +      resets = <&syscrg 7>,
>> +               <&syscrg 10>,
>> +               <&syscrg 11>;
>> +      reset-names = "dsi_txbytehs", "dphy_sys", "dphy_txbytehs";
>> +      power-domains = <&aon_syscon 0>;
>> +      #phy-cells = <0>;
>> +    };
>> -- 
>> 2.17.1
>> 

thanks a lot.

Best Regards,
Shengyang

