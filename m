Return-Path: <devicetree+bounces-137395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F73A08DBA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB6A47A13FD
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B2AE20ADCE;
	Fri, 10 Jan 2025 10:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DRvAv0b5"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E664520A5E0;
	Fri, 10 Jan 2025 10:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736504348; cv=none; b=sEgZtLxXH9k1uj/lyiXZlHUJpjI7kPQGmSHa7qcBcjq2JD2KbAhi0mwQqfJeaPJJiQkRDcSOLUlY2oS5CoAuKDAv9xGUg0L6Htn31bgLjWsF2Nvi80VcaPcGXX/LVP3g/MN7vTQ66YT/gT7cpO3jho9jnPhXhMjerocgArirkoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736504348; c=relaxed/simple;
	bh=z+UqJz2A6dtfRQh+5iPbzrM+jK4Z0bSJkobdHpqEkug=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NzYjFBJMMatEwvqrKo9yOyHyMo8cReFgO/7XMgrBm905YHGnAJ2WV/qciS9UVl8VbCoXWXANud73qyZ49oaJLR+aov6gQU0zA453pT/tGguytetRRIw9diKeLM40PczHpZno5F+LrDrAXwGik0Ichwx5jOVIOiqJP15Y9hBJg8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=DRvAv0b5; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 50AAIv1f086443;
	Fri, 10 Jan 2025 04:18:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736504337;
	bh=UKCYMmIFPGTevk1M+TLdbDXaK0IumqN4N8D9eli0/eA=;
	h=From:To:CC:Subject:Date;
	b=DRvAv0b5grdp54++pvQYPvIsXqAAMCVkRWo1k4nvcmP5k5L+cSPqUGK5KStBRjg+A
	 DVr8YoAuq5hBlgdlPeoFIEmq6IqDf3KMvt18KxbKu6ZS2nDfrOb9xeCfTa73utF9Od
	 UiIkJVp/ELzAwSb4ahP7ohN074ZArrEcQZLCDEnk=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAIv6Y103098
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Jan 2025 04:18:57 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 10
 Jan 2025 04:18:56 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 10 Jan 2025 04:18:56 -0600
Received: from localhost (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.72.180])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50AAItBT056820;
	Fri, 10 Jan 2025 04:18:56 -0600
From: Jayesh Choudhary <j-choudhary@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <s-vadapalli@ti.com>, <c-vankar@ti.com>, <j-choudhary@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-j784s4-evm:quad-port-eth-exp1: Remove duplicate hogs
Date: Fri, 10 Jan 2025 15:48:55 +0530
Message-ID: <20250110101855.156136-1-j-choudhary@ti.com>
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
of audio support.
Remove duplicate gpio-hogs from the overlay dtso to prevent mux probe
failures leading to can-phy3 deferred probe:
'gpio-mux mux-controller: probe with driver gpio-mux failed with error -16'

Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
---

GPIO 13 and 15 are set to high in k3-j784s4-evm.dts in exp2 node
as gpio-hog and GPIO 14 is set to high using idle-state in mux1 node.

Log with probe issue:
<https://gist.github.com/Jayesh2000/861ba647dfaec2dd8ed745a5b8d002e4>

Log with this fix:
<https://gist.github.com/Jayesh2000/73d59504d52a36bb31fe49a4faae2693>

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


