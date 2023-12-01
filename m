Return-Path: <devicetree+bounces-20603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 959C6800561
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5156D2817FD
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACF118E15;
	Fri,  1 Dec 2023 08:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="INkDGUYr"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77C711712;
	Fri,  1 Dec 2023 00:20:55 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B18Km5K118003;
	Fri, 1 Dec 2023 02:20:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701418848;
	bh=HBdEKvvI150RY82fZkMAZC8JszEdkali8j/QqQbKx5o=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=INkDGUYrEl8HqfZJqS2gfFARElV0VITXoZ7jnFbowHHid/dL4a0Ze5m8+Fmew17bJ
	 YujkFn3bkj6DS7O2srygCbpxWxTuhhXM0QCb8ahBsZQxveDYCrNOPA2TKXTcDEKkfl
	 oQtVlzkmaqeruvlxIUUoyEPEHqfz3iD17OyVgIy4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B18Kmvc096621
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:20:48 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:20:48 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:20:48 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B18KlMo032666;
	Fri, 1 Dec 2023 02:20:47 -0600
From: Bhavya Kapoor <b-kapoor@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>, <kristo@kernel.org>, <vigneshr@ti.com>,
        <nm@ti.com>, <b-kapoor@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: k3-j7200-main: Add Itap Delay Value For DDR52 speed mode
Date: Fri, 1 Dec 2023 13:50:43 +0530
Message-ID: <20231201082045.790478-2-b-kapoor@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231201082045.790478-1-b-kapoor@ti.com>
References: <20231201082045.790478-1-b-kapoor@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

DDR52 speed mode is enabled for eMMC in J7200 but its Itap Delay Value
is not present in the device tree. Thus, add Itap Delay Value for eMMC
High Speed DDR which is DDR52 speed mode for J7200 SoC according to
datasheet for J7200.

[+] Refer to : section 7.9.5.16.1 MMCSD0 - eMMC Interface,  in
	J7200 datasheet
- https://www.ti.com/lit/ds/symlink/dra821u-q1.pdf

Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 264913f83287..39ce465c8e00 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -647,6 +647,7 @@ main_sdhci0: mmc@4f80000 {
 		ti,otap-del-sel-hs400 = <0x5>;
 		ti,itap-del-sel-legacy = <0x10>;
 		ti,itap-del-sel-mmc-hs = <0xa>;
+		ti,itap-del-sel-ddr52 = <0x3>;
 		ti,strobe-sel = <0x77>;
 		ti,clkbuf-sel = <0x7>;
 		ti,trm-icp = <0x8>;
-- 
2.34.1


