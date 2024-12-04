Return-Path: <devicetree+bounces-126834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DBB9E3541
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 09:28:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 066C728118F
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 08:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 060EB18E368;
	Wed,  4 Dec 2024 08:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="TAPD1f8F"
X-Original-To: devicetree@vger.kernel.org
Received: from ec2-44-216-146-169.compute-1.amazonaws.com (ec2-44-216-146-169.compute-1.amazonaws.com [44.216.146.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215AA192B84;
	Wed,  4 Dec 2024 08:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.216.146.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733300885; cv=none; b=oBCoRSci3JZWiUA964fIAQHRC+iAb6HcuLvuyOlSPrp4rQFyFm92CSUgCnlyI8BPUPAZPSNIhKSeQWh9p1YwGDPHh9VYzppErtDowzKT5wgU4N59w85kTex7bOoT8xPq2eoNOiuNz9J5a9uaWwCi0lM1dKgqtMeJ5b4jlzCdRrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733300885; c=relaxed/simple;
	bh=iiFxfL+bQqjAVxbGhBgCvmQIAaSje273zxKbjy/k1/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZnP3RDu90YUh/blZLQuLo2xjV+8XqcyJ11rGbXg2tjPzL7QDpnYcgobOWAoDtGsN71ZiMOTUGnn4y9TSePg4hs/F4o48u3JXiWC+kbuFUkMbXzvWBJpwl6XCpRUfGFb6OTcSBEOaRX2Ptg8vVOmH6L/E/2zp2JsI1YL5kDlGfo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=TAPD1f8F; arc=none smtp.client-ip=44.216.146.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ad26a51;
	Wed, 4 Dec 2024 16:22:40 +0800 (GMT+08:00)
Message-ID: <0f76db0b-3860-432e-a203-51ada754edd7@rock-chips.com>
Date: Wed, 4 Dec 2024 16:22:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: display: rockchip: Add schema for
 RK3588 DW DSI2 controller
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241203165450.1501219-3-heiko@sntech.de>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20241203165450.1501219-3-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJKGlZPQ05OTh1JGR5DSEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a9390c3a48509d6kunm4ad26a51
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MEk6HRw5GjIuMwkuEx8VMise
	AzoaCxRVSlVKTEhISEtLTk1JTE1LVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0tISTcG
DKIM-Signature:a=rsa-sha256;
	b=TAPD1f8FrzY6bmr10MqyHDoY5QJ80Wh6VhBXBw6Iig/0uuoRrXaXbst4bgNpUF/Q513M5PxDAwJMF04xHt/7EuHnvXgFjyNnqGA61iVaFJ9GAhdWhrQzZu2+7fxjTNeEizNHOCywYHueLz1GC+lOLiWMzWyP3UFSFpX+BaS7BBU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=q8GexcfsqDSq0Xf6Sj9VSbRCh6kFnCMa2Fvig5PVGyM=;
	h=date:mime-version:subject:message-id:from;

Hi Heiko,

On 12/4/24 00:54, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The Display Serial Interface 2 (DSI-2) is part of a group of communication
> protocols defined by the MIPI Alliance. The RK3588 implements this
> specification in its two MIPI DSI-2 Host Controllers that are based on a
> new Synopsis IP.

   Synopsys ?

> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>   .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   | 119 ++++++++++++++++++
>   1 file changed, 119 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
> new file mode 100644
> index 000000000000..7c017e927223
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
> @@ -0,0 +1,119 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip specific extensions to the Synopsys Designware MIPI DSI2
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3588-mipi-dsi2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: sys
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      This SoC uses GRF regs to switch between vopl/vopb.
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: dcphy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: apb
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Input node to receive pixel data.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: DSI output node to panel.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - rockchip,grf
> +  - phys
> +  - phy-names
> +  - ports
> +  - reg
> +
> +allOf:
> +  - $ref: /schemas/display/dsi-controller.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/rk3588-power.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      dsi@fde20000 {
> +        compatible = "rockchip,rk3588-mipi-dsi2";
> +        reg = <0x0 0xfde20000 0x0 0x10000>;
> +        interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH 0>;
> +        clocks = <&cru PCLK_DSIHOST0>, <&cru CLK_DSIHOST0>;
> +        clock-names = "pclk", "sys";
> +        resets = <&cru SRST_P_DSIHOST0>;
> +        reset-names = "apb";
> +        power-domains = <&power RK3588_PD_VOP>;
> +        phys = <&mipidcphy0>;
> +        phy-names = "dcphy";
> +        rockchip,grf = <&vop_grf>;
> +
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +          dsi0_in: port@0 {
> +            reg = <0>;
> +          };
> +
> +          dsi0_out: port@1 {
> +            reg = <1>;
> +          };
> +        };
> +      };
> +    };

