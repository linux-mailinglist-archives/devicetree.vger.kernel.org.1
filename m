Return-Path: <devicetree+bounces-278343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LofOlZsvWnL9gIAu9opvQ
	(envelope-from <devicetree+bounces-278343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:48:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4949B2DCDC9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F21E30672C4
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BF13CCFDE;
	Fri, 20 Mar 2026 15:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkeiQZXc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CE83CCFC8;
	Fri, 20 Mar 2026 15:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774021693; cv=none; b=BCFV0wnYlrjJ+reF56CBTEx9fKtjEUG6L+GVolvl8ynPZho4Cf9vplYy3gHFa5aDXl/6JDJ+Ttr2CYPVltPhrkDOxcbQHZCCqNeL3+0fV/U1H8lThbzwli8rSawXayYAJtOfUwrBQS7AK5qWnIV9Ugg6j4o+4DzVyaZiYpalP2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774021693; c=relaxed/simple;
	bh=mEc+1uLjL9dycMUaTvmDCS4x7VxVivEN3IIYODxbeDQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AruXTf5zXrJtR9QeL3w7ltPZEq2k2qThM6SAkIAsVdW6l7cncz1CmQnOO863GbgspPu9CRK6F65TXx8ckyKC92DQ1VpaXnk5T9clAhx2efZfwzukG9DruECvE1s+iRjHmO/qlw1Uv8gUhJFgHcMnKlkDarRyOAwNSRMs1Gkv0NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkeiQZXc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3109FC4CEF7;
	Fri, 20 Mar 2026 15:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774021693;
	bh=mEc+1uLjL9dycMUaTvmDCS4x7VxVivEN3IIYODxbeDQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RkeiQZXch+Ei5Sa2wzijtHOrnF2ndvL+HxYvQtJB2GoEW5X1c0wUQc2t/+SD38u50
	 zD9dQxiBvQyvKLbsotmMbRL1aw/qdaYStWhUH+Z4ABLJZ2JOyK2MXXFybODkvj6r0R
	 9gd6cuUJT9KHytCa9J778lCdlRXBVNB38wWHHEVOFghDgZH4HJACEQSSfz1Io+UKjX
	 s6c8xn4p/eeU/3OOr0l6TA6soA5k+m4fJdbcQyxwgQlncidFEi617kdJdXazCgKHHU
	 oB/u6IMa5ixasMduLy7f82Mk3PaWYgQN+eMu6p+vfZcoVxrxmtpWCIvoRBRaME5jbd
	 biqVlrqsQuxpA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: broadcom: bcm2712: Move non simple-bus nodes to root level
Date: Fri, 20 Mar 2026 10:48:07 -0500
Message-ID: <20260320154809.1246064-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260320154809.1246064-1-robh@kernel.org>
References: <20260320154809.1246064-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278343-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DBL_PROHIBIT(0.00)[59.156.80.160:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.705];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,59.156.201.184:email]
X-Rspamd-Queue-Id: 4949B2DCDC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not
be under a 'simple-bus', but at the root level.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - Rebase on v7.0-rc1
 - Move "raspberrypi,bcm2835-firmware" to a child node under /firmware
---
 .../dts/broadcom/bcm2712-rpi-5-b-base.dtsi    | 51 +++++++++----------
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |  8 +--
 2 files changed, 28 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
index 04738bf281eb..d0b7137e07d2 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
@@ -44,6 +44,30 @@ power_button: power-button {
 		};
 	};
 
+	firmware {
+		firmware: rpi-firmware {
+			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
+
+			mboxes = <&mailbox>;
+
+			firmware_clocks: clocks {
+				compatible = "raspberrypi,firmware-clocks";
+				#clock-cells = <1>;
+			};
+
+			reset: reset {
+				compatible = "raspberrypi,firmware-reset";
+				#reset-cells = <1>;
+			};
+
+			power: power {
+				compatible = "raspberrypi,bcm2835-power";
+				firmware = <&firmware>;
+				#power-domain-cells = <1>;
+			};
+		};
+	};
+
 	sd_io_1v8_reg: sd-io-1v8-reg {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
@@ -189,33 +213,6 @@ wifi: wifi@1 {
 	};
 };
 
-&soc {
-	firmware: firmware {
-		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		mboxes = <&mailbox>;
-		dma-ranges;
-
-		firmware_clocks: clocks {
-			compatible = "raspberrypi,firmware-clocks";
-			#clock-cells = <1>;
-		};
-
-		reset: reset {
-			compatible = "raspberrypi,firmware-reset";
-			#reset-cells = <1>;
-		};
-	};
-
-	power: power {
-		compatible = "raspberrypi,bcm2835-power";
-		firmware = <&firmware>;
-		#power-domain-cells = <1>;
-	};
-};
-
 /* uarta communicates with the BT module */
 &uarta {
 	uart-has-rtscts;
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index d57a9b1bff70..330a121ebfcb 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -508,10 +508,6 @@ axi: axi {
 			     <0x18 0x00000000  0x18 0x00000000  0x04 0x00000000>,
 			     <0x1c 0x00000000  0x1c 0x00000000  0x04 0x00000000>;
 
-		vc4: gpu {
-			compatible = "brcm,bcm2712-vc6";
-		};
-
 		pcie0: pcie@1000100000 {
 			compatible = "brcm,bcm2712-pcie";
 			reg = <0x10 0x00100000 0x00 0x9310>;
@@ -648,6 +644,10 @@ mip1: msi-controller@1000131000 {
 		};
 	};
 
+	vc4: gpu {
+		compatible = "brcm,bcm2712-vc6";
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
-- 
2.51.0


