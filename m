Return-Path: <devicetree+bounces-98023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16058964707
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 15:42:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03658B2D153
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 13:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17C41B0126;
	Thu, 29 Aug 2024 13:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="PQMFlIRi"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B3F1AED4A
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724938126; cv=none; b=nJqQ8HJJeyoOd9YlZbAqWMTDjaYBkSivOfG91TwBZgj60P7mumIhOckSJgcv9u+xWhVA5TQIMcfrx/nOwnQaDbwPRbYPTNFLfTaZWB2w61Y1Zj//kZBoWBFmi8eBgH4sVbNIlo3b3IdQqqSdHYs34h0CykiojlkNpaOYsm6lAug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724938126; c=relaxed/simple;
	bh=UBXlJr6OVxgdz/qFecIU84lyjjGDkW3rey57HKPAP3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=OEYNwhmYnuk9nmVE4hd4on61fIKv36OARD045ytlbnKSb3YLPnev97HJs4HH3XVE5Nw1Gfdimye3RmcdwC2SOyl4coJI7hgBv48ECT5Kiv+DMUxBkMSFbtk5I8ETtyQcMpBbvRTCvpCq+/WcyO/qndAOFjRWXVuLmJ2rFiLyqEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=PQMFlIRi; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 2024082913283949709bce34f8f400bc
        for <devicetree@vger.kernel.org>;
        Thu, 29 Aug 2024 15:28:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=SSh59zKlns9QV+HMmQOofUOKGksekC1H2nm5F3iZIV4=;
 b=PQMFlIRixbtIT9xcBfsG8CS87deD3SCpH1zIqysX9Da/POM5LNHchJeFfCRNyjDtil5VwO
 s+vgOuVvhLiADPbSmLsA9KlKpVMWCFSrNKM46LlwRcWHrz/UxQwP5Qo+HiSydx/9giHKVvNs
 qUW4EXwHRvU8q8GpQm7eYcHIHKOoc/r17jgfrIhpD8B0fNeVgSZQPrgquxN/MxnD620nSLN+
 DnnVPFjHm6jgetRL8dKRTeWlzrxTwW5VZ/Je7Jog6B5H/EdR6M9jFxRcq6trQDZ8JGLQ8DtO
 KieNBjZJnhs5i3HE5ljaYx0RjnRKC7uDG7/7IsQ2s/b0du+aJBIYT25g==;
From: Diogo Ivo <diogo.ivo@siemens.com>
Date: Thu, 29 Aug 2024 14:28:29 +0100
Subject: [PATCH] arm64: dts: ti: iot2050: declare Ethernet PHY leds
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240829-ivo-iot2050_leds-v1-1-792a512b2178@siemens.com>
X-B4-Tracking: v=1; b=H4sIAHx30GYC/x3MTQqAIBBA4avErBswsx+6SkSYTjUQGRoShHdPW
 n6L914I5JkCDMULniIHdmdGVRZgdn1uhGyzQQqpRC975OiQ3S1FI+aDbEBrOtMa1dZ60ZCzy9P
 Kz78cp5Q+WzyEcWIAAAA=
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Diogo Ivo <diogo.ivo@siemens.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1724938119; l=2048;
 i=diogo.ivo@siemens.com; s=20240529; h=from:subject:message-id;
 bh=UBXlJr6OVxgdz/qFecIU84lyjjGDkW3rey57HKPAP3A=;
 b=onorDsAIHB/ZCZ9m5rS3wEQc7/zV4rv7pNFZ9/iUliSGw3EReOfK6denw/37y3ipzpx51hOsh
 a+o8RobOy88D4Qz2u+QQmm1SpqvrcbUEOtgNrZFHNDnG2XDs4SSQz5U
X-Developer-Key: i=diogo.ivo@siemens.com; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Each Ethernet PHY on IOT2050 platforms drives 3 LEDs whose triggers
can be configured to signal link properties such as connection status
or speed.

Declare the LEDs, exposing their trigger controls to userspace.

Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index cc1f51f604a4..754abf3db3c0 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -635,11 +635,57 @@ icssg0_eth0_phy: ethernet-phy@0 {
 		reg = <0>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_SPEED_LAN;
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_YELLOW>;
+				function = LED_FUNCTION_SPEED_LAN;
+			};
+		};
 	};
 
 	icssg0_eth1_phy: ethernet-phy@1 {
 		reg = <1>;
 		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@0 {
+				reg = <0>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+			};
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_SPEED_LAN;
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_YELLOW>;
+				function = LED_FUNCTION_SPEED_LAN;
+			};
+		};
 	};
 };

---
base-commit: f2ee642ec2b5dc6e83f146b7115867022dd3840b
change-id: 20240828-ivo-iot2050_leds-dc7c6c463aba

Best regards,
-- 
Diogo Ivo <diogo.ivo@siemens.com>


