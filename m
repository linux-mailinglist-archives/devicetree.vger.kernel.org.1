Return-Path: <devicetree+bounces-20597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98958800529
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:05:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 201D3B20D36
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DEC71641A;
	Fri,  1 Dec 2023 08:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="I7UuEFfm"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91C6810FC;
	Fri,  1 Dec 2023 00:05:24 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B185FV5112095;
	Fri, 1 Dec 2023 02:05:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701417915;
	bh=PPlc3mvy+reBbqsxVS8a5Ol+L9ejWge2/nC9xigzSp4=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=I7UuEFfmj2pyTPI6YhAXRzeWrlEuXdBG4fUmdBjATxTYY8bUQqvGy7SrMJRwba+tl
	 p3DnZwnaojZ1fNoXrx8iL6scxxWhm45SJCuq3a/hsDY/QkaiuchLvBXaNko2TLT/bT
	 51LBrV1R7OtVigC7N8IZbHOYdbkwyZJs4ce2Suik=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B185FpH087613
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:05:15 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:05:15 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:05:14 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B185FYG020015;
	Fri, 1 Dec 2023 02:05:15 -0600
Date: Fri, 1 Dec 2023 02:05:15 -0600
From: Nishanth Menon <nm@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <thomas.petazzoni@bootlin.com>,
        <gregory.clement@bootlin.com>, <u-kumar1@ti.com>,
        <khilman@baylibre.com>, <vibhore@ti.com>, <vishalm@ti.com>,
        <d-gole@ti.com>
Subject: Re: [PATCH 2/5] firmware: ti_sci: add suspend/resume support for irqs
Message-ID: <20231201080515.6g4wvjvays7ik647@passport>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-2-c1d5964ed574@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129-j7200-tisci-s2r-v1-2-c1d5964ed574@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 16:31-20231129, Thomas Richard wrote:
> On j7200, during suspend to ram, the SoC is powered-off.

A53  and main domain is powered off in the case of J7200 - there are
different nuanced suspend-to-ram scenarios involved which the system
control firmware manages for us (Linux).

> The irqs configuration is lost, so it shall be restored at resume.
> The ti-sci has an internal list of irqs updated at each set/free.
> All irqs in this list are restored at resume.

This I don't disagree - but apply to all K3 SoCs. But what I do disagree
is that this is sufficient enough to have suspend-to-ram actually
functional. there are additional handshakes that are needed and the
driver just has a single suspend-resume handler..

git log --oneline drivers/firmware/ti_sci.c tells us that we have
already had a bunch of introduction, revert of suspend-resume handler
(too much for my comfort). I wish I didn't have to say this, but I
guess having seen TFA[1], U-boot[2] series (not that the kernel patch
discussion is independent of TFA/U-boot discussions), and having known
that the AM62x team is also working towards a suspend-resume scheme
(CCying Kevin and AM62x folks) - Since we all share a single driver,
I suggest we get together and draw through the arch of how this flow
will look like and not create additional confusion in the public list
on this till we have a settled down view (also the reason I haven't
picked up am62x patches so far either).

For now, I am going to punt this series until I see clarity overall
and I am assured that we have a relatively final path for all users of
TISCI driver/lib/infra.


[1] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/23992/7
[2] https://lore.kernel.org/u-boot/20231109140738.GF6601@bill-the-cat/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

