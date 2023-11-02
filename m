Return-Path: <devicetree+bounces-13520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 537DF7DE9AA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 01:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DCA12812F2
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 00:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A87F373;
	Thu,  2 Nov 2023 00:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="rqahXrAH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BE2372
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 00:47:30 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D7B134;
	Wed,  1 Nov 2023 17:47:25 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 859651BAE;
	Thu,  2 Nov 2023 01:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698886024;
	bh=Z568URw5U1PLqZeH/B8bGigCX/Z/5PnBYbw2ZKBRIxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rqahXrAHAOELVV6hUjjtFl3S1tD+P1AF1BL47IG79nk4t45F+1pKOxbsqqbJmyl80
	 gY2Iy37YnInLKWCOJ7Jt8dUQ9qscNZSliFsAKzJ7q4+74Vr9D1NRWRbVdjQj1SIVt9
	 BdueRX7sgTeFP2HS2XbcGYgeKs7LedGWrG/o3Sc4=
Date: Thu, 2 Nov 2023 02:47:27 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Julien Stephan <jstephan@baylibre.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: media: Add bindings for THine
 THP7312 ISP
Message-ID: <20231102004727.GD14322@pendragon.ideasonboard.com>
References: <20231030133247.11243-1-laurent.pinchart@ideasonboard.com>
 <20231030133247.11243-2-laurent.pinchart@ideasonboard.com>
 <20231031170525.GA1728781-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231031170525.GA1728781-robh@kernel.org>

Hi Rob,

On Tue, Oct 31, 2023 at 12:05:25PM -0500, Rob Herring wrote:
> On Mon, Oct 30, 2023 at 03:32:45PM +0200, Laurent Pinchart wrote:
> > From: Paul Elder <paul.elder@ideasonboard.com>
> > 
> > The THP7312 is an external ISP from THine. Add DT bindings for it.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > Changes since v4:
> > 
> > - Add bus-type property
> > 
> > Changes since v2:
> > 
> > - Drop description of reg property
> > - Improve thine,boot-mode property documentation
> > - Making thine,boot-mode property optional
> > - Don't use underscores in supplies names
> > ---
> >  .../bindings/media/i2c/thine,thp7312.yaml     | 231 ++++++++++++++++++
> >  MAINTAINERS                                   |   7 +
> >  2 files changed, 238 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml b/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
> > new file mode 100644
> > index 000000000000..a576a8669644
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/thine,thp7312.yaml
> > @@ -0,0 +1,231 @@

[snip]

> > +  sensors:
> > +    type: object
> > +    description: List of connected sensors
> > +
> > +    properties:
> > +      "#address-cells":
> > +        const: 1
> > +
> > +      "#size-cells":
> > +        const: 0
> > +
> > +    patternProperties:
> > +      "^sensor@[01]":
> 
> Missing a '$' on the end.
> 
> > +        type: object
> > +        description:
> > +          Sensors connected to the first and second input, with one node per
> > +          sensor.
> > +
> > +        properties:
> > +          thine,model:
> > +            $ref: /schemas/types.yaml#/definitions/string
> > +            description:
> > +              Model of the connected sensors. Must be a valid compatible string.
> > +
> > +          reg:
> > +            maxItems: 1
> > +            description: THP7312 input port number
> 
> items:
>   - maximum: 1
> 
> > +
> > +          data-lanes:
> > +            $ref: /schemas/media/video-interfaces.yaml#/properties/data-lanes
> > +            items:
> > +              maxItems: 4
> > +            description:
> > +              This property is for lane reordering between the THP7312 and the imaging
> > +              sensor that it is connected to.
> > +
> > +        patternProperties:
> > +          ".*-supply":
> 
> "-supply$"
> 
> > +            description: Power supplies for the sensor
> 
> Perhaps some reasoning why any supply name is allowed here?

I've asked for more information about power supply sequencing, I have
hopes I will be able to simplify all this. If I can't I'll expand the
description. The idea is that the power supply names are specific to
each sensor. I can try to specify them with conditional rules if that's
preferred.

> > +
> > +        required:
> > +          - reg
> > +          - data-lanes
> > +
> > +        additionalProperties: false
> > +
> > +    required:
> > +      - "#address-cells"
> > +      - "#size-cells"
> > +
> > +    additionalProperties: false

[snip]

-- 
Regards,

Laurent Pinchart

