Return-Path: <devicetree+bounces-273020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNwZATrtrmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:54:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B2E23C2CC
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:54:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E06243019F06
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA103612ED;
	Mon,  9 Mar 2026 15:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNZOM4in"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC525A645
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071402; cv=none; b=nZHj290Up/h13KrYQfg1sBtCk3xIkDgDv8y4ane0M/kuMIOTDqC38d9iyWS3CyLyvVPRhqHROZXULxce1Y+VgK3xtAMEmTiEZBmqWxZtKzvJj+sZwmhHy+DPKt9N8tB0utkmALB9YuB1d5lxcJnpiZVqqT/YkD9HYs5xD9K8ntI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071402; c=relaxed/simple;
	bh=jD+HjaNHgbAd33dUrOKzWmUqIYgmr2OAzta/dFxlHAU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=cHI1yolvuYo6CYlt4DQmer2hdbCTNDqqizN6UhXDskekCYb8j7ZFYOcVzvVYB5RypL3VDDAUsNe0lxC0NJkBvwl9uk43hmhRe/dC1uKULtT3sYmHipBMttjORc2mSS8Xa/AaNb19ecmMH0A5jsbs8+1qoW73OEHk7P23gyVHH3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNZOM4in; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55FE5C2BC86;
	Mon,  9 Mar 2026 15:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773071401;
	bh=jD+HjaNHgbAd33dUrOKzWmUqIYgmr2OAzta/dFxlHAU=;
	h=From:Date:Subject:To:Cc:From;
	b=HNZOM4inoAoeLVAdbE04fEzIvpjZpd+dgYRhu5cr8IA8TjG4+ZUcs3mwuNI+t2Llc
	 EY1Pl0xqk+nFlYuMjSA/ywSaJZOlybOuvRzYLRs5OAgb8a4n91yVz6412MiKhN0WY7
	 zF9aSHBs44HZIAt3hkfReTMgBUSTTkzLG2r1bj1wiJrzQeGg75+lE+cxBPzTFwMd7c
	 xviK4ZIsf1phFivTzPHUmxHTKUPskZHEt554VZg/Gx5TLjKb8OaxsdG9wpW5rQqNUq
	 PsbqEXgxYnO8pEtYrLTNfZapiNH7+pei18yuI24Lvz2C53qFzidODL5ST7uh5oVDdk
	 2QsilGm7dr/OA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 09 Mar 2026 16:49:49 +0100
Subject: [PATCH] arm64: dts: airoha: en7581: Add thermal node to to EN7581
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-airoha-7581-thermal-zones-v1-1-f9b543981022@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MwQqDMAyA4VeRnBeIDq36KsNDsJkNaCupyJj47
 is7fof/vyCLqWQYqwtMTs2aYkH9qGAOHBdB9cXQUNPRkwZktRQYXdvXeASxjVf8pigZO6LWucH
 z7BlKv5u89fN/v6b7/gGVZRW3awAAAA==
X-Change-ID: 20260309-airoha-7581-thermal-zones-6005779dacda
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 53B2E23C2CC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273020-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.972];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,0.0.0.2:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Introduce thermal controller node to EN7581 SoC.
Define thermal-zones and related cpu trips and cooling-maps.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 52 ++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index ff6908a76e8eb6cf91343495d1fe531a868e41fb..092c8ab0f4322552495dbe00b9e41e087876817e 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -4,6 +4,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/en7523-clk.h>
 #include <dt-bindings/reset/airoha,en7581-reset.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -74,6 +75,7 @@ cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			clock-frequency = <80000000>;
 			next-level-cache = <&l2>;
@@ -83,6 +85,7 @@ cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x1>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			clock-frequency = <80000000>;
 			next-level-cache = <&l2>;
@@ -92,6 +95,7 @@ cpu2: cpu@2 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x2>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			clock-frequency = <80000000>;
 			next-level-cache = <&l2>;
@@ -101,6 +105,7 @@ cpu3: cpu@3 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x3>;
+			#cooling-cells = <2>;
 			enable-method = "psci";
 			clock-frequency = <80000000>;
 			next-level-cache = <&l2>;
@@ -124,6 +129,39 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+
+			thermal-sensors = <&thermal 0>;
+
+			trips {
+				cpu_hot: cpu-hot {
+					temperature = <95000>;
+					hysteresis = <1000>;
+					type = "hot";
+				};
+
+				cpu-critical {
+					temperature = <120000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_hot>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	clk20m: clock-20000000 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -173,6 +211,11 @@ spi_nand: nand@0 {
 			};
 		};
 
+		chip_scu: syscon@1fa20000 {
+			compatible = "airoha,en7581-chip-scu", "syscon";
+			reg = <0x0 0x1fa20000 0x0 0x388>;
+		};
+
 		scuclk: clock-controller@1fb00000 {
 			compatible = "airoha,en7581-scu";
 			reg = <0x0 0x1fb00000 0x0 0x970>;
@@ -300,6 +343,15 @@ rng@1faa1000 {
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		thermal: thermal-sensor@1efbd000 {
+			compatible = "airoha,en7581-thermal";
+			reg = <0x0 0x1efbd000 0x0 0xd5c>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			airoha,chip-scu = <&chip_scu>;
+
+			#thermal-sensor-cells = <0>;
+		};
+
 		system-controller@1fbf0200 {
 			compatible = "airoha,en7581-gpio-sysctl", "syscon",
 				     "simple-mfd";

---
base-commit: 405c09548a695ca7be58b5b9d3ac8388630e907f
change-id: 20260309-airoha-7581-thermal-zones-6005779dacda

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


