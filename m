Return-Path: <devicetree+bounces-35101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8237083C539
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11F84B22CA4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF716EB5C;
	Thu, 25 Jan 2024 14:49:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from albert.telenet-ops.be (albert.telenet-ops.be [195.130.137.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C526EB40
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194153; cv=none; b=Xno0UlepnJ6ylS0eUvHuMNWIBJ86yJ/hQSNiNFLcbWDcjxprjA/dAcuBkySsPDg3mQFDt+WhYmNI5zgsT+Sn0CNEu7Gn+ANlTqx8PC1Ghpoyjg444w0am4hnV3w//sNUuZ0M9xKfM+5qNgKe6Yv6efX6C3hopHqNuSr9hH47yBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194153; c=relaxed/simple;
	bh=P/zcoZqGFctdEkXzBEUIo6CiANiocI5yPjML3sUTbAA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sBc7VHeksg6TQUWeClPZDjelfvw8DKt8+qJnegbIk4gyrHVl+cfYqJX9xL1/YU7sn1xXDh9Yf7KNARtB/b1qwfEE80+uRG96XuhWcuAR3lP9YmAvEqFfCxDRGbrtcKOrwiz0BCaFzsTIUbrGHm66BKroWfuty3N/5sI793tVEUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by albert.telenet-ops.be with bizsmtp
	id f2p02B00W58agq2062p021; Thu, 25 Jan 2024 15:49:02 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT11W-00GUs6-KZ;
	Thu, 25 Jan 2024 15:49:00 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT12K-00Flu4-Jv;
	Thu, 25 Jan 2024 15:49:00 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v2 4/9] arm64: dts: renesas: white-hawk: Drop SoC parts from sub boards
Date: Thu, 25 Jan 2024 15:48:54 +0100
Message-Id: <f89613d0df04cfa6196f8797fe655cf7cec812de.1706192990.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706192990.git.geert+renesas@glider.be>
References: <cover.1706192990.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The White Hawk CSI/DSI and RAVB/Ethernet(1000Base-T1) sub boards are not
specific to R-Car V4H.

Hence rename their DTS file names to drop the "r8a779g0-" prefix, and
remove any references to R-Car V4H.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2:
  - Add Reviewed-by.
---
 arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts           | 4 ++--
 ...a779g0-white-hawk-csi-dsi.dtsi => white-hawk-csi-dsi.dtsi} | 2 +-
 ...79g0-white-hawk-ethernet.dtsi => white-hawk-ethernet.dtsi} | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/arm64/boot/dts/renesas/{r8a779g0-white-hawk-csi-dsi.dtsi => white-hawk-csi-dsi.dtsi} (97%)
 rename arch/arm64/boot/dts/renesas/{r8a779g0-white-hawk-ethernet.dtsi => white-hawk-ethernet.dtsi} (76%)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
index eff1ef6e2cc83aba..8d82294a1a56444c 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk.dts
@@ -7,8 +7,8 @@
 
 /dts-v1/;
 #include "r8a779g0-white-hawk-cpu.dtsi"
-#include "r8a779g0-white-hawk-csi-dsi.dtsi"
-#include "r8a779g0-white-hawk-ethernet.dtsi"
+#include "white-hawk-csi-dsi.dtsi"
+#include "white-hawk-ethernet.dtsi"
 
 / {
 	model = "Renesas White Hawk CPU and Breakout boards based on r8a779g0";
diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-csi-dsi.dtsi b/arch/arm64/boot/dts/renesas/white-hawk-csi-dsi.dtsi
similarity index 97%
rename from arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-csi-dsi.dtsi
rename to arch/arm64/boot/dts/renesas/white-hawk-csi-dsi.dtsi
index f8537f7ea4defaba..3006b0a64f41e625 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-csi-dsi.dtsi
+++ b/arch/arm64/boot/dts/renesas/white-hawk-csi-dsi.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
- * Device Tree Source for the R-Car V4H White Hawk CSI/DSI sub-board
+ * Device Tree Source for the White Hawk CSI/DSI sub-board
  *
  * Copyright (C) 2022 Glider bv
  */
diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-ethernet.dtsi b/arch/arm64/boot/dts/renesas/white-hawk-ethernet.dtsi
similarity index 76%
rename from arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-ethernet.dtsi
rename to arch/arm64/boot/dts/renesas/white-hawk-ethernet.dtsi
index 4f411f95c674bd51..a218fda337cf4308 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-ethernet.dtsi
+++ b/arch/arm64/boot/dts/renesas/white-hawk-ethernet.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 /*
- * Device Tree Source for the R-Car V4H White Hawk RAVB/Ethernet(1000Base-T1)
+ * Device Tree Source for the White Hawk RAVB/Ethernet(1000Base-T1)
  * sub-board
  *
  * Copyright (C) 2022 Glider bv
-- 
2.34.1


