Return-Path: <devicetree+bounces-275506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOkHOjNVtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:19:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1ED288A92
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3E11930363E3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1322735B126;
	Fri, 13 Mar 2026 18:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Q36utDLi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7526E363081;
	Fri, 13 Mar 2026 18:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773425949; cv=none; b=g9o/ZCykJNi+nmMJyqTsbyf4jXq8smGpUx+lBJ62Cj/FzLB7moeqc83E+Al/IYHqEix5jXl/gDahmREa5+gi5ELvjdYAPaRFaf99YLOJAMCVL23Mm1BvTf9H8BCBpCrVPzy+P5n7aZHUZWzr7OYE2rtw08QPmocPkks0DUt3CiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773425949; c=relaxed/simple;
	bh=ljLWYtMDcxlb8SJhGY0J4vx6ZXb/fh7s7xNSIwW2YD8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=QHWlt7Hl9hHmT7dKO4XfsCx5y4hvN51CHFB00rB9yXy0r/VOuqHitJxd7ix0yw3lskKCddDhSb4GtzU34ebJJctqVEzdpnVibT6PxjXNVvjhtIspkUT9lKSBgNO6T0uleyOydxBqS2pqq/tnXdt1G3oVivQpoL1cIVYTjX/yB4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Q36utDLi; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C1B284E4267F;
	Fri, 13 Mar 2026 18:19:03 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 940F160027;
	Fri, 13 Mar 2026 18:19:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 85F0D10369CF0;
	Fri, 13 Mar 2026 19:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773425942; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=ojzP9IDZI8XkVs69Bome+Cdd4RT33tf3Ry26dLLt2kI=;
	b=Q36utDLioFeM8PPipK61q8ABABN/5k4UH48qBF3ikF7vtzpQ57O/efn2QnLFx+QPZZUiiJ
	z2QyqiwYoS0rRDa8+gSEAe9CvKkxnWEfYEfO+0Wgy7gZ2u60U6N66YsPbclzcZTrURl3y4
	kCP+E6A6rLr+0W3F9aCWnAtUm7Bt0zMplmWaxKwXr47plQ3WW+ms63aSMSiWC3qg4iEmRY
	wixjCAN2y2nZ2IoZdJCtz7Ra8hWxmb/MXYiqh8XCqLm8uD17qLDjnAvwylzP6/N0JWS6YS
	aWnZGH5KX7BT3qloTayNUscGEs8k+vbC/VqfNLCpg7yWhY1PiFhVlB0EwUsg5Q==
From: "Thomas Richard (TI)" <thomas.richard@bootlin.com>
Date: Fri, 13 Mar 2026 19:18:54 +0100
Subject: [PATCH] arm64: dts: ti: k3-j721s2: Use ti,j7200-padconf compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-j721s2-s2r-pinctrl-v1-1-a6f80c641037@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAA1VtGkC/x3MzQpAUBBA4VfRrE3dO/7iVWQhBiNdmpGUvLub5
 bc45wFjFTZokgeULzHZQ4RPExiWPsyMMkYDOSpd5jNcK/JGaKR4SBhO3ZDzuqDRl7XLHcTwUJ7
 k/qdt974fDUQh5WQAAAA=
X-Change-ID: 20260313-j721s2-s2r-pinctrl-e4952d169040
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, richard.genoud@bootlin.com, 
 Udit Kumar <u-kumar1@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Thomas Richard (TI)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-275506-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EE1ED288A92
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On the J721S2 platform, pinctrl contexts must be saved and restored during
suspend-to-ram, just like on the J7200. So use ti,j7200-padconf compatible.

Signed-off-by: Thomas Richard (TI) <thomas.richard@bootlin.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi       |  6 +++---
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 12 ++++++------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 80c51b11ac9f..b4bbfebccb2c 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -175,7 +175,7 @@ main_gpio_intr: interrupt-controller@a00000 {
 	};
 
 	main_pmx0: pinctrl@11c000 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x0 0x11c000 0x0 0x120>;
 		#pinctrl-cells = <1>;
@@ -185,7 +185,7 @@ main_pmx0: pinctrl@11c000 {
 
 	/* TIMERIO pad input CTRLMMR_TIMER*_CTRL registers */
 	main_timerio_input: pinctrl@104200 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x104200 0x00 0x50>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
@@ -194,7 +194,7 @@ main_timerio_input: pinctrl@104200 {
 
 	/* TIMERIO pad output CTCTRLMMR_TIMERIO*_CTRL registers */
 	main_timerio_output: pinctrl@104280 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x104280 0x00 0x20>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index 32ee8031cfcb..27b8e7440246 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -76,7 +76,7 @@ mcu_ram: sram@41c00000 {
 	};
 
 	wkup_pmx0: pinctrl@4301c000 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c000 0x00 0x034>;
 		#pinctrl-cells = <1>;
@@ -85,7 +85,7 @@ wkup_pmx0: pinctrl@4301c000 {
 	};
 
 	wkup_pmx1: pinctrl@4301c038 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c038 0x00 0x02c>;
 		#pinctrl-cells = <1>;
@@ -94,7 +94,7 @@ wkup_pmx1: pinctrl@4301c038 {
 	};
 
 	wkup_pmx2: pinctrl@4301c068 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c068 0x00 0x120>;
 		#pinctrl-cells = <1>;
@@ -103,7 +103,7 @@ wkup_pmx2: pinctrl@4301c068 {
 	};
 
 	wkup_pmx3: pinctrl@4301c190 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		/* Proxy 0 addressing */
 		reg = <0x00 0x4301c190 0x00 0x004>;
 		#pinctrl-cells = <1>;
@@ -113,7 +113,7 @@ wkup_pmx3: pinctrl@4301c190 {
 
 	/* MCU_TIMERIO pad input CTRLMMR_MCU_TIMER*_CTRL registers */
 	mcu_timerio_input: pinctrl@40f04200 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x40f04200 0x00 0x28>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
@@ -124,7 +124,7 @@ mcu_timerio_input: pinctrl@40f04200 {
 
 	/* MCU_TIMERIO pad output CTRLMMR_MCU_TIMERIO*_CTRL registers */
 	mcu_timerio_output: pinctrl@40f04280 {
-		compatible = "pinctrl-single";
+		compatible = "ti,j7200-padconf", "pinctrl-single";
 		reg = <0x00 0x40f04280 0x00 0x28>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;

---
base-commit: 1f318b96cc84d7c2ab792fcc0bfd42a7ca890681
change-id: 20260313-j721s2-s2r-pinctrl-e4952d169040

Best regards,
-- 
Thomas Richard (TI) <thomas.richard@bootlin.com>


