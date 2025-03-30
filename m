Return-Path: <devicetree+bounces-161856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7743A75BF6
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 21:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 377E63A8573
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 19:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B5C64A8F;
	Sun, 30 Mar 2025 19:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="AdPKdxgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CB18F4A
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 19:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743363550; cv=none; b=LoLZaKWrmxQv7iQHn716QsgyPS87tYF3o38WXK9eSXIONGd17qRFtfvfpyrpyd+Zq2VmL5dDCao+KUfvmPmpHsaRAkEmAFElcSSmTeWjAwykMOQLTkajw1amc12ZYVmfN8Hskdo5zzGzCTAsmVCJ3LxoFPhofi9+LDxDz1bdn6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743363550; c=relaxed/simple;
	bh=AQ6+BT3MNs9Cu46R56xSr3zXsTFQbmGVYseRgqcdsSw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TXr689ooFmtL/nY2kvWue8Bwos5oGVQh25ttej91LMXKdbAhdTGGBfsUg21oh1fEPWg8smq1eUV82tVhYmKpF+DmrzxubLTbeB1zLEtCnGiHeyiHUzdvUz7+h+GxkwqiriC77P5Z976YOB4a+rLGvL9jrAIv44NqvDLjIC1NWtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=AdPKdxgg; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=VBojEBFyLp9WSh7299XrM24sfVhbu9iXTDEJyezKn1k=; b=AdPKdx
	ggZS/WNRvwCUDkMRs0OkAfkJmhDRGh+tojYuCOPEBQxH9ifJjLGzcWeOyIDfXlmt
	V36WxI3f3kGhQHeDiod/UX9m3ypzzkl5OqsyfrVLe2bcYq7ePlPKi0GTBUjhENZj
	XH4bDaL1L+lPjVBRBrAJDYN+Q+ieP/4Fpr9XfE4jAbkzppXTsQFV3kM1fyAvog/a
	n0Ro7pX+x2d1hKi1kNdmQk/h6wl5qI3qUs+ylO66kNcoGhZTWSOb6X/DJ46R55H5
	GJNypI/j3dWHecUwuGGmn7wmYKUqIIw63PKTrvkhsqJrdiFX5++6qXfkU1qCuEnw
	Ugbx5dlg4ZXtsD2A==
Received: (qmail 964817 invoked from network); 30 Mar 2025 21:39:04 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Mar 2025 21:39:04 +0200
X-UD-Smtp-Session: l3s3148p1@s+nDdJQxRtlQ8qei
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] ARM: dts: marvell: use correct ohci/ehci node names
Date: Sun, 30 Mar 2025 21:38:32 +0200
Message-ID: <20250330193833.21970-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They should be named "usb@".

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/marvell/kirkwood-db.dtsi             | 2 +-
 arch/arm/boot/dts/marvell/kirkwood-dir665.dts          | 2 +-
 arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts | 2 +-
 arch/arm/boot/dts/marvell/kirkwood.dtsi                | 2 +-
 arch/arm/boot/dts/marvell/orion5x.dtsi                 | 4 ++--
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi b/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
index 6fe2e31534af..8bacaeb4f4bd 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
@@ -39,7 +39,7 @@ sata@80000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts b/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
index 2f6793f794cd..36394d1ab3e2 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
+++ b/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
@@ -129,7 +129,7 @@ i2c@11000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts b/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
index e3b41784c876..051579fc36b8 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
+++ b/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
@@ -63,7 +63,7 @@ serial@12000 {
 			status = "okay";
 		};
 
-		ehci@50000 {
+		usb@50000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/marvell/kirkwood.dtsi b/arch/arm/boot/dts/marvell/kirkwood.dtsi
index 815ef7719d13..8a1338e672b3 100644
--- a/arch/arm/boot/dts/marvell/kirkwood.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood.dtsi
@@ -263,7 +263,7 @@ cesa: crypto@30000 {
 			status = "okay";
 		};
 
-		usb0: ehci@50000 {
+		usb0: usb@50000 {
 			compatible = "marvell,orion-ehci";
 			reg = <0x50000 0x1000>;
 			interrupts = <19>;
diff --git a/arch/arm/boot/dts/marvell/orion5x.dtsi b/arch/arm/boot/dts/marvell/orion5x.dtsi
index 2d41f5c166ee..939259c57e05 100644
--- a/arch/arm/boot/dts/marvell/orion5x.dtsi
+++ b/arch/arm/boot/dts/marvell/orion5x.dtsi
@@ -146,7 +146,7 @@ wdt: wdt@20300 {
 				status = "okay";
 			};
 
-			ehci0: ehci@50000 {
+			ehci0: usb@50000 {
 				compatible = "marvell,orion-ehci";
 				reg = <0x50000 0x1000>;
 				interrupts = <17>;
@@ -218,7 +218,7 @@ cesa: crypto@90000 {
 				status = "okay";
 			};
 
-			ehci1: ehci@a0000 {
+			ehci1: usb@a0000 {
 				compatible = "marvell,orion-ehci";
 				reg = <0xa0000 0x1000>;
 				interrupts = <12>;
-- 
2.47.2


