Return-Path: <devicetree+bounces-22346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 189278072DB
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C86BC281F34
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDF03EA64;
	Wed,  6 Dec 2023 14:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="Qei/bilb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (unknown [IPv6:2a01:4f8:c2c:390b::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9E901725;
	Wed,  6 Dec 2023 06:44:48 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 56B03C0128;
	Wed,  6 Dec 2023 15:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1701873886; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=kx4/WNwSRtSkIKBw7sjNm52ZpZ7M2ZKDAMkBQh2uf30=;
	b=Qei/bilbQZvonf/vDhu6vrfBzQHNyoukyPFVD7Vi/C1ZxfOJFMZRwQQOWHN+nzz51iSXnZ
	rU65UBsTvs2JwfTVukbGLFhuH4iYsdKia/PL+L4hl1t9IF7KKZWV4mwPgaZH7WmUKwaQjI
	OSkKUY1IWRv3yXzqj7HvgdzTomrZnWYRUfrpvdNFJS45cqrLqwxU7bF+oCyolfe5dBJc92
	AgcwvaB3e7FSQtLruxveBQS5lDCFT3BHuWRjj072vI7Y+EG95LZyT845On2I65nAPV40+X
	gE145IroEnL0pmt3l9bdyilJ0/Z7fOymjOsK/OPs6BjjStlColR7q6Wx75JqZA==
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
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 13/14] arm64: dts: imx8mm-kontron: Add I2C EEPROM on OSM-S Kontron i.MX8MM
Date: Wed,  6 Dec 2023 15:41:16 +0100
Message-ID: <20231206144201.46911-14-frieder@fris.de>
In-Reply-To: <20231206144201.46911-1-frieder@fris.de>
References: <20231206144201.46911-1-frieder@fris.de>
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
Changes for v3:
* none

Changes for v2:
* none
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
2.43.0


