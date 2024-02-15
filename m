Return-Path: <devicetree+bounces-42061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 369FD85642E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 14:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B840A1F29EA2
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3DC12FF8C;
	Thu, 15 Feb 2024 13:20:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1698512E1C7
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 13:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708003252; cv=none; b=PNhBadH3XriNcjX/28TAZ90lXbxYyjiCrU4xvhvemq8PfHvlTIpgdK0XioXBUtX42nzH3n7oc2A2DWP6XTVMuSL82daTgPzuS8jrzVMOrj6t6S8WJfr0e+5UGMV96Ic7tLZWZ/hQNjdsf8/DOTEyxqWZXlgWT+MYP+/KEcLoZ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708003252; c=relaxed/simple;
	bh=IJsj6fPqNMEYrRi1LIlboNCv6z1L48IDBLXV5hXvHws=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qj+x9MbQYAtNQRRx2dVYjNXxmqyqE/QgcZ8aeXNiuBCZoJ+0KpMg/xb4aI9ppLs+WBjwvl4BOzhwqEGrHzZXSADX8uKfuvTNTbl1zFj1MlpQlBYY+79JO7If5dypOziOkL/201N4FwxV3mMjsQ5G/pk1x8rqlxCld+YsHqmLM3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:ac52:3a54:2a84:d65a])
	by laurent.telenet-ops.be with bizsmtp
	id nRLh2B00F0LVNSS01RLhcS; Thu, 15 Feb 2024 14:20:41 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rabfG-000gyf-6f;
	Thu, 15 Feb 2024 14:20:41 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rabfN-00HZb3-G6;
	Thu, 15 Feb 2024 14:20:41 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] arm64: dts: mediatek: mt8186: bpi-r3: Convert to sugar syntax
Date: Thu, 15 Feb 2024 14:20:39 +0100
Message-Id: <8c10c4bf701583d015506712ba9239dbc7547426.1708003159.git.geert+renesas@glider.be>
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

v2:
  - Rebase on top of commit e630c7b0b6a69f66 ("arm64: dts: mediatek:
    replace underscores in node names") in next-20240215.

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
index 543c13385d6e3f82..12ec15e3188de082 100644
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


