Return-Path: <devicetree+bounces-240549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B016C72B27
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:02:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 85D404E2433
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE72275864;
	Thu, 20 Nov 2025 08:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs0FekNP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279551BC3F;
	Thu, 20 Nov 2025 08:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625709; cv=none; b=f3X0oSGFB02pbvnN3EHPNPEtfWLaGaxnUvslSKOUxrybZyKFoL0N+1wrGe38u8i1mMl6+egDDht3woHh8ya+haJ0nZELm5oVRoaKVXEmDrvvtUaMNDG214YmmiKmP34cRRjydgxcvk2fRwbOZbrdAhUv1+UQ7E+UjTL1MUere6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625709; c=relaxed/simple;
	bh=IbvTlEPSWrI8xGR6mXzq9RgMTipCj2oW/eR0lae9YdM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=my7RKH/TXH7odN9tEHnmq1k1L7hOleStT2qG5AobYAwhyWkNxdTYmLDFb6AMEmvFxCt7ATnUp7Sn+pwG5kMP99lL0bMNRFR9H7f0HfQ21ewzV/kKyBQ4G7fz29cMzPhupV1uioNZ9VTkQKzWhFonhRkNkGDXL+SlA1Jpw6DW8DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs0FekNP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86F30C4CEF1;
	Thu, 20 Nov 2025 08:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625708;
	bh=IbvTlEPSWrI8xGR6mXzq9RgMTipCj2oW/eR0lae9YdM=;
	h=From:To:Cc:Subject:Date:From;
	b=Bs0FekNPHGzqlwyYQheG2gdsdBW+bSbvQODePqzZUx09+Yg0eUR+WQYx3vrf6BBw6
	 plN6O5bCZI7aoUmOZOKHnKij4CK8fr6FVdsvqgIEXm0PHAag1F2Wg+DjkatdaC6ddL
	 eTRSZ7HUgmDPq6Ak1fXSIcGSzkBBe7XdGPftKh2yK3hBeHIzqQow3UCe2ApHv3TN6w
	 WnMPbaKr8Wce0ccjLbtMlSPeMU626R+Zju8+IVXxjuwqNTzCqiadnzIfaoPEODIHES
	 I40BV1LaOoP6gM/2J4UE14LET5d0lFjg99MWNbxUeltliBbPocTZ/fAFkpsVemPNV9
	 ekFY56iJIAWXw==
From: Michael Walle <mwalle@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Tero Kristo <kristo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH] arm64: dts: ti: sa67: add build time dtb for overlays
Date: Thu, 20 Nov 2025 09:01:22 +0100
Message-ID: <20251120080138.2397851-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit d8c8a575f5aa ("kbuild: Ensure .dtbo targets are applied to
a base .dtb") kbuild will throw a warning for any stray overlays. Add a
new .dtb which will only be build if CONFIG_OF_ALL_DTBS is enabled.

Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/ti/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 8a2f0530e7cc..333edfc335fa 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -231,6 +231,8 @@ k3-am642-tqma64xxl-mbax4xxl-sdcard-dtbs := \
 	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-sdcard.dtbo
 k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
 	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
+k3-am67a-kontron-sa67-base-gpios-dtbs := \
+	k3-am67a-kontron-sa67-base.dtb k3-am67a-kontron-sa67-gpios.dtbo
 k3-am68-sk-base-board-csi2-dual-imx219-dtbs := k3-am68-sk-base-board.dtb \
 	k3-j721e-sk-csi2-dual-imx219.dtbo
 k3-am68-sk-base-board-pcie1-ep-dtbs := k3-am68-sk-base-board.dtb \
@@ -285,6 +287,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am642-evm-pcie0-ep.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb \
 	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb \
+	k3-am67a-kontron-sa67-base-gpios.dtb \
 	k3-am68-sk-base-board-csi2-dual-imx219.dtb \
 	k3-am68-sk-base-board-pcie1-ep.dtb \
 	k3-am69-sk-csi2-dual-imx219.dtb \
-- 
2.47.3


