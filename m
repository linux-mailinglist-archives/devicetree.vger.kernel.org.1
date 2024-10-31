Return-Path: <devicetree+bounces-117730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCB29B772F
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 10:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCAB31C21C65
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 09:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3CDF194A7C;
	Thu, 31 Oct 2024 09:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="dVLD1SsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C826F1940A1
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 09:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730366142; cv=none; b=oeCU6ReuXCQHTJ2CwHJJVdqQqCWnUxzxXBjxWT3bcbWPBZEnRdwaB7ZhCzFJtAkWCK0OTjj84C9n1fpHp8pbnq1r4Lz9fR6XAUD0Jjb6DdXbGkWJtr09jIcjJss/m7q2jfXZ72fURx9MCU9uMqN8KTo1if0Og0XolExxwL2jOCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730366142; c=relaxed/simple;
	bh=9ZHRxZumObj39ZvDw0426iS1eCvx4QwbXyn0KE00mX0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W1Lat2h4XhqQZmUycHSmahcqxslRw8S5jSJD5KVbhzl1zcKgF7/GiE1HCfyx3FUJqnJJMY8gr5v4SIudMY0NYxPxXwAxKBJJIyUNTm8jgErnC+YKZPLRnFFb8SCQoLmgJZnfijHd61sf0DOIm/0A7mdA6IcbHBi6wc80yBgvbzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=dVLD1SsQ; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-a9a6acac4c3so117240866b.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 02:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1730366137; x=1730970937; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GoiG2q7mPENxGqV2o9EotirCxP1iVZskztD3m7IMwvo=;
        b=dVLD1SsQpW2pxIdAtUf3HJCQWRGwNodLgt6denM2hzckJ3lZCnXLAmQCpDCE9lsA2e
         mNoYjK8p2RWqeAkVx91NELoTDXkRgICI3J1Ldet5I0iTg7gUmpqFakfEgtE7K/y71jS2
         hl7RB5y99fej5Xw88LaU+mRdIRjS7RRLNrOy1ccOa4c+WHcHRzV2jmt6mwUzAkLOT5wj
         xsIyCipu4zEf7KzMocVUGT+PgAmYSTO34+W75MRrxTvDJQex8u/FtwqSKi+INVTIkBpu
         kqUsE0723xGqCo1ivNk8k+sIwiDLEeAE7pu2SWHxZJUGMD51W1S2NnzIM7tv2/+OvUzZ
         vuBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366137; x=1730970937;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GoiG2q7mPENxGqV2o9EotirCxP1iVZskztD3m7IMwvo=;
        b=oogZ4snG14arXzN4Y7N4XgQOgtLdgW1Hc+CND3+OMSuBOqpEfhOOgRtw2rDoxCLHjf
         7aCXpIpnMPaVYyHgmanKvLYwlqUIk4/LKpSGUoKI1gtuXGENtJ6R8npUNPrVKDC1UBHQ
         GLs91GRfdGu8Ya2RwgFlN5qP+7NyaytSiOUpfvVtzlQOfJzAqw0kAynSdOgEv/jIxgYD
         n8AtXejnIT5PORRg3GtbGLD+1/pA2couSGsPa3r/WGYDqTgFz50uqfC2lfoIhWZdEJ1J
         aZyar8QvjorikEDkqZZhxmWcV5PQICdEcrIzdLGMaTkMpB9+zoYTFggQE0hOCcpKPtV6
         SN/A==
X-Forwarded-Encrypted: i=1; AJvYcCXp+wwBLlqOHbsFyptgmqyyScPhX6w169OhBvDQpyNMq5tG3fGwQ+56eJSQYYq9HpzdOXfJVuL8MRsQ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgqf8UGzMO3TJb63Jw8sC1CLLSsYnv1++dMlKjtYb0CweauWNj
	r53UU4/9tvZJqjyDLoZtipHsrTLDkRi72QIoFsOghRt8ub8sLZ/y6cDKPS9t2r0=
X-Google-Smtp-Source: AGHT+IGqY9TZJZkR9s1c+Lyk4eQ/ILwNYxPHLn7zzQfTeVpg9i8pEvuNeYMcJ+P8ngwF9rXjQzp9hw==
X-Received: by 2002:a17:907:8686:b0:a9a:212d:4ecb with SMTP id a640c23a62f3a-a9de5d702eemr1922884766b.12.1730366137085;
        Thu, 31 Oct 2024 02:15:37 -0700 (PDT)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565df8c2sm43663366b.102.2024.10.31.02.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:15:36 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 31 Oct 2024 10:16:01 +0100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 01/12] dt-bindings: clock: Add RaspberryPi RP1 clock
 bindings
Message-ID: <ZyNK0RxJKdNCV11N@apocalypse>
References: <cover.1730123575.git.andrea.porta@suse.com>
 <914978925d34cfb5bee10fe92603f98763af48b0.1730123575.git.andrea.porta@suse.com>
 <cxwzmlzafgdu2uarcx7mdv4p32zig7efatcg4dzmctho6mvykl@dgwvf3ltcjmo>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cxwzmlzafgdu2uarcx7mdv4p32zig7efatcg4dzmctho6mvykl@dgwvf3ltcjmo>

Hi Krzysztof,

On 08:23 Tue 29 Oct     , Krzysztof Kozlowski wrote:
> On Mon, Oct 28, 2024 at 03:07:18PM +0100, Andrea della Porta wrote:
> > Add device tree bindings for the clock generator found in RP1 multi
> > function device, and relative entries in MAINTAINERS file.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  .../clock/raspberrypi,rp1-clocks.yaml         | 62 +++++++++++++++++++
> >  MAINTAINERS                                   |  6 ++
> >  .../clock/raspberrypi,rp1-clocks.h            | 61 ++++++++++++++++++
> >  3 files changed, 129 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> >  create mode 100644 include/dt-bindings/clock/raspberrypi,rp1-clocks.h
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> > new file mode 100644
> > index 000000000000..a123dd619f8e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> > @@ -0,0 +1,62 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/raspberrypi,rp1-clocks.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RaspberryPi RP1 clock generator
> > +
> > +maintainers:
> > +  - Andrea della Porta <andrea.porta@suse.com>
> > +
> > +description: |
> > +  The RP1 contains a clock generator designed as three PLLs (CORE, AUDIO,
> > +  VIDEO), and each PLL output can be programmed though dividers to generate
> > +  the clocks to drive the sub-peripherals embedded inside the chipset.
> > +
> > +  Link to datasheet:
> > +  https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf
> > +
> > +properties:
> > +  compatible:
> > +    const: raspberrypi,rp1-clocks
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    description:
> > +      The index in the assigned-clocks is mapped to the output clock as per
> > +      definitions in include/dt-bindings/clock/raspberrypi,rp1-clocks.h.
> 
> You still describe how current driver matches assigned-clocks to your
> output clocks. That's not the property of clock-cells and that's not how
> assigned-clocks work.

This description is taken by another upstream binding, please see
Documentation/devicetree/bindings/clock/renesas,5p35023.yaml

Its purpose is to let the user know how clock-cell number specified
in assigned-clocks is mapped to the clock provided by this generator.
Since some of these clocks are shared among peripherals, their frequency
cannot be set by consumers, so it's the provider itself (i.e. the clock
device described with this binding) that should take care of them.
The renesas example has assigned-clocks specified though, please see below.

> 
> There are no assigned clocks in your DTS, so this is really irrelevant
> (or not correct, choose).

In the first revision of this patchset (please see [1] and following messages)
I had the assigned-clocks setup in the example while trying to explain their
purpose, but Conor said those didn't seem to be relevant, hence I dropped them.
Maybe I had to be more incisive on that.
So, I'd be inclined to retain the description as it is and reintroduce some
assigned-clocks in the example as in the renesas one, would it be ok for you?

> 
> 
> > +    const: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: xosc
> 
> What is the purpose of clock-names if you do not use it? Drop.

Ack.

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - '#clock-cells'
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/raspberrypi,rp1-clocks.h>
> > +
> > +    rp1 {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        clocks@c040018000 {
> > +            compatible = "raspberrypi,rp1-clocks";
> > +            reg = <0xc0 0x40018000 0x0 0x10038>;
> > +            #clock-cells = <1>;
> > +            clocks = <&clk_rp1_xosc>;
> > +            clock-names =  "xosc";
> 
> Only one space after '='.

I will drop the name since the driver will not refer to it via clk_get()
but will use clk_parent_data::index.

Many thanks,
Andrea

[1] - https://lore.kernel.org/all/20240822-refutable-railroad-a3f111ab1e3f@spud/

> 
> Best regards,
> Krzysztof
> 

