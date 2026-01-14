Return-Path: <devicetree+bounces-255012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 446BDD1EA46
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6EDA7303E69E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247BA36AB72;
	Wed, 14 Jan 2026 12:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="YJTJh68a"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8339939525E
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.97.179.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392396; cv=none; b=TLl/plivNHM1BPNuVLdfSvR5iVxbgufwYzXxK72x5ya0KbiKds0/6BVAPmoR6SCNleO3LZGD/KrgKgF5iHR9pqOuRzkudlU7Y7EFtMufIS6QlQFrtq1CNb44IykoNWarGrjbn/XC7X4gGfe8e/WRtyJCrxXqwHEzXDE3zk/n0hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392396; c=relaxed/simple;
	bh=b0XpT+BQoS2VSUDlaAbBIuDLg6/NWQCEXx2nynYLw8k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cJaXyRqLF2pXPhADPyRAOkMK2vi496roL0PV6iU5G0u+GOkvJKuVvUfQvkWW7Zimqs40zI4qhbHgQcg9FMCno9w9YN7ZeZAVahR/rAHVytBR1bVdtohI45W9alqz4MW4+oNdfTKktGrCN86YD43jkVpLWyyYjCFO6XrSKNkh5/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=YJTJh68a; arc=none smtp.client-ip=213.97.179.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=GSEQCzndpMCTzZAiElbDw0E8ooqH9Iv/C1Bw0XbM1/4=; b=YJTJh68aWzrZwZ47DWwKJG7Eha
	4tmnURY7cqRMZVdvqPSVMAf5a+XIuXekwSYreq8LqNWKg01dxTeJJ5RCySnJn+hlT2a7R2MvbjEaI
	fe5K7PBSIOm9Gj+tVzuuoT6UNG7Mw8IpqX202IeAlBS/E+wKF+kSnhulCJZCn6bReC4/DuvL0GIAI
	59trsW9munV1V1oqX+qOlYLHhf5CtMjhfv09p5CYd8XxFuPGGJOaFY9lldZuax7H3ziNdn0VndmRK
	+hhqRndk2XqcBNhc/aJM+DjLMyKV0dBiF2Mn9izwoT0mMWTEpZv/tiYE2UVaBR3DABvoDMcMaMdk4
	2QbHI0EQ==;
Received: from [187.36.210.68] (helo=localhost.localdomain)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA512__CHACHA20_POLY1305:256) (Exim)
	id 1vfzdm-005GCf-8h; Wed, 14 Jan 2026 13:06:22 +0100
From: =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel-dev@igalia.com,
	=?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>
Subject: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
Date: Wed, 14 Jan 2026 09:04:58 -0300
Message-ID: <20260114120610.82531-1-mcanal@igalia.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Commits 0ad5bc1ce463 ("drm/v3d: fix up register addresses for V3D 7.x")
and 6fd9487147c4 ("drm/v3d: add brcm,2712-v3d as a compatible V3D device")
added driver support for V3D on BCM2712, but the corresponding device
tree node is still missing.

Add the V3D device tree node to the BCM2712 DTS.

Signed-off-by: Maíra Canal <mcanal@igalia.com>

---
v1 -> v2:

- Rebased on top of linux-next (Stefan Wahren)
- Fixed node's address (2000000 -> 1002000000) (Stefan Wahren)
- Link to v1: https://lore.kernel.org/linux-devicetree/20260113192902.48046-2-mcanal@igalia.com/
---
 .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  4 ++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
index 7d4742ebe247..97522c6803c5 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
@@ -247,3 +247,7 @@ &pcie1 {
 &pcie2 {
 	status = "okay";
 };
+
+&v3d {
+	clocks = <&firmware_clocks 5>;
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 330a121ebfcb..661668ef7419 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/soc/bcm2835-pm.h>
 
 / {
 	compatible = "brcm,bcm2712";
@@ -642,6 +643,19 @@ mip1: msi-controller@1000131000 {
 			msi-ranges = <&gicv2 GIC_SPI 247 IRQ_TYPE_EDGE_RISING 8>;
 			brcm,msi-offset = <8>;
 		};
+
+		v3d: gpu@1002000000 {
+			compatible = "brcm,2712-v3d";
+			reg = <0x10 0x02000000 0x00 0x4000>,
+			      <0x10 0x02008000 0x00 0x6000>,
+			      <0x10 0x02030800 0x00 0x0700>;
+			reg-names = "hub", "core0", "sms";
+
+			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+			resets = <&pm BCM2835_RESET_V3D>;
+			interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	vc4: gpu {
-- 
2.52.0


