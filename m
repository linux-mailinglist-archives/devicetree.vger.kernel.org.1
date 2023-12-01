Return-Path: <devicetree+bounces-20566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E238002D6
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 126F81C20C4D
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53F259556;
	Fri,  1 Dec 2023 05:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="R6k5jqyH"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAAC1BEF;
	Thu, 30 Nov 2023 21:10:20 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B15A9qo025908;
	Thu, 30 Nov 2023 23:10:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407409;
	bh=tm0UDT69bL/5esGVd0d3xwKLdjQ2FPR5EG/pDnLBVgg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=R6k5jqyH4ZyDb30t/RkFajZsdzNMXSDUFxQyoIg8yDckfknvVRG+mA2GMQkRLPt0P
	 +89Gwm+toFoBdlNW6lBoJrnp4dVaMptD2kKESngmFEQsoMFChIndT+8xJjq5ccMkHF
	 nqfkDVrPF5hAORlci7K51u3rfHfX27H/ImR/H9sw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B15A9J9007092
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:10:09 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:10:09 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:10:09 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B15A8Mx076612;
	Thu, 30 Nov 2023 23:10:09 -0600
From: Jai Luthra <j-luthra@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Jai Luthra <j-luthra@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Aradhya Bhatia
	<a-bhatia1@ti.com>, Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: [PATCH RESEND v3 5/9] arm64: dts: ti: k3-am62x-sk: Enable camera peripherals
Date: Fri, 1 Dec 2023 10:39:20 +0530
Message-ID: <20231201-csi_dts-v3-5-9f06f31080fe@ti.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
References: <20231201-csi_dts-v3-0-9f06f31080fe@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=943; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=glJ8V1sz9XMUeqlM6p2gMwJEQJqQRMwL+OUstDqPAlM=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlaWXthy0TgUiQZyT+p8x3Q/JVyTWjFgVwEnSXm
 2ZpDmRJa2iJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZWll7QAKCRBD3pH5JJpx
 RTBPD/0YEG/X44tQ2NWd6qLIGzD71sG7qEVZfzP5PBzYe1mRb9h1U9RJlPD8RdOtdM2Ao88S56Y
 JGPDw304jwcr0Sb9JQg/KIbP05N6VS3Nr32kmYUAQvDWDxDyv2L05pdbAweyax6vWmfgARR/vvt
 VjfAjUYnITrmiFafs8koor6aNpPnUbeNHZYBn3QOX33Dm8PgH1t5/Jde7/MIiNaGvtSF+9NKPMw
 35S1wG5r3SSvLkP2lKdFoUxtVlzCFLbINLD2aOSdYXre0s9lvFr+EIvIdQQRNn92o7S0sjFETLH
 QECrcKB+tAzRF+YKmB460P2ybZffdwR8yiq8BW42SqVx/5iq1KO2n4xNjtecgRmv2KPhRrep2tA
 WXmDuyXHvFO6NxWmfvZ/9bI/gEmowe9jL2bVw3cC6rpLZ6TVDUe2c2HPn+wjP03WEj97AcKVvUi
 mwmXGwkHw0Kd96VKPnu2E/l3/72HcfqyPnbAsrJ1ZuchdXaAqtfdOpyvRiDAsxIDngjSmxnYK1e
 nR/BnPwsu7EZdEcuA0FwUX2EVUakI9WVsaiYE3aW3qK/wP124pxo1RGRoXm0rzY1oDLD7vi4mV+
 azqJZxngF37C9hWFuQqPzPQbi9pPmRQuFbpm9w3wjV85nWO5lmzrNDyzJci7Wp5+A1RvmD2ZPY7
 6rzJLL4EL85hzmA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

CSI cameras are controlled using I2C, on SK-AM62 and derivative boards
this is routed to I2C-2, so enable that bus.

Specific sensor connected to this bus will be described in the DT
overlay for each sensor.

Tested-by: Martyn Welch <martyn.welch@collabora.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 19f57ead4ebd..5bbc7e24b548 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -399,6 +399,13 @@ sii9022_out: endpoint {
 	};
 };
 
+&main_i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c2_pins_default>;
+	clock-frequency = <400000>;
+};
+
 &sdhci0 {
 	bootph-all;
 	status = "okay";

-- 
2.42.1


