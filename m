Return-Path: <devicetree+bounces-25410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 280BE8132F6
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:23:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 586FA1C21AA4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25EF759E4F;
	Thu, 14 Dec 2023 14:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="e7EtUyn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A301C9C;
	Thu, 14 Dec 2023 06:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702563813; x=1734099813;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GuTsEbsrgq1gO61F1rlbCZQ+oOYllzhwEJYqGvGdEg4=;
  b=e7EtUyn7gjK8abNQ2hUHxKalezKhquAVsmgWddlozqbAJiouPb3DDbk+
   s1+RYTiUuoo+RaEF5/IZTQBS5D8EgqvuDUJ85gYchiPA4OHI8me1cRbWv
   XxgdyPAcIkOD/luABk8hD/6+aib/4dqmfADidQmyqbUOxtbcgPcsZYBQz
   WWNM/EQCJP0XEdytO2V/OaQPIeeJE1eOyfZqE+BNU4w9KqyVOVZ870z94
   eWhUBDz+IVk3PSA5CGyUuwNcH7XLFZ7sEnfl9jIYAN+d99KX4AZgOVZ+R
   BN8iMJh5KKuLcPY2/gtz3YVxUt36sjgfg9eoBTmr9zdQ8vWE7JgfjPUIU
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34512085"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 15:23:30 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E3706280084;
	Thu, 14 Dec 2023 15:23:29 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] arm64: dts: imx: add imx8dxp support
Date: Thu, 14 Dec 2023 15:23:24 +0100
Message-Id: <20231214142327.1962914-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
References: <20231214142327.1962914-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

i.MX 8DualXPlus is a dual (2x) Cortex-A35 processor with powerful
graphic and multimedia features. This patch adds the SoC dtsi, based on
imx8qxp removing the additional CPU cores. Peripherals are identical.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8dxp.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxp.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8dxp.dtsi b/arch/arm64/boot/dts/freescale/imx8dxp.dtsi
new file mode 100644
index 0000000000000..a8f7352332c05
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxp.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2019 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8qxp.dtsi"
+
+/delete-node/ &A35_2;
+/delete-node/ &A35_3;
+
+&thermal_zones {
+	cpu0-thermal {
+		cooling-maps {
+			map0 {
+				cooling-device =
+				<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
-- 
2.34.1


