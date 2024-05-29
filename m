Return-Path: <devicetree+bounces-70449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7488D35FD
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B1721F26290
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 12:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24116180A7E;
	Wed, 29 May 2024 12:06:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A727317C
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716984385; cv=none; b=mzAW45g/BY2TPAzsmVLgi/aocnYMmIQoYs7WPbr+JOHkmakCMwXkt9y7BcxWNvB2d426ViFyTHF6aHxiKutKAFNqy4oe3OEsv4tAoGllJQP36kcxmTpef2HTseN3RtUoYEYdRZdbUzPOKNl2/bKSgDsM2dVriNNgdeZCWcilYY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716984385; c=relaxed/simple;
	bh=wSQmob3RXwfc1a97biSpzAglk8OKCx9yZbe8Wz2zf5Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tEA4HJKsEUX2bk2/LEe2MhV86+OkpFCszWx4GnIYHpXCXTfWSEz46dxdyIE0/A9cBGG0h6f5EtDPsfV3ts9lbu5qHPjAKkq5Pd0U4m+rqiFak4Ynjc1KiyNhk67WSyDkVCZKFfFhSnA98IuLJkiCIcU/Eqa+kpKAOhiuXI/63Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:1b01:1838:131c:4de4])
	by michel.telenet-ops.be with bizsmtp
	id V06J2C00H3VPV9V0606JRr; Wed, 29 May 2024 14:06:18 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCI3T-00GbKO-SF;
	Wed, 29 May 2024 14:06:18 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1sCI4Q-009XF6-73;
	Wed, 29 May 2024 14:06:18 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: soc@kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH resend v3] arm64: dts: mediatek: mt7986a: bpi-r3: Convert to sugar syntax
Date: Wed, 29 May 2024 14:06:14 +0200
Message-Id: <2fd900a30b5a0f7de4ea68f60bac250794b8cdb4.1716984213.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Overlay syntactic sugar for generating target-path fragments is
supported by the version of dtc supplied with the kernel since commit
50aafd60898a8b3e ("scripts/dtc: Update to upstream version
v1.4.6-21-g84e414b0b5bc").  Hence convert the Bananapi R3 overlay
devicetree source files to sugar syntax, improving readability.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
No changes in generated dtbo.

v3:
  - Fix SoC part number,

v2:
  - Rebase on top of commit e630c7b0b6a69f66 ("arm64: dts: mediatek:
    replace underscores in node names") in next-20240215 and later.
---
 .../mt7986a-bananapi-bpi-r3-emmc.dtso         | 28 +++---
 .../mt7986a-bananapi-bpi-r3-nand.dtso         | 74 ++++++++-------
 .../mediatek/mt7986a-bananapi-bpi-r3-nor.dtso | 90 +++++++++----------
 .../mediatek/mt7986a-bananapi-bpi-r3-sd.dtso  | 16 ++--
 4 files changed, 98 insertions(+), 110 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso
index 779dc6782bb1986f..047a8388811eb9c0 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso
@@ -9,21 +9,17 @@
 
 / {
 	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
-
-	fragment@0 {
-		target-path = "/soc/mmc@11230000";
-		__overlay__ {
-			bus-width = <8>;
-			max-frequency = <200000000>;
-			cap-mmc-highspeed;
-			mmc-hs200-1_8v;
-			mmc-hs400-1_8v;
-			hs400-ds-delay = <0x14014>;
-			non-removable;
-			no-sd;
-			no-sdio;
-			status = "okay";
-		};
-	};
 };
 
+&{/soc/mmc@11230000} {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	hs400-ds-delay = <0x14014>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
index 7b97c5c91bd0264d..24398f8a7da4345c 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nand.dtso
@@ -9,46 +9,44 @@
 
 / {
 	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
+};
+
+&{/soc/spi@1100a000} {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+		spi-tx-buswidth = <4>;
+		spi-rx-buswidth = <4>;
 
-	fragment@0 {
-		target-path = "/soc/spi@1100a000";
-		__overlay__ {
+		partitions {
+			compatible = "fixed-partitions";
 			#address-cells = <1>;
-			#size-cells = <0>;
-			spi_nand: flash@0 {
-				compatible = "spi-nand";
-				reg = <0>;
-				spi-max-frequency = <10000000>;
-				spi-tx-buswidth = <4>;
-				spi-rx-buswidth = <4>;
-
-				partitions {
-					compatible = "fixed-partitions";
-					#address-cells = <1>;
-					#size-cells = <1>;
-
-					partition@0 {
-						label = "bl2";
-						reg = <0x0 0x100000>;
-						read-only;
-					};
-
-					partition@100000 {
-						label = "reserved";
-						reg = <0x100000 0x280000>;
-					};
-
-					partition@380000 {
-						label = "fip";
-						reg = <0x380000 0x200000>;
-						read-only;
-					};
-
-					partition@580000 {
-						label = "ubi";
-						reg = <0x580000 0x7a80000>;
-					};
-				};
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "bl2";
+				reg = <0x0 0x100000>;
+				read-only;
+			};
+
+			partition@100000 {
+				label = "reserved";
+				reg = <0x100000 0x280000>;
+			};
+
+			partition@380000 {
+				label = "fip";
+				reg = <0x380000 0x200000>;
+				read-only;
+			};
+
+			partition@580000 {
+				label = "ubi";
+				reg = <0x580000 0x7a80000>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dtso b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dtso
index e48881be4ed60c98..6a0d529b54aca5bd 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dtso
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-nor.dtso
@@ -9,54 +9,52 @@
 
 / {
 	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
+};
+
+&{/soc/spi@1100a000} {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-	fragment@0 {
-		target-path = "/soc/spi@1100a000";
-		__overlay__ {
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
 			#address-cells = <1>;
-			#size-cells = <0>;
-			flash@0 {
-				compatible = "jedec,spi-nor";
-				reg = <0>;
-				spi-max-frequency = <10000000>;
-
-				partitions {
-					compatible = "fixed-partitions";
-					#address-cells = <1>;
-					#size-cells = <1>;
-
-					partition@0 {
-						label = "bl2";
-						reg = <0x0 0x40000>;
-						read-only;
-					};
-
-					partition@40000 {
-						label = "u-boot-env";
-						reg = <0x40000 0x40000>;
-					};
-
-					partition@80000 {
-						label = "reserved2";
-						reg = <0x80000 0x80000>;
-					};
-
-					partition@100000 {
-						label = "fip";
-						reg = <0x100000 0x80000>;
-						read-only;
-					};
-
-					partition@180000 {
-						label = "recovery";
-						reg = <0x180000 0xa80000>;
-					};
-
-					partition@c00000 {
-						label = "fit";
-						reg = <0xc00000 0x1400000>;
-					};
-				};
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "bl2";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x40000 0x40000>;
+			};
+
+			partition@80000 {
+				label = "reserved2";
+				reg = <0x80000 0x80000>;
+			};
+
+			partition@100000 {
+				label = "fip";
+				reg = <0x100000 0x80000>;
+				read-only;
+			};
+
+			partition@180000 {
+				label = "recovery";
+				reg = <0x180000 0xa80000>;
+			};
+
+			partition@c00000 {
+				label = "fit";
+				reg = <0xc00000 0x1400000>;
 			};
 		};
 	};
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dtso b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dtso
index f623bce075ce6ea4..d9e01967acc471b8 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dtso
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dtso
@@ -9,15 +9,11 @@
 
 / {
 	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
-
-	fragment@0 {
-		target-path = "/soc/mmc@11230000";
-		__overlay__ {
-			bus-width = <4>;
-			max-frequency = <52000000>;
-			cap-sd-highspeed;
-			status = "okay";
-		};
-	};
 };
 
+&{/soc/mmc@11230000} {
+	bus-width = <4>;
+	max-frequency = <52000000>;
+	cap-sd-highspeed;
+	status = "okay";
+};
-- 
2.34.1


