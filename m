Return-Path: <devicetree+bounces-20577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A018003A3
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 07:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D67D28156A
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3568CC132;
	Fri,  1 Dec 2023 06:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="e2fZOZvD"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB4E41703;
	Thu, 30 Nov 2023 22:18:52 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B16IcYj083745;
	Fri, 1 Dec 2023 00:18:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701411518;
	bh=Ngjr998Ot8wxlafjh+nVHKWdF0QDzFU2kmFQhMo+Gqg=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=e2fZOZvDQTsqOrZBu26vXbk9lxXTevVTfpXoaedMxA9vx9hEJx+vp5wKurstOtOmV
	 DAaZxnq1SwDDXmmyekshMDXB/DWG7E5CIf6kKvbeAKAC3n2ifODwXEMPN+/j7MmvJL
	 y6fEANWKt77X6YXlNeZqInt2xERThen+r1MdVO6w=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B16IcBp079001
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 00:18:38 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 00:18:38 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 00:18:38 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B16IbMG012571;
	Fri, 1 Dec 2023 00:18:37 -0600
Date: Fri, 1 Dec 2023 00:18:37 -0600
From: Nishanth Menon <nm@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Jai Luthra <j-luthra@ti.com>, Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia
	<a-bhatia1@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Message-ID: <20231201061837.rqj7r5dvhjd6l3bj@platter>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
 <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
 <g6m7mwhifsmsy3c5gvkqfiktw6cjdd3aaz55att325yhacncga@eoklyawsppi4>
 <6e7a0168-5bff-4373-a1c9-e4c1917be0d9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6e7a0168-5bff-4373-a1c9-e4c1917be0d9@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 15:33-20231128, Krzysztof Kozlowski wrote:
> On 28/11/2023 11:27, Jai Luthra wrote:
> > Hi,
> > 
> > On Nov 28, 2023 at 15:39:46 +0530, Jai Luthra wrote:
> >> Three different OV5640 modules are supported using the FFC connector on
> >> BeaglePlay:
> >> - Digilent PCam 5C
> >> - ALINX AN5641
> >> - TEVI-OV5640-*-RPI
> >>
> >> The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
> >> the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
> >> overlay.
> > 
> > Sorry looks like I forgot to pull Andrew's R-By tag from v2 [1], 
> > hopefully this works:
> > 
> > Reviewed-by: Andrew Davis <afd@ti.com>
> 
> Sorry, usually not. At least would not work for my scripts, because I do
> not use b4 parameter to accept tags from other people. I don't know
> whether the case is here, but I would recommend to wait a day and then
> resend with short explanation.

Jai: Please re-send this series. I'd rather not play a guessing game
here and don't want to digging up all old series to see Reviews you
should be carrying forward on which patch or for full series etc..

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

