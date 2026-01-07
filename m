Return-Path: <devicetree+bounces-252145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD33DCFBABF
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE75A30B716E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1021A23B638;
	Wed,  7 Jan 2026 02:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+ZaIDIW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8B723AB9D;
	Wed,  7 Jan 2026 02:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751809; cv=none; b=OqmDpyUIX5jpCKw0tAkkDLTXY9UgjG2DI5w6cVHWKB5W4VP4ROFXxx9c4ciluju2JuexE7i35eiNJiRW71NpS2/6+mpmbVjxb2AET0zh2vsTCA8YVHjYFsr92B9V5Lqv0j1yfkkCHOxpFfnDqxTLZi6tQxXq3MFM215srLxj8Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751809; c=relaxed/simple;
	bh=bEeV9AIXgJUOiv5AAurKGQy27HtWNurlRvp9L2dNDu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LcDqjs8EPG9ewVj7VTcxKtMrZhvuxEH8Q1KN/mSWm+Y714E7unGJHSIGU8HcqXkCktShT7YRiWLyoiuE8gb9D+neJf23TVRByzO0nPddSS0JJYr/Fy1f22P5O21lMyChKMQBtPoZnG639j4hRUrRPlXtOvqTwFQmqYjVyn4dKJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+ZaIDIW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2AB1C19423;
	Wed,  7 Jan 2026 02:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751808;
	bh=bEeV9AIXgJUOiv5AAurKGQy27HtWNurlRvp9L2dNDu4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=W+ZaIDIWVB7W1ksneiAra3uH9lBBnY5kdOY8CLWWRPa+3zEtRyhdRNpsmHHwnAOx/
	 Eut9VJX+3RZnK7J6UMsNLlLUomPlnJVSg7c1i4NrgYJRv9auRibQ6H5a9lUvz0LPlw
	 +cCLzlofTVDNtEJRRYIRymPn4eXUCgo94Hh0o8s9x78O4O10XAjcWobDVxzaHcI7Td
	 Qqup66vbMj4s7IcwQpsXwGwUJ8pGMDN32QKkLvfzrlrovhBEy5I3OFWDYum7acsGaZ
	 P7La+QY3HhtWMmk7vb+B9TL8lTJgXG8DKbSQmL0fKieIHp9wYStOLbfmS/KJQXXxMD
	 vSas1R/oYVisQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:41 -0600
Subject: [PATCH 02/13] ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus
 nodes to root level
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" node
is part of the firmware, so move it under the /firmware node.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm/boot/dts/broadcom/bcm2835-common.dtsi |  7 ++++---
 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi    | 16 ++++++++--------
 2 files changed, 12 insertions(+), 11 deletions(-)

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
index e9bf41b9f5c1..9ab70b519a63 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
@@ -1,15 +1,13 @@
 #include <dt-bindings/power/raspberrypi-power.h>
 
 / {
-	soc {
-		firmware: firmware {
-			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-			mboxes = <&mailbox>;
+	firmware: firmware {
+		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
+		mboxes = <&mailbox>;
 
-			firmware_clocks: clocks {
-				compatible = "raspberrypi,firmware-clocks";
-				#clock-cells = <1>;
-			};
+		firmware_clocks: clocks {
+			compatible = "raspberrypi,firmware-clocks";
+			#clock-cells = <1>;
 		};
 
 		power: power {
@@ -17,7 +15,9 @@ power: power {
 			firmware = <&firmware>;
 			#power-domain-cells = <1>;
 		};
+	};
 
+	soc {
 		vchiq: mailbox@7e00b840 {
 			compatible = "brcm,bcm2835-vchiq";
 			reg = <0x7e00b840 0x3c>;

-- 
2.51.0


