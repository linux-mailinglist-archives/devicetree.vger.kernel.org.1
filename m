Return-Path: <devicetree+bounces-95851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E44F895B882
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 16:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3F75B25145
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 14:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CDF1CBEAD;
	Thu, 22 Aug 2024 14:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KlMgK1+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0271CBE9B
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 14:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724337197; cv=none; b=SB2CF8mN8ggmd8TwJZTK3E2unU76MtdsjNkOVdoCWfiZ/cGACUzGc7gMXdrTtpJzhmLqPTwN/+UMR9eLaeDQttRkte+3EoWyFpaJzeMw1gVF3tQHsJmqnh5aVU27Un9vSMMl+FTx2aqIhH4xgwShLDESyKODHDzhq9JAeKe27Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724337197; c=relaxed/simple;
	bh=lJiyZmPpFea0ifOYh7ueNldJecB7Zjvj1rYiFraP0eY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mJTTgP7Otlxh2en3MrnR/bjfZsuEEZxvT9adtuwFoIPOyH5ob4BgWqs//eyHCx3J9JVE+Lx74O+ksPLAQRoHpktt02ZBhMeRv0GqTAG7zBor+bL0Yy3XTe9AJ69tiJJB0BW7GrtCw86q6kCclLck5YT+51nOJYdoVFqpHGi5ucQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KlMgK1+Z; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5334879ba28so1145877e87.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 07:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1724337193; x=1724941993; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+CLCXO1loNtRQ1zQxG3QmaE354XOPvXqx3+a/56H5k=;
        b=KlMgK1+ZJX2PwEjc15lymt9JjPEEkJLEpJ5Jbh0XYP1aCy4sKK8iu0d7fNB2hfHG5q
         BSEFRBHH3N/KqFGaCjF4x6sHeB3XZpGEP1x630+kuFZwpqR8UPj6fwx5/xWe5pqIs8Ki
         aR0do2b0QAngexNeJpL3b+PAKvzqvx2XqJtR+gnElIOdIt2bE+8Bbp7BVp6WdhuXK1vp
         H5Gg+4MpJthkwgwAPRO/bnshHgeTggRao+NqNasZaQd8xq0RGVI1thyC11M4NUfGQnO9
         aP9rSQfv72u7mmOMDuAlCcarbqqPnX0nnTA5lhAvmBu1GqCpdIGG5f2EI/8o2HS2rw7l
         7SLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724337193; x=1724941993;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u+CLCXO1loNtRQ1zQxG3QmaE354XOPvXqx3+a/56H5k=;
        b=XnR1DanumCUXc2psNkDtWVV+d4IeW4guAZ4x2/MxjVICIood6nQmZj+fQpugzucZfy
         3elQmU5W3VeB75D5xeA4J80j7QTtWv+iC24KhFtT7URNrINBHkHxGxyQdk16Y1vMTCeb
         mIKL1VUe+Lm0fj5IzeF+gobqg10/xQ6ROb9jTHxHlizVKy3rNb7euLe9Fcspp4j3MHmN
         kZBxwYR+konjZe7j3VizXLZPhdDfUCLOjWxtzlSxKngP8aMWQAKiURRA02793BwNuU8H
         0GZN7LijIwPMYbD0sQwpcKEOjRlXdi9gg9LXQMfZXd4akYhYD1siM5GGDJHRoidbnSrP
         JDlw==
X-Forwarded-Encrypted: i=1; AJvYcCVm30jQUjEpqdroJpXbZegLpVuniWdMc5ovvJ4Vmm7sSN9EWERKMz67hzJ0xnaGg+wuFSlQg6wdvWZu@vger.kernel.org
X-Gm-Message-State: AOJu0YwTls3buweAMY+a//AAU64aZOl79XV/V8Ko4xAVfHAKW2PMKRYu
	U0SWQfA0D9M0llLZpOtbZ/t2hNQJNe9fhOxl4rpbLuNwNicLe9KhHbPfRJqp5O4=
X-Google-Smtp-Source: AGHT+IHoBb72Bk0r3OFdWAjawuoYWFCtIMjCbazUFrv8zVo0YW75cua2rVkEy/AiDyfokhDrVrMdgw==
X-Received: by 2002:a05:6512:159d:b0:52c:9906:fa33 with SMTP id 2adb3069b0e04-53348592143mr3936405e87.43.1724337192756;
        Thu, 22 Aug 2024 07:33:12 -0700 (PDT)
Received: from localhost ([87.13.33.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f222af5sm128629666b.41.2024.08.22.07.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 07:33:12 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 22 Aug 2024 16:33:18 +0200
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
Message-ID: <ZsdMLgf2U-CRpnH4@apocalypse>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
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
 <5954e4dccc0e158cf434d2c281ad57120538409b.1724159867.git.andrea.porta@suse.com>
 <lrv7cpbt2n7eidog5ydhrbyo5se5l2j23n7ljxvojclnhykqs2@nfeu4wpi2d76>
 <400486cd-e23c-4501-98c0-aa999aa45f75@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <400486cd-e23c-4501-98c0-aa999aa45f75@kernel.org>

Hi Krzysztof,

On 16:20 Wed 21 Aug     , Krzysztof Kozlowski wrote:
> On 21/08/2024 10:38, Krzysztof Kozlowski wrote:
> > On Tue, Aug 20, 2024 at 04:36:10PM +0200, Andrea della Porta wrote:
> 
> ...
> 
> >>  drivers/misc/Kconfig                  |   1 +
> >>  drivers/misc/Makefile                 |   1 +
> >>  drivers/misc/rp1/Kconfig              |  20 ++
> >>  drivers/misc/rp1/Makefile             |   3 +
> >>  drivers/misc/rp1/rp1-pci.c            | 333 ++++++++++++++++++++++++++
> >>  drivers/misc/rp1/rp1-pci.dtso         |   8 +
> >>  drivers/pci/quirks.c                  |   1 +
> >>  include/linux/pci_ids.h               |   3 +
> >>  10 files changed, 524 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso
> >>  create mode 100644 drivers/misc/rp1/Kconfig
> >>  create mode 100644 drivers/misc/rp1/Makefile
> >>  create mode 100644 drivers/misc/rp1/rp1-pci.c
> >>  create mode 100644 drivers/misc/rp1/rp1-pci.dtso
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 67f460c36ea1..1359538b76e8 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -19119,9 +19119,11 @@ F:	include/uapi/linux/media/raspberrypi/
> >>  RASPBERRY PI RP1 PCI DRIVER
> >>  M:	Andrea della Porta <andrea.porta@suse.com>
> >>  S:	Maintained
> >> +F:	arch/arm64/boot/dts/broadcom/rp1.dtso
> >>  F:	Documentation/devicetree/bindings/clock/raspberrypi,rp1-clocks.yaml
> >>  F:	Documentation/devicetree/bindings/pinctrl/raspberrypi,rp1-gpio.yaml
> >>  F:	drivers/clk/clk-rp1.c
> >> +F:	drivers/misc/rp1/
> >>  F:	drivers/pinctrl/pinctrl-rp1.c
> >>  F:	include/dt-bindings/clock/rp1.h
> >>  F:	include/dt-bindings/misc/rp1.h
> >> diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
> >> new file mode 100644
> >> index 000000000000..d80178a278ee
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
> >> @@ -0,0 +1,152 @@
> >> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >> +
> >> +#include <dt-bindings/gpio/gpio.h>
> >> +#include <dt-bindings/interrupt-controller/irq.h>
> >> +#include <dt-bindings/clock/rp1.h>
> >> +#include <dt-bindings/misc/rp1.h>
> >> +
> >> +/dts-v1/;
> >> +/plugin/;
> >> +
> >> +/ {
> >> +	fragment@0 {
> >> +		target-path="";
> >> +		__overlay__ {
> >> +			#address-cells = <3>;
> >> +			#size-cells = <2>;
> >> +
> >> +			rp1: rp1@0 {
> >> +				compatible = "simple-bus";
> >> +				#address-cells = <2>;
> >> +				#size-cells = <2>;
> >> +				interrupt-controller;
> >> +				interrupt-parent = <&rp1>;
> >> +				#interrupt-cells = <2>;
> >> +
> >> +				// ranges and dma-ranges must be provided by the includer
> >> +				ranges = <0xc0 0x40000000
> >> +					  0x01/*0x02000000*/ 0x00 0x00000000
> >> +					  0x00 0x00400000>;
> > 
> > Are you 100% sure you do not have here dtc W=1 warnings?
> 
> One more thing, I do not see this overlay applied to any target, which
> means it cannot be tested. You miss entry in Makefile.
>

The dtso is intended to be built from driver/misc/rp1/Makefile as it will
be included in the driver obj:

--- /dev/null
+++ b/drivers/misc/rp1/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+rp1-pci-objs                   := rp1-pci.o rp1-pci.dtbo.o
+obj-$(CONFIG_MISC_RP1)         += rp1-pci.o

and not as part of the dtb system, hence it's m issing in
arch/arm64/boot/dts/broadcom/Makefile.

On the other hand:

#> make W=1 CHECK_DTBS=y broadcom/rp1.dtbo
  DTC     arch/arm64/boot/dts/broadcom/rp1.dtbo
arch/arm64/boot/dts/broadcom/rp1.dtso:37.24-42.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/clk_xosc: missing or empty reg/ranges property
arch/arm64/boot/dts/broadcom/rp1.dtso:44.26-49.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/macb_pclk: missing or empty reg/ranges property
arch/arm64/boot/dts/broadcom/rp1.dtso:51.26-56.7: Warning (simple_bus_reg): /fragment@0/__overlay__/rp1@0/macb_hclk: missing or empty reg/ranges property
arch/arm64/boot/dts/broadcom/rp1.dtso:14.15-173.5: Warning (avoid_unnecessary_addr_size): /fragment@0/__overlay__: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" property

seems to do the checks, unless I'm missing something.

Thanks,
Andrea

> Best regards,
> Krzysztof
> 

