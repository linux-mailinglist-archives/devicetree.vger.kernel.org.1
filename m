Return-Path: <devicetree+bounces-26434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A87F281675E
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 08:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90C391C22203
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 07:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7788C79E2;
	Mon, 18 Dec 2023 07:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="i4W4zfsY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B655D2EB
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 07:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id B4952603E6;
	Mon, 18 Dec 2023 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1702884524;
	bh=mCAMHe2usGbdnFzkYddMtDLafHED4q3/YlsyM0cAnTA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i4W4zfsYFfCIv/CEx86jNHRyZ2geiq+/yZ23UZBWKzr+theHILYzx4S+w4lfXb1o+
	 GVcNFdd/UyTyw30Q0qyKI50YMPkilhwSTvNKTCDe4lBTv46Eqk6pt9yHY0TTgy/V4F
	 l4QfASoMBy5CCz62Aw/g+EP1+ux4hAisdbiw1cjkY/cXDgLHLEUmYGCnmW5gDW4B7Z
	 86A82BE4vQSMqxfs3Wr1kubOpKYEHzyi9ZHAkIc4OkzfHPQwEFrrfiErUX/5iy5fJL
	 BWjupEAqmJHNQWEEekp/GpPUtqZMkKwhw4UfGhRprrqj+6u7/1NFaXiewKAc95leJ1
	 PoshEIwp8rmjA==
Date: Mon, 18 Dec 2023 09:28:31 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231218072831.GX5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <20231215160047.uiitnlgmirbudmj5@scored>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231215160047.uiitnlgmirbudmj5@scored>

* Nishanth Menon <nm@ti.com> [231215 16:00]:
> On 09:32-20231114, Tony Lindgren wrote:
> > -	wkup_uart0: serial@2b300000 {
> > -		compatible = "ti,am64-uart", "ti,am654-uart";
> > -		reg = <0x00 0x2b300000 0x00 0x100>;
> > -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> > +	target-module@2b300000 {
> 
> should be  target-module@2b300050 to match up with reg?

It's best to use the target-module IO range here, not the first reg.
The first reg may be tossed anywhere in the target module address
space depending on the device.

Ideally of course there would be just a standardized range of target
module related registers at the end of the IO space..

> > +		wkup_uart0: serial@2b300000 {
> 
> serial@0  to match up with reg?

Yes thanks for catching this. The 8250 IP is at the beginning of the
target module IO space. Will post an updated patch.

Regards,

Tony

