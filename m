Return-Path: <devicetree+bounces-96250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFC95D544
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 20:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D9BE281184
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 18:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190E01922F8;
	Fri, 23 Aug 2024 18:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fwyGoh1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0F7191F64
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 18:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724437294; cv=none; b=nrdK63qMfVBs5bG1aKxtgd/qxOSRbTIYxlZm0tgAOerWGSNJjUSQQ6wtHNM7nu22FmpaK6PFa7RpJrYSxaXrVa6BwT+HHLs0OrNSet+2fMg5oNWSqerAeITP1An/fmlHxrr9sSnrMJ7J3PsOosA9iDlyDmrNr6jK6luM9wVveNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724437294; c=relaxed/simple;
	bh=jVB1jWsmi+mWuFfri64okGdk5rpVup7RQiSy6BxP4uY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hso6SlGxqvGGk2uoFZNKVwD79sDVC9hv5eWsCgWb4xKiP+FKGAxVHTlMKMALhdGFHwl08VtX8Cl3iz93ZDV1Ueb758pX6c9fhSwwCrGWioRW1GA9GovfwTur18yfQeDhY3LO7Qc3+TfJzLCqv3XctvYY2heyNRfyGkftrGrPr/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fwyGoh1x; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5334b0e1a8eso2903428e87.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 11:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1724437289; x=1725042089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FICRI5lzPDPrWMcBNEaOg3XU9oTCEC3UNpnHrqnVnWY=;
        b=fwyGoh1xgS7/u0NwaRSthfO/EDwxdbr8jJYUDp9TiJnvOXZFnuMnzGyYOnXDfvulxM
         N1+FjERM3zeeOk7OTap4fCA/3HTuQB2O8HdrU+JA1UxhGl+erkyEFP2UL+Iv83vuijWI
         ukEXgKMHPlAW3hsW3hGx/40+kqVKuBEeVc8umevlA7BcTG1yyxHAhuEXhtYmdqvfxo1X
         9TiCmG7cbU0FotFuh9pJDtWINLvNP3+0QfBZmgapLPNB886brSFgyiX1GwfhtIXkpa3s
         ehbDNIbm/ZGsoZga8H0AOMgOZR+vWd+ZFGoKZorqdp5luEP/3uLEDfqbtUHXqiHtV5EO
         bBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724437289; x=1725042089;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FICRI5lzPDPrWMcBNEaOg3XU9oTCEC3UNpnHrqnVnWY=;
        b=xGuKSbpoAuaErn8ownSn1IxJ/PfatY9vayGV5oYazsIlyNTxEfecclTHl4QZiAXPwy
         hzpY5pC0BmoJeP/xyZ4ZSOflfXYhf+ZpxUoGjY8tftqm0ZnkkjNixuGAEloo4agZQvO8
         a/jlRUysIr63+O2jahP5tyQkxRl8z2VFP4Mugo/xBA9s4GwcqWLIRnwbDkhl5aoB5Gqc
         BPVOsGJI2zEZUnFkid7FoASMow95sqZ9a7xs5VUifrCRgf9gUMGToTiqgItEw/ojzIcy
         XSy84rBczhPPwLz8A4qvNmFVrf+W+OQH/2zVK1tCEKOXlDrsSants7+aAfzpEVqZMx/2
         4xPA==
X-Forwarded-Encrypted: i=1; AJvYcCUW5dGH2hO7/fc/RoDxdm8vf4C1sRZFC1jUzZamjcUh1gU2WVh6N5z68F+JOYA27eYkLtQnm3GeDZYq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl3oCSIpoTwKKb6NOiA78iwwuDcl5KR/X4bm+bK270KjwN8V5k
	FJIqMxJ0OBOkUZ0aQuQqo4A/OlVcQaDu25gjr0/Ah5ZMbx+IQRnwgiOcRpNRctc=
X-Google-Smtp-Source: AGHT+IHGMmpORef4vYjLxEDkG4MSJEX/JfR9cTLIAj6QepyUfSPuFPKAHVyeeB5MysQZc4aa4suv7g==
X-Received: by 2002:a05:6512:3e1b:b0:533:d3e:16e6 with SMTP id 2adb3069b0e04-53438784950mr2355588e87.25.1724437288497;
        Fri, 23 Aug 2024 11:21:28 -0700 (PDT)
Received: from localhost ([87.13.33.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f299d9asm292716766b.60.2024.08.23.11.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 11:21:28 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 23 Aug 2024 20:21:34 +0200
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 01/11] dt-bindings: clock: Add RaspberryPi RP1 clock
 bindings
Message-ID: <ZsjTLhgubiMN5BXm@apocalypse>
Mail-Followup-To: Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arch@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <8d7dd7ca5da41f2a96e3ef4e2e3f29fd0d71906a.1724159867.git.andrea.porta@suse.com>
 <20240820-baritone-delegate-5711f7a0bc76@spud>
 <ZsTfoC3aKLdmFPCL@apocalypse>
 <20240821-exception-nearby-5adeaaf0178b@spud>
 <ZscGdxgoNJrifSgk@apocalypse>
 <399ff156-ffc9-4d50-8e5f-a86dc82da2fa@kernel.org>
 <20240822-refutable-railroad-a3f111ab1e3f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240822-refutable-railroad-a3f111ab1e3f@spud>

Hi Conor and Krzysztof,

On 17:23 Thu 22 Aug     , Conor Dooley wrote:
> On Thu, Aug 22, 2024 at 11:52:27AM +0200, Krzysztof Kozlowski wrote:
> 
> > >>>>> +examples:
> > >>>>> +  - |
> > >>>>> +    #include <dt-bindings/clock/rp1.h>
> > >>>>> +
> > >>>>> +    rp1 {
> > >>>>> +        #address-cells = <2>;
> > >>>>> +        #size-cells = <2>;
> > >>>>> +
> > >>>>> +        rp1_clocks: clocks@18000 {
> > >>>>
> > >>>> The unit address does not match the reg property. I'm surprised that
> > >>>> dtc doesn't complain about that.
> > >>>
> > >>> Agreed. I'll update the address with the reg value in the next release
> > >>>
> > >>>>
> > >>>>> +            compatible = "raspberrypi,rp1-clocks";
> > >>>>> +            reg = <0xc0 0x40018000 0x0 0x10038>;
> > >>>>
> > >>>> This is a rather oddly specific size. It leads me to wonder if this
> > >>>> region is inside some sort of syscon area?
> > >>>
> > >>> >From downstream source code and RP1 datasheet it seems that the last addressable
> > >>> register is at 0xc040028014 while the range exposed through teh devicetree ends
> > >>> up at 0xc040028038, so it seems more of a little safe margin. I wouldn't say it
> > >>> is a syscon area since those register are quite specific for video clock
> > >>> generation and not to be intended to be shared among different peripherals.
> > >>> Anyway, the next register aperture is at 0xc040030000 so I would say we can 
> > >>> extend the clock mapped register like the following:
> > >>>
> > >>> reg = <0xc0 0x40018000 0x0 0x18000>;
> > >>>
> > >>> if you think it is more readable.
> > >>
> > >> I don't care
> > > 
> > > Ack.
> > > 
> > >>>>> +            #clock-cells = <1>;
> > >>>>> +            clocks = <&clk_xosc>;
> > >>>>> +
> > >>>>> +            assigned-clocks = <&rp1_clocks RP1_PLL_SYS_CORE>,
> > >>>
> > >>>> FWIW, I don't think any of these assigned clocks are helpful for the
> > >>>> example. That said, why do you need to configure all of these assigned
> > >>>> clocks via devicetree when this node is the provider of them?
> > >>>
> > >>> Not sure to understand what you mean here, the example is there just to
> > >>> show how to compile the dt node, maybe you're referring to the fact that
> > >>> the consumer should setup the clock freq?
> > >>
> > >> I suppose, yeah. I don't think a particular configuration is relevant
> > >> for the example binding, but simultaneously don't get why you are
> > >> assigning the rate for clocks used by audio devices or ethernet in the
> > >> clock provider node.
> > >>
> > > 
> > > Honestly I don't have a strong preference here, I can manage to do some tests
> > > moving the clock rate settings inside the consumer nodes but I kinda like
> > > the curernt idea of a centralized node where clocks are setup beforehand.
> > > In RP1 the clock generator and peripherals such as ethernet are all on-board
> > > and cannot be rewired in any other way so the devices are not standalone
> > > consumer in their own right (such it would be an ethernet chip wired to an
> > > external CPU). But of course this is debatable, on the other hand the current
> > > approach of provider/consumer is of course very clean. I'm just wondering
> > > wthether you think I should take action on this or we can leave it as it is.
> > > Please see also below.
> > > 
> > >>> Consider that the rp1-clocks
> > >>> is coupled to the peripherals contained in the same RP1 chip so there is
> > >>> not much point in letting the peripherals set the clock to their leisure.
> > >>
> > >> How is that any different to the many other SoCs in the kernel?
> > > 
> > > In fact, it isn't. Please take a look at:
> > >  
> > > arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
> > > arch/arm/boot/dts/ti/omap/omap44xx-clocks.dtsi
> > > arch/arm/boot/dts/ti/omap/dra7xx-clocks.dtsi
> > > arch/arm/boot/dts/nxp/imx/imx7d-zii-rpu2.dts
> > > 
> > > and probably many others... they use the same approach, so I assumed it is at
> > > least reasonable to assign the clock rate this way.
> > 
> > Please do not bring some ancient DTS, not really worked on, as example.
> > stm32 could is moderately recent but dra and omap are not.
> 
> Right, there may be some examples like this, but there are many many
> other SoCs where clocks are also not re-wireable, that do not. To me
> this line of argument is akin to the clock driver calling enable on all
> of the clocks because "all of the peripherals are always on the SoC".
> The peripheral is the actual consumer of the clock that quote-unquote
> wants the particular rate, not the clock provider, so having the rate
> assignments in the consumers is the only thing that makes sense to me.
> 
> 

I'll try to cook something that move the rate definition to the consumer
side, then.

Many thanks,
Andrea

