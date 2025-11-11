Return-Path: <devicetree+bounces-237315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 070E8C4F49D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 18:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DCD514E1F57
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 17:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26CF36C5A5;
	Tue, 11 Nov 2025 17:40:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D98B365A13
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 17:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882801; cv=none; b=sjRV6VNPthVYoSE7iB8nTfcUpnD4KAgqLC0kjbnwjTHFzq4/BFruYKjtT9bpRrVXfSOB3vn0hlTiTzPwenxjRZ5G9CGvxdVp956isN5OwiqvQNN9geiCvhMqizF2i5mweh40ErTHdkDR/jWSMVLswsywbnZE+ZAUnAS8wuh+IGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882801; c=relaxed/simple;
	bh=8rWFm5kx0uCTaC5/KSK33hm+h+JDdRob+P3tgSHU7xY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ISJCjLAHagSxVUUbF5a71DNjqOxLZ/8M6eKcHsGxZ1S+PKt66lMbUuEpGbnrykDLqbL7u6sq9kcopydXtYE+1Q8FB/uHeZgl3cAd24RBNWrVHPLMrVks7F4gJVaPNRpynEzzX/9dEcVIe3gywjQDUMioca7bOhfQ7aEK87qyrzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsLJ-0000lw-6q; Tue, 11 Nov 2025 18:39:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsLI-008EwL-05;
	Tue, 11 Nov 2025 18:39:44 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIsLH-00EYen-2z;
	Tue, 11 Nov 2025 18:39:43 +0100
Date: Tue, 11 Nov 2025 18:39:43 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 1/4] media: dt-bindings: adi,adv7180: add VPP and CSI
 register maps
Message-ID: <aRN039bNdqD8bySl@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
 <20251111-b4-adv7180-vpp-sub-device-v1-1-9877fe9f709b@pengutronix.de>
 <CAPY8ntAAbXq--N_=Lk-GeNMOt7Ucpm2zfkKOnvXB2bhY4i84zg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAPY8ntAAbXq--N_=Lk-GeNMOt7Ucpm2zfkKOnvXB2bhY4i84zg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Dave,

On Tue, 11 Nov 2025 16:02:26 +0000, Dave Stevenson wrote:
> On Tue, 11 Nov 2025 at 14:50, Michael Tretter <m.tretter@pengutronix.de> wrote:
> >
> > The ADV7280 and ADV7280-M have up to three register maps for the VPP and
> > CSI. The address of these register maps may be programmed via registers
> > in the main register map.
> 
> AIUI all the ADV728x devices have at least 2 addresses, signified by
> the ADV7180_FLAG_MIPI_CSI2 and ADV7180_FLAG_I2P flags in their
> adv7180_chip_info structures.
> Is there a reason that you've restricted this to just the two chips?

I only have an ADV7280-M for testing. Thus, I restricted it to the chip
that I could test and the variant that's the same except for the CSI.

> 
> adv7281 - CSI
> adv7281-m - CSI
> adv7281-ma - CSI
> adv7282 - VPP
> adv7282-m - VPP and CSI
> 
> The adv7180 and adv7182 families are the only two which only have the
> single I2C address.

Are you suggesting to extend the binding to be able to specify the
addresses for the CSI and VPP for any of these chips?

Michael

> 
> Thanks.
>   Dave
> 
> > Allow to specify the addresses of the VPP and CSI in the device tree to
> > solve address conflicts on a board level.
> >
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 44 ++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> > index dee8ce7cb7ba..4bbdc812442b 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> > +++ b/Documentation/devicetree/bindings/media/i2c/adi,adv7180.yaml
> > @@ -138,6 +138,31 @@ allOf:
> >        required:
> >          - ports
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - adi,adv7280
> > +              - adi,adv7280-m
> > +    then:
> > +      properties:
> > +        reg:
> > +          minItems: 1
> > +          maxItems: 3
> > +          description:
> > +            The ADV7280 and ADV7280-M have up to three register maps, which can be
> > +            accessed via the I2C port. The main register map, the VPP register map,
> > +            and the CSI register map. The main register map is mandatory. The other
> > +            register maps are optional and the default is used unless specified.
> > +
> > +        reg-names:
> > +          minItems: 1
> > +          items:
> > +            - const: main
> > +            - enum: [ csi, vpp ]
> > +            - enum: [ csi, vpp ]
> > +
> >  examples:
> >    - |
> >      i2c {
> > @@ -187,3 +212,22 @@ examples:
> >                      };
> >              };
> >      };
> > +
> > +  - |
> > +    i2c {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            composite-in@20 {
> > +                    compatible = "adi,adv7280-m";
> > +                    reg = <0x20>, <0x42>, <0x44>;
> > +                    reg-names = "main", "vpp", "csi";
> > +
> > +                    port {
> > +                            adv7280_out: endpoint {
> > +                                    bus-width = <8>;
> > +                                    remote-endpoint = <&vin1ep>;
> > +                            };
> > +                    };
> > +            };
> > +    };
> >
> > --
> > 2.47.3
> >
> >
> 

