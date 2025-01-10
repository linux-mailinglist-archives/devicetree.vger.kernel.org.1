Return-Path: <devicetree+bounces-137415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FED0A08EB1
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:58:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D57DB1889FFF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3654B209F22;
	Fri, 10 Jan 2025 10:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="igIJdFlS"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381F01C3BE7;
	Fri, 10 Jan 2025 10:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736506683; cv=none; b=CoRdwsy+YPW+jL7iKaTSx4YVzOug8L1oj//4h+KQtl0AkAGG/edREkGdthlYqCoucsVSMP+yGD+c87b/Zf16f/dkZ6SxqzHYyklEldh1PYD08K2yRWSkJ8u2UKbGsowCLFdto94Solr52msa/o2zh/hd83VyFE/UyrFQpQ9+aDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736506683; c=relaxed/simple;
	bh=B7yOrDbcPlpNrDZm7WB6pP8cdZ8XfGr8jAO2LD2Q92k=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hCe/b+3LG93isc0ELKWB7S3DwcCRrsPECJTTbs9B9qK5eXgTkv15YzdHEvBn5WdF6W5TdZp7TmFZGELVw00EJ4Mc0QV2je8inMmf93kPZ4GHDbUL1qiGIiIMEZipXIW3jLWIoepZoV/6MxhQKG3Nk2YTrwh/YaBPhbPPrxs+0k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=igIJdFlS; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAvtwS3300797
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 04:57:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736506675;
	bh=I2PQNGbx1rAHwadKibrq3wCWuAbQcos6Zh7efS+DiTU=;
	h=From:To:CC:Subject:Date;
	b=igIJdFlSs4VFIxAKyC0FVeSPRi9vfxYJAZdS/8aK1Oho9bN8oaDWIykrUI9JnGxrS
	 JUSsKgWpeFXo9r5nfy9iTiW8FPLsbb8oLZWdeEnPjj79CRP/lGf4mgXy/+hNMgl5jf
	 bkG+SLUzsJq+mBUp9Q6M69fJlQ1WcgIIHEPcCLTk=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAvtQK068008
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Jan 2025 04:57:55 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 10
 Jan 2025 04:57:55 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 10 Jan 2025 04:57:54 -0600
Received: from localhost (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.72.180])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50AAvrxo094319;
	Fri, 10 Jan 2025 04:57:54 -0600
From: Jayesh Choudhary <j-choudhary@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <s-vadapalli@ti.com>
CC: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <c-vankar@ti.com>, <j-choudhary@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-j784s4-evm-quad-port-eth-exp1: Remove duplicate hogs
Date: Fri, 10 Jan 2025 16:27:53 +0530
Message-ID: <20250110105753.223049-1-j-choudhary@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

The j784s4-evm board dts now has the gpio hogs for MUX2 after integration
of audio support. Remove duplicate gpio-hogs from the overlay dtso to
prevent mux probe failures leading to can-phy3 deferred probe:
'gpio-mux mux-controller: probe with driver gpio-mux failed with error -16'

Fixes: 479112c9f531 ("arm64: dts: ti: k3-j784s4-evm: Enable analog audio support")
Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
---

GPIO 13 and 15 are set to high in k3-j784s4-evm.dts in exp2 node
as gpio-hog and GPIO 14 is set to high using idle-state in mux1 node.

Log with probe issue:
<https://gist.github.com/Jayesh2000/861ba647dfaec2dd8ed745a5b8d002e4>

Log with this fix:
<https://gist.github.com/Jayesh2000/73d59504d52a36bb31fe49a4faae2693>

Changelog v1->v2:
- Add Fixes tag
- Fix typo in commit heading
- Pick up R-by

v1 patch:
<https://lore.kernel.org/all/20250110101855.156136-1-j-choudhary@ti.com/>

 .../boot/dts/ti/k3-j784s4-evm-quad-port-eth-exp1.dtso      | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm-quad-port-eth-exp1.dtso b/arch/arm64/boot/dts/ti/k3-j784s4-evm-quad-port-eth-exp1.dtso
index dcd2c7c39ec3..c1f9573557d0 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-evm-quad-port-eth-exp1.dtso
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm-quad-port-eth-exp1.dtso
@@ -102,13 +102,6 @@ qsgmii-line-hog {
 		gpios = <16 GPIO_ACTIVE_HIGH>;
 		output-low;
 	};
-
-	/* Toggle MUX2 for MDIO lines */
-	mux-sel-hog {
-		gpio-hog;
-		gpios = <13 GPIO_ACTIVE_HIGH>, <14 GPIO_ACTIVE_HIGH>, <15 GPIO_ACTIVE_HIGH>;
-		output-high;
-	};
 };
 
 &main_pmx0 {
-- 
2.34.1


