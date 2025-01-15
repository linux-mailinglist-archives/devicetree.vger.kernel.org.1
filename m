Return-Path: <devicetree+bounces-138743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB9FA11F69
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 11:30:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1D4F3A4FBE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 10:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797DB2416BD;
	Wed, 15 Jan 2025 10:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EYza1LZP"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F667241695;
	Wed, 15 Jan 2025 10:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736936990; cv=none; b=n+YOGsfnTK+6/WPLrW9tnAEjjO/+6BimvJVEcDGitU48ZfZkR4cLhGtW2f/clmIUuMVcGxt2zqHj4TnBWxwPagG/eXub4tIokxbo97UdCoyOTSxthmcz9F890snXgHlh9xLwCnA75HnPnZw+yYgW8V3hufouqy9Osx60ijf6r1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736936990; c=relaxed/simple;
	bh=s2hudm/9G24yMYWoXmUzYddQItAemdzK4MaLW2IhpwA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PkbCEejPJnf8MJ7718kMRVKDHx6/my1wuHoQDrJhKB2uNFJFfLOy2qYIKz0Rdhb5xTIPmGSzRdgdxW/9BFXqxf6PKrFeo3e+LWGp/zNPPy4Xc5fUDIx5nR1mvxXO8nEL0dABIRt+IVcvMJzMkHxe+q9atZXRU3UKZMqaZcilxEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EYza1LZP; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736936981;
	bh=s2hudm/9G24yMYWoXmUzYddQItAemdzK4MaLW2IhpwA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EYza1LZPJrixGBPSfKLn/aYZtHSczrtUTFbL6gPIOFZpN3RHZdrmtH0Prg/kneLs/
	 MVW0vClLtjN/9Trkn4ivR721MQ5A9KAOhFylbi3pvK2Osn2CrSP6chjv4E4sR/4nNz
	 6UZL6yQgjH26Zre9LBNCyzPRGhG0LozCgQS/QGxDvQmKZhALHPVzMmjGHzWVksZTUZ
	 jT/GU5aammM6grGOHkbzkagpzYbtEm5HcWPyFGFax1t8r0RJwUKjZoh8DvBSWn2vwB
	 gELWgPQmUrHTch5K+pYdEwqZ+HnPf7T/0XuBeEwfGHj3lfHt5ycDOCZPNQVf6nPLHw
	 CyWAsmlvEIsdQ==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BE9CB17E0DE6;
	Wed, 15 Jan 2025 11:29:39 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 15 Jan 2025 11:29:03 +0100
Subject: [PATCH v2 2/4] arm64: dts: mediatek: add support for MT8370 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-dts_mt8370-genio-510-v2-2-fc9b01d08834@collabora.com>
References: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
In-Reply-To: <20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736936976; l=4097;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=s2hudm/9G24yMYWoXmUzYddQItAemdzK4MaLW2IhpwA=;
 b=/hQGoMzTN/tilwsBGwhVJrvyaWrGV45/WGTeFhhPRaaEFcjM63YtYK4ZjdRK8EJi3usrmLaY4
 VWqB874OvYJCskGR3xrC1+DRxEHMyzRdOdZ7l8M2RQj3UqvKJrkKpS9
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This commit adds the support of the Mediatek MT8370 SoC.
It is a less powerful variant of MT8390 SoC and their
main differences are:
- Arm Cortex-A55 cores number (4 vs 6)
- Arm Cortex-A78 core speed (2.0 GHz vs 2.2 Ghz)
- Arm Mali-G57 GPU core number (2 vs 3)

Like MT8390, MT8370 hardware register maps are identical to MT8188.

Note:
In this commit, the mt8370.dtsi does not contain the needed overrides
to support the Mali GPU (to be done in a future commit).

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
2.48.0


