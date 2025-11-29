Return-Path: <devicetree+bounces-243125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D178BC93FD8
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 15:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 904F93A2271
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 14:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C93330F816;
	Sat, 29 Nov 2025 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="Uy8mDJ3B";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="ofrkiqtC"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A07262FC1
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 14:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764426753; cv=none; b=FFqFI4PiYT4OS9JGMou54ivX+aTp8FZZYVkzjlLg/NbmaF8t4oY/1R/ICRnv8eRuVlyDn/HRllD1AlzSWNcNmjR9BpboY5GWSfZJWvN4ViFpXJKlCZ3zcZuXQvq9YC2HeuJGl9txm3YBnhOPW9AFXV9PnLrVR78tMZlTFWhW9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764426753; c=relaxed/simple;
	bh=/bNB0z7bQNWFDsUFv3S/hb1rjvsdzmhN68vDr+w1g4M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ETWbtlqlWG0CUbKvoan7U/EH0btgW2kDEu8sAodY4mWlPlBrbYt4qBqRhI0LYiFIpPnZjRtBU+fc72J2LIHSISSeK1OaYUPBbmL3GOsO4wQzpjHEEYTiiL6k6OKG7G4BRorA7EUWkxSvjZnx0o60NHqj23OWW41DRvLaPAzHKJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Uy8mDJ3B; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=ofrkiqtC; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4dJXgd0ch4z9ssn;
	Sat, 29 Nov 2025 15:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764426749;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=luez4PC2vkXTisPWwXk47UIvFxIIJARfQQtuuZeiE6Q=;
	b=Uy8mDJ3BG9hyRId+/9DwOXuyERYYPlT3tw/KjBmPH/gUOzZU2ZTpfsNnZrvOgj+IX+pL2k
	hhtAI5YfN+XiTwSioLU3Z8b+9i0Ep653ZbT2OgNlu3cHPQfXQzfUVh58UXcrRniFOT000i
	8Np/HUQY7Zs+rzss+qWZsZW/G5hcBRxj6yt3yRwXyzlIMjY0ZIz29iUk1rKEP5IM9s5tFh
	tcRrkHwm6RuvkrdoInMJMOajlDvCn1sSjjIgOi7HcrdzNl6djKeg6xVJnWSWHZYVLhLx2d
	QdLeLuMtyBt8VmmleUrwD1cxiKY/oSAjhDE8evbEYO6hR6ZCesDHHlNgDyeYzg==
From: Marek Vasut <marek.vasut@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764426747;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=luez4PC2vkXTisPWwXk47UIvFxIIJARfQQtuuZeiE6Q=;
	b=ofrkiqtCxGY/jF0ZWFBf4bclAgMPdOvX0lFmq/e85SxEH/p5QvAMZNaZtH2X26v7b9nox2
	XMM0NXueuMPjufoKE8O/zVHiqhf56Tn3IqCIM9IJo6IFyUpog7AmFJ5j9dSvggwNjRrYau
	hXs0sO1ERS8Du3x0bqIAvuGXMz0K8ou7Kh9yVln05MHdp+/HRdUIw5S0g7pvz3iyY6P90l
	SrilObVZmDEGpBRiy5W9Yh++5XHKFUtFkUaROJ5xRHgcdBb8rLvYhEzTNAjloFq27qt2XG
	Vdy5jF9C5lUUkgYTrjO/yof9J1EdeBf3KiylxyRUayU33Y8c5MaaLzgCzjc1Qw==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut@mailbox.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.li@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rain Yang <jiyu.yang@oss.nxp.com>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: [PATCH] arm64: dts: imx95: Use GPU_CGC as core clock for GPU
Date: Sat, 29 Nov 2025 15:31:30 +0100
Message-ID: <20251129143220.14834-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: 45bffb34d5b138d41cb
X-MBO-RS-META: k97c9155q5k5kus8ktn897m1mnitr64r

The i.MX95 imx-sm introduced new GPU_CGC clock since imx-sm commit
ca5e078833fa ("SM-128: Add clock management via CCM LPCG direct control")
which are downstream clock of GPU clock. These new GPU_CGC clock
gate the existing GPU clock. Currently, without clk_ignore_unused
on kernel command line, those new GPU_CGC clock are unused and the
kernel will disable them. This has no impact on i.MX95 A0/A1, but
does prevent GPU register access from working at all on i.MX95 B0.
The GPU_CGC clock are present on both i.MX95 A0/A1/B0, therefore
update the DT such, that the GPU core clock are the GPU_CGC clock.
When the panthor driver enables the GPU core clock, it enables both
the GPU_CGC as well as its parent GPU clock.

Fixes: 67934f248e64 ("arm64: dts: imx95: Describe Mali G310 GPU")
Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frank Li <Frank.li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rain Yang <jiyu.yang@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx95-clock.h | 1 +
 arch/arm64/boot/dts/freescale/imx95.dtsi    | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-clock.h b/arch/arm64/boot/dts/freescale/imx95-clock.h
index e1f91203e7947..22311612e4403 100644
--- a/arch/arm64/boot/dts/freescale/imx95-clock.h
+++ b/arch/arm64/boot/dts/freescale/imx95-clock.h
@@ -183,5 +183,6 @@
 #define IMX95_CLK_SEL_A55P                 (IMX95_CCM_NUM_CLK_SRC + 123 + 7)
 #define IMX95_CLK_SEL_DRAM                 (IMX95_CCM_NUM_CLK_SRC + 123 + 8)
 #define IMX95_CLK_SEL_TEMPSENSE            (IMX95_CCM_NUM_CLK_SRC + 123 + 9)
+#define IMX95_CLK_GPU_CGC                  (IMX95_CCM_NUM_CLK_SRC + 123 + 10)
 
 #endif	/* __CLOCK_IMX95_H */
diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index 6091c2713fa48..47f20e501315f 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -2874,7 +2874,7 @@ netc_emdio: mdio@0,0 {
 		gpu: gpu@4d900000 {
 			compatible = "nxp,imx95-mali", "arm,mali-valhall-csf";
 			reg = <0 0x4d900000 0 0x480000>;
-			clocks = <&scmi_clk IMX95_CLK_GPU>, <&scmi_clk IMX95_CLK_GPUAPB>;
+			clocks = <&scmi_clk IMX95_CLK_GPU_CGC>, <&scmi_clk IMX95_CLK_GPUAPB>;
 			clock-names = "core", "coregroup";
 			interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.51.0


