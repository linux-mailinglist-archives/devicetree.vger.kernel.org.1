Return-Path: <devicetree+bounces-4706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB107B381B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DF1A5283D87
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA303D983;
	Fri, 29 Sep 2023 16:48:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F115AF2
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:48:46 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F25D199
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:48:43 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id F27EE60003;
	Fri, 29 Sep 2023 16:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696006121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SyMS/5qoRAxmb7CrTM+yM7HBi388BYrsqn7VTrt5ppo=;
	b=T66uYhvYkIXQAOmAzHmZl2r02yXOHjqB9pMo+eTUk/a6EUEWjb4F/MRO4OHTYBoEC2myNS
	WBvYpKjqFcI6rXTNzmtLh7TcliTWMXDXnSl1kPAew0BIW6Gaq/KCe0uaQnyw/wwSzxZh7l
	lDpWWsucV0p1wWWFWeQ3q8QFb9Uka8u+qi8b6B5ArVnJYBYQPEl0aFsgR7lQgaDzmOsuNq
	AhHkpTmOyTyElZ/sKLIQYXlW685mFPinerMcqvsJjRnC9/Ehq6aAECchMXJTASB6Zwxzuq
	EIQxfjjk+kckagid/vi3YLiUFoiPUsD9qkLNrSfET1+Q7LjffRr3VhhZ0/+SlA==
Date: Fri, 29 Sep 2023 18:48:35 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI PVI
Message-ID: <20230929184835.1de69182@booty>
In-Reply-To: <20230928125536.1782715-1-l.stach@pengutronix.de>
References: <20230928125536.1782715-1-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Lucas,

On Thu, 28 Sep 2023 14:55:35 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> new file mode 100644
> index 000000000000..df29006b4090
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> @@ -0,0 +1,83 @@
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
> +  interrupts:
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

Sure it is required? In the imx8mp.dtsi I have, which comes for a patch
you sent previously, there is no 'interrupts' property, and HDMI works.

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

The device has up to register 0x40, thus I guess the second value should
be 0x44 here. Or maybe 0x100, just to be comfortable. :)

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

