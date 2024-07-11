Return-Path: <devicetree+bounces-84839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFC992DEDA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 05:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2690283E6A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 03:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BD5179AF;
	Thu, 11 Jul 2024 03:42:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9658417597
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 03:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720669338; cv=none; b=WhK3S1tMTzWIcLQC4YQ1GtUeGhrehoAUvgDIv9J9C2L9Ngk9zvgfEsCZc2ZSIDaU2hLlQrOYA0UWw7POB+PC3boEyxfDI3cHhZU0wWPZ/+E1/lmpJU1Bs8wLtv4iq4nxVMaHmDuHiFkHnJuq1z+41zgbLIBWQbbGCuY8hw/txX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720669338; c=relaxed/simple;
	bh=Yply6tRzkCiH6O/2kmxBAx/rJdtrQ4vCr9r9C0rJlxE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bsciu3ts3nhK7cyMHPBne9ouSAdQjQvAdRDY+a13vW2IF50ZvNGm00GUVI+GsutphZQIzdJIS14NOREndTKEKdwof2QteYuVatASqN5m/ceXc8n8g+Z6EI/h3tYwPC38bkkJdwJToseiliLFrwEl9O9qr2FeiavDfnn1WecsFtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46B3eorh032509;
	Thu, 11 Jul 2024 12:41:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: amlogic: change product name for Radxa ZERO 2 (Pro)
Date: Thu, 11 Jul 2024 12:40:35 +0900
Message-ID: <20240711034035.3921122-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240711034035.3921122-1-naoki@radxa.com>
References: <20240711034035.3921122-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

a while ago, we changed product name (hardware is same),

from: Radxa ZERO2
  to: Radxa ZERO 2 Pro

this patch reflect the change in dts.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/amlogic/Makefile                        | 2 +-
 ...-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} (98%)

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 29417f04f886..5694ad0edcde 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -31,7 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2l.dtb
-dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero2.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero-2pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-bananapi-m2s.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-ugoos-am6.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
similarity index 98%
rename from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
rename to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
index 8445701100d0..5514ca9a62fb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
@@ -16,8 +16,8 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
-	model = "Radxa Zero2";
+	compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
+	model = "Radxa ZERO 2 Pro";
 
 	aliases {
 		serial0 = &uart_AO;
@@ -169,7 +169,7 @@ vddcpu_b: regulator-vddcpu-b {
 
 	sound {
 		compatible = "amlogic,axg-sound-card";
-		model = "RADXA-ZERO2";
+		model = "RADXA-ZERO-2PRO";
 		audio-aux-devs = <&tdmout_b>;
 		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-- 
2.43.0


