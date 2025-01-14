Return-Path: <devicetree+bounces-138356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66993A10168
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 08:39:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74C1216816E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EDE2500BE;
	Tue, 14 Jan 2025 07:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nb3bMJA+"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609C12451FD;
	Tue, 14 Jan 2025 07:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840344; cv=none; b=lGZrNbG3vzmmbXc5AOHWcV5s4Nc9C7JcMw4EoaIXDiK+gfO3Fj0oCalBsKlZs0l6vJmLqxeNtioX8+B4AMfQgzKC0bSADxsZO0h0D5ykp3yuET4fVJKPyoN5SyRCEb1/mOSz9cbramR36TrckoWBNq+j8WJtowkKaqLPmn76b3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840344; c=relaxed/simple;
	bh=P2t7gjhqWFLlKXsoX9Y2INCA+LQgxBOWkUpFnei/LYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=en/EH0EW7FsKYKDBIv3aO5aPtXIXN9o485y5l8y0EYWW1XtGu/BLMVc2oFfkmXDeOL7YD7WX7tP4jKOvqCHFV5bjaLP6omX8JrZuOH3d4eB57G90I0ycPpQL6mnuQRqh7+Heko1VZ4Kjk3uvg2/4IH/Nm3cptmOMISAELTCRsRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nb3bMJA+; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736840340;
	bh=P2t7gjhqWFLlKXsoX9Y2INCA+LQgxBOWkUpFnei/LYQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nb3bMJA+83a8eUnepJlXvcg+lDszD6biOyQrQsZ+9N6x6ps9jBeYSoDeaEVUiCB61
	 Gi3Rrjqi4NtW4ce0VPE5rIDJ1RBwXq+HiB/1yfeHjozWEy1CiLOjYu7M3X8GxfZ3wj
	 eDKQKIUWzy7Z4pc8YWgmkP0yaTakoZLlj+g0q5n9q8sfixcnnUF8c5QGbfSG7zkolN
	 9XHu6NP36esW5BXotvYiEEaYVCIDPdF4fV9oGK8tbpLuDC9u6DRUQ21OQq3BIsQA5d
	 AZ2KPAu6xUgYZ3cjwTZ/hIsiw1N1KLbjlpzMAJ8OoUSfGiplK6l3fSKKW8R99Lpkol
	 LJbHq+R5xrNow==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C284B17E0E88;
	Tue, 14 Jan 2025 08:38:59 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 14 Jan 2025 08:38:40 +0100
Subject: [PATCH 2/3] arm64: dts: mediatek: add support for MT8370 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-dts_mt8370-genio-510-v1-2-8517ee0fdbe8@collabora.com>
References: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
In-Reply-To: <20250114-dts_mt8370-genio-510-v1-0-8517ee0fdbe8@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 kernel@collabora.com, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736840337; l=3958;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=P2t7gjhqWFLlKXsoX9Y2INCA+LQgxBOWkUpFnei/LYQ=;
 b=vfDyJ1tSRkRUWwcsaMOSfbZSKopx/PTzw+dxxMfL6rXCq7U/P2/4aJlkBbJ3StWZlmManR5eH
 wE/hh/5+NBSAhhcUS/JTIr789Qa381VuYr9uxcuCPRmXv1DOAkEOTFR
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This commit add the support of the Mediatek MT8370 SoC.
It is a less powerful variant of MT8390 SoC and their
main differences are:
- Arm Cortex-A55 cores number (4 vs 6)
- Arm Cortex-A78 core speed (2.0 GHz vs 2.2 Ghz)
- Arm Mali-G57 GPU core number (2 vs 3)

Like MT8390, MT8370 hardware register maps are identical to MT8188.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi |  8 ++--
 arch/arm64/boot/dts/mediatek/mt8370.dtsi | 64 ++++++++++++++++++++++++++++++++
 2 files changed, 68 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 338120930b819645662465fa7b3c6be6491764ff..5d78f51c6183c15018986df2c76e6fdc1f9f43b4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -492,7 +492,7 @@ cpu_little0_crit: trip-crit {
 			};
 
 			cooling-maps {
-				map0 {
+				cpu_little0_cooling_map0: map0 {
 					trip = <&cpu_little0_alert0>;
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
@@ -530,7 +530,7 @@ cpu_little1_crit: trip-crit {
 			};
 
 			cooling-maps {
-				map0 {
+				cpu_little1_cooling_map0: map0 {
 					trip = <&cpu_little1_alert0>;
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
@@ -568,7 +568,7 @@ cpu_little2_crit: trip-crit {
 			};
 
 			cooling-maps {
-				map0 {
+				cpu_little2_cooling_map0: map0 {
 					trip = <&cpu_little2_alert0>;
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
@@ -606,7 +606,7 @@ cpu_little3_crit: trip-crit {
 			};
 
 			cooling-maps {
-				map0 {
+				cpu_little3_cooling_map0: map0 {
 					trip = <&cpu_little3_alert0>;
 					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
 							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8370.dtsi b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..cf1a3759451ff899ce9e63e5a00f192fb483f6e5
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8370.dtsi
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2025 Collabora Ltd.
+ * Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
+ */
+
+/dts-v1/;
+#include "mt8188.dtsi"
+
+/ {
+	compatible = "mediatek,mt8370";
+
+	cpus {
+		/delete-node/ cpu@400;
+		/delete-node/ cpu@500;
+
+		cpu-map {
+			cluster0 {
+				/delete-node/ core4;
+				/delete-node/ core5;
+			};
+		};
+	};
+};
+
+&cpu6 {
+	clock-frequency = <2200000000>;
+};
+
+&cpu7 {
+	clock-frequency = <2200000000>;
+};
+
+&cpu_little0_cooling_map0 {
+	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+};
+
+&cpu_little1_cooling_map0 {
+	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+};
+
+&cpu_little2_cooling_map0 {
+	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+};
+
+&cpu_little3_cooling_map0 {
+	cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+};
+
+&ppi_cluster0 {
+	affinity = <&cpu0 &cpu1 &cpu2 &cpu3>;
+};

-- 
2.47.1


