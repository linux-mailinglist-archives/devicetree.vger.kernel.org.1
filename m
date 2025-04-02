Return-Path: <devicetree+bounces-162692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 707B3A796DD
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:50:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AF233B6019
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982DF1F30BE;
	Wed,  2 Apr 2025 20:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="hCXW25Vk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764E61F03CE
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743626954; cv=none; b=dI1EpQTL9PgNDQbRKEUcC77KKWN1KAsbWJPYtMUSdwzvEpjiq1vOgDhZbSSR3Pp1upzyH8n309E56pxvzV/gqZKYhaweIq7yoDxugRmPEi0QW31LU1RHcraPfSvGpWgQe69GAa5foSRgb+73i3irEEl5AcJBD69d44NmFK/ZcTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743626954; c=relaxed/simple;
	bh=b/W6BcfzJDVD409ttMTWMrXY8js4HMuwUSOWy+uD3nQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dwbxATPjtE7xazRqGocnm75gPivYnrMyUDQM+LLsDRTsYPXAt+ewij+xBakG4XF2038v+RbzJLiBZu7b5xdvt0CtVCu4CaE3dP5rGVx1Xyw2uX8pmyEtJ5+qKJWz2wCfCbBpibVRe+mkJg7fpMnFj/PcObcsJ/Wtn7VlD0JNp18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=hCXW25Vk; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=SRirtoVTMfeN0wRj4jAqh+TanwneimSbjL8xhCx/W9k=; b=hCXW25
	Vk44beEORpdGugC+9CFWPwy7kLibtxamDrsndsWHNWDhyubDLZNZE91wDEYAxIsF
	tyhseuLfvHsseL8Ncd7j6ngsHymPA6wiQJBFNPUDUZ7G/CNwuDkTyRUvipEB+lg7
	K+3OCj3N4epfObCWVF2WHYN7ioLRg+UCz53RdwRYjHzYWNTvkjCVmF9+4ur0WEyn
	RpLkm43HalZ0V+AS1qYA4ss5m9imEY3EOKWJ97cFEI6JJNpBkBUTo+dH+S/Lzfd1
	lLVh+idcIq4b7Dty1se4JoGsF/DGicgNraH3FJe16DsNNtl9z8cnubmsKNZo1wf2
	NOVGUkjZjbidRajA==
Received: (qmail 2132961 invoked from network); 2 Apr 2025 22:49:03 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Apr 2025 22:49:03 +0200
X-UD-Smtp-Session: l3s3148p1@54GYyNExurwujnsv
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: at91: usb_a9g20: move wrong RTC node
Date: Wed,  2 Apr 2025 22:48:54 +0200
Message-ID: <20250402204856.5197-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
References: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Only the LPW variant has the external RTC. Move it to that board
specific DT. As a result, the common include for A9G20 boards can
go now.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/usb_a9g20.dts      |  3 ++-
 .../boot/dts/microchip/usb_a9g20_common.dtsi   | 18 ------------------
 arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts  | 10 +++++++++-
 3 files changed, 11 insertions(+), 20 deletions(-)
 delete mode 100644 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi

diff --git a/arch/arm/boot/dts/microchip/usb_a9g20.dts b/arch/arm/boot/dts/microchip/usb_a9g20.dts
index a2f748141d4b..bdaf35c6526e 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20.dts
@@ -5,7 +5,8 @@
  *  Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
 /dts-v1/;
-#include "usb_a9g20_common.dtsi"
+#include "at91sam9g20.dtsi"
+#include "usb_a9260_common.dtsi"
 
 / {
 	model = "Calao USB A9G20";
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
deleted file mode 100644
index 6bc307c91d65..000000000000
--- a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
+++ /dev/null
@@ -1,18 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * usb_a9g20.dts - Device Tree file for Calao USB A9G20 board
- *
- *  Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- */
-
-#include "at91sam9g20.dtsi"
-#include "usb_a9260_common.dtsi"
-
-/ {
-	i2c-gpio-0 {
-		rtc@56 {
-			compatible = "microcrystal,rv3029";
-			reg = <0x56>;
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
index 4d104797176c..2eda00477bc5 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
@@ -5,7 +5,8 @@
  *  Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
 /dts-v1/;
-#include "usb_a9g20_common.dtsi"
+#include "at91sam9g20.dtsi"
+#include "usb_a9260_common.dtsi"
 
 / {
 	model = "Calao USB A9G20 Low Power";
@@ -27,4 +28,11 @@ mmc@0 {
 			};
 		};
 	};
+
+	i2c-gpio-0 {
+		rtc@56 {
+			compatible = "microcrystal,rv3029";
+			reg = <0x56>;
+		};
+	};
 };
-- 
2.47.2


