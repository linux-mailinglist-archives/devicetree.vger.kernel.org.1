Return-Path: <devicetree+bounces-99539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A3B96A1E8
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 17:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17EBD1C24692
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 15:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17BB188926;
	Tue,  3 Sep 2024 15:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="CcXKMBh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9818BC22
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 15:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725376531; cv=none; b=DO4uOdNzDtJD9J6ec+FtwcduRvmw4loMYiqxaDJ5L7mlPHx80GznNBKS7Ise72UPHJl/hq/bGo55xH6Ngx3UVxdxJPYm+RvA6GRbcUmE5h05xamgUcOBk42jRkZ1fz5GSkE6YqcpvB9Z4DCsK6l6dsgund6eTn7DoIPfq+oJ1jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725376531; c=relaxed/simple;
	bh=U7DXv46kAArn9FLdjrGEE2AWjxJWOWdSgwiVv/J76LE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RBVb+aJJ25qGyzDFc6tY9SEmqETQdq+HX7KdMonSCuU//8y2gWgYxOjdmZfJnsXjnRJex15bk0szvj0koMCgyCY9iuMlxf0HWNeVBLdWCpkxOaADvgYqKomNgkji6Iqpmn3lNnCVGXhMhrj6iYqPkMlS+u+V2/0WawZeNdarXr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=CcXKMBh/; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-5c26815e174so1815172a12.0
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 08:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1725376527; x=1725981327; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OTB7wsQhvCFsxyJgB8CQ5Pa/NBo7hDozebUo452UiWE=;
        b=CcXKMBh/yTEpgJXgHzTwNQqtauDtBWEk0ZD+eMw20BnH2RdGrmSQKc6uUeCA5PrRse
         P6A/sBteYAwsDeSQ8ayUU/rmvJyhnYJ5JAdb/HhpfPFs4LVw6w8qNkTDXTqHkjiMhue3
         uBGYRxp6SmwsWEWs/5USx3A3vVF9GSPj3TxwgpJ+FwB9et1NP0yxpy2uIEwsvd06ddx5
         mdGOASLxPJfA61KReguknBaa4zXQUDu/nNhF0AlAv7FPhPc7dNT47EVBMFLThvtAiLr6
         j5doz5L7Q+DjJFFlN+8tpp2iBTEpx/cjJl/z0c7BoDGZxIWkpW79IEZYZ0/4gaGD/hR6
         prVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725376527; x=1725981327;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OTB7wsQhvCFsxyJgB8CQ5Pa/NBo7hDozebUo452UiWE=;
        b=s0xBgzslv2n2xAAlObCcgN3rNYuMDCnOtaGOmtD0OrbZVwR94wRn3Fhh6sIm4E9Lfh
         IiaS/VWtzLcDcTKbuwzX2z+jm/114huJenpCUOFe5gq4DYce0XCuR38p7Zx1NoX0+0fa
         FDxWry/KPkVnxpnRMgqBe4Ef31wkRR/RjHHX1hmE61OWL86e89fuKiPjSVPCPUG8u8WO
         PUC02nYpqmTTgWNqUg9iPX/GHyKerfbbZhTtafioVX7HeENixHSyZUeZpRh7ZOCSNyJK
         Iv3ov6Qz6YJKfUsv83F+KH9FswMauK3ymO/db3sf6sdaDZNk/FbQV8Tu5duZEwlhZ3Px
         cYjw==
X-Forwarded-Encrypted: i=1; AJvYcCWnv5W9eR3VneyXG7077/XXXrZaUrKbFUwUcnAuV7emG54QhmcYdKXdof+UQjFGluHNm1rBatD06vCl@vger.kernel.org
X-Gm-Message-State: AOJu0YzE+XrJ90qAmkmkH5jHo6iy7aXPdQTcgVR/mSnDWx2BP8KAEGrq
	wYj66GqyXwrGgFx3GZ6BF/q6JsWuvqG7fs3S3ZGSQUdqmEvBJsx4vq6kPA41Lgw=
X-Google-Smtp-Source: AGHT+IFcTte6BIp8pPXY+ojLOKAWveu1EM1jhlSY6FJHdjViAJCeXH8Z3blw4a5BrzCnpyEjcGVtwQ==
X-Received: by 2002:a05:6402:3506:b0:5c2:6e5f:3bf9 with SMTP id 4fb4d7f45d1cf-5c26e5f3d09mr1609966a12.28.1725376526784;
        Tue, 03 Sep 2024 08:15:26 -0700 (PDT)
Received: from localhost (host-80-182-198-72.retail.telecomitalia.it. [80.182.198.72])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226c7bda6sm6607816a12.41.2024.09.03.08.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 08:15:26 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 3 Sep 2024 17:15:34 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 08/11] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <ZtcoFmK6NPLcIwVt@apocalypse>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <5954e4dccc0e158cf434d2c281ad57120538409b.1724159867.git.andrea.porta@suse.com>
 <lrv7cpbt2n7eidog5ydhrbyo5se5l2j23n7ljxvojclnhykqs2@nfeu4wpi2d76>
 <ZtHN0B8VEGZFXs95@apocalypse>
 <b74327b8-43f6-47cf-ba9d-cc9a4559767b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b74327b8-43f6-47cf-ba9d-cc9a4559767b@kernel.org>

Hi Krzysztof,

On 18:52 Fri 30 Aug     , Krzysztof Kozlowski wrote:
> On 30/08/2024 15:49, Andrea della Porta wrote:
> > Hi Krzysztof,
> > 
> > On 10:38 Wed 21 Aug     , Krzysztof Kozlowski wrote:
> >> On Tue, Aug 20, 2024 at 04:36:10PM +0200, Andrea della Porta wrote:
> >>> The RaspberryPi RP1 is ia PCI multi function device containing
> >>> peripherals ranging from Ethernet to USB controller, I2C, SPI
> >>> and others.
> >>> Implement a bare minimum driver to operate the RP1, leveraging
> >>> actual OF based driver implementations for the on-borad peripherals
> >>> by loading a devicetree overlay during driver probe.
> >>> The peripherals are accessed by mapping MMIO registers starting
> >>> from PCI BAR1 region.
> >>> As a minimum driver, the peripherals will not be added to the
> >>> dtbo here, but in following patches.
> >>>
> >>> Link: https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf
> >>> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> >>> ---
> >>>  MAINTAINERS                           |   2 +
> >>>  arch/arm64/boot/dts/broadcom/rp1.dtso | 152 ++++++++++++
> >>
> >> Do not mix DTS with drivers.
> >>
> >> These MUST be separate.
> > 
> > Separating the dtso from the driver in two different patches would mean
> > that the dtso patch would be ordered before the driver one. This is because
> > the driver embeds the dtbo binary blob inside itself, at build time. So
> > in order to build the driver, the dtso needs to be there also. This is not
> 
> Sure, in such case DTS will have to go through the same tree as driver
> as an exception. Please document it in patch changelog (---).

Ack.

> 
> > the standard approach used with 'normal' dtb/dtbo, where the dtb patch is
> > ordered last wrt the driver it refers to.
> 
> It's not exactly the "ordered last" that matters, but lack of dependency
> and going through separate tree and branch - arm-soc/dts. Here there
> will be an exception how we handle patch, but still DTS is hardware
> description so should not be combined with driver code.

Ack.

> 
> > Are you sure you want to proceed in this way?
> 
> 
> > 
> >>
> >>>  drivers/misc/Kconfig                  |   1 +
> >>>  drivers/misc/Makefile                 |   1 +
> >>>  drivers/misc/rp1/Kconfig              |  20 ++
> >>>  drivers/misc/rp1/Makefile             |   3 +
> >>>  drivers/misc/rp1/rp1-pci.c            | 333 ++++++++++++++++++++++++++
> >>>  drivers/misc/rp1/rp1-pci.dtso         |   8 +
> >>>  drivers/pci/quirks.c                  |   1 +
> >>>  include/linux/pci_ids.h               |   3 +
> >>>  10 files changed, 524 insertions(+)
> >>>  create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
> >>>  create mode 100644 drivers/misc/rp1/Kconfig
> >>>  create mode 100644 drivers/misc/rp1/Makefile
> >>>  create mode 100644 drivers/misc/rp1/rp1-pci.c
> >>>  create mode 100644 drivers/misc/rp1/rp1-pci.dtso
> >>>
> >>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>> index 67f460c36ea1..1359538b76e8 100644
> >>> --- a/MAINTAINERS
> >>> +++ b/MAINTAINERS
> >>> @@ -19119,9 +19119,11 @@ F:	include/uapi/linux/media/raspberrypi/
> >>>  RASPBERRY PI RP1 PCI DRIVER
> >>>  M:	Andrea della Porta <andrea.porta@suse.com>
> >>>  S:	Maintained
> >>> +F:	arch/arm64/boot/dts/broadcom/rp1.dtso
> >>>  F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> >>>  F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
> >>>  F:	drivers/clk/clk-rp1.c
> >>> +F:	drivers/misc/rp1/
> >>>  F:	drivers/pinctrl/pinctrl-rp1.c
> >>>  F:	include/dt-bindings/clock/rp1.h
> >>>  F:	include/dt-bindings/misc/rp1.h
> >>> diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
> >>> new file mode 100644
> >>> index 000000000000..d80178a278ee
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
> >>> @@ -0,0 +1,152 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >>> +
> >>> +#include <dt-bindings/gpio/gpio.h>
> >>> +#include <dt-bindings/interrupt-controller/irq.h>
> >>> +#include <dt-bindings/clock/rp1.h>
> >>> +#include <dt-bindings/misc/rp1.h>
> >>> +
> >>> +/dts-v1/;
> >>> +/plugin/;
> >>> +
> >>> +/ {
> >>> +	fragment@0 {
> >>> +		target-path="";
> >>> +		__overlay__ {
> >>> +			#address-cells = <3>;
> >>> +			#size-cells = <2>;
> >>> +
> >>> +			rp1: rp1@0 {
> >>> +				compatible = "simple-bus";
> >>> +				#address-cells = <2>;
> >>> +				#size-cells = <2>;
> >>> +				interrupt-controller;
> >>> +				interrupt-parent = <&rp1>;
> >>> +				#interrupt-cells = <2>;
> >>> +
> >>> +				// ranges and dma-ranges must be provided by the includer
> >>> +				ranges = <0xc0 0x40000000
> >>> +					  0x01/*0x02000000*/ 0x00 0x00000000
> >>> +					  0x00 0x00400000>;
> >>
> >> Are you 100% sure you do not have here dtc W=1 warnings?
> > 
> > the W=1 warnings are:
> > 
> > arch/arm64/boot/dts/broadcom/rp1.dtso:37.24-42.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/clk_xosc: missing or empty reg/ranges property
> > arch/arm64/boot/dts/broadcom/rp1.dtso:44.26-49.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/macb_pclk: missing or empty reg/ranges property
> > arch/arm64/boot/dts/broadcom/rp1.dtso:51.26-56.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/macb_hclk: missing or empty reg/ranges property
> > arch/arm64/boot/dts/broadcom/rp1.dtso:14.15-173.5: Warning (avoid_unnecessary_addr_size): /fragment@0/__overlay__: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property
> > 
> > I don't see anything related to the ranges line you mentioned.
> 
> Hm, indeed, but I would expect warning about unit address not matching
> ranges/reg.
> 
> > 
> >>
> >>> +
> >>> +				dma-ranges =
> >>> +				// inbound RP1 1x_xxxxxxxx -> PCIe 1x_xxxxxxxx
> >>> +					     <0x10 0x00000000
> >>> +					      0x43000000 0x10 0x00000000
> >>> +					      0x10 0x00000000>;
> >>> +
> >>> +				clk_xosc: clk_xosc {
> >>
> >> Nope, switch to DTS coding style.
> > 
> > Ack.
> > 
> >>
> >>> +					compatible = "fixed-clock";
> >>> +					#clock-cells = <0>;
> >>> +					clock-output-names = "xosc";
> >>> +					clock-frequency = <50000000>;
> >>> +				};
> >>> +
> >>> +				macb_pclk: macb_pclk {
> >>> +					compatible = "fixed-clock";
> >>> +					#clock-cells = <0>;
> >>> +					clock-output-names = "pclk";
> >>> +					clock-frequency = <200000000>;
> >>> +				};
> >>> +
> >>> +				macb_hclk: macb_hclk {
> >>> +					compatible = "fixed-clock";
> >>> +					#clock-cells = <0>;
> >>> +					clock-output-names = "hclk";
> >>> +					clock-frequency = <200000000>;
> >>> +				};
> >>> +
> >>> +				rp1_clocks: clocks@c040018000 {
> >>
> >> Why do you mix MMIO with non-MMIO nodes? This really does not look
> >> correct.
> >>
> > 
> > Right. This is already under discussion here:
> > https://lore.kernel.org/all/ZtBzis5CzQMm8loh@apocalypse/
> > 
> > IIUC you proposed to instantiate the non-MMIO nodes (the three clocks) by
> > using CLK_OF_DECLARE.
> 
> Depends. Where are these clocks? Naming suggests they might not be even
> part of this device. But if these are part of the device, then why this
> is not a clock controller (if they are controllable) or even removed
> (because we do not represent internal clock tree in DTS).

xosc is a crystal connected to the oscillator input of the RP1, so I would
consider it an external fixed-clock. If we were in the entire dts, I would have
put it in root under /clocks node, but here we're in the dtbo so I'm not sure
where else should I put it.

Regarding pclk and hclk, I'm still trying to understand where they come from.
If they are external clocks (since they are fixed-clock too), they should be
in the same node as xosc. CLK_OF_DECLARE does not seem to fit here because
there's no special management of these clocks, so no new clock definition is
needed.
If they are internal tree, I cannot simply get rid of them because rp1_eth node
references these two clocks (see clocks property), so they must be decalred 
somewhere. Any hint about this?.

Many thanks,
Andrea

> 
> Best regards,
> Krzysztof
> 

