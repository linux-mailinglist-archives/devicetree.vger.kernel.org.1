Return-Path: <devicetree+bounces-20662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF9800738
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:38:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87D432817C8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528D51D6A9;
	Fri,  1 Dec 2023 09:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ytCQGQ0x"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D828F2;
	Fri,  1 Dec 2023 01:38:09 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B19brTd114485;
	Fri, 1 Dec 2023 03:37:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701423473;
	bh=9qtUoQaOg5nmvhl5wpKMP8aDiO1+LsL++aB3nv4jTxU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=ytCQGQ0xbYnVtb0M/XY7UO4C5620wZwHMGp6UYuD75xfm0exuCnvohYU02ZtgzOBd
	 U6BQMni+CccaUYa/rhkc3/mZZhenns9T8v8r4+Hf3oP6DwiblihU0yuJuQaCadgcSj
	 M69jUANtZaRayonrMj+4ylt/PKy4GwAAkX4AnysE=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B19brDC057619
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 03:37:53 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 03:37:53 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 03:37:53 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B19bpvb002167;
	Fri, 1 Dec 2023 03:37:52 -0600
Date: Fri, 1 Dec 2023 15:07:51 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Nishanth Menon <nm@ti.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Vignesh Raghavendra
	<vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Message-ID: <zdjb6i34ipxdj3jia2t5wh3oabmm7guvxxnr6glrabbrtoj3z3@dzuvpdtm2ntx>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
 <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
 <g6m7mwhifsmsy3c5gvkqfiktw6cjdd3aaz55att325yhacncga@eoklyawsppi4>
 <6e7a0168-5bff-4373-a1c9-e4c1917be0d9@linaro.org>
 <20231201061837.rqj7r5dvhjd6l3bj@platter>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231201061837.rqj7r5dvhjd6l3bj@platter>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Nishanth,

On Dec 01, 2023 at 00:18:37 -0600, Nishanth Menon wrote:
> On 15:33-20231128, Krzysztof Kozlowski wrote:
> > On 28/11/2023 11:27, Jai Luthra wrote:
> > > Hi,
> > > 
> > > On Nov 28, 2023 at 15:39:46 +0530, Jai Luthra wrote:
> > >> Three different OV5640 modules are supported using the FFC connector on
> > >> BeaglePlay:
> > >> - Digilent PCam 5C
> > >> - ALINX AN5641
> > >> - TEVI-OV5640-*-RPI
> > >>
> > >> The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
> > >> the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
> > >> overlay.
> > > 
> > > Sorry looks like I forgot to pull Andrew's R-By tag from v2 [1], 
> > > hopefully this works:
> > > 
> > > Reviewed-by: Andrew Davis <afd@ti.com>
> > 
> > Sorry, usually not. At least would not work for my scripts, because I do
> > not use b4 parameter to accept tags from other people. I don't know
> > whether the case is here, but I would recommend to wait a day and then
> > resend with short explanation.
> 
> Jai: Please re-send this series. I'd rather not play a guessing game
> here and don't want to digging up all old series to see Reviews you
> should be carrying forward on which patch or for full series etc..
> 

Resent here:
https://lore.kernel.org/all/20231201-csi_dts-v3-0-9f06f31080fe@ti.com/

> -- 
> Regards,
> Nishanth Menon
> Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

-- 
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

