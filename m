Return-Path: <devicetree+bounces-1892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 911F27A8C45
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 21:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C7C6281B30
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C093C6B3;
	Wed, 20 Sep 2023 19:07:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A01A59F
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 19:07:15 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83C1CC2
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:07:13 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 62AAC162B;
	Wed, 20 Sep 2023 21:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695236734;
	bh=nIN4ODLXTC3iWFw61+LrgOMSqFQkIHidww3vZ0ZCDTc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kpgCRJ0SZxeuyr/O2lu4M1N+cqBVErg/C3DKUEaFoDdAf/5DJiyg8DGqxolkpj4jo
	 s7ASeLJKBx1ulJViTA1Kod40HXk3WUmJ1XuvBkTR9h54HrwCl49kAGnRh+FMozMEdj
	 UoNTk/wX/w+QbOLkvLlYoSYWjb1w+veIdYO0weCA=
Date: Wed, 20 Sep 2023 22:07:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liu Ying <victor.liu@nxp.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Adam Ford <aford173@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, patchwork-lst@pengutronix.de,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, Sandor Yu <sandor.yu@nxp.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI PVI
Message-ID: <20230920190723.GA7723@pendragon.ideasonboard.com>
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230920171009.3193296-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Lucas,

Thank you for the patch.

On Wed, Sep 20, 2023 at 07:10:08PM +0200, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> new file mode 100644
> index 000000000000..12855bb3ed4c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pvi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI Parallel Video Interface
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +description: |
> +  The HDMI parallel video interface is a timing and sync generator block in the
> +  i.MX8MP SoC, that sits between the video source and the HDMI TX controller.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mp-hdmi-pvi
> +
> +  reg:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Input from the LCDIF controller.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output to the HDMI TX controller.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

The interrupts property is missing above. With this fixed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +  - power-domains
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/imx8mp-power.h>
> +
> +    display-bridge@32fc4000 {
> +        compatible = "fsl,imx8mp-hdmi-pvi";
> +        reg = <0x32fc4000 0x40>;
> +        interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
> +        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                pvi_from_lcdif3: endpoint {
> +                    remote-endpoint = <&lcdif3_to_pvi>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +                pvi_to_hdmi_tx: endpoint {
> +                    remote-endpoint = <&hdmi_tx_from_pvi>;
> +                };
> +            };
> +        };
> +    };

-- 
Regards,

Laurent Pinchart

