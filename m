Return-Path: <devicetree+bounces-96098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 475E995C973
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 11:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D70F1C21723
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 09:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E13214F9F1;
	Fri, 23 Aug 2024 09:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="L+SW52Ca"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DCF14D431
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 09:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724406249; cv=none; b=PG5MPl/bztUaCcXD3ojoAUxIbx2GYfCIvKCnMSHStZ7tvKKd3Zn0Gxz2IQO3SvfjIM24bxGIFn1Xle3F7bNQG75y5yzn5K60GjRyxupmXtRaRrblTw8ZFOCZTYaCW52TdwL/OwrBXmgj48b7BNHplufejJiVt4j/aKwbFVFg5VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724406249; c=relaxed/simple;
	bh=4c3KzHN6LLXdrATpuUYPGih+JOiJGyl2SN7wEWhJAek=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oe87WE3h0qdvsQOGEMqujR07eeiNshK7f1cTRWhN0EcEvDOELBZaQerqhlX/+6sN/AbmP3NIeJLHQ3iqu03WOjU3XwD9sw2skvvUe9MhwcmxUY5qeLqh7XHUyK9b0DPMUxyUJvLjlUDId/iaSYIW93O/qtwV6FncnWsXDNVpM9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=L+SW52Ca; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-a8684c31c60so226203666b.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 02:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1724406245; x=1725011045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVcGuVd4AVvQ2weJkkLnD/mq26okah869g1A0uYNj+w=;
        b=L+SW52Caw8jsFw/mYuYuCXVuq5J7DyvOJin0UsXCie3SX3jc0p0tY15+u7VXnZ00Uk
         5gmy8iMFkxwInOTy8TLOe8xvuNSfo8pWW2x/w1lyGv5hqesjh+2iG44RJynWidVRQdRS
         4itBRlyzUnn5xXpZts8byX1HAu5/ilXD7UU0gA9mzMPiGPX7qRbMt5I48CDpiU3LnUvI
         agH50Oy0Tt5HkEoV2+TIuDDK0lTDCzapbhuG5vhB0My2l2U6/yy/WlBK2e2AwxvSSOBH
         ISpQceRKdkKFhPLkovVZHEUa8qHsZ8r9LWyajZVljStgRyitubOQn1rSqR+z376WiT1e
         Btuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724406245; x=1725011045;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SVcGuVd4AVvQ2weJkkLnD/mq26okah869g1A0uYNj+w=;
        b=X3dSGzlskyNa3TeS6Ja8NbNM3bZFLmaUUNcAUAKV/ioaJ94ugFgdY+KFjWdNRqt267
         iaf6jMuGXq+fP+SLEThtWEB3RqtvffiFXxbfiCCLCCc8tUc5sOl+/QKQFGQUOQp2ghp1
         Scz0gbRSYE0oi2KbTF1v+xaF6y5qZMLn4zRZ08Yea/OkvR7Z8kk1ugiyU/XtkO9ALW1f
         TUtjGKVqhqvcQ8PgpodY8M2Q7/NPCx6oRL2mh/4AjrW5SmEQqaitwFcwb4z18GsypypE
         AsZVppoHiApDSQezoqwfUOVUXh02w0LwvIBnsed6L3s+QWTiSxilP3nymOQLD5j3zO5Y
         5IQA==
X-Forwarded-Encrypted: i=1; AJvYcCW0j6o3xX0APuAzaUPkEj9aUh7jC/XJGAHh/n2G4hnrHHCXBmlw6PlyBM/7WCiuL4tDKQnPZhJmtON1@vger.kernel.org
X-Gm-Message-State: AOJu0YwhPaqxhFr5LBMRH1Tt4qYOJEANKBe4Dvnc3VJgZiJcWT4z5KfO
	X/9nOlsT48Lb9+2gCd8Ds0rs99EArJ5eHHD1i7tIQPHGVSnXXn8MiZfhJlJ104s=
X-Google-Smtp-Source: AGHT+IERZNLBRRQ1MUmcPAQSt7FJvwF5+ZuhPpD8J9OYue8gs+58cviAxhD1hN2NixzJ8eJtBxyDpw==
X-Received: by 2002:a17:907:d2c9:b0:a86:7a59:55e9 with SMTP id a640c23a62f3a-a86a54a8e7emr117724766b.55.1724406244825;
        Fri, 23 Aug 2024 02:44:04 -0700 (PDT)
Received: from localhost ([87.13.33.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f220561sm234654266b.37.2024.08.23.02.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 02:44:04 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 23 Aug 2024 11:44:11 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>,
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
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 08/11] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <ZshZ6yAmyFoiF5qu@apocalypse>
Mail-Followup-To: Stefan Wahren <wahrenst@gmx.net>,
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
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <5954e4dccc0e158cf434d2c281ad57120538409b.1724159867.git.andrea.porta@suse.com>
 <98c570cb-c2ca-4816-9ca4-94033f7fb3fb@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98c570cb-c2ca-4816-9ca4-94033f7fb3fb@gmx.net>

Hi Stefan,

On 18:20 Wed 21 Aug     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 20.08.24 um 16:36 schrieb Andrea della Porta:
> > The RaspberryPi RP1 is ia PCI multi function device containing
> > peripherals ranging from Ethernet to USB controller, I2C, SPI
> > and others.
> sorry, i cannot provide you a code review, but just some comments. multi
> function device suggests "mfd" subsystem or at least "soc" . I won't
> recommend misc driver here.

It's true that RP1 can be called an MFD but the reason for not placing
it in mfd subsystem are twofold:

- these discussions are quite clear about this matter: please see [1]
  and [2]
- the current driver use no mfd API at all

This RP1 driver is not currently addressing any aspect of ARM core in the
SoC so I would say it should not stay in drivers/soc / either, as also
condifirmed by [2] again and [3] (note that Microchip LAN966x is a very
close fit to what we have here on RP1).

> > Implement a bare minimum driver to operate the RP1, leveraging
> > actual OF based driver implementations for the on-borad peripherals
> > by loading a devicetree overlay during driver probe.
> Can you please explain why this should be a DT overlay? The RP1 is
> assembled on the Raspberry Pi 5 PCB. DT overlays are typically for loose
> connections like displays or HATs. I think a DTSI just for the RP1 would
> fit better and is easier to read.

The dtsi solution you proposed is the one adopted downstream. It has its
benefits of course, but there's more.
With the overlay approach we can achieve more generic and agnostic approach
to managing this chipset, being that it is a PCI endpoint and could be
possibly be reused in other hw implementations. I believe a similar
reasoning could be applied to Bootlin's Microchip LAN966x patchset as
well, and they also choose to approach the dtb overlay.
Plus, a solution that can (althoguh proabbly in teh long run) cope
with both DT or ACPI based system has been kindly requested, plase see [4]
for details.
IMHO the approach proposed from RH et al. of using dtbo for this 'special'
kind of drivers makes a lot of sense (see [5]).

> > The peripherals are accessed by mapping MMIO registers starting
> > from PCI BAR1 region.
> > As a minimum driver, the peripherals will not be added to the
> > dtbo here, but in following patches.
> > 
> > Link: https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >   MAINTAINERS                           |   2 +
> >   arch/arm64/boot/dts/broadcom/rp1.dtso | 152 ++++++++++++
> >   drivers/misc/Kconfig                  |   1 +
> >   drivers/misc/Makefile                 |   1 +
> >   drivers/misc/rp1/Kconfig              |  20 ++
> >   drivers/misc/rp1/Makefile             |   3 +
> >   drivers/misc/rp1/rp1-pci.c            | 333 ++++++++++++++++++++++++++
> >   drivers/misc/rp1/rp1-pci.dtso         |   8 +
> >   drivers/pci/quirks.c                  |   1 +
> >   include/linux/pci_ids.h               |   3 +
> >   10 files changed, 524 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
> >   create mode 100644 drivers/misc/rp1/Kconfig
> >   create mode 100644 drivers/misc/rp1/Makefile
> >   create mode 100644 drivers/misc/rp1/rp1-pci.c
> >   create mode 100644 drivers/misc/rp1/rp1-pci.dtso
> > 
> ...
> > +
> > +				rp1_clocks: clocks@c040018000 {
> > +					compatible = "raspberrypi,rp1-clocks";
> > +					#clock-cells = <1>;
> > +					reg = <0xc0 0x40018000 0x0 0x10038>;
> > +					clocks = <&clk_xosc>;
> > +					clock-names = "xosc";
> > +
> > +					assigned-clocks = <&rp1_clocks RP1_PLL_SYS_CORE>,
> > +							  <&rp1_clocks RP1_PLL_AUDIO_CORE>,
> > +							  // RP1_PLL_VIDEO_CORE and dividers are now managed by VEC,DPI drivers
> > +							  <&rp1_clocks RP1_PLL_SYS>,
> > +							  <&rp1_clocks RP1_PLL_SYS_SEC>,
> > +							  <&rp1_clocks RP1_PLL_SYS_PRI_PH>,
> > +							  <&rp1_clocks RP1_CLK_ETH_TSU>;
> > +
> > +					assigned-clock-rates = <1000000000>, // RP1_PLL_SYS_CORE
> > +							       <1536000000>, // RP1_PLL_AUDIO_CORE
> > +							       <200000000>,  // RP1_PLL_SYS
> > +							       <125000000>,  // RP1_PLL_SYS_SEC
> > +							       <100000000>,  // RP1_PLL_SYS_PRI_PH
> > +							       <50000000>;   // RP1_CLK_ETH_TSU
> > +				};
> > +
> > +				rp1_gpio: pinctrl@c0400d0000 {
> > +					reg = <0xc0 0x400d0000  0x0 0xc000>,
> > +					      <0xc0 0x400e0000  0x0 0xc000>,
> > +					      <0xc0 0x400f0000  0x0 0xc000>;
> > +					compatible = "raspberrypi,rp1-gpio";
> > +					gpio-controller;
> > +					#gpio-cells = <2>;
> > +					interrupt-controller;
> > +					#interrupt-cells = <2>;
> > +					interrupts = <RP1_INT_IO_BANK0 IRQ_TYPE_LEVEL_HIGH>,
> > +						     <RP1_INT_IO_BANK1 IRQ_TYPE_LEVEL_HIGH>,
> > +						     <RP1_INT_IO_BANK2 IRQ_TYPE_LEVEL_HIGH>;
> > +					gpio-line-names =
> > +						"ID_SDA", // GPIO0
> > +						"ID_SCL", // GPIO1
> > +						"GPIO2", // GPIO2
> > +						"GPIO3", // GPIO3
> > +						"GPIO4", // GPIO4
> > +						"GPIO5", // GPIO5
> > +						"GPIO6", // GPIO6
> > +						"GPIO7", // GPIO7
> > +						"GPIO8", // GPIO8
> > +						"GPIO9", // GPIO9
> > +						"GPIO10", // GPIO10
> > +						"GPIO11", // GPIO11
> > +						"GPIO12", // GPIO12
> > +						"GPIO13", // GPIO13
> > +						"GPIO14", // GPIO14
> > +						"GPIO15", // GPIO15
> > +						"GPIO16", // GPIO16
> > +						"GPIO17", // GPIO17
> > +						"GPIO18", // GPIO18
> > +						"GPIO19", // GPIO19
> > +						"GPIO20", // GPIO20
> > +						"GPIO21", // GPIO21
> > +						"GPIO22", // GPIO22
> > +						"GPIO23", // GPIO23
> > +						"GPIO24", // GPIO24
> > +						"GPIO25", // GPIO25
> > +						"GPIO26", // GPIO26
> > +						"GPIO27", // GPIO27
> > +						"PCIE_RP1_WAKE", // GPIO28
> > +						"FAN_TACH", // GPIO29
> > +						"HOST_SDA", // GPIO30
> > +						"HOST_SCL", // GPIO31
> > +						"ETH_RST_N", // GPIO32
> > +						"", // GPIO33
> > +						"CD0_IO0_MICCLK", // GPIO34
> > +						"CD0_IO0_MICDAT0", // GPIO35
> > +						"RP1_PCIE_CLKREQ_N", // GPIO36
> > +						"", // GPIO37
> > +						"CD0_SDA", // GPIO38
> > +						"CD0_SCL", // GPIO39
> > +						"CD1_SDA", // GPIO40
> > +						"CD1_SCL", // GPIO41
> > +						"USB_VBUS_EN", // GPIO42
> > +						"USB_OC_N", // GPIO43
> > +						"RP1_STAT_LED", // GPIO44
> > +						"FAN_PWM", // GPIO45
> > +						"CD1_IO0_MICCLK", // GPIO46
> > +						"2712_WAKE", // GPIO47
> > +						"CD1_IO1_MICDAT1", // GPIO48
> > +						"EN_MAX_USB_CUR", // GPIO49
> > +						"", // GPIO50
> > +						"", // GPIO51
> > +						"", // GPIO52
> > +						""; // GPIO53
> GPIO line names are board specific, so this should go to the Raspberry
> Pi 5 file.

Could we instead just name them with generic GPIO'N' where N is the number
of the gpio? Much like many of that pins already are... in this way we
don't add a dependency in the board dts to the rp1_gpio node, which is not
even there when the main dts is parsed at boot, since the dtbo will be
added only on PCI enumeration of the RP1 device.
Or even better: since we don't explicitly use the gpio names to address
them (e.g. phy-reset-gpios in rp1_eth node is addressing the ETH_RST_N
gpio by number), can we just get rid of the gpio-line-names property?
Also Bootlin's Microchip gpio node seems to avoid naming them...

> > +				};
> > +			};
> > +		};
> > +	};
> > +};
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 41c3d2821a78..02405209e6c4 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -618,4 +618,5 @@ source "drivers/misc/uacce/Kconfig"
> >   source "drivers/misc/pvpanic/Kconfig"
> >   source "drivers/misc/mchp_pci1xxxx/Kconfig"
> >   source "drivers/misc/keba/Kconfig"
> > +source "drivers/misc/rp1/Kconfig"
> >   endmenu
> > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > index c2f990862d2b..84bfa866fbee 100644
> > --- a/drivers/misc/Makefile
> > +++ b/drivers/misc/Makefile
> > @@ -71,3 +71,4 @@ obj-$(CONFIG_TPS6594_PFSM)	+= tps6594-pfsm.o
> >   obj-$(CONFIG_NSM)		+= nsm.o
> >   obj-$(CONFIG_MARVELL_CN10K_DPI)	+= mrvl_cn10k_dpi.o
> >   obj-y				+= keba/
> > +obj-$(CONFIG_MISC_RP1)		+= rp1/
> > diff --git a/drivers/misc/rp1/Kconfig b/drivers/misc/rp1/Kconfig
> > new file mode 100644
> > index 000000000000..050417ee09ae
> > --- /dev/null
> > +++ b/drivers/misc/rp1/Kconfig
> > @@ -0,0 +1,20 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# RaspberryPi RP1 misc device
> > +#
> > +
> > +config MISC_RP1
> > +        tristate "RaspberryPi RP1 PCIe support"
> > +        depends on PCI && PCI_QUIRKS
> > +        select OF
> > +        select OF_OVERLAY
> > +        select IRQ_DOMAIN
> > +        select PCI_DYNAMIC_OF_NODES
> > +        help
> > +          Support for the RP1 peripheral chip found on Raspberry Pi 5 board.
> > +          This device supports several sub-devices including e.g. Ethernet controller,
> > +          USB controller, I2C, SPI and UART.
> > +          The driver is responsible for enabling the DT node once the PCIe endpoint
> > +          has been configured, and handling interrupts.
> > +          This driver uses an overlay to load other drivers to support for RP1
> > +          internal sub-devices.
> > diff --git a/drivers/misc/rp1/Makefile b/drivers/misc/rp1/Makefile
> > new file mode 100644
> > index 000000000000..e83854b4ed2c
> > --- /dev/null
> > +++ b/drivers/misc/rp1/Makefile
> > @@ -0,0 +1,3 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +rp1-pci-objs			:= rp1-pci.o rp1-pci.dtbo.o
> > +obj-$(CONFIG_MISC_RP1)		+= rp1-pci.o
> > diff --git a/drivers/misc/rp1/rp1-pci.c b/drivers/misc/rp1/rp1-pci.c
> > new file mode 100644
> > index 000000000000..a6093ba7e19a
> > --- /dev/null
> > +++ b/drivers/misc/rp1/rp1-pci.c
> > @@ -0,0 +1,333 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2018-22 Raspberry Pi Ltd.
> > + * All rights reserved.
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/clkdev.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/err.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/irq.h>
> > +#include <linux/irqchip/chained_irq.h>
> > +#include <linux/irqdomain.h>
> > +#include <linux/module.h>
> > +#include <linux/msi.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/pci.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset.h>
> > +
> > +#include <dt-bindings/misc/rp1.h>
> > +
> > +#define RP1_B0_CHIP_ID		0x10001927
> > +#define RP1_C0_CHIP_ID		0x20001927
> > +
> > +#define RP1_PLATFORM_ASIC	BIT(1)
> > +#define RP1_PLATFORM_FPGA	BIT(0)
> > +
> > +#define RP1_DRIVER_NAME		"rp1"
> > +
> > +#define RP1_ACTUAL_IRQS		RP1_INT_END
> > +#define RP1_IRQS		RP1_ACTUAL_IRQS
> > +#define RP1_HW_IRQ_MASK		GENMASK(5, 0)
> > +
> > +#define RP1_SYSCLK_RATE		200000000
> > +#define RP1_SYSCLK_FPGA_RATE	60000000
> > +
> > +enum {
> > +	SYSINFO_CHIP_ID_OFFSET	= 0,
> > +	SYSINFO_PLATFORM_OFFSET	= 4,
> > +};
> > +
> > +#define REG_SET			0x800
> > +#define REG_CLR			0xc00
> > +
> > +/* MSIX CFG registers start at 0x8 */
> > +#define MSIX_CFG(x) (0x8 + (4 * (x)))
> > +
> > +#define MSIX_CFG_IACK_EN        BIT(3)
> > +#define MSIX_CFG_IACK           BIT(2)
> > +#define MSIX_CFG_TEST           BIT(1)
> > +#define MSIX_CFG_ENABLE         BIT(0)
> > +
> > +#define INTSTATL		0x108
> > +#define INTSTATH		0x10c
> > +
> > +extern char __dtbo_rp1_pci_begin[];
> > +extern char __dtbo_rp1_pci_end[];
> > +
> > +struct rp1_dev {
> > +	struct pci_dev *pdev;
> > +	struct device *dev;
> > +	struct clk *sys_clk;
> > +	struct irq_domain *domain;
> > +	struct irq_data *pcie_irqds[64];
> > +	void __iomem *bar1;
> > +	int ovcs_id;
> > +	bool level_triggered_irq[RP1_ACTUAL_IRQS];
> > +};
> > +
> > +
> ...
> > +
> > +static const struct pci_device_id dev_id_table[] = {
> > +	{ PCI_DEVICE(PCI_VENDOR_ID_RPI, PCI_DEVICE_ID_RP1_C0), },
> > +	{ 0, }
> > +};
> > +
> > +static struct pci_driver rp1_driver = {
> > +	.name		= RP1_DRIVER_NAME,
> > +	.id_table	= dev_id_table,
> > +	.probe		= rp1_probe,
> > +	.remove		= rp1_remove,
> > +};
> > +
> > +module_pci_driver(rp1_driver);
> > +
> > +MODULE_AUTHOR("Phil Elwell <phil@raspberrypi.com>");
> Module author & Copyright doesn't seem to match with this patch author.
> Please clarify/fix

My intention here is that, even if the code has been heavily modified by me,
the core original code is still there so I just wanted to tribute it to the
original author. 
I'll synchronize this with RaspberryPi guys and coem up with a unified solution.
Just in case: would multiple MODULE_AUTHOR entries (one with my name and one
with original authors name) be accepetd?

Many thanks,
Andrea

References:

- [1]: https://lore.kernel.org/all/20240612140208.GC1504919@google.com/
- [2]: https://lore.kernel.org/all/83f7fa09-d0e6-4f36-a27d-cee08979be2a@app.fastmail.com/
- [3]: https://lore.kernel.org/all/2024081356-mutable-everyday-6f9d@gregkh/
- [4]: https://lore.kernel.org/all/ba8cdf39-3ba3-4abc-98f5-d394d6867f95@gmx.net/
- [5]: https://lpc.events/event/17/contributions/1421/attachments/1337/2680/LPC2023%20Non-discoverable%20devices%20in%20PCI.pdf

