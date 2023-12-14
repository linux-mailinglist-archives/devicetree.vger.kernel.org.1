Return-Path: <devicetree+bounces-25383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D7F813139
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B72A1C2169A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010E655784;
	Thu, 14 Dec 2023 13:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="LANOjHpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED1D112C
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702560006; x=1734096006;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=YfHrxhhonBWfGnPfZ5m0iZ+Sa6IWk6Y+ewoIgz5dMG0=;
  b=LANOjHpHt19jHGwYC9JnDJa5mcBCo6n9jbkPalJTXgKv6AujEQm4+SYN
   nbdawAaHWTt3XKr6XfBlHK4dPCKOX895P5yKVQ4IXZ2VIpeL65PkHhw8p
   JCYZ53o6hGvmhZt68n5e9Py+vmFWeqWc+Csxp7o5od0Z/kMb89tOY7/7I
   DrBDJn7RoE5CU0twZPgDkjSB0mVa4kXYiGYl+zPHzP42O5Gi1cx0wFW9l
   xu2OEWoRR8PI6C3uCG+ckTWdl7Marb+zKPfYAjJ0EiaPKMZlqqwcmcCfx
   Pv142R4JRRSwk9Afqkt+m5I6S0fH7XpyyZGePUDZKADBWUgpJSrGwWz4I
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34509898"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 14:20:04 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 00DCE280075;
	Thu, 14 Dec 2023 14:20:03 +0100 (CET)
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
Subject: [PATCH 1/1] arm64: dts: imx8qxp: Add VPU subsystem file
Date: Thu, 14 Dec 2023 14:20:00 +0100
Message-Id: <20231214132000.1927638-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

imx8qxp re-uses imx8qm VPU subsystem file, but it has different base
addresses. Also imx8qxp has only two VPU cores, delete vpu_vore2 and
mu2_m0 accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8qxp-ss-vpu.dtsi      | 17 +++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi      |  2 +-
 2 files changed, 18 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-vpu.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-vpu.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-vpu.dtsi
new file mode 100644
index 0000000000000..7894a3ab26d6b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-vpu.dtsi
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR X11)
+/*
+ * Copyright 2023 TQ-Systems GmbH <linux@ew.tq-group.com>,
+ * D-82229 Seefeld, Germany.
+ * Author: Alexander Stein
+ */
+
+&vpu_core0 {
+	reg = <0x2d040000 0x10000>;
+};
+
+&vpu_core1 {
+	reg = <0x2d050000 0x10000>;
+};
+
+/delete-node/ &mu2_m0;
+/delete-node/ &vpu_core2;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index f014d0a764ea4..958267b333403 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -48,7 +48,6 @@ aliases {
 		serial3 = &lpuart3;
 		vpu-core0 = &vpu_core0;
 		vpu-core1 = &vpu_core1;
-		vpu-core2 = &vpu_core2;
 	};
 
 	cpus {
@@ -318,6 +317,7 @@ map0 {
 };
 
 #include "imx8qxp-ss-img.dtsi"
+#include "imx8qxp-ss-vpu.dtsi"
 #include "imx8qxp-ss-adma.dtsi"
 #include "imx8qxp-ss-conn.dtsi"
 #include "imx8qxp-ss-lsio.dtsi"
-- 
2.34.1


