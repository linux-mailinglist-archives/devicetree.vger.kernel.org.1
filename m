Return-Path: <devicetree+bounces-142433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AFDA25530
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 10:00:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 067243A3CA4
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75E720896A;
	Mon,  3 Feb 2025 08:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C192080DC
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738573137; cv=none; b=egjvJ76P1AMB/7/XL2M1vCVyDUH+2TYTsDX93xlLmgmpiFeMOsP4pRteYcH/trgAql1Bobcb1RPdjLKyC1dP6ari9LkHmSq0VPLGCgLovIiSpZmsASYw5YpBXcjfWDuHQ06RhAuoZnjdEfhUPmd72IIyBoORRZhp3DkgPeI4JvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738573137; c=relaxed/simple;
	bh=2AQ0u+DjeZQB9hCLkoz3bxZzlGQKNYyNv/lnNUUyPM4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u9h01fg8UsZEL/QnR6Z5FqM5Vru5C0ZqHzLfVC9VA6qkMeSBglrORSX4d43C0SB+8pUpwhmiXKTE3xeXBK1quK6WaU0louXZHRemYiJiGHPUdgrAJl8e5008g4R4vjtAh2G83auRqIOhlFWSc/W8ONghIojY3Rb/BmDrsM568lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tesHf-0006KH-I4; Mon, 03 Feb 2025 09:58:23 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tesHd-003GNo-2w;
	Mon, 03 Feb 2025 09:58:21 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tesHd-002YZD-2f;
	Mon, 03 Feb 2025 09:58:21 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>
Cc: Roan van Dijk <roan@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 3/4] arm: dts: stm32: Add thermal support for STM32MP131
Date: Mon,  3 Feb 2025 09:58:19 +0100
Message-Id: <20250203085820.609176-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250203085820.609176-1-o.rempel@pengutronix.de>
References: <20250203085820.609176-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Roan van Dijk <roan@protonic.nl>

Add thermal zone configuration and sensor node for STM32MP131 SoC.

Signed-off-by: Roan van Dijk <roan@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp131.dtsi | 35 ++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp131.dtsi b/arch/arm/boot/dts/st/stm32mp131.dtsi
index 0019d12c3d3d..8512a6e46b33 100644
--- a/arch/arm/boot/dts/st/stm32mp131.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp131.dtsi
@@ -100,6 +100,31 @@ timer {
 		always-on;
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&dts>;
+
+			trips {
+				cpu_alert1: cpu-alert1 {
+					temperature = <85000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				cpu-crit {
+					temperature = <120000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+			};
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -919,6 +944,16 @@ timer {
 			};
 		};
 
+		dts: thermal@50028000 {
+			compatible = "st,stm32-thermal";
+			reg = <0x50028000 0x100>;
+			interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&rcc DTS>;
+			clock-names = "pclk";
+			#thermal-sensor-cells = <0>;
+			status = "disabled";
+		};
+
 		mdma: dma-controller@58000000 {
 			compatible = "st,stm32h7-mdma";
 			reg = <0x58000000 0x1000>;
-- 
2.39.5


