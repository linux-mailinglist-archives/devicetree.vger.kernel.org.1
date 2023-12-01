Return-Path: <devicetree+bounces-20571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8688002EB
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84FF5281564
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D913D6D;
	Fri,  1 Dec 2023 05:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Mc6kK/1A"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 654FFD40;
	Thu, 30 Nov 2023 21:15:00 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B15EoT9047666;
	Thu, 30 Nov 2023 23:14:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407690;
	bh=2wgLnlB2+AAD6SMHLKN+Mx8rRG8xXOM6yHtTkoDMsc8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Mc6kK/1AqIkspKljO4CSE1c9a/YkiJx4hh9yuwO0jeWJOCCfWk8DeTBPQs8fnTyBA
	 BHXwXmMYVGgaoKCzj7QeIxMDsimnLEjesiIJbwjqWphJmnpQvDADhuw6+vc4HazCXH
	 Oo0EeqA70IBQUyxeRaU4pznh3iQRXIpC76CC8WB4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B15EoNo018737
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:14:50 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:14:49 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:14:49 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B15EnaF027477;
	Thu, 30 Nov 2023 23:14:49 -0600
Date: Thu, 30 Nov 2023 23:14:49 -0600
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
Message-ID: <20231201051449.sijqtozzup4z6exd@ladder>
References: <20231027082852.2922552-1-thomas.richard@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231027082852.2922552-1-thomas.richard@bootlin.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10:28-20231027, Thomas Richard wrote:
> From: Esteban Blanc <eblanc@baylibre.com>
> 
> This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
> Theses devices provides regulators (bucks and LDOs), but also
> GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
> which monitors the SoC error output signal, and a PFSM
> (Pre-configurable Finite State Machine) which manages the
> operational modes of the PMIC.
> 
> Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
> 
> Notes:
>     This patch was picked from:
>     https://lore.kernel.org/all/20230810-tps6594-v6-0-2b2e2399e2ef@ti.com/
>     
>     I reviewed it, and checked that there is no issue during the boot.

Thank you, but I am considering a more comprehensive series from Neha[1]
instead, if you don't mind.

[1] https://lore.kernel.org/all/20231128055230.342547-1-n-francis@ti.com/
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

