Return-Path: <devicetree+bounces-251168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD86CEFBB5
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 07:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B081300EA17
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 06:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519E926F2AF;
	Sat,  3 Jan 2026 06:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CLMzOR/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C479156F45
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 06:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767421027; cv=none; b=s0PVMceKyljV8zQSZ7n3sgaLVH9EXDyxnlSJ+3Mq8m8BdAvKo0nJ3F7Ksm7F892Fmmr85/ZhgzwOnzEEBBD8xrMQHpdB7Lh9K/Y8AMg8D5cxWY4+9ELHwjkidbhjuGkuOtHnHcoCDt/xRVcY3GexSG5K7+dgA6E9JE8xLnT1qYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767421027; c=relaxed/simple;
	bh=OvhHsmnhwBytDwLUIZZt3NNO22amAFYoNYaJEB8XD9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U1wvgP/WyYWrkqX+70dMhQ1qNdJ+GxP4tyJe3vA0/qeKQyapbsIHch1lHR/VbHFAWPVESUqmKxRCJ/gcPTOQTJmqFoz5isXTEP1MLiZcS7qd/hLFM9hUOByHyZmIpBfrszrjnM5TVzFdbVGH6Jzvq4zFALr1vYAnC7b172bCjvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CLMzOR/R; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so5136550f8f.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 22:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767421024; x=1768025824; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0fBTw2m0sw3DdZqYCahoE5TIOLBwDoJuhOGkXgvJXBI=;
        b=CLMzOR/RwI2YMXXLnWzTNCq3EuQGAR22JxggEVtWWzr1wQMLzQjOkIR85wRFSmnnjQ
         knWZnqb1RMq9+0vFeaW9oWDA5gfvfUnV9+NuTOWyoiNrKZ2GeFR3a9OPInEdql6CETdx
         GKPj2dt34tWAes36tNyETN9n+qbuVoBcTTa8GYY328my4WZkekcbYIwkMf0XqBBSD8+j
         eY83w1CTYj8KrnMBheItjCUuT0Zih+E31ngcHAid4InNDU5yGS3a5Fegn7EXzKHitXMA
         Jpzap6jRsQokSlQ9lhRq/UYDYOsy8gf9nNrF0Y1zJadD0o4E9t6FpLH4U9twiUpq7L30
         jt6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767421024; x=1768025824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fBTw2m0sw3DdZqYCahoE5TIOLBwDoJuhOGkXgvJXBI=;
        b=eDI86p3gV3C1SxPBqM3CL/gb3XFwPRST2mX107xOM/qa77J2eNwAwj5PPpDWZC5gJA
         6YDZa4HpGo/Y1Wf5prnJqLwLvG+TQUfPfNphyb9Evsqq/Fm9dpU+17reHnsWzx+4VQU0
         FU+8/ZzeYCwVNcHENMK73lyZygzTuBIGlfHBVBRDCvVhT2QI2XX3+NKorXD6dPTRZrLn
         RuKZmku4cCAqx+6EGnwI5MwvD5qeAXbeCQbTm796OXmAR7ZAzhh4Q5OUr1cYVlKiA1W/
         qsNxnSugqH1JwnLS8UFnhtubhUQ6jlq+zCRx48/KKCoZnFbGatiIpk7tcC5PX9D6AdGz
         1HHA==
X-Forwarded-Encrypted: i=1; AJvYcCWP+g9W2igK+ULVQeHVY6DGtNzWPOUsX51mqETOVyUqGUsi2wL8KaR6HIbOeOo9E1VxVhGOjcRtSa6+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/IvgdHBkjPXHwnZdacw5cZQYypMZrcsoZYmma0p3790OFGhJV
	xLTsSXq1X1gpvk1fECZDl5ehRDN6h5PXarBJXLHSZVTJyQvSqeRn8DhP
X-Gm-Gg: AY/fxX5R9gVF4BZ5npyw2sj5ouPw7DyhsEkVgfUrweot6mWnXxwY85rsspjWjSYqv/2
	ZVd6pSAapbkliNwB5TGJZDyBpRThV3foSHshNDrfFscMjhIFVW2JokS17hTiDijKh7i6VUmIV4W
	KZOjDJ74EAIc3YkqfllwcuLg91VSVYl1hLEQYK5w5z8QOrO0i+m38QcoJLL/SQ27YeITlm38RYu
	bzKSNe+cK7Mp1sqtyEZyxh9VILkTwcEl0XPpyHIJrj5Km7ytAmYTFSDmTIx+iv902m9aOTiJWSR
	UuItJiDAKH43ywXzfof2Ip1xii39YWdynBVrrEBoj3XfWfGupotR7BCyiEC6E4qUbnS0+SW68TC
	jOjRfwKZRLItLYT29mmK7jUm7SPVC2nNtKyfnBPwipk9+2Qu5NctDqVJ679RwxTo6rAUKOfZqhG
	ThICy4jVwWVqnaPVbxcvlv2+7BPidyrBrpPAeHE46Zx/DaomyDMNuNJlJd2X4Cyn2a
X-Google-Smtp-Source: AGHT+IHdlE+Cj3VwwM7OZ4YHjWykCfF7XHJggX+PliZI3MM3Nwc7QElP+yBNZ3QQxm4vymnI/vBKVA==
X-Received: by 2002:a05:6000:2504:b0:431:5ca:c1b7 with SMTP id ffacd0b85a97d-4324e4cbcc1mr61300652f8f.23.1767421023534;
        Fri, 02 Jan 2026 22:17:03 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eab257asm88770406f8f.38.2026.01.02.22.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 22:17:00 -0800 (PST)
Date: Sat, 3 Jan 2026 06:16:59 +0000
From: Stafford Horne <shorne@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
Message-ID: <aVi0W6syzK6buL_v@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-3-shorne@gmail.com>
 <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>

On Thu, Dec 18, 2025 at 07:36:08PM +0100, Geert Uytterhoeven wrote:
> Hi Stafford,
> 
> On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> > The de0 nano from Terasic is an FPGA board that we use in the OpenRISC
> > community to test OpenRISC configurations.  Add a base configuration for
> > the board that runs an OpenRISC CPU at 50Mhz with 32MB ram, UART for
> > console and some GPIOs for LEDs and switches.
> >
> > There is an older version of this floating around that defines all of
> > the hardware on the board including SPI's, flash devices, sram, ADCs
> > etc.  Eventually it would be good to get the full version upstream
> > but for now I think a minimal board is good to start with.
> >
> > Link: https://openrisc.io/tutorials/de0_nano/
> > Link: https://github.com/olofk/de0_nano
> >
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> 
> Thanks for your patch!
> 
> > --- /dev/null
> > +++ b/arch/openrisc/boot/dts/de0-nano-common.dtsi
> > @@ -0,0 +1,41 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +
> > +/ {
> > +       memory@0 {
> > +               device_type = "memory";
> > +               reg = <0x00000000 0x02000000>;
> > +       };
> > +
> > +       leds: leds {
> 
> Move this up (or down), before (or after) all nodes with unit addresses?

OK.

> > +               compatible = "gpio-leds";
> > +               status = "okay";
> 
> Missing blank line.

OK, also I can remove the "okay" line as well.

> > +               led-heartbeat {
> > +                       gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
> > +                       color = <LED_COLOR_ID_GREEN>;
> > +                       function = LED_FUNCTION_HEARTBEAT;
> > +                       linux,default-trigger = "heartbeat";
> > +                       label = "heartbeat";
> > +               };
> > +       };
> > +
> > +       gpio0: gpio@91000000 {
> > +               compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > +               reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > +               reg-names = "dat", "dirout";
> > +               gpio-controller;
> > +               #gpio-cells = <2>;
> > +               status = "okay";
> 
> "okay" is the default, so you could drop this line.

OK.

> > +       };
> > +
> > +       gpio1: gpio@92000000 {
> > +               compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > +               reg = <0x92000000 0x1>, <0x92000001 0x1>;
> > +               reg-names = "dat", "dirout";
> > +               gpio-controller;
> > +               #gpio-cells = <2>;
> > +               status = "disabled";
> > +       };
> > +};
> 
> > --- /dev/null
> > +++ b/arch/openrisc/boot/dts/de0-nano.dts
> > @@ -0,0 +1,54 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/dts-v1/;
> > +
> > +#include "de0-nano-common.dtsi"
> > +
> > +/ {
> > +       model = "Terasic DE0 Nano";
> > +       compatible = "opencores,or1ksim";
> > +       #address-cells = <1>;
> > +       #size-cells = <1>;
> > +       interrupt-parent = <&pic>;
> > +
> > +       aliases {
> > +               uart0 = &serial0;
> > +       };
> > +
> > +       chosen {
> > +               bootargs = "earlycon";
> 
> Do you need this?

What do you mean here? I want to keep "earlycon", and it is not supplied in
de0-nano-common.dtsi.

> > +               stdout-path = "uart0:115200";
> > +       };
> > +
> > +       cpus {
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> 
> Missing blank line.

OK.

> > +               cpu@0 {
> > +                       compatible = "opencores,or1200-rtlsvn481";
> > +                       reg = <0>;
> > +                       clock-frequency = <50000000>;
> > +               };
> > +       };
> > +
> > +       /*
> > +        * OR1K PIC is built into CPU and accessed via special purpose
> > +        * registers.  It is not addressable and, hence, has no 'reg'
> > +        * property.
> > +        */
> > +       pic: pic {
> > +               compatible = "opencores,or1k-pic";
> > +               #interrupt-cells = <1>;
> > +               interrupt-controller;
> > +       };
> > +
> > +       serial0: serial@90000000 {
> > +               compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
> > +               reg = <0x90000000 0x100>;
> > +               interrupts = <2>;
> > +               clock-frequency = <50000000>;
> > +       };
> > +};

-Stafford

