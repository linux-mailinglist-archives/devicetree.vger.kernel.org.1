Return-Path: <devicetree+bounces-26609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9420D81737A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 15:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B01F288453
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26345129EF9;
	Mon, 18 Dec 2023 14:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="hz1wIecO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD4B134DF
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 14:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702909394; x=1734445394;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=A5cVIHv3cv38/+w75fClFY3yEGCAdBHbtSLLA/hAAxM=;
  b=hz1wIecOZY2yBT1nsA7KlDhILGruoiL2lW1wVm7DloQ48P8mi/MrVnx4
   WKZoYLUQhUYfi3paiJCDLe1yKGmkQegmRhNu6E5exkdT2kyksD8ve4nlu
   gvbOS4tOFoLyASpXPL1qYOzw0HLrG2QOa1D+aghPYRzg//8y5oOFE7ugI
   X6l2jy583WKIkBUuCoKqybrPwF8Zz1Uy4JXCjGgq0GN8ifZPO1Q9h73hO
   PPHL1VhsmjumgKf+hzCbaBl5GAHtBEGK6Di74YqRk+dWIBecPzGFsqkYl
   Zsxcsxr3Rsf71eUBFo0beaLfnIdKH3MGnG/LoLnvhwd4GJRlfirmGCvgA
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34565308"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 15:23:12 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 19913280075;
	Mon, 18 Dec 2023 15:23:12 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8qxp: add GPU nodes
Date: Mon, 18 Dec 2023 15:23:12 +0100
Message-Id: <20231218142312.3175828-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the DT node for the GPU core found on the i.MX8QXP.

etnaviv-gpu 53100000.gpu: model: GC7000, revision: 6214
[drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Based on downstream commit [1]. I am not aware if additional
modifications are necessary in etnaviv driver though. The revision
number is slightly different to the one from imx8mp:
etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204

[1] https://github.com/Freescale/linux-fslc/commit/d0964b3f9afd8a75aca73921fdb0c128cc46c4fe

 .../boot/dts/freescale/imx8-ss-gpu0.dtsi      | 27 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi
new file mode 100644
index 000000000000..9b8a44aa63d6
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/firmware/imx/rsrc.h>
+
+gpu0_subsys: bus@53000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x53000000 0x0 0x53000000 0x1000000>;
+
+	gpu_3d0: gpu@53100000 {
+		compatible = "vivante,gc";
+		reg = <0x53100000 0x40000>;
+		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_MISC>;
+		clock-names = "core", "shader";
+		assigned-clocks = <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_PER>,
+				  <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_MISC>;
+		assigned-clock-rates = <700000000>, <850000000>;
+		power-domains = <&pd IMX_SC_R_GPU_0_PID0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index fdbb4242b157..10e16d84c0c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -317,6 +317,7 @@ map0 {
 	/* sorted in register address */
 	#include "imx8-ss-img.dtsi"
 	#include "imx8-ss-vpu.dtsi"
+	#include "imx8-ss-gpu0.dtsi"
 	#include "imx8-ss-adma.dtsi"
 	#include "imx8-ss-conn.dtsi"
 	#include "imx8-ss-ddr.dtsi"
-- 
2.34.1


