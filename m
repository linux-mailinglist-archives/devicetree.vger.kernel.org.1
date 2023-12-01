Return-Path: <devicetree+bounces-20642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4751800670
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C5E4281373
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84CF0171A2;
	Fri,  1 Dec 2023 09:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DeWjUmuD"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8823B1728;
	Fri,  1 Dec 2023 01:01:21 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B191B4J128455;
	Fri, 1 Dec 2023 03:01:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701421271;
	bh=qyoXv+8bSdO0iLRiayf7MFD3WSuyXDfhGmdTb3BZ/v8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=DeWjUmuD+VdCyu8xq6CVppCCiTUSn4xexnM0lTa4syFzk2srYrSv+F8nHPVT0Uci7
	 It69UHV2AUYBn5QhyArB/rpCt1vhYh4kANky6NTOt7iC6S6Il567do/F3cCRZJ7O+l
	 O5YuhvY8VfqKE8XewALNMFcOUodBzjZnyExaVmY4=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B191Bkv005797
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 03:01:11 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 03:01:11 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 03:01:11 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B191B1I041799;
	Fri, 1 Dec 2023 03:01:11 -0600
Date: Fri, 1 Dec 2023 03:01:11 -0600
From: Nishanth Menon <nm@ti.com>
To: Thomas Richard <thomas.richard@bootlin.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <gregory.clement@bootlin.com>,
        <thomas.petazzoni@bootlin.com>, <u-kumar1@ti.com>,
        Esteban Blanc
	<eblanc@baylibre.com>, Jai Luthra <j-luthra@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family PMICs
Message-ID: <20231201090111.c2nt4careaxlm2cv@mastiff>
References: <20231027082852.2922552-1-thomas.richard@bootlin.com>
 <20231201051449.sijqtozzup4z6exd@ladder>
 <b9f5e141-c6d4-40a6-b467-a490f1464704@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b9f5e141-c6d4-40a6-b467-a490f1464704@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 09:31-20231201, Thomas Richard wrote:
> On 12/1/23 06:14, Nishanth Menon wrote:
> > On 10:28-20231027, Thomas Richard wrote:
> >> From: Esteban Blanc <eblanc@baylibre.com>
> >>
> >> This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
> >> Theses devices provides regulators (bucks and LDOs), but also
> >> GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
> >> which monitors the SoC error output signal, and a PFSM
> >> (Pre-configurable Finite State Machine) which manages the
> >> operational modes of the PMIC.
> >>
> >> Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> >> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> >> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> >> ---
> >>
> >> Notes:
> >>     This patch was picked from:
> >>     https://lore.kernel.org/all/20230810-tps6594-v6-0-2b2e2399e2ef@ti.com/
> >>     
> >>     I reviewed it, and checked that there is no issue during the boot.
> > 
> > Thank you, but I am considering a more comprehensive series from Neha[1]
> > instead, if you don't mind.
> 
> It's ok for me.
> Neha told me he sent a new version of the series.
> I sent only this patch, as I was able to test only j7200.

Thanks. will look at Neha's series in my next iteration.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

