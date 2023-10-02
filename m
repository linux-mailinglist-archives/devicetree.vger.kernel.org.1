Return-Path: <devicetree+bounces-5187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F18BE7B58AB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A5224282AB3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52CB1DDE4;
	Mon,  2 Oct 2023 17:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D0A1DDDB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:18:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3513C433C7;
	Mon,  2 Oct 2023 17:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696267084;
	bh=OIv6Z8b3JFbf9ue9YI6t7H0iEjI77VE2sqY9kqQb8fM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GgSqZCDpSyEhEbNklD+N0BU84zlb4ruPWqOpUn/WaSN9+577etivZfvzIS86JyYFi
	 BkOFnx6zHNyPQHzjqitPJA/HkVubQB9RF+CdrtjEGuv795DKK5fdfe7bxVv8Sh+NAa
	 9SRLY+vm5gfL/qCs4WNsxR+UM+E+9jan+P1XohZMLg6aLNb7yxpUv62bk6anirkZw1
	 6xbvwjmDdeFeyikQTX56xReDbkEuUjTewBMe3IsCy2CK4NoEDGT8EdTvRGbuMnJUvd
	 iT0CK8FWQ1Y0Jg5QJsd0mSR522Gd5lAQoU0eEZYHsPUvFuMh6pcIIp0cN9Am6WTV8v
	 lAGtM0vHwKU4A==
Received: (nullmailer pid 2033180 invoked by uid 1000);
	Mon, 02 Oct 2023 17:18:01 -0000
Date: Mon, 2 Oct 2023 12:18:01 -0500
From: Rob Herring <robh@kernel.org>
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: mchehab@kernel.org, heiko@sntech.de, ezequiel@vanguardiasur.com.ar, hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, paul.kocialkowski@bootlin.com, miquel.raynal@bootlin.com, maxime.chevallier@bootlin.com, luca.ceresoli@bootlin.com, thomas.petazzoni@bootlin.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Message-ID: <20231002171801.GA1942512-robh@kernel.org>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
 <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>

On Fri, Sep 29, 2023 at 12:08:00PM +0200, Mehdi Djait wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or
> RK1808, RK3128 and RK3288. The PX30 is the only platform
> supported so far.
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> ---
>  .../bindings/media/rockchip-vip.yaml          | 91 +++++++++++++++++++

filename should match compatible.

>  1 file changed, 91 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> new file mode 100644
> index 000000000000..33c603209c39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip VIP Camera Interface
> +
> +maintainers:
> +  - Mehdi Djait <mehdi.djait@bootlin.com>
> +
> +description: |-

Don't need '|-'.

> +  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288

Write complete sentences.



> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-vip

I see 4 SoCs listed, but only 1 compatible.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclk
> +      - const: pclk
> +
> +  resets:
> +    items:
> +      - description: AXI
> +      - description: AHB
> +      - description: PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: pclkin
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base

/schemas/graph.yaml#/properties/port

if there are no extra properties (such as defined in 
video-interfaces.yaml).

> +    description: A connection to a sensor or decoder
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/px30-cru.h>
> +    #include <dt-bindings/power/px30-power.h>
> +
> +    parent0: parent {

Drop unused labels.

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        vip: vip@ff490000 {
> +            compatible = "rockchip,px30-vip";
> +            reg = <0x0 0xff490000 0x0 0x200>;
> +            interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
> +            clock-names = "aclk", "hclk", "pclk";
> +            resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +            reset-names = "axi", "ahb", "pclkin";
> +            power-domains = <&power PX30_PD_VI>;
> +            port {
> +                vip_in: endpoint {
> +                    remote-endpoint = <&tw9900_out>;
> +                };
> +            };
> +        };
> +    };
> +...
> -- 
> 2.41.0
> 

