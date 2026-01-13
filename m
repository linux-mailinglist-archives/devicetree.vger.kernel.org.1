Return-Path: <devicetree+bounces-254702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 154D6D1B0CD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D12230012F6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC9A27057D;
	Tue, 13 Jan 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="e9dUKdor"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C01B20F08C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.97.179.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332633; cv=none; b=e/i2fH+yXYjlco+G3hCFk3dK8NeacBuHl1gHJeLS2lozU4+2nEpiHcKp+ChO/MZ0gJXBbEKCT9xypJM7flNgKEF+tZKDqcfTw4+eLVWJxgnS7vF2hl0fVHQeI43NYvdp4mY1vhznxLGh6rLnCKDlEvQapQE+ORyprpG93WNmVAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332633; c=relaxed/simple;
	bh=cUg/k9Of74tpJ/6NoEiWsFjvqu+qspfG3qIZQ6WG17M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=shgU8m1NPIyUiYR6tqEviRlwZVvvEcfgcmSd5yvSrsiV8yU3MXf9qGx+n/skzH1ZG2LMOIv17rZLAUtDFzDYKhyUAjzrsCgpMq3E/KUtBzaJhqhsD0x3mpRv3tlcOb+vKE143r5wQyBj+mDMBiGicb5pJMgL9GkIRLLCGfT/Sos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=e9dUKdor; arc=none smtp.client-ip=213.97.179.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=r/peNOTgTzGUFYVPiT7tpBUbzIfn4ZdTgKaGtsMJe5Q=; b=e9dUKdor4XnLs4+cbsWzD3cpi+
	31ZxfYMZWguc7zxDrnmFVDEG2blVr/YUXm2JSnSXmq4qDPxp7XBYqwbQkaVYgvZXvFm64yzzuGZEE
	DTpLT6MgaLDORrRfJzdMXRUH5XFUILq1Qqvwu+d/wWCD/HaKGMF5waRgUuBX1QIZ9X6G5OuZHC06H
	mVhd9aLoeCVdNhhjz05FanWhLTj0zrxX90vC+3J7rcG6PeHygdhpg75r7rtrSqzBXnQmhK/LavivX
	IXglOlpYJflfWEXpt8guB0PbECTc9sxnt3vlwPClbzhHbOG/UD9Ei8BJZ9lnfDaj+nDPbX3aW11Ea
	0FHQy67g==;
Received: from [187.36.210.68] (helo=localhost.localdomain)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA512__CHACHA20_POLY1305:256) (Exim)
	id 1vfk5q-004ymG-8d; Tue, 13 Jan 2026 20:30:18 +0100
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
Subject: [PATCH] arm64: dts: broadcom: bcm2712: Add V3D device node
Date: Tue, 13 Jan 2026 16:28:21 -0300
Message-ID: <20260113192902.48046-2-mcanal@igalia.com>
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
 .../boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  |  4 ++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 7d4742ebe247..97522c6803c5 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -247,3 +247,7 @@ &pcie1 {
 &pcie2 {
 	status = "okay";
 };
+
+&v3d {
+	clocks = <&firmware_clocks 5>;
+};
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 330a121ebfcb..4c9c63fcf037 100644
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
+		v3d: gpu@2000000 {
+			compatible = "brcm,2712-v3d";
+			reg = <0x10 0x02000000 0x0 0x4000>,
+			      <0x10 0x02008000 0x0 0x6000>,
+			      <0x10 0x02030800 0x0 0x0700>;
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


