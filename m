Return-Path: <devicetree+bounces-20605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 130AE800567
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA98628151B
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 08:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60CE21A58C;
	Fri,  1 Dec 2023 08:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NDMItuhs"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CE8C1713;
	Fri,  1 Dec 2023 00:20:56 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B18Knm5095593;
	Fri, 1 Dec 2023 02:20:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701418849;
	bh=5uOJNsUHlc4wjrOFPnoCuK/E+T4Z/rV/7KRpV9GU1dE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=NDMItuhsaMqBpQrGz9KyJoafIfsptnrulZUDnfyW0hpfJwME4JOjRtxmm7CAlDdVb
	 BrVuNSuSa0TiUVMHgUcSsMwO5f0f/XvCj3ZMHlLwGysUttDePs5tP9igtQWqx8qJZe
	 3oZPBq9KAYxouGhoTgth/CmNXilErhw9edsdGRdA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B18Kndd023023
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 1 Dec 2023 02:20:49 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 1
 Dec 2023 02:20:49 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 1 Dec 2023 02:20:49 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B18Kmk2032679;
	Fri, 1 Dec 2023 02:20:49 -0600
From: Bhavya Kapoor <b-kapoor@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>, <kristo@kernel.org>, <vigneshr@ti.com>,
        <nm@ti.com>, <b-kapoor@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-j721s2-main: Add Itap Delay Value For DDR50 speed mode
Date: Fri, 1 Dec 2023 13:50:44 +0530
Message-ID: <20231201082045.790478-3-b-kapoor@ti.com>
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

DDR50 speed mode is enabled for MMCSD in J721s2 but its Itap Delay
Value is not present in the device tree. Thus, add Itap Delay Value
for MMCSD High Speed DDR which is DDR50 speed mode for J721s2 SoC
according to datasheet for J721s2.

[+] Refer to : section 7.10.5.17.2 MMC1/2 - SD/SDIO Interface,  in
	J721s2 datasheet
- https://www.ti.com/lit/ds/symlink/tda4vl-q1.pdf

Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index b03731b53a26..e1255956288b 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -766,6 +766,7 @@ main_sdhci1: mmc@4fb0000 {
 		ti,itap-del-sel-sd-hs = <0x0>;
 		ti,itap-del-sel-sdr12 = <0x0>;
 		ti,itap-del-sel-sdr25 = <0x0>;
+		ti,itap-del-sel-ddr50 = <0x2>;
 		ti,clkbuf-sel = <0x7>;
 		ti,trm-icp = <0x8>;
 		dma-coherent;
-- 
2.34.1


