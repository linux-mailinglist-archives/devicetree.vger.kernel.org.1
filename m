Return-Path: <devicetree+bounces-250109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2E7CE64EF
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4CC830142E1
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 09:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D740E27FD45;
	Mon, 29 Dec 2025 09:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IW2qyP2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE94626461F
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 09:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767001075; cv=none; b=ONTzEwYDs2iEZm4/kPwD7RHXLYtZ3n81erp0O989OGWJbrecHPUFnASPim6qfGiFH4nslNJCnVtDuzrsYhESePcjJpvUOdi+ZYmCBgGG8xYbgWV0NQsNzqB7VkCoFKM+S7LDgcRaH8P4EJfXs6AqS+B85/4MSSW9418t95pXGig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767001075; c=relaxed/simple;
	bh=ZeLo/0hLSY9n2UB+qZNYZtHxg817oGsq7GuA8/DYKC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bCS7sQB/7jisuwNN/nYvt+V6ih3aE8xIx6aVYt8BpDyzx44p37alMpQ2lFBMHwR5r2ApaX+Z8Q1DA2ozvqd/I6zWCc0CUABU2zLGInNcmqjAF/Ax2/7RzXcxPyTkanERjk8i9vR0PsbqqfHAWtDXmVGvb5vlogZVk+xlP0q0nKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IW2qyP2R; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-430f5ecaa08so3586547f8f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767001071; x=1767605871; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z7xTL0ht63Yvfquwj8JBduOSEbhvKNXqPm5yX4HgFIE=;
        b=IW2qyP2RROhHtFB5j871xFJ8DxCSys/pOvyOEQ4irsuIxVx+6hM5aFe2K1UDopxqiU
         GtM2wVx5ngIpkAWdwCbOJAO8DNjo/KO52ybzvELRKWFiST5t6ipkH9cM9i4kBqcOdq46
         A0G6qhh7vcn+a3b4DHyZ+UV3GmJGrDjQP4tUebYnn5cKPeoOU+H9bJ1n0UDVTqR2aKjB
         jSBqOz6oRkjbCcq3A9tQZVhh0QhVaFuUH3GIRUZ23yVhdRTrfoNBWD9iblRgMy3zOh7Q
         RXKe6sJ31lTFqArAM0QtEY4MYgn4LgZNO8fTPrm+lgFQyvFcajEzlvWXwJEdPpKBnTOr
         eQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767001071; x=1767605871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z7xTL0ht63Yvfquwj8JBduOSEbhvKNXqPm5yX4HgFIE=;
        b=k1FSpkgI6dJ2w7+wKuGj6CwQUk5WeVmZlgpGcvVoCHjIhWFOVJlGJ4s8BuUE7Eg0Wk
         CP0vX4KSat/bUtjSSCq/i6kj8VYJc8jWZHVFXRia0WWgTT/V/QnJ1Z/3NVOP8uXXtyls
         E/a8RlsTgMtVN3WwTWLODnazXSx6OhFqy5untd/cUfe7prZGaRhpmqvWyNuWcP5kJztQ
         pos0UVB38F05pLE7d7xovBwX7sOGd6WLQzIXjZayqwImQ2ua60TJjRueiPrhtBuUpxVq
         niZ6JMyPLGAO2jZQ1q5wjrRXNeeGrk4I2+ekjSD8g1v7xyyxeDCZiNP/gPy80nWoUIa5
         EUlA==
X-Forwarded-Encrypted: i=1; AJvYcCWrwEuDpYABs8grHho+OuWKfLSsPnhbchIvMP3m5jvV0aE+3PwUfqqB0GaMPETrvzEMjbrL38nn6ryA@vger.kernel.org
X-Gm-Message-State: AOJu0YxjzJB+QqVcVX9BDQrz1H1M7pmV/K+oo/iyLPKvMyz8yqUoTq5X
	ImoFh8QGJxq/6ko/ey3pEg7bKQHAiB6Iiv0OhX0h7QGJNF7eT+UAYYzH
X-Gm-Gg: AY/fxX6x3J3AM+HZeZTOpSEwInCLmA+S5OIosOjp+X1NcHi3fub975jYE2dvBvBgEis
	YnDOHBPNc/xMdVtJk3vcuqy+BOwY7Be3Gs89P+oFjcZpaDoHlqTT0Oa5xOtiw5+PwT9wuYOgI2P
	Y5fAAGc3+zPD1cEXfa45ELcNfBQaqRlsRkJsCu+ljOxkxs6KkdHvBOnhF7MLCN1hQoYpxo7XQsz
	5JgMhMmtCRPKOQZ7dC6QZUGxEwBuh4S6TP/ldEwsjTExtXlgncFzHiaYqsjxL2UpJofaav2ve+a
	D6RwEoF0oqz0t5QwZX3MxTQ5FgJxu33tCJ23xH5mw19623v8EfpPx7OZnfofn8XXpaRhTPQfRwX
	NnYwEN8ADOECK0xrMMm/SD+lsnym5qPj9rghKkteDwPIXe1urS5gbNonxoXs6clqifTvY8RmhuP
	QMnBImj/q8hAI=
X-Google-Smtp-Source: AGHT+IGPOUKX7q14yTgj2CVuuih5QA+xT8nKnXEoSheROymAO9OlKOilKdPI40ok2uMZOMYd5WRLqQ==
X-Received: by 2002:a05:600c:350b:b0:477:aed0:f403 with SMTP id 5b1f17b1804b1-47d19549a95mr305713395e9.8.1767001070934;
        Mon, 29 Dec 2025 01:37:50 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:305a:a3c6:f52d:de0f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1aee5sm62443610f8f.4.2025.12.29.01.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 01:37:50 -0800 (PST)
Date: Mon, 29 Dec 2025 10:37:49 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	horms@kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: net: micrel: Convert to DT schema
Message-ID: <aVJL7b_dG3JT5Pt1@eichest-laptop>
References: <20251223133446.22401-1-eichest@gmail.com>
 <20251223133446.22401-2-eichest@gmail.com>
 <20251228153609.GA2198936-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251228153609.GA2198936-robh@kernel.org>

On Sun, Dec 28, 2025 at 09:36:09AM -0600, Rob Herring wrote:
> On Tue, Dec 23, 2025 at 02:33:39PM +0100, Stefan Eichenberger wrote:
> > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > 
> > Convert the devicetree bindings for the Micrel PHYs and switches to DT
> > schema.
> > 
> > Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > ---
> >  .../devicetree/bindings/net/micrel.txt        |  57 --------
> >  .../devicetree/bindings/net/micrel.yaml       | 132 ++++++++++++++++++
> >  2 files changed, 132 insertions(+), 57 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/net/micrel.txt
> >  create mode 100644 Documentation/devicetree/bindings/net/micrel.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/net/micrel.txt b/Documentation/devicetree/bindings/net/micrel.txt
> > deleted file mode 100644
> > index 01622ce58112e..0000000000000
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
> > index 0000000000000..a8e532fbcb6f5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/micrel.yaml
> > @@ -0,0 +1,132 @@
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
> > +description: |
> 
> Don't need '|' if no formatting to preserve.
> 
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
> 
> blank line
> 
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
> 
> blank line
> 
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
> > +        clock-names:
> > +          const: rmii-ref
> > +          description: |
> > +            supported clocks:
> 
> Drop this line.
> 
> > +              - The RMII reference input clock. Used to determine the XI
> > +                input clock.
> > +        micrel,rmii-reference-clock-select-25-mhz:
> > +          type: boolean
> > +          description: |
> > +            RMII Reference Clock Select bit selects 25 MHz mode
> > +
> > +            Setting the RMII Reference Clock Select bit enables 25 MHz rather
> > +            than 50 MHz clock mode.
> > +
> > +dependentRequired:
> > +  micrel,rmii-reference-clock-select-25-mhz: [ clock-names ]
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    ethernet {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ethernet-phy@5 {
> > +            compatible = "ethernet-phy-id0022.1510";
> > +            reg = <5>;
> > +            micrel,led-mode = <2>;
> > +            micrel,fiber-mode;
> > +        };
> > +    };

Thanks for the review, I will fix these points in the next version.

Regards,
Stefan

