Return-Path: <devicetree+bounces-278388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OisGFx9vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:01:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1F22DE2B2
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8191E31383D0
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6663D904B;
	Fri, 20 Mar 2026 16:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E96bmnpf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3F53D902B;
	Fri, 20 Mar 2026 16:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025260; cv=none; b=GchYv4uMib7s8Lcmc168+GjocKvsW97Zo5eX4IfEm0rjd8M1XFS23CB+mayrjsGa77Eq62/1mQ1zHT0lGMp00tJg3RDJkr0Iq6HvJ72y9XTe4+p984gXTS/1CU+7sHUaLvmkpAh0WmtJL+b7Ax515JHp/nTxLZORPSIyBQbcGeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025260; c=relaxed/simple;
	bh=+jSC2BcOr5bTFiGTzqJGWVjWkhUc4jNiP7GFwpFjfWs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nG6l/2pT4GHgPE4WGuJbZJMb5G5SdpboFZlQH0qd+rGfSUBEIhDarbPKTUvv+fqOMhhLqqogkGfE1Oo01P7xIrUx+6clf48/oFoTQbZjkm9O5Blyc+kym6XnMF4hOunV8G+stp8bEDlHc2PV+6DblImbYs9GDCBDkeRbucEMyfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E96bmnpf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8372C4CEF7;
	Fri, 20 Mar 2026 16:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025260;
	bh=+jSC2BcOr5bTFiGTzqJGWVjWkhUc4jNiP7GFwpFjfWs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=E96bmnpfmHgxHqt2Jnj7OMb8dMAA7xDxsiR2OZLPBhUKCaJVA55ysug/aHl7DoFK9
	 4LgEqs4ZbThdc9M1y/zRpGMV4mumK7L4hmMtnS+RFJ2yWZpLAaRSrIs1aG3Wbrxls7
	 Flkb1fkPm4srpes/8FVDPN9yVja8QZSZ4+i6tancyVPg+wjDzbntznboIN6skpvxaj
	 kZ7i8OEv3yZGGjd1IRFRNW9RBEXrlGH/uFYNylE2FVuICOKXyVNmSeQlXsaqkFWchZ
	 UHkFmTuQv42HlT12WlLJaKr4GloKp+dVRMQ0zZ9z5Gq/p7GaOD8qP/w4e5z0OClH/U
	 P3+qWdojv7/xQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Fri, 20 Mar 2026 11:47:18 -0500
Subject: [PATCH 5/5] arm64: dts: arm/corstone1000: Add corstone-1000-a320
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dt-corstone1000-a320-v1-5-a549dfcfe8da@kernel.org>
References: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
In-Reply-To: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Frazer Carsley <frazer.carsley@arm.com>, 
 Hugues Kamba Mpiana <hugues.kambampiana@arm.com>, 
 Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-278388-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.36.159.0:email,0.0.1.44:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.200:email,0.0.0.100:email,0.0.0.0:email,1a050000:email,1c000000:email]
X-Rspamd-Queue-Id: CE1F22DE2B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Corstone-1000-a320 is a Corstone-1000 derivative with Cortex-A320 cores,
GIC-600, and Ethos-U85 NPU.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/arm/Makefile                  |  1 +
 arch/arm64/boot/dts/arm/corstone1000-a320-fvp.dts | 15 ++++
 arch/arm64/boot/dts/arm/corstone1000-a320.dtsi    | 91 +++++++++++++++++++++++
 3 files changed, 107 insertions(+)

diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
index f30ee045dc95..fa035c68991a 100644
--- a/arch/arm64/boot/dts/arm/Makefile
+++ b/arch/arm64/boot/dts/arm/Makefile
@@ -7,4 +7,5 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
+dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-a320-fvp.dtb
 dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb morello-fvp.dtb
diff --git a/arch/arm64/boot/dts/arm/corstone1000-a320-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-a320-fvp.dts
new file mode 100644
index 000000000000..0f72af78b5e1
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-a320-fvp.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (c) 2026, Arm Limited. All rights reserved.
+ *
+ */
+
+/dts-v1/;
+
+#include "corstone1000-a320.dtsi"
+#include "corstone1000-fvp.dtsi"
+
+/ {
+	model = "ARM Corstone1000-A320 FVP (Fixed Virtual Platform)";
+	compatible = "arm,corstone1000-a320-fvp";
+};
diff --git a/arch/arm64/boot/dts/arm/corstone1000-a320.dtsi b/arch/arm64/boot/dts/arm/corstone1000-a320.dtsi
new file mode 100644
index 000000000000..f0937914350c
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-a320.dtsi
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (c) 2026, Arm Limited. All rights reserved.
+ *
+ */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+#include "corstone1000.dtsi"
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	cpus: cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a320";
+			reg = <0 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu1: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a320";
+			reg = <0 0x100>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a320";
+			reg = <0 0x200>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu3: cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a320";
+			reg = <0 0x300>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	sram: sram@2400000 {
+		compatible = "mmio-sram";
+		reg = <0x02400000 0x200000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+	};
+
+	gic: interrupt-controller@1c000000 {
+		compatible = "arm,gic-v3";
+		#interrupt-cells = <3>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		interrupt-controller;
+		reg = <0x1c000000 0x10000>,
+		      <0x1c040000 0x80000>;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+
+	soc {
+		npu@1a050000 {
+			compatible = "arm,corstone1000-ethos-u85", "arm,ethos-u85";
+			reg = <0x1a050000 0x1400>;
+			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&refclk100mhz>, <&refclk100mhz>;
+			clock-names = "core", "apb";
+			sram = <&sram>;
+		};
+	};
+};

-- 
2.51.0


