Return-Path: <devicetree+bounces-23381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F4280B1F5
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 04:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D412D1F2119E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 03:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0031107;
	Sat,  9 Dec 2023 03:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="tDk7szmz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E985C10FA
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 19:59:15 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 4315F60504;
	Sat,  9 Dec 2023 03:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1702094354;
	bh=6qStuqkA2YXHsC9AdwTd6rpYJTKwRcTek2CqtNee2VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tDk7szmz9JUFUAZ1ckvgVBQsoeAhvAo9u6S23z9NBbxNg6rdjuBylHBk3B9Pg6VKr
	 YGcBd/z8xJ4/XiTHVrHKvJfUJC0j9Y9n/2wgNxwoQr/9NdKhBo4vvLo5O6g/uWDYnR
	 qNfBKVdjEF4R1kx0gM7lkUKAGu+949cEMWj0T8EuboNIua7kEVNoLxHzpnOaOOmIpb
	 1lUFdr5lsLIKn0jDPcScCC8OyDWtuHYhV+P6l/S4VOGrgdbz9oXYrit2jAQbpaVh0y
	 WQrINLGVDETyt5IGLbhd4oO01mhjmpz+DrikMdyfukP6mdrWxiEwf+WsrOb6fDJ/Ar
	 Nt+XihBQhRURw==
Date: Sat, 9 Dec 2023 05:59:00 +0200
From: Tony Lindgren <tony@atomide.com>
To: Kevin Hilman <khilman@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231209035900.GW5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <7h5y1c7c0q.fsf@baylibre.com>
 <20231207060854.GQ5169@atomide.com>
 <7hedfwd3co.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7hedfwd3co.fsf@baylibre.com>

* Kevin Hilman <khilman@kernel.org> [231208 17:13]:
> Tony Lindgren <tony@atomide.com> writes:
> 
> > * Kevin Hilman <khilman@kernel.org> [231205 18:14]:
> >> I'm a little confused why these power-domain and clocks stay here and
> >> are not moved under the wkup_uart0 node... 
> >
> > The resources are also needed by the interconnect target module. It's the
> > wrapper IP for the child device(s). In this case there's one chip 8250 IP
> > instance. In some other devices there can be multiple child IP devices
> > wired to one target module.
> >
> >> > -		clock-names = "fclk";
> >> > -		status = "disabled";
> >> > +		clock-names = "fck";
> >> > +		#address-cells = <1>;
> >> > +		#size-cells = <1>;
> >> > +		ranges = <0 0 0x2b300000 0x100000>;
> >> > +
> >> > +		wkup_uart0: serial@2b300000 {
> >> > +			compatible = "ti,am64-uart", "ti,am654-uart";
> >> > +			reg = <0 0x100>;
> >> > +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> >> > +			status = "disabled";
> >> 
> >> ...here.
> >> 
> >> The SCI device ID 114 is specifically for wkup_uart0[1], so it seems to
> >> me those should be in the wkup_uart0 node.
> >
> > Those resources are also needed for the parent target module for revision
> > detection, quirks, reset, idle register configuration, and to probe the
> > child devices.
> >
> > Here the 8250 IP can be set to status = "reserved" when used by the
> > firmware, and 8250 not touched by Linux. However, the parent interconnect
> > target module still needs to be configured for idle registers and wake-up
> > path register bit so the wake-up from deeper suspend states works.
> 
> OK, makes sense.  Thanks for the clarification.

One more thing to clarify, there's nothing stopping also mapping the needed
resources for the child IP too if needed by the driver or the dts binding.
The calls for resources by the 8250 driver just won't do anything as the
resources are already enabled by the parent.

> In that case, shouldn't the same be done for the other wakeup sources
> there (e.g. wkup_rtc0) ?

Yes it should be done for devices with the wake-up path wired like
wkup_rtc0.

Regards,

Tony

