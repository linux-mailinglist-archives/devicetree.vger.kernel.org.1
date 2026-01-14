Return-Path: <devicetree+bounces-254782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5E8D1C0CF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56A8030194E3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F9A2F25F5;
	Wed, 14 Jan 2026 02:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGJlPSEA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779DE288D0;
	Wed, 14 Jan 2026 02:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768356202; cv=none; b=gnEdh4JgovmdHV5J+JLnQ/+MH4t5L8CpFN87XTdarbOi35Bf3KCZnkQonlxH7C/vluIVGBHaap7QMQgijcxM4GJGTKsoKmvzCg3lnOfRwDsiqa2WvWbx6tMrkPncPuj3XGp4Pv7HKW3L3QO0qJocyxYCv+zCHCQOGwszGQmnYEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768356202; c=relaxed/simple;
	bh=yFbkxFCU7bO4mP+vJps4q8S+uY+tRboWsVAKRRqO10U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q58eIdNy+FLT35vAlpYRYO4odYc5FZf9Bmj9rNHIX1tZeY7y+1fdyM0/kEr4qsK7vJa2RH1iYV+lpGgglHtiua7+b2pXFm2EcyiBarMJI5VVWxJFH1vT3LhQpGEfAlTS6gpNfYfCSsvruVYQwhdmoECZ7fecXDalr9hzh35EwUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGJlPSEA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A684C116C6;
	Wed, 14 Jan 2026 02:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768356202;
	bh=yFbkxFCU7bO4mP+vJps4q8S+uY+tRboWsVAKRRqO10U=;
	h=From:To:Cc:Subject:Date:From;
	b=vGJlPSEAAmyZGYsg/593nt9m+VyBtlmeBfWJmtip63HJlieqkb2xwjVfIuDYK9xpM
	 I56+ED6npi85wQo6KJJJwRSY/ItcBqmYPev8YVZAx7RfiyXTfPWHZLs0adBg6QDsBX
	 CfgN79sAEZcgfUPLJz38HjeQ/g9J48/uVS7U2UV0lgG+s27PZ4LYQhYsydPBzSDms/
	 Iw3Z47AmkvIe+IazLnqXTbalYB5OyR14N06wKD5t61Be9YcY9C3+sTzAXZxMkI7ijM
	 lhtWyNl9S0OOa8j2CY41JRkRuzCtApo++3k3N6MJka1QbbdHCxAR16MTQ/w8XqnTLq
	 0sWJNKqnXTbZA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware node down 1 level
Date: Tue, 13 Jan 2026 19:58:09 -0600
Message-ID: <20260114015810.701076-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
simple-bus nodes to root level") moved the firmware nodes into the
standard /firmware. However, /firmware is intended to be just a
container for firmware nodes as it is possible to have multiple types of
firmware (e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.

Fixes: 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes to root level")
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
This is only half the fix. Unfortunately, a kernel change[1] is also 
needed to make this all work. I do plan for that to go to stable. I'll 
leave it up to the Broadcom maintainers whether it's preferred to revert 
the fixed patches or apply these fixes. A 3rd option is revert for now 
and apply these DT changes some time later to give some time for stable 
updates.

Rob

[1] https://lore.kernel.org/all/20260114015158.692170-2-robh@kernel.org/

 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi | 24 +++++++++++----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
index 9ab70b519a63..46c91468f4c5 100644
--- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
@@ -1,19 +1,21 @@
 #include <dt-bindings/power/raspberrypi-power.h>
 
 / {
-	firmware: firmware {
-		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-		mboxes = <&mailbox>;
+	firmware {
+		firmware: rpi-firmware {
+			compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
+			mboxes = <&mailbox>;
 
-		firmware_clocks: clocks {
-			compatible = "raspberrypi,firmware-clocks";
-			#clock-cells = <1>;
-		};
+			firmware_clocks: clocks {
+				compatible = "raspberrypi,firmware-clocks";
+				#clock-cells = <1>;
+			};
 
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
 	};
 
-- 
2.51.0


