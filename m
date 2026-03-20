Return-Path: <devicetree+bounces-278342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBhiCpFsvWnL9gIAu9opvQ
	(envelope-from <devicetree+bounces-278342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:49:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EAE2DCDFD
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:49:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5EBCB3013A5B
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238B2329378;
	Fri, 20 Mar 2026 15:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdAJWL0x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B2A40DFA6;
	Fri, 20 Mar 2026 15:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774021692; cv=none; b=ZsdBQZoAKz6+PdSwf/31QkFCeFdC9gqhsCttf/kN0FKPp0o73fliTv3PUSxsb35FMvzdvWY/4azMpn3L+F12nk154a8LSolPGKieALiIeZ5eA5hiNLKoRy7YWtd5sL2CvjE2R5JNZvgLfXflG2NpM0MMQE/TVFIYlCDGTOMS6Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774021692; c=relaxed/simple;
	bh=1dMrnbqTyaC4XO48y4vySF7TIQ9/H32UyjQYzElZkY4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kUqLnccGoNUWOIgBsWK0KeHfIoVDMsqSGIOjau3C2ZQnywsJZkf6A8DEI36EPE+fiFOzFI4kWyfNMBPIpUyyu05DYkX9APwtH10zkBsGL7KwZKei8bDF40tFejnHPh33xMxPLT/Ny+kMF1Dggm8ZiG32ErZ1HztNz9J7y42U0A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdAJWL0x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84203C19425;
	Fri, 20 Mar 2026 15:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774021691;
	bh=1dMrnbqTyaC4XO48y4vySF7TIQ9/H32UyjQYzElZkY4=;
	h=From:To:Cc:Subject:Date:From;
	b=hdAJWL0x6j7CsyfY51ESBXaZVWB5gbNICLFeVg6TuRDz2xsEdXkBOjxnUGD/YX2pj
	 RflPHdrKaeL2PsJ1cliWTQLbOKU6QDbXCVajxsu0JxMwHZvn7kFjOFHTu/3grlmmfZ
	 wWqY6m+t1Fn0D0DwX/67PHtlveEXKCICkBTal+K9Zj2nujMJU+hmUH2b6zlMjPnZ9t
	 6sKlc3HCgVRa/CCSPaI7jkLem33SShfZdlZS3K12cDMIA0G4vTNdHMwZpalC65YWW5
	 Mzuc+7LwSMcDaxHNtV03MBaF5MZ/Ytxvp1uEm43hx8xpxsdeTsVuCbCNjUR3Bja9/d
	 eB5IIbrusX5Hg==
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
Subject: [PATCH v2 1/2] ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes to root level
Date: Fri, 20 Mar 2026 10:48:06 -0500
Message-ID: <20260320154809.1246064-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278342-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.936];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,7ec00000:email]
X-Rspamd-Queue-Id: 90EAE2DCDFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" node
is part of the firmware, so move it under the 'rpi-firmware' node.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Florian, you have the fixes for the prior versions in your tree, but not
the original commits they say they fix. These apply without the fixes.

v2:
 - Rebase on v7.0-rc1
 - Move "raspberrypi,bcm2835-firmware" to a child node under /firmware
---
 arch/arm/boot/dts/broadcom/bcm2835-common.dtsi |  7 ++++---
 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi    | 16 +++++++++-------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
index 9261b67dbee1..1e76b290510d 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
@@ -141,9 +141,10 @@ v3d: v3d@7ec00000 {
 			interrupts = <1 10>;
 		};
 
-		vc4: gpu {
-			compatible = "brcm,bcm2835-vc4";
-		};
+	};
+
+	vc4: gpu {
+		compatible = "brcm,bcm2835-vc4";
 	};
 };
 
diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
index e9bf41b9f5c1..46c91468f4c5 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
@@ -1,8 +1,8 @@
 #include <dt-bindings/power/raspberrypi-power.h>
 
 / {
-	soc {
-		firmware: firmware {
+	firmware {
+		firmware: rpi-firmware {
 			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
 			mboxes = <&mailbox>;
 
@@ -10,14 +10,16 @@ firmware_clocks: clocks {
 				compatible = "raspberrypi,firmware-clocks";
 				#clock-cells = <1>;
 			};
-		};
 
-		power: power {
-			compatible = "raspberrypi,bcm2835-power";
-			firmware = <&firmware>;
-			#power-domain-cells = <1>;
+			power: power {
+				compatible = "raspberrypi,bcm2835-power";
+				firmware = <&firmware>;
+				#power-domain-cells = <1>;
+			};
 		};
+	};
 
+	soc {
 		vchiq: mailbox@7e00b840 {
 			compatible = "brcm,bcm2835-vchiq";
 			reg = <0x7e00b840 0x3c>;
-- 
2.51.0


