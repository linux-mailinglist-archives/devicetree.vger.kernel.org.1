Return-Path: <devicetree+bounces-13318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077A7DD751
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 21:47:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D07F528195C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 20:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01DC823769;
	Tue, 31 Oct 2023 20:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="QG1kIjaX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8746E249E5
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 20:47:19 +0000 (UTC)
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45532113;
	Tue, 31 Oct 2023 13:47:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 56BCAC03DD;
	Tue, 31 Oct 2023 21:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1698784774; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=YpM5vxrR6ZrUF/Hkjv41Um8dF7koOSkUsqfyGCRk++E=;
	b=QG1kIjaXhwIl5fCCU06yivRLQ3/G8AS4T/xogJexbos+pLX3FHVr1gYnIilTvDw6rY5Neh
	hn/wpcnO0j7dy2V/Ep1F2Z6y/Z0nD7pzVb6uWIuMpVK+Cuq0fCeH4DVlxpxJ3iNUYTqNks
	UVhYBYLNcjlKSIeKg8bVi4czsM1BdazDxG4QmYNxJTgH6RNBkAjgAqOMRasvsUZ7zWdf0x
	XZJ2z9c2gdXdTgMrY14eOMdw1mG+bbEduM66QHtKL6KTSv6OP5XUL0e8Woe+xLVhAf4jpX
	a4MW9zjH09CKdcLecFXFZJoWrhI9327PbrxGF+agjhTSu4zLTvMVFQPR82O4yA==
From: Frieder Schrempf <frieder@fris.de>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH 13/14] arm64: dts: imx8mm-kontron: Add I2C EEPROM on OSM-S Kontron i.MX8MM
Date: Tue, 31 Oct 2023 21:37:50 +0100
Message-ID: <20231031203836.3888404-14-frieder@fris.de>
In-Reply-To: <20231031203836.3888404-1-frieder@fris.de>
References: <20231031203836.3888404-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

There is an EEPROM on the SoM module. Add it to the description.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
index b161b0c85d61e..6b9058fc53332 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
@@ -205,6 +205,14 @@ reg_nvcc_sd: LDO5 {
 		};
 	};
 
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+		address-width = <16>;
+		pagesize = <32>;
+		size = <8192>;
+	};
+
 	rv3028: rtc@52 {
 		compatible = "microcrystal,rv3028";
 		reg = <0x52>;
-- 
2.42.0


