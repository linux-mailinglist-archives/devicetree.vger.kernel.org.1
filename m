Return-Path: <devicetree+bounces-18454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 560A57F6CC8
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8837A1C209DD
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 07:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E62E85239;
	Fri, 24 Nov 2023 07:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="i+z73C1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A716BD72;
	Thu, 23 Nov 2023 23:18:21 -0800 (PST)
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AO11HJ1008884;
	Fri, 24 Nov 2023 08:17:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=WM2MSIbMrg2Y/M9af1KUg6XNhb7hhWvF94YsQ4eGQyU=; b=i+
	z73C1pxgxY02QYaO+o8APjn2x4B6f3aJew21l8D5b3r9wSvycK02t7Ui8ssVkECQ
	693MHXn44ZLSrjoDxiyDv6ira07RgO5sYujm7RYyjMRmD3dyzGRMhreOEWBfeaeV
	CvxJhBWl1S16RZ4NRCq8W0Wz1eytU2NRew2ALBMV3e73Iiuv+tfZHlparoHxv4bR
	jFVqeB7QAEmhOQRDCL8YqDMa9/1yPwjoJjeO4QdFFoC7IFGbZSHne3co1cTrcG3m
	7uUeZcp1YFAgN3FF2WoypZbNxVZakavEY4rnNIAw+7b4lLvRB6IIZBRoYAx4OMhI
	oLHBs72zp4mekSzsPanQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uhr8apb34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 24 Nov 2023 08:17:20 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A103810002A;
	Fri, 24 Nov 2023 08:17:19 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 97C1E215137;
	Fri, 24 Nov 2023 08:17:19 +0100 (CET)
Received: from localhost (10.252.31.103) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 24 Nov
 2023 08:17:18 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
Subject: [PATCH RESEND 3/3] arm: dts: st: fix DSI peripheral clock on stm32mp15 boards
Date: Fri, 24 Nov 2023 08:16:49 +0100
Message-ID: <20231124071649.372270-4-raphael.gallais-pou@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231124071649.372270-1-raphael.gallais-pou@foss.st.com>
References: <20231124071649.372270-1-raphael.gallais-pou@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-23_15,2023-11-22_01,2023-05-22_02

In RCC driver, 'DSI_K' is a kernel clock while 'DSI' has pclk4 as parent
clock, which means that it is an APB peripheral clock. Swap the clocks
in the DSI peripheral clock reference.

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
 arch/arm/boot/dts/st/stm32mp157.dtsi          | 2 +-
 arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157.dtsi b/arch/arm/boot/dts/st/stm32mp157.dtsi
index 6197d878894d..97cd24227cef 100644
--- a/arch/arm/boot/dts/st/stm32mp157.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157.dtsi
@@ -20,7 +20,7 @@ gpu: gpu@59000000 {
 		dsi: dsi@5a000000 {
 			compatible = "st,stm32-dsi";
 			reg = <0x5a000000 0x800>;
-			clocks = <&rcc DSI_K>, <&clk_hse>, <&rcc DSI_PX>;
+			clocks = <&rcc DSI>, <&clk_hse>, <&rcc DSI_PX>;
 			clock-names = "pclk", "ref", "px_clk";
 			phy-dsi-supply = <&reg18>;
 			resets = <&rcc DSI_R>;
diff --git a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
index afcd6285890c..8634699cc65e 100644
--- a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
@@ -30,7 +30,7 @@ &cpu1 {
 };
 
 &dsi {
-	clocks = <&rcc DSI_K>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
+	clocks = <&rcc DSI>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
 };
 
 &gpioz {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
index 39358d902000..3a897fa7e167 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
@@ -36,7 +36,7 @@ &cryp1 {
 
 &dsi {
 	phy-dsi-supply = <&scmi_reg18>;
-	clocks = <&rcc DSI_K>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
+	clocks = <&rcc DSI>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
 };
 
 &gpioz {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
index 07ea765a4553..29d6465b1fe6 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
@@ -35,7 +35,7 @@ &cryp1 {
 };
 
 &dsi {
-	clocks = <&rcc DSI_K>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
+	clocks = <&rcc DSI>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
 };
 
 &gpioz {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
index 813086ec2489..5acb78f0a084 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
@@ -37,7 +37,7 @@ &cryp1 {
 
 &dsi {
 	phy-dsi-supply = <&scmi_reg18>;
-	clocks = <&rcc DSI_K>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
+	clocks = <&rcc DSI>, <&scmi_clk CK_SCMI_HSE>, <&rcc DSI_PX>;
 };
 
 &gpioz {
-- 
2.25.1


