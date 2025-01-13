Return-Path: <devicetree+bounces-137889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36537A0AFEE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 102D93A5AAC
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 07:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B15231CB9;
	Mon, 13 Jan 2025 07:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="J0KNBWnA"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7995E1714C6;
	Mon, 13 Jan 2025 07:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736752704; cv=none; b=AEgrYLH7FnA98AwHHALXqb/PULlHC/WyV6VOm0exyPkVuqgdVhJhPwEdUg/913UWBg6WlJrtVHhVNAPAMyiCH8vNPKY2IT1YfNVzxhBphi4GnamVk7yO+IEIcs9yjjVy48Tm8H8S3dVdUFhZtuypdedngY1JvzYfJYuanRbI7+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736752704; c=relaxed/simple;
	bh=42oYf7k1pGRgtJYa8Ps3IOlsFdSUm4C/6z8/MyTKOKE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Hm1g3LzeOsiiv3BwP4v5/0GE+3mhAhNLmC/0b3lGVo4ZCztj5+DeUXm6qE2mZHPTGqbrtGFezvdQlE6lY+6KOGaC6kTTsZtO2vFkQn6VduIR4vkufn6ZVy1TsCB/Qx9575fwcmhA4BvLv3mmQINCh/MaVcX36L8+4ArlH4AMnkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=J0KNBWnA; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1736752702; x=1768288702;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=42oYf7k1pGRgtJYa8Ps3IOlsFdSUm4C/6z8/MyTKOKE=;
  b=J0KNBWnA/UV6jEsjkKY4T8dEbQZbt4Lcd9zlcwhfXveT0E1l3lZZRS4w
   ORqxc7zoo70+u0Hkgno0GvN/695MBlHnMlRSD14u+zo7Ai8xLjzAoJf/k
   NIZfu2rxJEER8ohOAfQ1ZLzVUTCl0Zhm61WxT3k6KU+6HDA7LKc4NhiJA
   CSrE0w2QpWZL/QUJsnVR/eZdtb/NCZ8eYSCZyQ/+M7hpKYtksqz4uITyO
   JRhqcAQCURvxS36zO8USRKs8ZPEIURWgjwvTLdLsLVfz8OS9jcE7iJoHH
   v8RPpvhGsyo/ftbvIMZgzs1k+xN0HSf03wqwyOYzNdI9KODE1AhLbdQuQ
   w==;
X-CSE-ConnectionGUID: n6lK1I+ESfyKbS9ug4OrHw==
X-CSE-MsgGUID: 93KtI5A/Q/iv4dsczwbKVQ==
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; 
   d="scan'208";a="36094120"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Jan 2025 00:18:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 Jan 2025 00:17:59 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 13 Jan 2025 00:17:57 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <nicolas.ferre@microchip.com>, <claudiu.beznea@tuxon.dev>,
	<alexandre.belloni@bootlin.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Andrei Simion <andrei.simion@microchip.com>
Subject: [PATCH] ARM: dts: microchip: at91-sam9x75_curiosity: Add PMIC suspend voltage configuration
Date: Mon, 13 Jan 2025 09:17:11 +0200
Message-ID: <20250113071710.40821-1-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add missing essential configuration for the PMIC rails, which is necessary
for proper low-power mode operation. This patch adds the required settings
to ensure that the regulators behave correctly during Suspend-to-RAM and
Standby states. Otherwise, after resuming, it receives: "No configuration"
message.

Our driver implements the set_suspend_voltage and set_suspend_mode
callbacks, which require the `regulator-suspend-microvolt` property to be
specified in the device tree for each regulator node. This property defines
the voltage level that the regulator should maintain during suspend mode.

Additionally, according to the datasheet, some regulators need to be turned
on or off during suspend mode. This patch addresses these requirements by
adding the `regulator-on-in-suspend` and `regulator-off-in-suspend`
properties where appropriate.

Fixes: 371a47c9a58a ("ARM: dts: microchip: sam9x75_curiosity: add sam9x75 curiosity board")
Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
---
 .../dts/microchip/at91-sam9x75_curiosity.dts   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
index 1a6a909a5043..5514ad10cda5 100644
--- a/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
+++ b/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts
@@ -110,10 +110,12 @@ vdd_3v3: VDD_IO {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
 					regulator-mode = <4>;
 				};
 
 				regulator-state-mem {
+					regulator-off-in-suspend;
 					regulator-mode = <4>;
 				};
 			};
@@ -128,11 +130,13 @@ vddioddr: VDD_DDR {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1350000>;
 					regulator-mode = <4>;
 				};
 
 				regulator-state-mem {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1350000>;
 					regulator-mode = <4>;
 				};
 			};
@@ -147,10 +151,12 @@ vddcore: VDD_CORE {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1150000>;
 					regulator-mode = <4>;
 				};
 
 				regulator-state-mem {
+					regulator-off-in-suspend;
 					regulator-mode = <4>;
 				};
 			};
@@ -166,10 +172,12 @@ dcdc4: VDD_OTHER {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1150000>;
 					regulator-mode = <4>;
 				};
 
 				regulator-state-mem {
+					regulator-off-in-suspend;
 					regulator-mode = <4>;
 				};
 			};
@@ -182,6 +190,11 @@ vldo1: LDO1 {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
 				};
 			};
 
@@ -192,6 +205,11 @@ vldo2: LDO2 {
 
 				regulator-state-standby {
 					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
 				};
 			};
 		};

base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
-- 
2.34.1


