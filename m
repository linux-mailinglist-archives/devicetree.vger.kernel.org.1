Return-Path: <devicetree+bounces-254783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 205C2D1C0DE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DA9E0302AB9A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175CD2F3C13;
	Wed, 14 Jan 2026 02:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkC3qizk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E770A2264AD;
	Wed, 14 Jan 2026 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768356204; cv=none; b=poyvXvOsCe+F3nnVynwXRNwDqFVfmf5qljBJBoLCcGBK5Eq90MeVtsM3BIHMNxjGrt9vopo3vhQpIsFEJTUp6qyEYIHTaftQ15zuxKGmW2Eoa/nqdnZy502WEV+0RUId05MWBwwj+xuqm+JTJ2tlRdB2xW6qTFfYNbqOPOLj9HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768356204; c=relaxed/simple;
	bh=32z61EwVy0hrXyNqeVcLqxmPEJiKUI6PlPU8CzBJ0gQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O1aNiccrpEYUWbM/HxhPBFkIgwViXB6TV2aIJWuPbjy+udq/Jhdd1u/qmSHFXXsLpdwT6gPa+dwR7yYS87DzZs+XRSXOIsNUW/tTiEz7Kcd2dezPjPqa8as38/X0XafD0NFeOXO4LnsZ4a4RHVsi2WbGMzXy5tGpSkfhJU84rU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkC3qizk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86671C116C6;
	Wed, 14 Jan 2026 02:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768356203;
	bh=32z61EwVy0hrXyNqeVcLqxmPEJiKUI6PlPU8CzBJ0gQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pkC3qizkvBKVLsXkBC2Nqg8A2AdpTfYiAYfPJok5SmrgXNQjIY2Qb4D/tWLp3OQFL
	 YUIbd67xQ2c6KYE+TQcLV0z1NKv27tgCUUeesJbGu8oqDJUm9vAgJp/LoO1GlEhpB/
	 UaIekOfvzdryNHy3aMM9S7pm2mAooUSjeHOxQy6yHczrqAkI/xt5CJL+tKKxFRCet8
	 yALYGxHVHc4ygTWDzsByMcFH+6vSASrujB8+jKyEI7pZCDgUbmkG8c/hMDdsxlAKeS
	 nTaRmIINM/Z1bOqZAXGs2bRqVWVMg9HUcHaCL1+dI4CworIM02YajqyY2JkhHYslNZ
	 nziJam/1sYVgg==
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
Subject: [PATCH 2/2] arm64: dts: broadcom: bcm2712-rpi: Move the firmware node down 1 level
Date: Tue, 13 Jan 2026 19:58:10 -0600
Message-ID: <20260114015810.701076-3-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260114015810.701076-2-robh@kernel.org>
References: <20260114015810.701076-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit b32673d226c9 ("arm64: dts: broadcom: bcm2712: Move non simple-bus
nodes to root level") moved the firmware nodes into the standard
/firmware. However, /firmware is intended to be just a container for
firmware nodes as it is possible to have multiple types of firmware
(e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.

Fixes: b32673d226c9 ("arm64: dts: broadcom: bcm2712: Move non simple-bus nodes to root level")
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../dts/broadcom/bcm2712-rpi-5-b-base.dtsi    | 40 ++++++++++---------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
index 7d4742ebe247..d0b7137e07d2 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
@@ -44,25 +44,27 @@ power_button: power-button {
 		};
 	};
 
-	firmware: firmware {
-		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-
-		mboxes = <&mailbox>;
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
-
-		power: power {
-			compatible = "raspberrypi,bcm2835-power";
-			firmware = <&firmware>;
-			#power-domain-cells = <1>;
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
 		};
 	};
 
-- 
2.51.0


