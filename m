Return-Path: <devicetree+bounces-11445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5217D5CB5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:55:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE0D51C20B50
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F67E3B2A2;
	Tue, 24 Oct 2023 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YZ2w8E6g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AE339956
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:55:51 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D90BD170A;
	Tue, 24 Oct 2023 13:55:44 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39OKtOpR128045;
	Tue, 24 Oct 2023 15:55:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698180924;
	bh=YdsC+VFRvEfUM56FQgYznvXwnR2rOdnu72PbP3mIbbw=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=YZ2w8E6g10yzwkwiGBpj0/8BK2mc18+KRKe5ZaTSzpsFjUqKpwweHcpRgX+agqWAR
	 pVJkJL1lQZ4feijGAOF5tupT4s+6wIGy6Jwg2eh7oLR6ylBJrdxDcCdElRafH5Rh4u
	 XTZ/6NRZsprnn7afZLDfJMTt/TEGG9spCaK1+mSk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39OKtO6r072122
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 24 Oct 2023 15:55:24 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 24
 Oct 2023 15:55:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 24 Oct 2023 15:55:24 -0500
Received: from [10.250.38.120] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39OKtNUo002203;
	Tue, 24 Oct 2023 15:55:23 -0500
Message-ID: <41408db6-89f9-4e0b-b407-96c6c922e8a4@ti.com>
Date: Tue, 24 Oct 2023 15:55:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: watchdog: davinci-wdt: convert txt to
 yaml
To: Nik Bune <n2h9z4@gmail.com>, <wim@linux-watchdog.org>,
        <linux@roeck-us.net>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <skhan@linuxfoundation.org>, <m-karicheri2@ti.com>,
        <ivan.khoronzhuk@ti.com>
CC: <linux-watchdog@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20231024195839.49607-1-n2h9z4@gmail.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20231024195839.49607-1-n2h9z4@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10/24/23 2:58 PM, Nik Bune wrote:
> Convert txt file to yaml.
> Add maintainers list, based on the git history.
> Mark clock as required property, by reviewer's suggestion.
> 
> Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> ---
> 
> Changes in v2 (according to review comments):
> - Added clocks to the list of required properties.
> - Updated clocks property to have only maxItems without $ref and description.
> - Removed timeout-sec explicit definition, as it is defined in watchdog.yaml.
> - Updated maintainers list from the git history.
> 
> v1 patch: https://lore.kernel.org/all/20231021171323.113208-1-n2h9z4@gmail.com/
> 
>   .../bindings/watchdog/davinci-wdt.txt         | 24 ----------
>   .../bindings/watchdog/ti,davinci-wdt.yaml     | 47 +++++++++++++++++++
>   2 files changed, 47 insertions(+), 24 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
>   create mode 100644 Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt b/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
> deleted file mode 100644
> index aa10b8ec36e2..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/davinci-wdt.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
> -
> -Required properties:
> -- compatible : Should be "ti,davinci-wdt", "ti,keystone-wdt"
> -- reg : Should contain WDT registers location and length
> -
> -Optional properties:
> -- timeout-sec : Contains the watchdog timeout in seconds
> -- clocks : the clock feeding the watchdog timer.
> -	   Needed if platform uses clocks.
> -	   See clock-bindings.txt
> -
> -Documentation:
> -Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
> -Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a.pdf
> -
> -Examples:
> -
> -wdt: wdt@2320000 {
> -	compatible = "ti,davinci-wdt";
> -	reg = <0x02320000 0x80>;
> -	timeout-sec = <30>;
> -	clocks = <&clkwdtimer0>;
> -};
> diff --git a/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
> new file mode 100644
> index 000000000000..4747be98b7d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/ti,davinci-wdt.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/ti,davinci-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments DaVinci/Keystone Watchdog Timer (WDT) Controller
> +
> +description: |
> +  Documentation:
> +  Davinci DM646x - https://www.ti.com/lit/ug/spruer5b/spruer5b.pdf
> +  Keystone - https://www.ti.com/lit/ug/sprugv5a/sprugv5a
> +
> +maintainers:
> +  - Murali Karicheri <m-karicheri2@ti.com>
> +  - Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>

Neither of these folks will be available for this, you can use me if
you want an email that won't bounce for now.

> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,davinci-wdt
> +      - ti,keystone-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1

We also have some instances with an optional power-domains prop.

   power-domains:
     description: A phandle and PM domain specifier as defined by bindings of
       the power controller specified by phandle. See
       Documentation/devicetree/bindings/power/power-domain.yaml for details.

Andrew

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog@2320000 {
> +        compatible = "ti,davinci-wdt";
> +        reg = <0x02320000 0x80>;
> +        timeout-sec = <30>;
> +        clocks = <&clkwdtimer0>;
> +    };

