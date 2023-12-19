Return-Path: <devicetree+bounces-26788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA208181F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 08:06:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9587B22835
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 07:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB43847B;
	Tue, 19 Dec 2023 07:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="dX+GZzuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EFA12B61
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 07:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 90CD16042F;
	Tue, 19 Dec 2023 07:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1702969598;
	bh=XhaGsbrzDY6cfWeXx6A5hjCUF5w7xc41H8HvthEvk8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dX+GZzuDrYYO1rUmn/Uu18+JHA42d5TMiP1Bq5uPkoc80m8IRd+OSMpvfCaMIWIIS
	 R1tg/5msLSoUe7CJ+wJem0UCJLswJO/cnilwI0kBWnFpy16SY4kVgrWfnSEosCPv0b
	 dF3/3ZyX9Re7NGwbK3UFi5lGrDgK+w1esZTLwoSXDxnVSzpLsOwLj1VaPGfKNHu6Ug
	 T4ZqMGzos6V8RHLfug3IWkYRoqIB6cJBFfmlzZPUfXZh4qNmbPfQwnyeM91VYbZB+N
	 dqm1aHOSJEApudkxagsyRZf4WlAKsPSRwZGQ488Fp2ynFvm9fwCG86uW9koEUr6/a8
	 HJ3SHjIEVbHOg==
Date: Tue, 19 Dec 2023 09:06:25 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231219070625.GZ5169@atomide.com>
References: <20231114073209.40756-1-tony@atomide.com>
 <20231215160047.uiitnlgmirbudmj5@scored>
 <20231218072831.GX5169@atomide.com>
 <20231218161902.nfdht2hk5rctzxuu@grievance>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218161902.nfdht2hk5rctzxuu@grievance>

* Nishanth Menon <nm@ti.com> [231218 16:19]:
> On 09:28-20231218, Tony Lindgren wrote:
> > * Nishanth Menon <nm@ti.com> [231215 16:00]:
> > > On 09:32-20231114, Tony Lindgren wrote:
> > > > -	wkup_uart0: serial@2b300000 {
> > > > -		compatible = "ti,am64-uart", "ti,am654-uart";
> > > > -		reg = <0x00 0x2b300000 0x00 0x100>;
> > > > -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> > > > +	target-module@2b300000 {
> > > 
> > > should be  target-module@2b300050 to match up with reg?
> > 
> > It's best to use the target-module IO range here, not the first reg.
> > The first reg may be tossed anywhere in the target module address
> > space depending on the device.
> > 
> > Ideally of course there would be just a standardized range of target
> > module related registers at the end of the IO space..
> 
> Sorry Tony, but the node address must matchup with the reg description
> for the node. I'd rather not sit and argue about this with automated
> tools and deal with trivial patches - so either tools like dtc need to
> ignore this or lets just fix the node address.

Oh sorry I did not mean to add a make W=1 dtbs warning. Yeah let's change
the node name to match the first reg to avoid the warning.

It should be also add some better checks for node names with ranges but
with just a few control registers.

Regards,

Tony

