Return-Path: <devicetree+bounces-26664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 895CF817741
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 17:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3ED2E1F259D1
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 16:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B123D574;
	Mon, 18 Dec 2023 16:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JBMtH2qN"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EEF3A1D0
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 16:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BIGJ3c5075461;
	Mon, 18 Dec 2023 10:19:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702916343;
	bh=NAYLUNF10DaplXRYwL6AxjS+Gm7LkUcFMBuOIXxUwFQ=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=JBMtH2qNzZfWglM2Pr6aUZyZVOyLpF0O/CH4QzFQB8saannnfza+hG6OvCtMLh3U1
	 bqfJxyl1sggP3OcTc6aHxqnXvbW6SpQP6MaySac9I5qF1mZkrd1mEwEWHg1D86YwEs
	 kBv2dLCYxaW1UM/8f8+jwPxneQBgCvFJNNYcAq/E=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BIGJ3eN009569
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 18 Dec 2023 10:19:03 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 18
 Dec 2023 10:19:02 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 18 Dec 2023 10:19:02 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BIGJ2T7033991;
	Mon, 18 Dec 2023 10:19:02 -0600
Date: Mon, 18 Dec 2023 10:19:02 -0600
From: Nishanth Menon <nm@ti.com>
To: Tony Lindgren <tony@atomide.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231218161902.nfdht2hk5rctzxuu@grievance>
References: <20231114073209.40756-1-tony@atomide.com>
 <20231215160047.uiitnlgmirbudmj5@scored>
 <20231218072831.GX5169@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231218072831.GX5169@atomide.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 09:28-20231218, Tony Lindgren wrote:
> * Nishanth Menon <nm@ti.com> [231215 16:00]:
> > On 09:32-20231114, Tony Lindgren wrote:
> > > -	wkup_uart0: serial@2b300000 {
> > > -		compatible = "ti,am64-uart", "ti,am654-uart";
> > > -		reg = <0x00 0x2b300000 0x00 0x100>;
> > > -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> > > +	target-module@2b300000 {
> > 
> > should be  target-module@2b300050 to match up with reg?
> 
> It's best to use the target-module IO range here, not the first reg.
> The first reg may be tossed anywhere in the target module address
> space depending on the device.
> 
> Ideally of course there would be just a standardized range of target
> module related registers at the end of the IO space..

Sorry Tony, but the node address must matchup with the reg description
for the node. I'd rather not sit and argue about this with automated
tools and deal with trivial patches - so either tools like dtc need to
ignore this or lets just fix the node address.
 
> > > +		wkup_uart0: serial@2b300000 {
> > 
> > serial@0  to match up with reg?
> 
> Yes thanks for catching this. The 8250 IP is at the beginning of the
> target module IO space. Will post an updated patch.
> 
> Regards,
> 
> Tony

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

