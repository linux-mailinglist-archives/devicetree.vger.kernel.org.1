Return-Path: <devicetree+bounces-27095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A970E8194E8
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 01:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D76621C23687
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 00:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B807EEA7;
	Wed, 20 Dec 2023 00:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="OOChNBWn"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0CFEEAE
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 00:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 179AD86E5E;
	Wed, 20 Dec 2023 01:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1703030649;
	bh=snWfkyID8+PR11Wf6qKJQp8+QcTOjr/YidafSNOm00M=;
	h=From:To:Cc:Subject:Date:From;
	b=OOChNBWnvRpJzq1V65Q0FfHQ1nU3FfidXv/5cMENh3bx8toYo3OLxfhGPUOlv6cTL
	 m79IqdmjAQQxc1QWQWn9rmQYM6AWxLnrL2xr0/Mt1QySaRCiu27uSiToVgirpv7eTv
	 6jrbwvNyQmPl1jsOukAXLBg7zyfiGISObieIDEZ9dJB/fCtNtxZ7YiZjXghqmLCa/o
	 7EJ+g2r54s3LD2ESGIfbnyNBJp8j6BBlLVHm8DUurjfBts9a3U7Ki4YJ43Eb1IBglN
	 nZ/ZqCwvaIPeDrdimFt+Ova9AxfGbygWyh5y8vHeDOyKLh3ur0M+jd6OeyplC3u/A8
	 bIeyVy+Zgea8Q==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Disable UART4 by default on Data Modul i.MX8M Plus eDM SBC
Date: Wed, 20 Dec 2023 01:02:42 +0100
Message-ID: <20231220000345.42593-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

UART4 is used as CM7 coprocessor debug UART and may not be accessible from
Linux in case it is protected by RDC. The RDC protection is set up by the
platform firmware. UART4 is not used on this platform by Linux. Disable
UART4 by default to prevent boot hangs, which occur when the RDC protection
is in place.

Fixes: 562d222f23f0 ("arm64: dts: imx8mp: Add support for Data Modul i.MX8M Plus eDM SBC")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
index 34e9aecc403bd..88e1b76d7d75f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
@@ -491,7 +491,7 @@ &uart3 {	/* A53 Debug */
 &uart4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart4>;
-	status = "okay";
+	status = "disabled";
 };
 
 &usb3_phy0 {
-- 
2.43.0


