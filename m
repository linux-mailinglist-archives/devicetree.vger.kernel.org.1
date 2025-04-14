Return-Path: <devicetree+bounces-166682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A700A8801B
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 233F41895DD9
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE0B2BE7D3;
	Mon, 14 Apr 2025 12:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="crTp8vSG"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61C02BD59C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744632703; cv=none; b=RctbUVvF8lnxVR9yN1hTWPYPkDxdsXDTnVMz3hD1B/ltf8gjxb3AlaGOC0hUzafVLPX4RaBhfRFZpF3t1OEAFU7l1Xe1mlFb8VR0DXXbZYCrZz+FB2QI0ox5K55w1bUfRC92WPJ1xHcQsGiBns9vBU3xQLFyyWh4VqgmMmcMRH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744632703; c=relaxed/simple;
	bh=MHKff+VqoBKdhrqA43cQV2jXjP7i/bHFRphfsvRFksc=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cgii5JyQY1BNfB667KzstRpEP6sEhgullFzSiswCuh3o7gQ6KQIlpzI+CU3oWqjEde8resl3BaOP9wPd0f17B6YeJ4Jh8M9uQiwxIg58bhGc5JZnvQ7lzxvqkcfH+nXmJHDHPuFzhd9LKKjGpeCMZRklou6cQjcirz+jBltOn3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=crTp8vSG; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53ECBTL62151049
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 14 Apr 2025 07:11:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1744632690;
	bh=X1IFU/hnbem1sYOgooD5MSIx7+OsM6dKMaxDZm3kAPA=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=crTp8vSGexXVAep0VjsClYlEkM2TsperzpbGVedlKnpOSAvZeq98ZHvL3vsxQzWTR
	 9xesTFusleokXqQ9Q9C2kaxU30yZL+uSwhVvAZp2ZYElMoJKSQPUaKk5/g10uurTBD
	 NL+Q6TZNbDY3q07pfeoHdRbRbxVAP+VXgcEB5AY8=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53ECBTwJ099694
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Apr 2025 07:11:29 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 14
 Apr 2025 07:11:29 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 14 Apr 2025 07:11:29 -0500
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53ECBTtj082970;
	Mon, 14 Apr 2025 07:11:29 -0500
Date: Mon, 14 Apr 2025 07:11:29 -0500
From: Nishanth Menon <nm@ti.com>
To: Dominik Haller <D.Haller@phytec.de>
CC: "robh@kernel.org" <robh@kernel.org>,
        "kristo@kernel.org"
	<kristo@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "vigneshr@ti.com"
	<vigneshr@ti.com>,
        "m-chawdhry@ti.com" <m-chawdhry@ti.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "upstream@lists.phytec.de"
	<upstream@lists.phytec.de>
Subject: Re: [PATCH 2/2] arm64: dts: ti: Add basic support for
 phyBOARD-Izar-AM68x
Message-ID: <20250414121129.srke66ozlydeceux@widget>
References: <20250411101004.13276-1-d.haller@phytec.de>
 <20250411101004.13276-2-d.haller@phytec.de>
 <20250411122942.3gh2prc6cqrynfva@darkish>
 <0f37e6867a057c713f9da7b3bdfac06bdc7f4184.camel@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0f37e6867a057c713f9da7b3bdfac06bdc7f4184.camel@phytec.de>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 11:28-20250414, Dominik Haller wrote:
> On Fri, 2025-04-11 at 07:29 -0500, Nishanth Menon wrote:
> > Quick look comments below.
> >
> > On 12:10-20250411, Dominik Haller wrote:
> > > The phyCORE-AM68x/TDA4x [1] is a SoM (System on Module) featuring
> > > TI's
> > > AM68x/TDA4x SoC. It can be used in combination with different
> > > carrier
> > > boards. This module can come with different sizes and models for
> > > DDR,
> > > eMMC, SPI NOR Flash and various SoCs from the AM68x/TDA4x (J721S2)
> > > family.
> > >
> > > A reference carrier board design, called phyBOARD-Izar is used for
> > > the
> > > phyCORE-AM68x/TDA4x development kit [2].
> > >
> > >     Supported features:
> > >       * Debug UART
> > >       * 2x SPI NOR Flash
> > >       * eMMC
> > >       * 2x Ethernet
> > >       * Micro SD card
> > >       * I2C EEPROM
> > >       * I2C RTC
> > >       * 2x I2C GPIO Expander
> > >       * LEDs
> > >       * USB 5 Gbit/s
> > >       * PCIe
> >
> > Can we drop the whitespace prefix?
> >
> > >
> > > For more details see the product pages for the SoM and the
> > > development kit:
> > >
> > > [1]
> > > https://www.phytec.eu/en/produkte/system-on-modules/phycore-am68x-tda4x/
> > > [2]
> > > https://www.phytec.eu/en/produkte/development-kits/phyboard-izar/
> > >
> > > Signed-off-by: Dominik Haller <d.haller@phytec.de>
> > > ---
> >
> > Could you share the bootlog in the diffstat along with output of
> > deferred_devices Using the default defconfig -> I want to make sure
> > there are no defconfig updates needed.
> I'll add a bootlog using the default defconfig to the v2 with the style
> fixes.
> deferred_devices is empty.
> PCIe and the TMP102 temperature sensors are not enabled with the
> defconfig as of v6.15-rc1. I plan to send a separate patch with
> CONFIG_SENSORS_TMP102=m but if you can queue that in with the
> devicetree I can simply add that to this series.

you can  post it as a single series and I can pick to the correct
branches.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

