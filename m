Return-Path: <devicetree+bounces-12910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1387DBDB7
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:22:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DBB61C20866
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72BCF18E11;
	Mon, 30 Oct 2023 16:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="Bg8eKkjE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF2D18E07
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:22:42 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8BA2E4;
	Mon, 30 Oct 2023 09:22:40 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39UDTSN3012182;
	Mon, 30 Oct 2023 17:22:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=WM2MSIbMrg2Y/M9af1KUg6XNhb7hhWvF94YsQ4eGQyU=; b=Bg
	8eKkjELZQqyzZixDoaOqD9X8Tp6pGdxkyf+BcfHpMWxdRYJWmi3lEC48a97mcFmy
	yIf+fYLKYpB/yMz0K6f50ej3B16bFXac/y1jaX9J/Xh7aZ1gMxcEOTYY/dR7wN/e
	zK4rZVHJFzMkaY+u5HY3D6zc/Cpz4AS5hPE4GIyVw232U85F9L+QhVHomsObAzcR
	hAzE+fqtKcZZjxAiR1uTm/sthY7eVHdCJSONfQhb2k9Smn4lV1KIQnV3YVSUKslO
	misrgd6lN7dZSblr5ouPSp6Z8EBaRl0IKnQE6sKLfXudsYbwq7zYhPuh8W6oflH1
	txtW6KCbKhQU35jps37w==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3u0tw4gp65-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 17:22:20 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E9F9310005B;
	Mon, 30 Oct 2023 17:22:19 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E1B7A25C61B;
	Mon, 30 Oct 2023 17:22:19 +0100 (CET)
Received: from localhost (10.252.13.136) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 30 Oct
 2023 17:22:17 +0100
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
Subject: [PATCH 3/3] arm: dts: st: fix DSI peripheral clock on stm32mp15 boards
Date: Mon, 30 Oct 2023 17:21:57 +0100
Message-ID: <20231030162157.218901-4-raphael.gallais-pou@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231030162157.218901-1-raphael.gallais-pou@foss.st.com>
References: <20231030162157.218901-1-raphael.gallais-pou@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.252.13.136]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_10,2023-10-27_01,2023-05-22_02

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


