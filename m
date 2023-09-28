Return-Path: <devicetree+bounces-4243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D97B1B5B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A715E280D12
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4149E37C9A;
	Thu, 28 Sep 2023 11:45:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC4918622
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:45:35 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA1DCBF;
	Thu, 28 Sep 2023 04:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1695901533; x=1727437533;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ACdZxoKAKh1jcC+SyibkwaZ8XbsuqZqpltxrCHKXjwY=;
  b=oYI27KxwyRYiqeawguJXXyHH6Bk1p4SDe8/DhDMGTy75cLEW+nMSqfv8
   xUmxUmn8cnWYgU32fmE5TEqadCFUMZYa1+20tSOZtxyvJt+dxu8BxPctC
   Qfz898OGrmGQRNyG6yqgYJcomcaOnCnjuGP6Y9cAxHD7Zmh/sBNkGJ67j
   6j73aThjG3/RkX+rY0QOidnLVyKCQW2nee7tiFwmScx35x6g0OhN81XOY
   TJRxrkuza4ZGnubv2IMaj4NrO2ax/bay+mu3UA6CHb91ui73+XkifQAUy
   pYG5bc+zt6ilmFjnX/AcUWfk6Uc7X/ZQD/Z6l+6/NypaqlCOV8hidhA/F
   g==;
X-IronPort-AV: E=Sophos;i="6.03,183,1694728800"; 
   d="scan'208";a="33198949"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 28 Sep 2023 13:45:30 +0200
Received: from localhost.localdomain (SCHIFFERM-M2.tq-net.de [10.121.49.20])
	by vtuxmail01.tq-net.de (Postfix) with ESMTPA id E53BB280075;
	Thu, 28 Sep 2023 13:45:29 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH 1/4] arm64: dts: ti: k3-am64-tqma64xxl: add supply regulator for I2C devices
Date: Thu, 28 Sep 2023 13:45:10 +0200
Message-Id: <d5991041263c96c798b94c0844a1550e28daa3b1.1695901360.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Describes the hardware better, and avoids a few warnings during boot:

    lm75 0-004a: supply vs not found, using dummy regulator
    at24 0-0050: supply vcc not found, using dummy regulator
    at24 0-0054: supply vcc not found, using dummy regulator

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
index 6229849b5d968..d82d4a98306a7 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
@@ -85,6 +85,15 @@ rtos_ipc_memory_region: ipc-memories@a5000000 {
 			no-map;
 		};
 	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "V_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &main_i2c0 {
@@ -96,11 +105,13 @@ &main_i2c0 {
 	tmp1075: temperature-sensor@4a {
 		compatible = "ti,tmp1075";
 		reg = <0x4a>;
+		vs-supply = <&reg_1v8>;
 	};
 
 	eeprom0: eeprom@50 {
 		compatible = "st,24c02", "atmel,24c02";
 		reg = <0x50>;
+		vcc-supply = <&reg_1v8>;
 		pagesize = <16>;
 		read-only;
 	};
@@ -114,6 +125,7 @@ pcf85063: rtc@51 {
 	eeprom1: eeprom@54 {
 		compatible = "st,24c64", "atmel,24c64";
 		reg = <0x54>;
+		vcc-supply = <&reg_1v8>;
 		pagesize = <32>;
 	};
 };
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


