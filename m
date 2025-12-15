Return-Path: <devicetree+bounces-246675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F5CBED7C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 049B7306D8EB
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898C73016F2;
	Mon, 15 Dec 2025 16:05:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E398A30BB87
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814747; cv=none; b=dvzWWKPPKChQeNe8tErs8iPpYOYoEtxEJBCP4aKPMz3zORdMrXMIeAnTJ+yCtZwpIotPfR9kWZLym025DE0MYey70cRG3vVAdMbzGqbA7UC23YvJi3jIImhNSbIyvQztbkwUqXNoEjQuU90qGvtRhKv+7C2JijkQMgdfOh4hziM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814747; c=relaxed/simple;
	bh=YriBMmJehbpUpTq+JrVyNgq+Nxl+B+4BJHCJyMUFNOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s5M8SlH2xY493Kdg8qYxRC806DTR23gSSwxxP0DduuBt46aDq7tkWMj9mO6XinWfI3fGf2yC69IthVIKIawWKY6Q/jN8ksNPzUIup5OMJ9z81REGMZO4EjsSZRDYaijJXz3USOEtthQhFMQcVYltUYB7EYtIm1POxpgyfOzlygQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vVB4T-0007R2-2Z; Mon, 15 Dec 2025 17:05:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vVB4R-005o3s-06;
	Mon, 15 Dec 2025 17:05:11 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vVB4Q-008ytb-2m;
	Mon, 15 Dec 2025 17:05:10 +0100
Date: Mon, 15 Dec 2025 17:05:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Liu Ying <victor.liu@nxp.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v7 1/3] dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC
 subnode to schema and example
Message-ID: <20251215160510.msuinr2dierrifit@pengutronix.de>
References: <20251202-v6-18-topic-imx93-parallel-display-v7-0-2cce31d64608@pengutronix.de>
 <20251202-v6-18-topic-imx93-parallel-display-v7-1-2cce31d64608@pengutronix.de>
 <20251208012826.GA340359-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208012826.GA340359-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-12-07, Rob Herring wrote:
> On Tue, Dec 02, 2025 at 02:32:58PM +0100, Marco Felsch wrote:
> > From: Liu Ying <victor.liu@nxp.com>
> > 
> > i.MX93 SoC mediamix blk-ctrl contains one DISPLAY_MUX register which
> > configures parallel display format by using the "PARALLEL_DISP_FORMAT"
> > field. Document the Parallel Display Format Configuration(PDFC) subnode
> > and add the subnode to example.
> > 
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > [m.felsch@pengutronix.de: port to v6.18-rc1]
> > [m.felsch@pengutronix.de: add bus-width]
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml | 92 ++++++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> > index 34aea58094e55365a2f9c86092f637e533f954ff..6e2d86d9341c75108b492bcbabc8a560d8e707cd 100644
> > --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> > @@ -26,6 +26,12 @@ properties:
> >    reg:
> >      maxItems: 1
> >  
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 1
> > +
> 
> And 'ranges' needed.

I dropped this due to the response from Krzysztof:

https://lore.kernel.org/linux-arm-kernel/c7129d8e-87de-444c-be52-b2eedf03585f@kernel.org/

Regards,
  Marco

> >    '#power-domain-cells':
> >      const: 1
> >  
> > @@ -40,6 +46,60 @@ properties:
> >      minItems: 8
> >      maxItems: 10
> >  
> > +  bridge@60:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        const: nxp,imx93-pdfc
> > +
> > +      reg:
> > +        maxItems: 1
> > +
> > +      ports:
> > +        $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +        properties:
> > +          port@0:
> > +            $ref: /schemas/graph.yaml#/properties/port
> > +            description: Input port node to receive pixel data.
> > +
> > +          port@1:
> > +            $ref: /schemas/graph.yaml#/$defs/port-base
> > +            unevaluatedProperties: false
> > +            description: Output port node to downstream pixel data receivers.
> > +
> > +            properties:
> > +              endpoint:
> > +                $ref: /schemas/graph.yaml#/$defs/endpoint-base
> > +                unevaluatedProperties: false
> > +
> > +                properties:
> > +                  bus-width:
> > +                    enum: [ 16, 18, 24 ]
> > +                    description:
> > +                      Specify the physical parallel bus width.
> > +
> > +                      This property is optional if the display bus-width
> > +                      matches the SoC bus-width, e.g. a 18-bit RGB666 (display)
> > +                      is connected and all 18-bit data lanes are muxed to the
> > +                      parallel-output pads.
> > +
> > +                      This property must be set to 18 to cut only the LSBs
> > +                      instead of the MSBs in case a 24-bit RGB888 display is
> > +                      connected and only the lower 18-bit data lanes are muxed
> > +                      to the parallel-output pads.
> > +
> > +        required:
> > +          - port@0
> > +          - port@1
> > +
> > +    required:
> > +      - compatible
> > +      - reg
> > +      - ports
> > +
> >  allOf:
> >    - if:
> >        properties:
> > @@ -81,9 +141,12 @@ allOf:
> >              - const: isi
> >              - const: csi
> >              - const: dsi
> > +
> >  required:
> >    - compatible
> >    - reg
> > +  - '#address-cells'
> > +  - '#size-cells'
> >    - power-domains
> >    - clocks
> >    - clock-names
> > @@ -112,4 +175,33 @@ examples:
> >                 clock-names = "apb", "axi", "nic", "disp", "cam",
> >                               "pxp", "lcdif", "isi", "csi", "dsi";
> >        #power-domain-cells = <1>;
> > +      #address-cells = <1>;
> > +      #size-cells = <1>;
> > +
> > +      bridge@60 {
> > +        compatible = "nxp,imx93-pdfc";
> > +        reg = <0x60 0x4>;
> > +
> > +        ports {
> > +          #address-cells = <1>;
> > +          #size-cells = <0>;
> > +
> > +          port@0 {
> > +            reg = <0>;
> > +
> > +            pdfc_from_lcdif: endpoint {
> > +              remote-endpoint = <&lcdif_to_pdfc>;
> > +            };
> > +          };
> > +
> > +          port@1 {
> > +            reg = <1>;
> > +
> > +            pdfc_to_panel: endpoint {
> > +              remote-endpoint = <&panel_from_pdfc>;
> > +              bus-width = <18>;
> > +            };
> > +          };
> > +        };
> > +      };
> >      };
> > 
> > -- 
> > 2.47.3
> > 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

