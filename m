Return-Path: <devicetree+bounces-253129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 773CDD07C46
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:21:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8172F30141C0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24753033ED;
	Fri,  9 Jan 2026 08:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IU/86URy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DCF303C97
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767946896; cv=none; b=Csnkq+BCtESgSEboalki7ViwuNvJp/HCvPyXcCSQVXcW1u88gLXJ4hEp4yyE2Oak+g/Motd7w1uymckHwRixU1Ej70sZ0uETtj2s9sQiqND6etO5h6CjHF6zMLWSN42vsw0WZlRSKqkh4NzMadnoKZi+yLKeDJgQVA9sh2co8Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767946896; c=relaxed/simple;
	bh=4+/JZMqsrTLvC6BTE/UnUz/uSOHAYm++AXfPzhoMcRo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZwMBMqljfspk5+2Yor+F94and+kOg+20wgAmtk6oG5WmPxLjXUQ7vkMrdLFKp40iSmuR/t0BusNQ3AObwhk0aFpdQHf8g83SZHq7WQ58ceupdrwI3tURxdW7FCpVyl7f1ZnXmF4eiq/7+JQZQDFm21nYjOszKTvbQpL6Ut++CGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IU/86URy; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fbad1fa90so3340290f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 00:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767946879; x=1768551679; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bAaqO1edMEpG8D22KcxmchMJQR+sscKFymxMmmUQ79s=;
        b=IU/86URyXl1llALlfqIV5Rw/8NenSqVOlnIzsDJ6m1k7KCUtEtWC3C5wchfHECiJv1
         3KKsGA/rI9ywqb5cX6cGDmVks/ukyWrVhoH/+m7gwxRlJYq7oUy/ZZQGM+x+HQ8NkovM
         wDbzOCSnuArPAvsIP91lfAdiQocbNCqPdPJywooCJKJj5lasjR7Wj4xWr5uaNS+5fudL
         uCpI42tbXn4vKY5EsgK9q+uBCqSIjNWljuE1BSZToZFhUpsEtMpcYNrYOoDKkg8ZM/iU
         eR11seF/UIe//6mW27VjQ8a8J54gDPZlg1BgQ9BSo/dZTwlj6C9wu9EaFoilIbomv8wZ
         v2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767946879; x=1768551679;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bAaqO1edMEpG8D22KcxmchMJQR+sscKFymxMmmUQ79s=;
        b=fC7jMvO+C9anY1MIU3DYwRaTt5NVMaxxtCgr2MBrVpg2qPGElUKQSpIkA8aRWGHUuU
         s/xWqmCRXOqaw+9fD+fWu77SicLIjEK5L+bVx/iNmw5QlYRSlumLomGuB8mGBr4ReW6b
         uDQDfU4IK4aht8ksW247GPr+q6nomsRN+EckaAZHmOsghQ12w8DrKuDUsCznSVvIaquP
         +cdF7R8xWjI2rpAoqB04ke9y8VuvZKOzXstY3rxqKGcqEBqzFx3TRWnWErOAolMMBcBK
         yJ8kQ7d/nnYGDMSljJw6KY0jMNnJRsBhCF3fV50K1YtDhZJNekRzlgrk5exEDl/De1au
         gPAg==
X-Forwarded-Encrypted: i=1; AJvYcCUjAqLH1LQjYxNGuXqLW2TD6Gwfn/B+GpdxPpQtHPs7IZXdva9HFpoNVV9/6cRwDxoRwrb9zaCrYen2@vger.kernel.org
X-Gm-Message-State: AOJu0YyJzaxXFIO4DXy/pZwZSiIXZMvhX0gbIp3g6cf5VzfuKEDaZSCN
	Vq0KKUDs5sSUqnbx0xjCxPy+N3VzHJZg43iUCduvDVt/BaWDwkeukmEU
X-Gm-Gg: AY/fxX5Z8LE8uzGVkciEP/sImQ1hTeVGJAUlzQ2Vnc3zxvIjHY36ZXYZYF5uCOMQ7qF
	y5rF27pPxKwqq3GoUSqahaJWnyPorxMpp17/njh2khGNTNBkA36z8NZ/iKNx4K6zmBDg2RtfSoo
	9cjKsolcIoPQJeQCGTombP04fmV7yGrvmDgS2eOtb7cZ/YKuAYazndi7ZH0IGrC1sqkrA7RObhv
	9RrlQJoMQgHZGLksLA492JlJGjqbXeNVJ4hqDedxPUSL98VvR63de0zrsq5l/DCfHgWKg0SMbbV
	D4Y4FuRshi3qiQGCoUr00c3oy0nvvwO4CC+lKOeMZgETTli97LoqSy8YtRKT1r8PTcYulwz/O1c
	qvOE0nlrJ9OyJp6u74qpLbYqtlHul04cw7J3P3J3sVxBbkiYkaASkBQgANX8j5w82Ztr5CADy+5
	DRCio748NSgw4=
X-Google-Smtp-Source: AGHT+IG9ya1IwVVkPrvQpXEW25miZ+F+tc85mHm67h5wQbXXz3z9xmfaPgBjvwnR9GqSZrgo1n09wg==
X-Received: by 2002:a5d:5d0e:0:b0:431:66a:cbc3 with SMTP id ffacd0b85a97d-432c378a081mr8988878f8f.6.1767946878227;
        Fri, 09 Jan 2026 00:21:18 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:66a2:be50:e0d3:29f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe83bsm21421414f8f.38.2026.01.09.00.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 00:21:17 -0800 (PST)
Date: Fri, 9 Jan 2026 09:21:15 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: net: micrel: Convert to DT schema
Message-ID: <aWC6e9N0rJt1JHsw@eichest-laptop>
References: <20260108125208.29940-1-eichest@gmail.com>
 <20260108125208.29940-2-eichest@gmail.com>
 <20260108184845.GA758009-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108184845.GA758009-robh@kernel.org>

On Thu, Jan 08, 2026 at 12:48:45PM -0600, Rob Herring wrote:
> On Thu, Jan 08, 2026 at 01:51:27PM +0100, Stefan Eichenberger wrote:
> > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > 
> > Convert the devicetree bindings for the Micrel PHYs and switches to DT
> > schema.
> > 
> > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > ---
> >  .../devicetree/bindings/net/micrel.txt        |  57 --------
> >  .../devicetree/bindings/net/micrel.yaml       | 133 ++++++++++++++++++
> >  2 files changed, 133 insertions(+), 57 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
> >  create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/net/micrel.txt b/Documentation/devicetree/bindings/net/micrel.txt
> > deleted file mode 100644
> > index 01622ce58112..000000000000
> > --- a/Documentation/devicetree/bindings/net/micrel.txt
> > +++ /dev/null
> > @@ -1,57 +0,0 @@
> > -Micrel PHY properties.
> > -
> > -These properties cover the base properties Micrel PHYs.
> > -
> > -Optional properties:
> > -
> > - - micrel,led-mode : LED mode value to set for PHYs with configurable LEDs.
> > -
> > -	Configure the LED mode with single value. The list of PHYs and the
> > -	bits that are currently supported:
> > -
> > -	KSZ8001: register 0x1e, bits 15..14
> > -	KSZ8041: register 0x1e, bits 15..14
> > -	KSZ8021: register 0x1f, bits 5..4
> > -	KSZ8031: register 0x1f, bits 5..4
> > -	KSZ8051: register 0x1f, bits 5..4
> > -	KSZ8081: register 0x1f, bits 5..4
> > -	KSZ8091: register 0x1f, bits 5..4
> > -	LAN8814: register EP5.0, bit 6
> > -
> > -	See the respective PHY datasheet for the mode values.
> > -
> > - - micrel,rmii-reference-clock-select-25-mhz: RMII Reference Clock Select
> > -						bit selects 25 MHz mode
> > -
> > -	Setting the RMII Reference Clock Select bit enables 25 MHz rather
> > -	than 50 MHz clock mode.
> > -
> > -	Note that this option is only needed for certain PHY revisions with a
> > -	non-standard, inverted function of this configuration bit.
> > -	Specifically, a clock reference ("rmii-ref" below) is always needed to
> > -	actually select a mode.
> > -
> > - - clocks, clock-names: contains clocks according to the common clock bindings.
> > -
> > -	supported clocks:
> > -	- KSZ8021, KSZ8031, KSZ8081, KSZ8091: "rmii-ref": The RMII reference
> > -	  input clock. Used to determine the XI input clock.
> > -
> > - - micrel,fiber-mode: If present the PHY is configured to operate in fiber mode
> > -
> > -	Some PHYs, such as the KSZ8041FTL variant, support fiber mode, enabled
> > -	by the FXEN boot strapping pin. It can't be determined from the PHY
> > -	registers whether the PHY is in fiber mode, so this boolean device tree
> > -	property can be used to describe it.
> > -
> > -	In fiber mode, auto-negotiation is disabled and the PHY can only work in
> > -	100base-fx (full and half duplex) modes.
> > -
> > - - coma-mode-gpios: If present the given gpio will be deasserted when the
> > -		    PHY is probed.
> > -
> > -	Some PHYs have a COMA mode input pin which puts the PHY into
> > -	isolate and power-down mode. On some boards this input is connected
> > -	to a GPIO of the SoC.
> > -
> > -	Supported on the LAN8814.
> > diff --git a/Documentation/devicetree/bindings/net/micrel.yaml b/Documentation/devicetree/bindings/net/micrel.yaml
> > new file mode 100644
> > index 000000000000..52d1b187e1d3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/micrel.yaml
> > @@ -0,0 +1,133 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/micrel.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Micrel KSZ series PHYs and switches
> > +
> > +maintainers:
> > +  - Andrew Lunn <andrew@lunn.ch>
> > +  - Stefan Eichenberger <eichest@gmail.com>
> > +
> > +description:
> > +  The Micrel KSZ series contains different network phys and switches.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ethernet-phy-id000e.7237  # KSZ8873MLL
> > +      - ethernet-phy-id0022.1430  # KSZ886X
> > +      - ethernet-phy-id0022.1435  # KSZ8863
> > +      - ethernet-phy-id0022.1510  # KSZ8041
> > +      - ethernet-phy-id0022.1537  # KSZ8041RNLI
> > +      - ethernet-phy-id0022.1550  # KSZ8051
> > +      - ethernet-phy-id0022.1555  # KSZ8021
> > +      - ethernet-phy-id0022.1556  # KSZ8031
> > +      - ethernet-phy-id0022.1560  # KSZ8081, KSZ8091
> > +      - ethernet-phy-id0022.1570  # KSZ8061
> > +      - ethernet-phy-id0022.161a  # KSZ8001
> > +      - ethernet-phy-id0022.1720  # KS8737
> > +
> > +  micrel,fiber-mode:
> > +    type: boolean
> > +    description: |
> > +      If present the PHY is configured to operate in fiber mode.
> > +
> > +      The KSZ8041FTL variant supports fiber mode, enabled by the FXEN
> > +      boot strapping pin. It can't be determined from the PHY registers
> > +      whether the PHY is in fiber mode, so this boolean device tree
> > +      property can be used to describe it.
> > +
> > +      In fiber mode, auto-negotiation is disabled and the PHY can only
> > +      work in 100base-fx (full and half duplex) modes.
> > +
> > +  micrel,led-mode:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      LED mode value to set for PHYs with configurable LEDs.
> > +
> > +      Configure the LED mode with single value. The list of PHYs and the
> > +      bits that are currently supported:
> > +
> > +      KSZ8001: register 0x1e, bits 15..14
> > +      KSZ8041: register 0x1e, bits 15..14
> > +      KSZ8021: register 0x1f, bits 5..4
> > +      KSZ8031: register 0x1f, bits 5..4
> > +      KSZ8051: register 0x1f, bits 5..4
> > +      KSZ8081: register 0x1f, bits 5..4
> > +      KSZ8091: register 0x1f, bits 5..4
> > +
> > +      See the respective PHY datasheet for the mode values.
> > +    minimum: 0
> > +    maximum: 3
> > +
> > +allOf:
> > +  - $ref: ethernet-phy.yaml#
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            contains:
> > +              const: ethernet-phy-id0022.1510
> > +    then:
> > +      properties:
> > +        micrel,fiber-mode: false
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            contains:
> > +              enum:
> > +                - ethernet-phy-id0022.1510
> > +                - ethernet-phy-id0022.1555
> > +                - ethernet-phy-id0022.1556
> > +                - ethernet-phy-id0022.1550
> > +                - ethernet-phy-id0022.1560
> > +                - ethernet-phy-id0022.161a
> > +    then:
> > +      properties:
> > +        micrel,led-mode: false
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - ethernet-phy-id0022.1555
> > +              - ethernet-phy-id0022.1556
> > +              - ethernet-phy-id0022.1560
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 1
> 
> This has no effect because ethernet-phy.yaml already defines this.

Thanks for the info. That means I would only set the clock-names and
remove maxItems. I will fix that in the next version.

> > +        clock-names:
> > +          const: rmii-ref
> > +          description:
> > +            The RMII reference input clock. Used to determine the XI input
> > +            clock.
> > +        micrel,rmii-reference-clock-select-25-mhz:
> > +          type: boolean
> > +          description: |
> > +            RMII Reference Clock Select bit selects 25 MHz mode
> > +
> > +            Setting the RMII Reference Clock Select bit enables 25 MHz rather
> > +            than 50 MHz clock mode.
> 
> These should be defined at the top-level. Then use the if/then schema to 
> disallow the properties.

The problem with this approach is, that because it has clock in its
name, the DT schema valdiator will complain:
devicetree/bindings/net/micrel.yaml: properties:micrel,rmii-reference-clock-select-25-mhz: 'anyOf' conditional failed, one must be fixed:
        'maxItems' is a required property
                hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
        'type' is not one of ['maxItems', 'description', 'deprecated']
                hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
        Additional properties are not allowed ('type' was unexpected)
                hint: Arrays must be described with a combination of minItems/maxItems/items
        'type' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
        hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
        from schema $id: http://devicetree.org/meta-schemas/cell.yaml

I couldn't find another way to define that Boolean type at top level. Is
there an option to make the validator happy?

Regards,
Stefan

