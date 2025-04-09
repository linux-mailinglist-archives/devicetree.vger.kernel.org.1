Return-Path: <devicetree+bounces-164698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BCAA81FA2
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA87C16F9A1
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC3225C70A;
	Wed,  9 Apr 2025 08:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jWwA6Giw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E54C25C6E1
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744186870; cv=none; b=iuznScNWdTOoGeUeR5UYjpYxdRcSMAnokvFQ5z3VelW/mGBTO/KrQEUAHyJEr7MW2/tROHBHcKzL6nQZlNoK2zXCPSLfaTZIIC1wOSgWQb5tw9luy+MH8V9jW6nhCOW3cngKhK5+MKsWs3SwCX8FasXbvvArQek7B7hyIke9Bdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744186870; c=relaxed/simple;
	bh=lY346YN8/ftAPxrjMWKe1kO4XAMA9tNWSlODmFWWgJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZgiExFW24nfJUNH7bQv9Ox+ckSn4NKfwTFddKSoEXaFncjrOvrcFFxvcARdJE9ksu9gjk4fFNWGKNTgVhQY2gVL9WAFx7YHjccg/t26WJOcKfwM8zTpOVgv97xn044Yjt9kk9jeJUdH16wuJtQvqkVPmjcN4LYURsXSoj+KDQh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jWwA6Giw; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2ff64550991so5103982a91.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744186867; x=1744791667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0BN9L1ivl4Owb8rDJmuxjb5tZrPmIZbv9Fx4W2U4h1Q=;
        b=jWwA6GiwwhD/VqTpXbprDmpbEn+7Au1UWXbKujmNr/lsdeVMtXYk6FDj6m6Xuhvq8N
         FVm3l9fiJa+1Q5kE9MVhACWz2HP3DNpUeoePB+BN/Gb5VmYxYmW488nHmt0SiupjsPSm
         KHfCAuSWKY1urbRTp3rjlfjhMzXcHXjqbEpx8m6bi78Y8Zw13eJGTsanHp72dm4yt+SV
         HW9MtXB+yMJDUvtYmuI7XyeuswK+2olEYMu1D582M3dsm4gDAW7scrkZJDsFqFQHfAKD
         dijYFuKIBKGfR0KJrgBjNTVvNKZDpmtn/glUt4OUgvwA3cTVnUCGxfVQ6Vaprmoo5R1s
         hJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744186867; x=1744791667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0BN9L1ivl4Owb8rDJmuxjb5tZrPmIZbv9Fx4W2U4h1Q=;
        b=tub2AtrDq2yHv2nSiRI2CN1H7MJqraNGEP7j3MiaZeYrBGhputcaNHsVwmxhjnCY2x
         5+Ef485TGhf1/e52bnG3A2eduN6YH0wLHqznXss7UGukSf89f9bgmo3N/8cK+0E0+MHC
         ogvsqiqmim7lnGwldkHNal2SYyvpKJ/DKhQCeXl5mBYGHRVMXaoRZU+jIkNYcKCS0ouA
         UWoZOckSmYgozUB2hdqjxPk90M9qkymLBbCIR3M/BpjE5oWbecYQvCmA8S+KE4SlhY0D
         +nf/sfRJFJhmhXZNpiNpqIJKK9GMPunQoKnwShlRYKCEBCK68REHSgfthvsDhmH883xZ
         ywjA==
X-Forwarded-Encrypted: i=1; AJvYcCUNwbSytzWcNJnDMrMERqvLTNhcnrNqcFhv7OXiRWzMsUACwqxMmYFBjyeiWjw7+SXLTouRkQJ+OqzJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzdSMJ3vmSyZx+Po1uhVWjEN/gqmjWD6PqSCTTZEy6LwB5kF+gB
	UtYbCtVEUKAttPZjbEnO+rcu+1ZbEIi/b3gf+vX210/19C43fFQzpf1Na2/ED0U=
X-Gm-Gg: ASbGncsb5ocfdNvUB1pllFySWwn91bNo5yv50XmXOm45cFq1A39m8MWiDS4uqSsK0sl
	Ok1IF80QjUc3Cv1le955rmGO4oqJ2G0VGflv0uniu7P9r629ARsMxVBcD+CkI1P+3uAxZzSlzuT
	J4lyjj/j/C6oiFBGkynPYH6XNYd4JH4nijXGl/Baw06Gt13jX/UNWmNYc2ny+SHd8QOkZ1jbaIs
	kcj/V1IWesmVGiMPSv0BMP+7aFIgiFPRXHwWbGKjwEG3oSYjDk9LYqi8klDhQu+H9gT5DMyM3lA
	LNL5KJ+BWhChgdRHOQV7wru4zaEvooZ8DsTVfVZ7o3KpVi1BJRPL5zY2xqb6PMsNgQOWrKMTWwv
	qh2FzfPynCPo=
X-Google-Smtp-Source: AGHT+IH95FvxGLeZVX0cNOnex4XGDZkBHnNj8B1Hd4xGfIr80ro2XgEYcvOXA0ELIPCYqKdN/9ZcFQ==
X-Received: by 2002:a17:90b:5488:b0:2fa:15ab:4dff with SMTP id 98e67ed59e1d1-306dbc3ac90mr2982470a91.31.1744186867486;
        Wed, 09 Apr 2025 01:21:07 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-306dd185acasm943943a91.48.2025.04.09.01.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:21:06 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:21:03 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/Yt75wCl5rl8JKP@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-2-sbellary@baylibre.com>
 <20250404151902.GA1400262-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404151902.GA1400262-robh@kernel.org>

On Fri, Apr 04, 2025 at 10:19:02AM -0500, Rob Herring wrote:
> On Thu, Apr 03, 2025 at 06:44:57PM -0700, Sukrut Bellary wrote:
> > Covert TI autoidle clock txt binding to yaml.
> 
> Convert
> 
> 2 patches in the series have the exact same subject. Really, nothing in 
> all of the git history should ever repeat a subject. After all, you 
> can't make the same change twice.

Thanks for the review.
I will fix this.

> > 
> > AutoIdle clock is not an individual clock; it is always a
> > derivate of some basic clock like a gate, divider, or fixed-factor.
> > This binding will be referred in ti,divider-clock.yaml, and
> > ti,fixed-factor-clock.yaml.
> > 
> > As all clocks don't support the autoidle feature e.g.,
> > in DRA77xx/AM57xx[1], dpll_abe_x2* and dpll_per_x2 don't have
> > autoidle, remove required properties from the binding.
> > Clean up the example to meet the current standards.
> > 
> > Add the creator of the original binding as a maintainer.
> > 
> > [1] https://www.ti.com/lit/ug/spruhz6l/spruhz6l.pdf
> > 
> > Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
> > ---
> >  .../devicetree/bindings/clock/ti/autoidle.txt | 37 --------------
> >  .../bindings/clock/ti/ti,autoidle.yaml        | 49 +++++++++++++++++++
> >  2 files changed, 49 insertions(+), 37 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/clock/ti/autoidle.txt
> >  create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/ti/autoidle.txt b/Documentation/devicetree/bindings/clock/ti/autoidle.txt
> > deleted file mode 100644
> > index 05645a10a9e3..000000000000
> > --- a/Documentation/devicetree/bindings/clock/ti/autoidle.txt
> > +++ /dev/null
> > @@ -1,37 +0,0 @@
> > -Binding for Texas Instruments autoidle clock.
> > -
> > -This binding uses the common clock binding[1]. It assumes a register mapped
> > -clock which can be put to idle automatically by hardware based on the usage
> > -and a configuration bit setting. Autoidle clock is never an individual
> > -clock, it is always a derivative of some basic clock like a gate, divider,
> > -or fixed-factor.
> > -
> > -[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> > -
> > -Required properties:
> > -- reg : offset for the register controlling the autoidle
> > -- ti,autoidle-shift : bit shift of the autoidle enable bit
> > -- ti,invert-autoidle-bit : autoidle is enabled by setting the bit to 0
> > -
> > -Examples:
> > -	dpll_core_m4_ck: dpll_core_m4_ck {
> > -		#clock-cells = <0>;
> > -		compatible = "ti,divider-clock";
> > -		clocks = <&dpll_core_x2_ck>;
> > -		ti,max-div = <31>;
> > -		ti,autoidle-shift = <8>;
> > -		reg = <0x2d38>;
> > -		ti,index-starts-at-one;
> > -		ti,invert-autoidle-bit;
> > -	};
> > -
> > -	dpll_usb_clkdcoldo_ck: dpll_usb_clkdcoldo_ck {
> > -		#clock-cells = <0>;
> > -		compatible = "ti,fixed-factor-clock";
> > -		clocks = <&dpll_usb_ck>;
> > -		ti,clock-div = <1>;
> > -		ti,autoidle-shift = <8>;
> > -		reg = <0x01b4>;
> > -		ti,clock-mult = <1>;
> > -		ti,invert-autoidle-bit;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml b/Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml
> > new file mode 100644
> > index 000000000000..c995dae65cd6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/ti/ti,autoidle.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/ti/ti,autoidle.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI autoidle clock
> > +
> > +maintainers:
> > +  - Tero Kristo <kristo@kernel.org>
> > +  - Sukrut Bellary <sbellary@baylibre.com>
> > +
> > +description: |
> 
> Don't need '|' if no formatting to preserve.
 
I will fix this.

> > +  In TI SoC, some of the clocks support autoidle feature.
> > +  It assumes a register mapped clock which can be put to idle automatically
> > +  by hardware based on the usage and a configuration bit setting.
> > +  Autoidle clock is never an individual clock, it is always a derivative
> > +  of some basic clock like a gate, divider or fixed-factor.
> 
> Is this 3 1 sentence paragraphs or 1 paragraph with odd line wrapping? 
> Blank line between paragraphs or re-wrap at 80 char. I prefer the latter 
> as 1 sentence paragraphs doesn't make much sense.

It's odd line wrapping.
I will fix this.

> > +
> > +properties:
> > +  reg:
> > +    maxItems: 1
> > +
> > +  ti,autoidle-shift:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      bit shift of the autoidle enable bit for the clock
> > +    maximum: 31
> > +    default: 0
> > +
> > +  ti,invert-autoidle-bit:
> > +    type: boolean
> > +    description:
> > +      autoidle is enabled by setting the bit to 0
> > +
> > +additionalProperties: true
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      clock@1b4 {
> > +        reg = <0x01b4>;
> > +        ti,autoidle-shift = <8>;
> > +        ti,invert-autoidle-bit;
> > +      };
> > +    };
> > -- 
> > 2.34.1
> > 

