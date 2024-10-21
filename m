Return-Path: <devicetree+bounces-113792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC529A709A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 19:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20DD7B2011F
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 17:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A3B1EABBA;
	Mon, 21 Oct 2024 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="M1uWKc6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8001E7C39
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 17:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729530454; cv=none; b=i3fyUCKyuUXFEjdRYaMSqs9YNEJyl2sxpBpP4YJvxEc8+K6vW+SelwqkdYPEOA8edaiYGE0deym9opFgfYsR9shOfMUiJdApgBGAB1zG1s4uA2I7b9GIS2HzlfEJFEQKWa+KwdBwjwtjDS8LIj0ckvtHylUc3znddpN4jBJWdWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729530454; c=relaxed/simple;
	bh=7vrfWB5WrTWf0h+U1F37EUhfoH8IbtutV29jICF/fEo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7gY77ljeT547QN3ftF/pzVCp2ti6ty6DODY6hHK41ok88uJCuD+9+iZCrP9EluyE5DhHLRVG1j729zqW2sgEkaUHP86R9xASGN/d49gZbzh5CdcjQrDDeIfzDw1X/YhrrggIQPoBxkBEXzTUK5VTzn+m/KAnQYAmOZSCt6CnLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=M1uWKc6P; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-a99ebb390a5so1069178866b.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1729530450; x=1730135250; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R1fzWHWXCAzDgmWq67RRGZJvTtBysz8yIfOAsQ6M82Y=;
        b=M1uWKc6PyX2RCZD8ZNzujTi81oqytXYsdoBN9Nc1mOHT59RJQi9GNnfAqX1qIqRSMp
         9GwKZA2LKGomFRrfRmKG8eDwSDdSYQzzanvbeOLr39AB7Tnrx18fvcPtXHarVcpxV9wb
         CKHF1AD/pNKWnZSeKstJD5L7lDhGf6GO0p2N3mxb9+CdG/iXmVp3RJjB1q61+edTp1ZO
         9KZmLUswSmWRA3l9wVqo8lthE4LNzqazf6k11vQSq+/uKC6qn0DxoTN9V3O1qZ4/+9YN
         4fbMOS42UvIJE7T7tRCABxGZats90AjGl9Say88CKrYYyRgOsXHw+bzUSmW3AJ0jP72H
         dqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729530450; x=1730135250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1fzWHWXCAzDgmWq67RRGZJvTtBysz8yIfOAsQ6M82Y=;
        b=KSFQB2qDQGkm3vmm9zPoPHAfiSC6Mvys2TUJMe4IcqpLXxzT9OUeH/edqNQPFuvtbS
         yCnVj3WoXQNvzqjKp9PdsH3Ut5nVwJIIl73nNhsMjnYHCEDlDsysCSMFIIrtVGmdQ2Ps
         wfDANNHt9qSEC67S/4lRWz2r7d5EN0ISZQTqWbObEgPR3Iy7GYrGsX+HQrEU0uQSuDTX
         8AGUah1he0vdm5cI09zpwhF9WPU8lc0olqpbxXYAO+Uxyq2qEErm94LyT+Kf6EpziGUE
         cus3TWLyLchuxq8orG5M6XHXpCs9gcm9LgYye+8c6tli4u1aoKSPka1xXR5InAP9Wbg8
         aj/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXd2nexIKQgHmwQUwdOSOpXGCLq/lciezc/C8Og3IKJbkyFNbErxrw4lTSd4ZgAu1kqWrrX+FuooUXt@vger.kernel.org
X-Gm-Message-State: AOJu0YyoNyI6biJsj96c9pCHUdG+ob7Dz8NV6IsGK4uAYFt874i2vEGT
	1AGN/Uxj6Efo5dbA/TUW1uyuRrB0bePKWsCL30vm4YAOcSd0/sotU1e8IslwEG0=
X-Google-Smtp-Source: AGHT+IH8Qx4ewqPHCyDHdSihJ2G5kCb8Eh+Lq4JPwgxoxbykep04isusVWNXUkEnJTI73qGFKifEKg==
X-Received: by 2002:a17:907:3f95:b0:a9a:17be:fac7 with SMTP id a640c23a62f3a-a9aaa52671dmr32704966b.14.1729530449552;
        Mon, 21 Oct 2024 10:07:29 -0700 (PDT)
Received: from localhost (host-95-239-0-46.retail.telecomitalia.it. [95.239.0.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a912d62b8sm227099766b.25.2024.10.21.10.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 10:07:29 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 21 Oct 2024 19:07:50 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
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
Subject: Re: [PATCH v2 01/14] dt-bindings: clock: Add RaspberryPi RP1 clock
 bindings
Message-ID: <ZxaKZsXCHIYLwrfT@apocalypse>
References: <cover.1728300189.git.andrea.porta@suse.com>
 <74199551e7a9e43a9aa2e1ed1a678493e7a8fb2c.1728300189.git.andrea.porta@suse.com>
 <bznpgisxve5y34lu6hj6mlahd7r5fq2wz565nieiwvihwqbnzx@v6uk4mifhkhp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bznpgisxve5y34lu6hj6mlahd7r5fq2wz565nieiwvihwqbnzx@v6uk4mifhkhp>

Hi Krzysztof,

On 08:31 Tue 08 Oct     , Krzysztof Kozlowski wrote:
> On Mon, Oct 07, 2024 at 02:39:44PM +0200, Andrea della Porta wrote:
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
> > index 000000000000..5e2e98051bf3
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
> 
> How assigned-clocks is related to this? Drop.

This node provides clock for several peripherals, and for minimum functionality
at least 3 clocks have to be setup through assigned-clocks (and
assigned-clock-rates). That should be done in this same node (the provider of the
clocks) because those clocks are shared among peripherals or clock generators,
so cannot be described from consumers or we could incur in multiple declaration of
the same clock. I dropped the assigned-clocks and assigned-clock-rates from the
example section because Conor commented (see the first patchset version) that
according to him those properties were not relevant there, maybe I failed to produce
a careful explanation about why they are important. What should be the right course
of action, then? Just drop that description or leave it as it is (maybe augmenting
it with what I've explained here) and add again the dropped properties in the
example? I would be inclined to vote for the latter, but I'm not sure... 

> 
> > +      definitions in dt-bindings/clock/raspberrypi,rp1-clocks.h.
> 
> Use full paths, so they can be validated. This applies to all your
> patches.

Ack.

> 
> > +    const: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: rp1-xosc
> 
> Drop clock-names, redundant. Or just "xosc". Hyphens are not recommended
> character and rp1 is redundant.

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
> > +        rp1_clocks: clocks@c040018000 {
> 
> Drop unused label.

Ack.

> 
> > +            compatible = "raspberrypi,rp1-clocks";
> > +            reg = <0xc0 0x40018000 0x0 0x10038>;
> > +            #clock-cells = <1>;
> > +            clocks = <&clk_rp1_xosc>;
> > +            clock-names =  "rp1-xosc";
> > +        };
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c27f3190737f..75a66e3e34c9 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -19380,6 +19380,12 @@ F:	Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
> >  F:	drivers/media/platform/raspberrypi/pisp_be/
> >  F:	include/uapi/linux/media/raspberrypi/
> >  
> > +RASPBERRY PI RP1 PCI DRIVER
> > +M:	Andrea della Porta <andrea.porta@suse.com>
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> > +F:	include/dt-bindings/clock/rp1.h
> > +
> >  RC-CORE / LIRC FRAMEWORK
> >  M:	Sean Young <sean@mess.org>
> >  L:	linux-media@vger.kernel.org
> > diff --git a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
> > new file mode 100644
> > index 000000000000..b7c1eaa74eae
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
> > @@ -0,0 +1,61 @@
> > +/* SPDX-License-Identifier: GPL-2.0 OR MIT */
> 
> Any reason for different license?

Not really, I'll revert it back to the usual (GPL-2.0-only OR BSD-2-Clause), as
the other schemas.

Many thanks,

Andrea

> 
> > +/*
> > + * Copyright (C) 2021 Raspberry Pi Ltd.
> > + */
> 
> Best regards,
> Krzysztof
> 

