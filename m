Return-Path: <devicetree+bounces-278386-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FtpJvp8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278386-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C117A2DE21C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FA7F31720BE
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C14F3D88F9;
	Fri, 20 Mar 2026 16:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/zzqxqk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CF53D88EA;
	Fri, 20 Mar 2026 16:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025258; cv=none; b=tls8++V/bz27NhuVi511NkzwKIDzJBVbFlCbMHhMzk3uIyl6ny1UhHg+kz3JK1o2ld2sAR505l9pQayIslQ6629w8XNF8ZR6TG/KMKed6L9Nn9VL0AhHven8DZHeKQapuUnAp9sRSExgG0Yq1Z3vQ+9pUFi08ydrvr9WyXq88Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025258; c=relaxed/simple;
	bh=sK9Je7eEOHO0wb9I2WtylwKv1pOI57lliw+dQ40lnJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lzYQF0Dei8Llp2ERLaZtjfKAMOoHsjkSBhMfYsfwMiALNXxrFqaTUQpsMO8jEllX95EPFxOj9VZEHHM5ImJ2YTKRpfwG+8W2EGCIDQtJN77qaqb1iolpnoQCw67Bppd/WYsuqv8UK3xML3CKrA/GdP2tNenVsFVn99BAAMzzDcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/zzqxqk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0B59C4CEF7;
	Fri, 20 Mar 2026 16:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025258;
	bh=sK9Je7eEOHO0wb9I2WtylwKv1pOI57lliw+dQ40lnJo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=O/zzqxqk9VqjAANVq7YDdiaokLbu44P5/67s5HUnm/t8DTYF3xkcrspcDP2VXspvp
	 o3+lHsw326285W/ymwngxI1IszpKN5dgfSCmvWQRruAqMauEH12zK4oz3Qvvv0VPGk
	 p0eYTW2Ha7L4nPsqNqQpj4ibJfgQM6n/IjD0PotT+Jyi+uZu5xK/7EGiNCv96oEESs
	 27Hqm6XrZSCWcm4L/HZ8ZHnDR4BCFZO0R/yolmi2IjQY4RH8os2TPMGpDbg5udvDMZ
	 fb08XC5LBsQw7YxYzA7bozLDJ43h7bAI9wn7jeisuw+bAspHfpZ64ycwQWQHpJG9f7
	 uRtu+aevcJ/Eg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Fri, 20 Mar 2026 11:47:16 -0500
Subject: [PATCH 3/5] arm64: dts: arm/corstone1000: Move cpu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dt-corstone1000-a320-v1-3-a549dfcfe8da@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-278386-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[5.65.211.64:email,2.250.240.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,0.0.0.0:email,0.0.0.3:email,0.0.0.2:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.61.48.16:email]
X-Rspamd-Queue-Id: C117A2DE21C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In preparation to add a new Corstone-1000 variation with different CPUs,
move the CPU nodes into the specific platforms and out of the common
corstone1000.dtsi.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts  | 54 ++++++++++++++++-----------
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts | 13 +++++++
 arch/arm64/boot/dts/arm/corstone1000.dtsi     | 13 -------
 3 files changed, 45 insertions(+), 35 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
index 66ba6b027193..e479c79c1ea7 100644
--- a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
+++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
@@ -48,30 +48,40 @@ sdmmc1: mmc@50000000 {
 		clocks = <&smbclk>, <&refclk100mhz>;
 		clock-names = "smclk", "apb_pclk";
 	};
-};
+	cpus: cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
 
-&cpus {
-	cpu1: cpu@1 {
-		device_type = "cpu";
-		compatible = "arm,cortex-a35";
-		reg = <0x1>;
-		enable-method = "psci";
-		next-level-cache = <&L2_0>;
-	};
+		cpu: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
 
-	cpu2: cpu@2 {
-		device_type = "cpu";
-		compatible = "arm,cortex-a35";
-		reg = <0x2>;
-		enable-method = "psci";
-		next-level-cache = <&L2_0>;
-	};
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0 0x2>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
 
-	cpu3: cpu@3 {
-		device_type = "cpu";
-		compatible = "arm,cortex-a35";
-		reg = <0x3>;
-		enable-method = "psci";
-		next-level-cache = <&L2_0>;
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0 0x3>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
index 10d265be0c02..adcfaf7c55b8 100644
--- a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
+++ b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
@@ -13,6 +13,19 @@ / {
 	model = "ARM Corstone1000 FPGA MPS3 board";
 	compatible = "arm,corstone1000-mps3";
 
+	cpus: cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0 0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+	};
+
 	smsc: ethernet@4010000 {
 		compatible = "smsc,lan9220", "smsc,lan9115";
 		reg = <0x40100000 0x10000>;
diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
index f35a5c96f3da..4d57dc197918 100644
--- a/arch/arm64/boot/dts/arm/corstone1000.dtsi
+++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
@@ -21,19 +21,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	cpus: cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a35";
-			reg = <0>;
-			enable-method = "psci";
-			next-level-cache = <&L2_0>;
-		};
-	};
-
 	memory@88200000 {
 		device_type = "memory";
 		reg = <0x88200000 0x77e00000>;

-- 
2.51.0


