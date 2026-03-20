Return-Path: <devicetree+bounces-278387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KcKESh9vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:00:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBAA2DE26E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50B61317634B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB95A3D890B;
	Fri, 20 Mar 2026 16:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBtnrY8L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1AA3D88FD;
	Fri, 20 Mar 2026 16:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025259; cv=none; b=MCxbAFn8SJmpNICiy/1CcuJoq0mpYJlHuwUCE+ntXOmkQk5h+JGflkFoRaIQGIHk179MDBiA8ltZShYG/8fyhG/hkxKoljmfI40nLXhNP+61arfzkYQI1v0XCD0sK4u0m0UccbfeATZyJVQ311r3ONLcDM2TcNSd2qRCSfoc8gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025259; c=relaxed/simple;
	bh=Jfx0Fsvzz4Z6n6+m6jipZ+hJb8968gAtSbrKrHZMyAE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hjksHaR5a3kcAK9RVZD38vxXkwX8DsuvGaItxm39ujeqwmOW/pLaV0X0g6qvF9JKYIn9YePDjzN8Id124MXaemW3FgRujIKupBROJZTeUMwul1bQ9WuKH1xmGXOgJU/F5Z97NIb19+XiQIvGJ4L4rGzD+/ucxEOl3JzRnh/JlqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBtnrY8L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC151C4CEF7;
	Fri, 20 Mar 2026 16:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025259;
	bh=Jfx0Fsvzz4Z6n6+m6jipZ+hJb8968gAtSbrKrHZMyAE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YBtnrY8L3oIHbXjfd01SOf8UaHSrAfFf7eZE/bKnS74AuwaZaWjx2oJKvX1DhJ9ej
	 y+tHKPjx0/L7gyPe6jiJTSYW9ADdp/vQq7tFHSTuDkZbnHvG3voieqFz0j2t9UP7Um
	 K18tGWBNnNqAHO9NqVuHGCSEVbWPfBTJa3kZ4FHXt+Iqz1a+dj4EVMXnAYjHG6P5Oh
	 fD/iHAoFnz0sDuTyyyzjHNBCypHt3rZv00QUU7RqZj8vkAmGqLi5vcV8TCH1cJX9aQ
	 1bILUREgvCtt0AI6va+gDobtRmi+SaFF7x/8mwnEV9pkA93uZGJMycFdN4CGgukXDz
	 MIlnJPggRZQvA==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Fri, 20 Mar 2026 11:47:17 -0500
Subject: [PATCH 4/5] arm64: dts: arm/corstone1000: Move FVP peripherals to
 separate .dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dt-corstone1000-a320-v1-4-a549dfcfe8da@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-278387-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.250.240.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.61.48.16:email,2.102.237.224:email]
X-Rspamd-Queue-Id: 5BBAA2DE26E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The FVPs have a common set of peripherals specific to the FVP. Move
these to a separate .dtsi so they can be shared across FVP platforms.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  | 36 +---------------------
 arch/arm64/boot/dts/arm/corstone1000-fvp.dtsi | 44 +++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 35 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
index e479c79c1ea7..fac0999b1901 100644
--- a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
+++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
@@ -8,46 +8,12 @@
 /dts-v1/;
 
 #include "corstone1000.dtsi"
+#include "corstone1000-fvp.dtsi"
 
 / {
 	model = "ARM Corstone1000 FVP (Fixed Virtual Platform)";
 	compatible = "arm,corstone1000-fvp";
 
-	smsc: ethernet@4010000 {
-		compatible = "smsc,lan91c111";
-		reg = <0x40100000 0x10000>;
-		phy-mode = "mii";
-		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
-		reg-io-width = <2>;
-	};
-
-	vmmc_v3_3d: regulator-vmmc {
-		compatible = "regulator-fixed";
-		regulator-name = "vmmc_supply";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
-	sdmmc0: mmc@40300000 {
-		compatible = "arm,pl18x", "arm,primecell";
-		reg = <0x40300000 0x1000>;
-		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
-		max-frequency = <12000000>;
-		vmmc-supply = <&vmmc_v3_3d>;
-		clocks = <&smbclk>, <&refclk100mhz>;
-		clock-names = "smclk", "apb_pclk";
-	};
-
-	sdmmc1: mmc@50000000 {
-		compatible = "arm,pl18x", "arm,primecell";
-		reg = <0x50000000 0x10000>;
-		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
-		max-frequency = <12000000>;
-		vmmc-supply = <&vmmc_v3_3d>;
-		clocks = <&smbclk>, <&refclk100mhz>;
-		clock-names = "smclk", "apb_pclk";
-	};
 	cpus: cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dtsi b/arch/arm64/boot/dts/arm/corstone1000-fvp.dtsi
new file mode 100644
index 000000000000..dc6d77446e8f
--- /dev/null
+++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (c) 2022, Arm Limited. All rights reserved.
+ * Copyright (c) 2022, Linaro Limited. All rights reserved.
+ *
+ */
+
+/ {
+	smsc: ethernet@4010000 {
+		compatible = "smsc,lan91c111";
+		reg = <0x40100000 0x10000>;
+		phy-mode = "mii";
+		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+		reg-io-width = <2>;
+	};
+
+	vmmc_v3_3d: regulator-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "vmmc_supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	sdmmc0: mmc@40300000 {
+		compatible = "arm,pl18x", "arm,primecell";
+		reg = <0x40300000 0x1000>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		max-frequency = <12000000>;
+		vmmc-supply = <&vmmc_v3_3d>;
+		clocks = <&smbclk>, <&refclk100mhz>;
+		clock-names = "smclk", "apb_pclk";
+	};
+
+	sdmmc1: mmc@50000000 {
+		compatible = "arm,pl18x", "arm,primecell";
+		reg = <0x50000000 0x10000>;
+		interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+		max-frequency = <12000000>;
+		vmmc-supply = <&vmmc_v3_3d>;
+		clocks = <&smbclk>, <&refclk100mhz>;
+		clock-names = "smclk", "apb_pclk";
+	};
+};

-- 
2.51.0


