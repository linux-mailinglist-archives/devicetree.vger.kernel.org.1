Return-Path: <devicetree+bounces-51292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C8987EC21
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 16:27:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65E74280F2A
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74444F88E;
	Mon, 18 Mar 2024 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Gj3Eqcni"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101404F5E6;
	Mon, 18 Mar 2024 15:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710775637; cv=none; b=QXICkWNPBZi6ZGQgaIeAbCF3E9niYFc68sUuAThC0FiTKHl/7Vvuian0isl0jz++TNJNJz6klIQU8eN1gRuVM4WyxQufSjMkAt4H8hQOwdqlnm2wPbgxma54f1CD9dL98mt+b9n9hVNH3Oi4Hlj1GB1CzhKI8WS8XcxLB6gSryw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710775637; c=relaxed/simple;
	bh=8x1tNzzp/u+SI8Kal4XZHseYtX/YOwbSpyoMtF/G+aY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ajMVg9BS/eTUG+Y4u2b6gpX1HTpuaRr3mQpzAqNkiAk2Y7eu6JB2ZAQ3VuMBMarm54TTGY9srK97v8bSvQL0gSShC+iZcjHRUOewbMNE15JRIwNad0yPvR9t2FhSXnFeGIY1DnxfYPFUiIwjvgJ8p+OaWkvNqMhFYev1SbKQxs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=Gj3Eqcni; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42ICqJaH004853;
	Mon, 18 Mar 2024 16:26:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=ioXYV7nSmic/A8DNcGqb4yQzdQ+evXpT4y9Sn9JtMKg=; b=Gj
	3EqcnitK2twB1KBM1r09Eorqna/sz3nqUkM+xf2ukpczWumVnvguCsfvfD3Bf/EB
	s4slSXOzHeHqK/K/e/iWTYycjpgNPoDZofRqRwFzLWxDAEJMps+pLBrS6gXxiN7Y
	KG06HC1pIt9oIvMzqJg6ta7RRtI/XcbRHNzWKWuXD4MO799ZR5h6NjPhXoSxeTKc
	IlMAlyxxos3cyYoJ8Xd+AFnImdpWxfSMoefNxfTlfKuFIOcWBOXMkFNXirqvR9Jk
	BsfFhy0sARruVC+HTf8/gk/6xn5BJMNo5bclWssahwec2dG9S7X4fL2qxVK0WiA1
	T/umamlj1mIDODpjKnkg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ww3n2g34y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Mar 2024 16:25:48 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id AD48940044;
	Mon, 18 Mar 2024 16:24:07 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 309D62656CF;
	Mon, 18 Mar 2024 16:23:02 +0100 (CET)
Received: from [10.201.22.9] (10.201.22.9) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 18 Mar
 2024 16:23:01 +0100
Message-ID: <abd6274c-d6c1-41de-b5a7-3ed3a1de162c@foss.st.com>
Date: Mon, 18 Mar 2024 16:22:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: display: add STM32 LVDS device
Content-Language: en-US
To: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Philippe Cornu
	<philippe.cornu@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Conor
 Dooley <conor.dooley@microchip.com>
References: <20240226-lvds-v6-0-15e3463fbe70@foss.st.com>
 <20240226-lvds-v6-1-15e3463fbe70@foss.st.com>
From: Yannick FERTRE <yannick.fertre@foss.st.com>
In-Reply-To: <20240226-lvds-v6-1-15e3463fbe70@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-18_12,2024-03-18_01,2023-05-22_02

Hi Raphael,

thanks for the patch.
Acked-by: Yannick Fertre <yannick.fertre@foss.st.com>

Best regards

On 2/26/24 11:48, Raphael Gallais-Pou wrote:
> Add "st,stm32mp25-lvds" compatible.
>
> Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Depends on: "dt-bindings: stm32: add clocks and reset binding for
> 	    stm32mp25 platform" by Gabriel Fernandez
>
> Changes in v6:
> 	- Added Conor's Reviewed-by
>
> Changes in v5:
> 	- Fixed path in MAINTAINERS
>
> Changes in v4:
> 	- Align filename to compatible
> 	- Fix compatible in the example
> 	- Remove redundant word in the subject
>
> Changes in v3:
> 	- Clarify commit dependency
> 	- Fix includes in the example
> 	- Fix YAML
> 	- Add "clock-cells" description
> 	- s/regroups/is composed of/
> 	- Changed compatible to show SoC specificity
>
> Changes in v2:
> 	- Switch compatible and clock-cells related areas
> 	- Remove faulty #include in the example.
> 	- Add entry in MAINTAINERS
> ---
>   .../bindings/display/st,stm32mp25-lvds.yaml        | 119 +++++++++++++++++++++
>   MAINTAINERS                                        |   1 +
>   2 files changed, 120 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml b/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
> new file mode 100644
> index 000000000000..6736f93256b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/st,stm32mp25-lvds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 LVDS Display Interface Transmitter
> +
> +maintainers:
> +  - Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> +  - Yannick Fertre <yannick.fertre@foss.st.com>
> +
> +description: |
> +  The STMicroelectronics STM32 LVDS Display Interface Transmitter handles the
> +  LVDS protocol: it maps the pixels received from the upstream Pixel-DMA (LTDC)
> +  onto the LVDS PHY.
> +
> +  It is composed of three sub blocks:
> +    - LVDS host: handles the LVDS protocol (FPD / OpenLDI) and maps its input
> +      pixels onto the data lanes of the PHY
> +    - LVDS PHY: parallelize the data and drives the LVDS data lanes
> +    - LVDS wrapper: handles top-level settings
> +
> +  The LVDS controller driver supports the following high-level features:
> +    - FDP-Link-I and OpenLDI (v0.95) protocols
> +    - Single-Link or Dual-Link operation
> +    - Single-Display or Double-Display (with the same content duplicated on both)
> +    - Flexible Bit-Mapping, including JEIDA and VESA
> +    - RGB888 or RGB666 output
> +    - Synchronous design, with one input pixel per clock cycle
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-lvds
> +
> +  "#clock-cells":
> +    const: 0
> +    description:
> +      Provides the internal LVDS PHY clock to the framework.
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: APB peripheral clock
> +      - description: Reference clock for the internal PLL
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ref
> +
> +  resets:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          LVDS input port node, connected to the LTDC RGB output port.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          LVDS output port node, connected to a panel or bridge input port.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    lvds: lvds@48060000 {
> +        compatible = "st,stm32mp25-lvds";
> +        reg = <0x48060000 0x2000>;
> +        #clock-cells = <0>;
> +        clocks = <&rcc CK_BUS_LVDS>, <&rcc CK_KER_LVDSPHY>;
> +        clock-names = "pclk", "ref";
> +        resets = <&rcc LVDS_R>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                lvds_in: endpoint {
> +                   remote-endpoint = <&ltdc_ep1_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +                lvds_out0: endpoint {
> +                   remote-endpoint = <&lvds_panel_in>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3527a2ece6cd..ff5c945f206e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7240,6 +7240,7 @@ L:	dri-devel@lists.freedesktop.org
>   S:	Maintained
>   T:	git git://anongit.freedesktop.org/drm/drm-misc
>   F:	Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
> +F:	Documentation/devicetree/bindings/display/st,stm32mp25-lvds.yaml
>   F:	drivers/gpu/drm/stm
>   
>   DRM DRIVERS FOR TI KEYSTONE
>

