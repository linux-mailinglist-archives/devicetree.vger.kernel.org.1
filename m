Return-Path: <devicetree+bounces-97478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8C6962595
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 13:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 982271F22CF7
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C685E16CD37;
	Wed, 28 Aug 2024 11:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="kkaC6Eck"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2DF13D53D;
	Wed, 28 Aug 2024 11:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724843547; cv=none; b=mLsB1WYwgKaki+d60aeiCYChrx+SIIVF7jg+iLVo8qWmpQHl2S17UNUx2iV/Wcv1fNNC8ozsvVivDmYJ1MdlzBOsRqA5FkmuuHyhMevZxS8WctbB8D+z6sVJToIrOufdcARIDTBoBNUfLbmeg0H/OHbSn6BMPtYCwZFcTjetYI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724843547; c=relaxed/simple;
	bh=yI4wdnPN782th9cqbzNUH64Yv9wzqMJ6syLpCPjpHvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZOYByJOR0TCT/nPTy1ApYehGammB5J5AKeDO+JDZb2O4aZMYjG2fLzCDfnKBAP4Ge8AIdgf/TQqYYWuBNnXGzRF7pR8Z9RXpDXQf0WetuWo6fgGaqSLoDb07zqKaZ+HYrDV36B8QTxjtq0AAcikHIMFBiRO4pV0wWdWvsNo9zpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=kkaC6Eck; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 191D22C5;
	Wed, 28 Aug 2024 13:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1724843476;
	bh=yI4wdnPN782th9cqbzNUH64Yv9wzqMJ6syLpCPjpHvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kkaC6Eck6JxcGNfsGlpdt8GJj0aKH3HwirHm5fV3DbKLfTqfQV7dwZ1QrwahCmAZb
	 16ENu++cLc519Fjomc0vNB57DlN0HsqVNyud9UYbYbSgmEoD0VfM7fUQTwXvVyDaHU
	 8oQJH4Y+Xsh8pyjInuzkraPvBuefhR/cPzQhuJG4=
Date: Wed, 28 Aug 2024 14:12:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Naushir Patuck <naush@raspberrypi.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: media: Add bindings for
 raspberrypi,rp1-cfe
Message-ID: <20240828111153.GL30398@pendragon.ideasonboard.com>
References: <20240620-rp1-cfe-v2-0-b8b48fdba3b3@ideasonboard.com>
 <20240620-rp1-cfe-v2-2-b8b48fdba3b3@ideasonboard.com>
 <Zs8ErwJVTGYkHfJl@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zs8ErwJVTGYkHfJl@kekkonen.localdomain>

On Wed, Aug 28, 2024 at 11:06:23AM +0000, Sakari Ailus wrote:
> On Thu, Jun 20, 2024 at 02:07:51PM +0300, Tomi Valkeinen wrote:
> > Add DT bindings for raspberrypi,rp1-cfe.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> > ---
> >  .../bindings/media/raspberrypi,rp1-cfe.yaml        | 98 ++++++++++++++++++++++
> >  1 file changed, 98 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> > new file mode 100644
> > index 000000000000..851533de2305
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> > @@ -0,0 +1,98 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/raspberrypi,rp1-cfe.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Raspberry Pi PiSP Camera Front End
> > +
> > +maintainers:
> > +  - Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> > +  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
> > +
> > +description: |
> > +  The Raspberry Pi PiSP Camera Front End is a module in Raspberrypi 5's RP1 I/O
> > +  controller, that contains:
> > +  - MIPI D-PHY
> > +  - MIPI CSI-2 receiver
> > +  - Simple image processor (called PiSP Front End, or FE)
> > +
> > +  The FE documentation is available at:
> > +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> > +
> > +  The PHY and CSI-2 receiver part have no public documentation.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: raspberrypi,rp1-cfe
> > +
> > +  reg:
> > +    items:
> > +      - description: CSI-2 registers
> > +      - description: D-PHY registers
> > +      - description: MIPI CFG (a simple top-level mux) registers
> > +      - description: FE registers
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  port:
> > +    $ref: /schemas/graph.yaml#/$defs/port-base
> > +    additionalProperties: false
> > +    description: CSI-2 RX Port
> > +
> > +    properties:
> > +      endpoint:
> > +        $ref: video-interfaces.yaml#
> > +        unevaluatedProperties: false
> > +
> > +        properties:
> > +          data-lanes:
> > +            minItems: 1
> > +            maxItems: 4
> > +
> > +          clock-lanes:
> > +            maxItems: 1
> 
> minItems needs to be 1 as well.
> 
> Or... is this actually configurable in hardware?

Looking at the driver, lane reordering is not supported, so we could
drop this property. If the hardware is found to support it later, it can
easily be added back without any backward compatibility issue.

> > +
> > +        required:
> > +          - clock-lanes
> > +          - data-lanes
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    rp1 {
> > +      #address-cells = <2>;
> > +      #size-cells = <2>;
> > +
> > +      csi@110000 {
> > +        compatible = "raspberrypi,rp1-cfe";
> > +        reg = <0xc0 0x40110000 0x0 0x100>,
> > +              <0xc0 0x40114000 0x0 0x100>,
> > +              <0xc0 0x40120000 0x0 0x100>,
> > +              <0xc0 0x40124000 0x0 0x1000>;
> > +
> > +        interrupts = <42>;
> > +
> > +        clocks = <&rp1_clocks>;
> > +
> > +        port {
> > +          csi_ep: endpoint {
> > +            remote-endpoint = <&cam_endpoint>;
> > +            clock-lanes = <0>;
> > +            data-lanes = <1 2>;
> > +          };
> > +        };
> > +      };
> > +    };

-- 
Regards,

Laurent Pinchart

