Return-Path: <devicetree+bounces-255050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D131D1F44A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B39933016F81
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56C528469A;
	Wed, 14 Jan 2026 13:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eiEXazXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4E327EFFA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768399156; cv=none; b=agaTvnnbkgf0LJWqc2lXdhaygYx1V/X1F8JxCdzWShPKyZti5uKGvwyU0mIU3QCaI7mKqojYxasrOk1W/7+U/ymof5uL6909lXjdBBw47P6W9xNwxndRc6kbvV/nqRQEI8+QKrzWjhCYimHTOpcNmbJ7s7/C3I7TyxZNbADVXME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768399156; c=relaxed/simple;
	bh=gYAs+GiUAFkMCDQrR3u5pdD4FSYPs2j0+wx/RwM8PKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IEP9tG+L5P0dsFAabTkHOjfLHFe/kOu8rwhMX5Y4UOxxLf0hk2vW5OgoEZKtSAqqEGdB0ZCufbN+IsoyU7Z6am81whxVE9kzJx6kcez0CR+PWruktZtUHEu9uO8eI7a8SZu509Z+7ZbVzAn1ycQyCJldKugCEqEBbr3LjnvUBlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eiEXazXp; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42fb03c3cf2so4818826f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768399151; x=1769003951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZjISU1Ys6kFELGuTaFOhYFGc8VZvMTxp6QPAynHRfdA=;
        b=eiEXazXp7arbFMwC5gBLX86tK5pqixxQzzePTHriABNoZKYNUCbfJf/vH0S7sf1KY5
         3eoA0lb0eXz1Nx/lFkBbTOb6CMi6lpKsbJXKBRd7k9zo3BCABMITEPHTNN2eQo1S1UH8
         geLlVEGxqIvK6Jo9x82IvS3miRxoVfmJdSad9xhudZNYe4RdEfWfW70TGVJg9E/dK2QQ
         s8NSDvJ2uqQL/qIfUlBCx7iB6DGZ6eGR3NMTKf34dpp8D7SlbRgx8Y05xOYSU2YfQZci
         CpOBqQuu3YDQR/NymYCHssv8KHPTCmU/CQTaFDCpmQRkVxU8CBiON6GaOHrs83F8Ep0o
         J+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768399151; x=1769003951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZjISU1Ys6kFELGuTaFOhYFGc8VZvMTxp6QPAynHRfdA=;
        b=vyMg4F5QPBI2A/M40qYtqYstw/5g3V5yNTcFxpStHVYXlUSojfQxaCw5OAJ4ACS/gl
         BWIikxf6XbWpxKFsOF74brQFsvwCyFvM2IOSfK34eCo/FC9157AeCrl7mHEw5U22SaEW
         z8hDNjD/6jBdZuoJSRYTtFhkggxHlnqXSUzu+RVLzu3yHwPa9PL/rUG7S0ro25NFDoK9
         /wt8ie1UCrRxFj7LfOQbJ1x7PaoNu2J/HvalDqnHVAje+T//PnrLWgPYIvkz/Frehmzd
         X/AOo9Dph4QZyCHhNigQXtzi40Ulj/AQmi/DgO6H6PCGfxpOy858c0k+Ltg+oR7ab1Kh
         kLuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXR5CyboMr3vSj0G9QmPTWn6bb9P9/pKOID22P4DlAoPrjpeSOCYFKH/B1WjwPsiPhhZ9w7hMAPgn4J@vger.kernel.org
X-Gm-Message-State: AOJu0YwTbQ6YxQgbIyxQcT4e4oozm3YYYcDQcp+WgvmH+j1443Z5pdLR
	2PNPEi2GgLqhWXz8MkeNItQIyd9JxAJ9LGMe4ua5nJNwB8PiMG8VcgJF
X-Gm-Gg: AY/fxX6dQ9NsRiWpkv0sN4omeNbIVDZGqWiqelqhMEDfJV9UbstoPD8b3fR5XDSujWX
	l8W3LA9bKwJXtbsctaZb+SqP0DpYOWXQDQIR8+M63XRQBiRTNzk8qnU0qYOVhZImvA83zuTRJsm
	0ebanPT1F8TNboxz/6JJAJx/uYEc1fsf7C+IrRHQ31aSqVlcboT6c+nGMRGphoD32CnD14Lh0og
	A0Y3epHr5d3SzlcnZn04+oQTJkL1FzQZAKST2biniGdh7tA8on83kUu5zlcWlW64A7wIujRT8KC
	L5dsEF6+xFOXuSQdJQgIltrxZ9XK4ldrLp6+PD7F8Qsn4nMNYBsjQFHu8e0P2B1Fyvbgq1VYCby
	8PwuyiYOJsQ/sb6mWmQ4UNidZCjQ8+fBxW+BXJAHRFtYfSXtLgCwpQVL6gIhsnfLmsEPMd33zXQ
	1aeq6JrpqNrHI=
X-Received: by 2002:a5d:50cf:0:b0:432:5b81:497 with SMTP id ffacd0b85a97d-4342c5746cbmr2792373f8f.58.1768399151177;
        Wed, 14 Jan 2026 05:59:11 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:7e78:ef69:9397:b410])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5edd51sm50337530f8f.29.2026.01.14.05.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 05:59:10 -0800 (PST)
Date: Wed, 14 Jan 2026 14:59:08 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: net: micrel: Convert to DT schema
Message-ID: <aWehLGtr1EhOx4mb@eichest-laptop>
References: <20260108125208.29940-1-eichest@gmail.com>
 <20260108125208.29940-2-eichest@gmail.com>
 <20260108184845.GA758009-robh@kernel.org>
 <aWC6e9N0rJt1JHsw@eichest-laptop>
 <20260113230548.GA392296-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113230548.GA392296-robh@kernel.org>

On Tue, Jan 13, 2026 at 05:05:48PM -0600, Rob Herring wrote:
> On Fri, Jan 09, 2026 at 09:21:15AM +0100, Stefan Eichenberger wrote:
> > On Thu, Jan 08, 2026 at 12:48:45PM -0600, Rob Herring wrote:
> > > On Thu, Jan 08, 2026 at 01:51:27PM +0100, Stefan Eichenberger wrote:
> > > > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > > > 
> > > > Convert the devicetree bindings for the Micrel PHYs and switches to DT
> > > > schema.
> > > > 
> > > > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > > > ---
> > > >  .../devicetree/bindings/net/micrel.txt        |  57 --------
> > > >  .../devicetree/bindings/net/micrel.yaml       | 133 ++++++++++++++++++
> > > >  2 files changed, 133 insertions(+), 57 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/net/micrel.txt b/Documentation/devicetree/bindings/net/micrel.txt
> > > > deleted file mode 100644
> > > > index 01622ce58112..000000000000
> > > > --- a/Documentation/devicetree/bindings/net/micrel.txt
> > > > +++ /dev/null
> > > > @@ -1,57 +0,0 @@
> > > > -Micrel PHY properties.
> > > > -
> > > > -These properties cover the base properties Micrel PHYs.
> > > > -
> > > > -Optional properties:
> > > > -
> > > > - - micrel,led-mode : LED mode value to set for PHYs with configurable LEDs.
> > > > -
> > > > -	Configure the LED mode with single value. The list of PHYs and the
> > > > -	bits that are currently supported:
> > > > -
> > > > -	KSZ8001: register 0x1e, bits 15..14
> > > > -	KSZ8041: register 0x1e, bits 15..14
> > > > -	KSZ8021: register 0x1f, bits 5..4
> > > > -	KSZ8031: register 0x1f, bits 5..4
> > > > -	KSZ8051: register 0x1f, bits 5..4
> > > > -	KSZ8081: register 0x1f, bits 5..4
> > > > -	KSZ8091: register 0x1f, bits 5..4
> > > > -	LAN8814: register EP5.0, bit 6
> > > > -
> > > > -	See the respective PHY datasheet for the mode values.
> > > > -
> > > > - - micrel,rmii-reference-clock-select-25-mhz: RMII Reference Clock Select
> > > > -						bit selects 25 MHz mode
> > > > -
> > > > -	Setting the RMII Reference Clock Select bit enables 25 MHz rather
> > > > -	than 50 MHz clock mode.
> > > > -
> > > > -	Note that this option is only needed for certain PHY revisions with a
> > > > -	non-standard, inverted function of this configuration bit.
> > > > -	Specifically, a clock reference ("rmii-ref" below) is always needed to
> > > > -	actually select a mode.
> > > > -
> > > > - - clocks, clock-names: contains clocks according to the common clock bindings.
> > > > -
> > > > -	supported clocks:
> > > > -	- KSZ8021, KSZ8031, KSZ8081, KSZ8091: "rmii-ref": The RMII reference
> > > > -	  input clock. Used to determine the XI input clock.
> > > > -
> > > > - - micrel,fiber-mode: If present the PHY is configured to operate in fiber mode
> > > > -
> > > > -	Some PHYs, such as the KSZ8041FTL variant, support fiber mode, enabled
> > > > -	by the FXEN boot strapping pin. It can't be determined from the PHY
> > > > -	registers whether the PHY is in fiber mode, so this boolean device tree
> > > > -	property can be used to describe it.
> > > > -
> > > > -	In fiber mode, auto-negotiation is disabled and the PHY can only work in
> > > > -	100base-fx (full and half duplex) modes.
> > > > -
> > > > - - coma-mode-gpios: If present the given gpio will be deasserted when the
> > > > -		    PHY is probed.
> > > > -
> > > > -	Some PHYs have a COMA mode input pin which puts the PHY into
> > > > -	isolate and power-down mode. On some boards this input is connected
> > > > -	to a GPIO of the SoC.
> > > > -
> > > > -	Supported on the LAN8814.
> > > > diff --git a/Documentation/devicetree/bindings/net/micrel.yaml b/Documentation/devicetree/bindings/net/micrel.yaml
> > > > new file mode 100644
> > > > index 000000000000..52d1b187e1d3
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/net/micrel.yaml
> > > > @@ -0,0 +1,133 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/net/micrel.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Micrel KSZ series PHYs and switches
> > > > +
> > > > +maintainers:
> > > > +  - Andrew Lunn <andrew@lunn.ch>
> > > > +  - Stefan Eichenberger <eichest@gmail.com>
> > > > +
> > > > +description:
> > > > +  The Micrel KSZ series contains different network phys and switches.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - ethernet-phy-id000e.7237  # KSZ8873MLL
> > > > +      - ethernet-phy-id0022.1430  # KSZ886X
> > > > +      - ethernet-phy-id0022.1435  # KSZ8863
> > > > +      - ethernet-phy-id0022.1510  # KSZ8041
> > > > +      - ethernet-phy-id0022.1537  # KSZ8041RNLI
> > > > +      - ethernet-phy-id0022.1550  # KSZ8051
> > > > +      - ethernet-phy-id0022.1555  # KSZ8021
> > > > +      - ethernet-phy-id0022.1556  # KSZ8031
> > > > +      - ethernet-phy-id0022.1560  # KSZ8081, KSZ8091
> > > > +      - ethernet-phy-id0022.1570  # KSZ8061
> > > > +      - ethernet-phy-id0022.161a  # KSZ8001
> > > > +      - ethernet-phy-id0022.1720  # KS8737
> > > > +
> > > > +  micrel,fiber-mode:
> > > > +    type: boolean
> > > > +    description: |
> > > > +      If present the PHY is configured to operate in fiber mode.
> > > > +
> > > > +      The KSZ8041FTL variant supports fiber mode, enabled by the FXEN
> > > > +      boot strapping pin. It can't be determined from the PHY registers
> > > > +      whether the PHY is in fiber mode, so this boolean device tree
> > > > +      property can be used to describe it.
> > > > +
> > > > +      In fiber mode, auto-negotiation is disabled and the PHY can only
> > > > +      work in 100base-fx (full and half duplex) modes.
> > > > +
> > > > +  micrel,led-mode:
> > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > +    description: |
> > > > +      LED mode value to set for PHYs with configurable LEDs.
> > > > +
> > > > +      Configure the LED mode with single value. The list of PHYs and the
> > > > +      bits that are currently supported:
> > > > +
> > > > +      KSZ8001: register 0x1e, bits 15..14
> > > > +      KSZ8041: register 0x1e, bits 15..14
> > > > +      KSZ8021: register 0x1f, bits 5..4
> > > > +      KSZ8031: register 0x1f, bits 5..4
> > > > +      KSZ8051: register 0x1f, bits 5..4
> > > > +      KSZ8081: register 0x1f, bits 5..4
> > > > +      KSZ8091: register 0x1f, bits 5..4
> > > > +
> > > > +      See the respective PHY datasheet for the mode values.
> > > > +    minimum: 0
> > > > +    maximum: 3
> > > > +
> > > > +allOf:
> > > > +  - $ref: ethernet-phy.yaml#
> > > > +  - if:
> > > > +      not:
> > > > +        properties:
> > > > +          compatible:
> > > > +            contains:
> > > > +              const: ethernet-phy-id0022.1510
> > > > +    then:
> > > > +      properties:
> > > > +        micrel,fiber-mode: false
> > > > +  - if:
> > > > +      not:
> > > > +        properties:
> > > > +          compatible:
> > > > +            contains:
> > > > +              enum:
> > > > +                - ethernet-phy-id0022.1510
> > > > +                - ethernet-phy-id0022.1555
> > > > +                - ethernet-phy-id0022.1556
> > > > +                - ethernet-phy-id0022.1550
> > > > +                - ethernet-phy-id0022.1560
> > > > +                - ethernet-phy-id0022.161a
> > > > +    then:
> > > > +      properties:
> > > > +        micrel,led-mode: false
> > > > +  - if:
> > > > +      properties:
> > > > +        compatible:
> > > > +          contains:
> > > > +            enum:
> > > > +              - ethernet-phy-id0022.1555
> > > > +              - ethernet-phy-id0022.1556
> > > > +              - ethernet-phy-id0022.1560
> > > > +    then:
> > > > +      properties:
> > > > +        clocks:
> > > > +          maxItems: 1
> > > 
> > > This has no effect because ethernet-phy.yaml already defines this.
> > 
> > Thanks for the info. That means I would only set the clock-names and
> > remove maxItems. I will fix that in the next version.
> > 
> > > > +        clock-names:
> > > > +          const: rmii-ref
> > > > +          description:
> > > > +            The RMII reference input clock. Used to determine the XI input
> > > > +            clock.
> > > > +        micrel,rmii-reference-clock-select-25-mhz:
> > > > +          type: boolean
> > > > +          description: |
> > > > +            RMII Reference Clock Select bit selects 25 MHz mode
> > > > +
> > > > +            Setting the RMII Reference Clock Select bit enables 25 MHz rather
> > > > +            than 50 MHz clock mode.
> > > 
> > > These should be defined at the top-level. Then use the if/then schema to 
> > > disallow the properties.
> > 
> > The problem with this approach is, that because it has clock in its
> > name, the DT schema valdiator will complain:
> > devicetree/bindings/net/micrel.yaml: properties:micrel,rmii-reference-clock-select-25-mhz: 'anyOf' conditional failed, one must be fixed:
> >         'maxItems' is a required property
> >                 hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
> >         'type' is not one of ['maxItems', 'description', 'deprecated']
> >                 hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
> >         Additional properties are not allowed ('type' was unexpected)
> >                 hint: Arrays must be described with a combination of minItems/maxItems/items
> >         'type' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
> >         hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
> >         from schema $id: http://devicetree.org/meta-schemas/cell.yaml
> > 
> > I couldn't find another way to define that Boolean type at top level. Is
> > there an option to make the validator happy?
> 
> Ah, because it collides with the standard -mhz unit suffix...
> 
> Using '$ref: /schemas/types.yaml#/definitions/flag' instead of 'type: 
> boolean' might happen to work. If not, just leave it as-is.

Thanks for the hin, unfortunately it will still complain about it:
Documentation/devicetree/bindings/net/micrel.yaml: properties:micrel,rmii-reference-clock-select-25-mhz: '$ref' should not be valid under {'const': '$ref'}
        hint: Standard unit suffix properties don't need a type $ref
        from schema $id: http://devicetree.org/meta-schemas/core.yaml

So I will leave it as-is for now and only remove the maxItems for clocks
in v3.

Regards,
Stefan

