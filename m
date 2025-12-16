Return-Path: <devicetree+bounces-246969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 740E6CC20D8
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0BCC30215C1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD71B33D6C0;
	Tue, 16 Dec 2025 11:01:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F1633D6C5;
	Tue, 16 Dec 2025 11:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882888; cv=none; b=dNzikVT8+2RlznLC2/Uz1tZHvncRoT42HQ/CeCVOCEIuw+CRq2uIAULGetvFbVevBaw7/SsHC/Y0x5fZJhXLGUv+UTqSied+x4Rc37QejhldDfRKEfQ86dz4h01DVfPeXRtiWfdpWzZ+wXtMq0a9I8J7sP9vaCtl2l06r+UFFyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882888; c=relaxed/simple;
	bh=MH6hX3MJDl4ugLecY30CUQUWwX0PJ+Ugv6i4r2/BwYU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A5nKVF4U7WUOIFrqDTLIsYfAc0bvEHXJo59mrtf5E4YFF0BYmGLbPa8sFDSlSnfXUCWJ1+J0WkIMa3GlbEIDcZ5Y+0i/atFcwZmjpt+eJAR1Gx53CSEqeiaKgAfBy7rtvn3VJQ9hiclvrQyT60FhVZ6eTX4DdFrtxdCsGbsXPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO iyokan3-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:26 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan3-ex.css.socionext.com (Postfix) with ESMTP id 2638E2091499;
	Tue, 16 Dec 2025 20:01:26 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:26 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 7C7941C52;
	Tue, 16 Dec 2025 20:01:25 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 1/5] ARM: dts: uniphier: Add missing watchdog nodes
Date: Tue, 16 Dec 2025 20:01:09 +0900
Message-Id: <20251216110113.1801245-2-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
References: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some UniPhier armv7 SoCs also have watchdog functions and are available.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/socionext/uniphier-pro4.dtsi | 4 ++++
 arch/arm/boot/dts/socionext/uniphier-pro5.dtsi | 4 ++++
 arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi | 4 ++++
 arch/arm/boot/dts/socionext/uniphier-sld8.dtsi | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi b/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
index ba55af30e904..041add88347b 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pro4.dtsi
@@ -496,6 +496,10 @@ sys_rst: reset-controller {
 				compatible = "socionext,uniphier-pro4-reset";
 				#reset-cells = <1>;
 			};
+
+			watchdog {
+				compatible = "socionext,uniphier-wdt";
+			};
 		};
 
 		eth: ethernet@65000000 {
diff --git a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
index 2d8591cdddb8..3d21fb822219 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pro5.dtsi
@@ -470,6 +470,10 @@ sys_rst: reset-controller {
 				compatible = "socionext,uniphier-pro5-reset";
 				#reset-cells = <1>;
 			};
+
+			watchdog {
+				compatible = "socionext,uniphier-wdt";
+			};
 		};
 
 		usb0: usb@65a00000 {
diff --git a/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi b/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
index f97a57222101..ef94fa0517a6 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi
@@ -572,6 +572,10 @@ sys_rst: reset-controller {
 				#reset-cells = <1>;
 			};
 
+			watchdog {
+				compatible = "socionext,uniphier-wdt";
+			};
+
 			pvtctl: thermal-sensor {
 				compatible = "socionext,uniphier-pxs2-thermal";
 				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi b/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
index f876282760e9..0b840a8415dd 100644
--- a/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/socionext/uniphier-sld8.dtsi
@@ -413,6 +413,10 @@ sys_rst: reset-controller {
 				compatible = "socionext,uniphier-sld8-reset";
 				#reset-cells = <1>;
 			};
+
+			watchdog {
+				compatible = "socionext,uniphier-wdt";
+			};
 		};
 
 		nand: nand-controller@68000000 {
-- 
2.34.1


