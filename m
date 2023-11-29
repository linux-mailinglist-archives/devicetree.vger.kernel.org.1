Return-Path: <devicetree+bounces-20095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 781387FDC04
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34B24282777
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805C31E4A5;
	Wed, 29 Nov 2023 15:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JJB7QAcf"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27476D48;
	Wed, 29 Nov 2023 07:55:10 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ATFsvti108962;
	Wed, 29 Nov 2023 09:54:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701273297;
	bh=pF7Q7rYfMAYM9nkdH3NW0Yfp7phHkz7ItrUaQJ/DETE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=JJB7QAcfeaz9MlF7NGlnGugmHCw2He40kxXNv7yxZW9/Q4l26/p2LNrnhrcburCsw
	 8FhtZj4T130my18BGM7C3psW7iY9BD5PxZ3R07Mv7mfAArBD1xpNKLoxp0YV5yMQyg
	 Y7oq5On+bsEUewpf+PJa9JdyTPQQI4ZxTRwKCLZE=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ATFsvE4092655
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 29 Nov 2023 09:54:57 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 29
 Nov 2023 09:54:57 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 29 Nov 2023 09:54:57 -0600
Received: from [10.249.36.40] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ATFsvPu019276;
	Wed, 29 Nov 2023 09:54:57 -0600
Message-ID: <83814027-12a1-4273-9d2d-400739bc3b64@ti.com>
Date: Wed, 29 Nov 2023 09:54:57 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: arm: keystone: add ti,j7200-sci
 compatible
Content-Language: en-US
To: Thomas Richard <thomas.richard@bootlin.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <thomas.petazzoni@bootlin.com>,
        <gregory.clement@bootlin.com>, <u-kumar1@ti.com>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11/29/23 9:31 AM, Thomas Richard wrote:
> On j7200, during suspend to ram the soc is powered-off.
> At resume requested irqs shall be restored which is a different behavior
> from other platforms.

Why is J7200 different? All K3 can/will support off mode suspend
to RAM. The only difference is you are adding support for it to this
one SoC first. You are describing a software behavior, not hardware.
Using a compatible to describe if a SW feature is enabled is not a
correct use of DT.

Andrew

> 
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>   Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> index c24ad0968f3e..53d9c58dcd70 100644
> --- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> +++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
> @@ -40,6 +40,8 @@ properties:
>         - description: System controller on TI AM654 SoC
>           items:
>             - const: ti,am654-sci
> +      - description: System controller on TI J7200 SOC
> +          - const: ti,j7200-sci
>   
>     reg-names:
>       description: |
> 

