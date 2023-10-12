Return-Path: <devicetree+bounces-8185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E107C7026
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CAAD28295E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A1D30F9B;
	Thu, 12 Oct 2023 14:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="hAP3iD6J"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98E1EA95
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:14:07 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB9CC0;
	Thu, 12 Oct 2023 07:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=9VpF/Uuoa5LtK/FqlX3p38prza5EIg0SaAOUIaysKJU=; b=hAP3iD6JtEl1Oj3Rrbe/N9IWlE
	X6pWxY+oamjoU3lpTjdY0qE0P7HNjMvQK1gig25EhiySPXC35O+lvw22YvplGyPF1kYdPP29cqX9q
	NCs95fP1+kZkVkSqDopEEKdWqmDrooMvdOHQy6mpl3EdEgGuAFdPsi2HleVBe0bI3/B0=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:45238 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qqwRu-0002rM-IE; Thu, 12 Oct 2023 10:14:03 -0400
Date: Thu, 12 Oct 2023 10:14:02 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Hugo Villeneuve <hvilleneuve@dimonoff.com>,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com
Message-Id: <20231012101402.6cbea154169f64c6b0922ed7@hugovil.com>
In-Reply-To: <5b971fd6-3dd1-4071-80b3-606f2fa869b5@linaro.org>
References: <20231011222105.2587175-1-hugo@hugovil.com>
	<f24bab3b-4a45-4843-a834-e3a57c7d8aed@linaro.org>
	<20231012095935.0bf2c58c424559492e7f5c25@hugovil.com>
	<5b971fd6-3dd1-4071-80b3-606f2fa869b5@linaro.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH] dt-bindings: max310x: convert to YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Thu, 12 Oct 2023 16:01:54 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 12/10/2023 15:59, Hugo Villeneuve wrote:
> >>> +  clock-frequency:
> >>> +    description:
> >>> +      When there is no clock provider visible to the platform, this
> >>> +      is the source crystal frequency for the IC in Hz.
> >>> +    minimum: 1000000
> >>> +    maximum: 4000000
> >>
> >> This wasn't in original binding. Explain this in the commit msg.
> > 
> > I will add the corresponding explanation in V2. 
> > 
> > The 'clock-frequency' property is already supported
> > by the driver but was not documented in the original txt binding.
> > 
> > This is related to the commit d4d6f03c4fb3: serial: max310x: Try to
> > get crystal clock rate from property (Author: Andy Shevchenko):
> >     
> >     In some configurations, mainly ACPI-based, the clock frequency of
> >     the device is supplied by very well established 'clock-frequency'
> >     property. Hence, try to get it from the property at last if no other
> >     providers are available.
> 
> This does not justify adding it to bindings. ACPI stuff stays with ACPI.
> Drop it.

Hi,
ok, no problem. I will drop it. I will also drop a similar property
from nxp,sc16is7xx.yaml which was added by me a few weeks ago (in a
separate patch, of course).


> > 
> > 
> >>
> >>> +
> >>> +  clock-names:
> >>> +    enum:
> >>> +      - xtal # External crystal
> >>> +      - osc  # External clock source
> >>
> >> clock-names follow immediately clocks.
> > 
> > Will fix for V2.
> > 
> > 
> >>
> >>> +
> >>> +  gpio-controller: true
> >>> +
> >>> +  "#gpio-cells":
> >>> +    const: 2
> >>> +
> >>> +  gpio-line-names:
> >>> +    minItems: 1
> >>> +    maxItems: 16
> >>> +
> >>> +allOf:
> >>
> >> allOf: block goes after required: block.
> > 
> > Will fix for V2.
> > 
> > 
> >>
> >>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> >>> +  - $ref: /schemas/serial/serial.yaml#
> >>> +  - $ref: /schemas/serial/rs485.yaml#
> >>> +
> >>> +required:
> >>> +  - compatible
> >>> +  - reg
> >>> +  - interrupts
> >>> +
> >>> +oneOf:
> >>> +  - required:
> >>> +      - clocks
> >>> +      - clock-names
> >>> +  - required:
> >>> +      - clock-frequency
> >>
> >> That's also something new as well. The original binding required clocks.
> >> Why are you changing this?
> > 
> > See explanation above about clock-frequency.
> > 
> > If clocks is not provided, than at least 'clock-frequency' must be
> > provided.
> > 
> > 
> >>> +
> >>> +unevaluatedProperties: false
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    #include <dt-bindings/interrupt-controller/irq.h>
> >>> +    i2c {
> >>> +        #address-cells = <1>;
> >>> +        #size-cells = <0>;
> >>> +
> >>> +        serial@2c {
> >>> +            compatible = "maxim,max3107";
> >>> +            reg = <0x2c>;
> >>> +            clocks = <&xtal4m>;
> >>> +            clock-names = "xtal";
> >>> +            interrupt-parent = <&gpio3>;
> >>> +            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> >>> +            gpio-controller;
> >>> +            #gpio-cells = <2>;
> >>> +        };
> >>> +
> >>
> >> One example is enuogh. All other are the same.
> > 
> > Not really, clock-names is different for example 2 (osc), and example 3
> > shows that 'clock-frequency' can be used if no clock is provided?
> 
> Difference by one property does not really justify new example. The
> third case - clock frequency - is okay, but the property is going away.

Ok, I will drop examples 2 and 3.

Hugo.

