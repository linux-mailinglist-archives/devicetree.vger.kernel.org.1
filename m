Return-Path: <devicetree+bounces-119226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0FB9BD9BA
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 00:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F7541C209B4
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 23:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F021E47B6;
	Tue,  5 Nov 2024 23:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="onB7/sx4"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E061D1F79
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 23:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730849448; cv=none; b=PUwopmQOWhSxBCntje0CZeYuySllUQALgP1SgO+9kZYa+wC1vmcRTg1i5s+aPhiLSqvjUW4wGAMJpkkWKn9fE3fpBcm0il32Yy70mE5yYM5jW41tzzIee0p838wZmUawWYPPACu+Yk7Db69A6HhVue71xFg49iyHcIByXgaH4rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730849448; c=relaxed/simple;
	bh=b8lYAgrI06CTlBt9+tYNq5UWMiDMZepdu5OeizM6fn8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gmz//FtHWW9B/0dY1hpuDKcZBQaZYLLoPDpV4z3F38RwQPKmOPAYZW2vAHejt0UNOC0JuBUYJ9x1mKe58sGyjhDVQWu9tVQXUdT93u2O/pp8htl2hhJMPehpVW7ZOdWur610FaZiiQ3MZaUWNCLZBPp2pktLSIWcL9V0bzo/3Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=onB7/sx4; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 4330888EBB;
	Wed,  6 Nov 2024 00:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1730849444;
	bh=GL0GAPR6jFPg/XAdj5ZTtn6Z4oNSGAhsnvnHgYMD92k=;
	h=From:To:Cc:Subject:Date:From;
	b=onB7/sx4/0zM8uccNeK5wlWG6kul7jeNj8h6l8EJPVXIU2aKXw0/FtBPaXOc/zaxW
	 DdK2RD2y94KJckIJ/X3DXO2vVUK7B358aT6XyA8rrwsFzw1+faKVvjZ3cRagapzEMu
	 ymKgp7Ls5sn4jtsvybw3rxSkFiWHOkm1A1M81HcwmRHDs3vYLxLP1Nb7CfclKSYmod
	 asg9mm7fIh6JABMWpFxFykXIBqAUreUfkM/f8o+R3l2RP7BhEEmV9SXgYbdfobBlmU
	 g5CCt6e3ONlUtqdpT9/Pncy1qhXyNzh1WnYGvKEfSGCdlE5+gs6E6ikpbtSNeOt3Qr
	 oWWek9ufzpIDA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Deduplicate serial aliases and chosen node for STM32MP15xx DHCOM SoM
Date: Wed,  6 Nov 2024 00:29:44 +0100
Message-ID: <20241105233026.161463-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Deduplicate /aliases { serialN = ... } and /chosen node into
stm32mp15xx-dhcom-som.dtsi , since the content is identical
on all carrier boards using the STM32MP15xx DHCOM SoM. No
functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi   | 12 ------------
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi    | 10 ----------
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi | 10 ----------
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi     |  7 +++++++
 4 files changed, 7 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
index bb4f8a0b937f3..abe2dfe706364 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi
@@ -6,18 +6,6 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pwm/pwm.h>
 
-/ {
-	aliases {
-		serial0 = &uart4;
-		serial1 = &usart3;
-		serial2 = &uart8;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-};
-
 &adc {
 	status = "disabled";
 };
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
index 171d7c7658fa8..0fb4e55843b9d 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
@@ -7,16 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 
 / {
-	aliases {
-		serial0 = &uart4;
-		serial1 = &usart3;
-		serial2 = &uart8;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
 	clk_ext_audio_codec: clock-codec {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
index b5bc53accd6b2..01c693cc03446 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi
@@ -7,16 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 
 / {
-	aliases {
-		serial0 = &uart4;
-		serial1 = &usart3;
-		serial2 = &uart8;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
 	led {
 		compatible = "gpio-leds";
 
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
index 74a11ccc5333f..086d3a60ccce2 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi
@@ -14,6 +14,13 @@ aliases {
 		ethernet1 = &ksz8851;
 		rtc0 = &hwrtc;
 		rtc1 = &rtc;
+		serial0 = &uart4;
+		serial1 = &usart3;
+		serial2 = &uart8;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
 	};
 
 	memory@c0000000 {
-- 
2.45.2


