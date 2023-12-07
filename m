Return-Path: <devicetree+bounces-22526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 119E1808089
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 07:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 079B0B20C46
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 06:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC4F12B79;
	Thu,  7 Dec 2023 06:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="qnVxfUyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0493810CF
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 22:09:10 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 2574C60354;
	Thu,  7 Dec 2023 06:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701929349;
	bh=TX7qx7q7p/Dxod/eo0LPaHkUCtsgAYBthLNvxSWn/Ik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qnVxfUyrIOkqzuiXOraH5hxdFJtfpdHfK9CO6B78Qtq+PQZra5kDw3FSEwF/4fMIL
	 YxVeAGaeweYI6vN+/GGZ20mqO/2r1Ga4sYSbKY0QhU4etpC2CL2INBok+Im+VMvFNl
	 0Lb8NzTUccDkBnl+3zb6DjOrDszc5rhE9CpJ+L3B56cjYM2SRg4B2PNvJSQ8v7Nz2u
	 pBHjoHxIZbf02vZ6XQyxJy+NymCuPxouvF+I33qv6PJLwTMcxToZz0Bvwldd8EQfiZ
	 p1cIiLuQOLeUOhyjHb9GaPSbcbwm8XOESOad9PsHUAy1eP6dBt7cFU5dQRbvX+niGx
	 nkv2+FcXQSBAg==
Date: Thu, 7 Dec 2023 08:08:54 +0200
From: Tony Lindgren <tony@atomide.com>
To: Kevin Hilman <khilman@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231207060854.GQ5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <7h5y1c7c0q.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7h5y1c7c0q.fsf@baylibre.com>

* Kevin Hilman <khilman@kernel.org> [231205 18:14]:
> I'm a little confused why these power-domain and clocks stay here and
> are not moved under the wkup_uart0 node... 

The resources are also needed by the interconnect target module. It's the
wrapper IP for the child device(s). In this case there's one chip 8250 IP
instance. In some other devices there can be multiple child IP devices
wired to one target module.

> > -		clock-names = "fclk";
> > -		status = "disabled";
> > +		clock-names = "fck";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0 0 0x2b300000 0x100000>;
> > +
> > +		wkup_uart0: serial@2b300000 {
> > +			compatible = "ti,am64-uart", "ti,am654-uart";
> > +			reg = <0 0x100>;
> > +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> > +			status = "disabled";
> 
> ...here.
> 
> The SCI device ID 114 is specifically for wkup_uart0[1], so it seems to
> me those should be in the wkup_uart0 node.

Those resources are also needed for the parent target module for revision
detection, quirks, reset, idle register configuration, and to probe the
child devices.

Here the 8250 IP can be set to status = "reserved" when used by the
firmware, and 8250 not touched by Linux. However, the parent interconnect
target module still needs to be configured for idle registers and wake-up
path register bit so the wake-up from deeper suspend states works.

Regards,

Tony

