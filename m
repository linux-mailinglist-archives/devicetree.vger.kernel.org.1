Return-Path: <devicetree+bounces-22345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B37A8072D8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:44:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 242901C20BCA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 733EA358B6;
	Wed,  6 Dec 2023 14:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="DUQik+0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (unknown [IPv6:2a01:4f8:c2c:390b::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C45D59;
	Wed,  6 Dec 2023 06:44:46 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DB699C0190;
	Wed,  6 Dec 2023 15:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1701873885; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=IKeKgwpFsNj9YrDVbsZmnB9SqQh3ugfmHYM2RQIQqoo=;
	b=DUQik+0wkRvmJAHx/RNOxS6DwLKwXsI2bs3Za+zyQz4Ep6gYREaLLpuU9xmVVdhfK4gYkd
	1+CSK1660MIbrOoCl68VX4htwC/zj8RNwn0IiokbS06mMpjgzzTM3lr+wIxMCyFbuR/Glk
	V8hZq4YA7wUFBkiATYnv93/nmLsOWOP9/crBJTtQYC2wapV/tM/6PHtEMr7r5dx7i/qjaF
	bxnjly63f+Ag0HDuKUNImdJC/Eeu5sqIBxxMOREBI9Jctmk9Rim+dz0Wnre6kQ7FFz32Ls
	YlRhM1nkoIALE8G8tGi1GxbgmfL6cF1ZVE1SNIDdvB8zsViFpvDiraMRpmO2vA==
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
Subject: [PATCH v3 12/14] arm64: dts: imx8mm-kontron: Remove useless trickle-diode-disable from RTC node
Date: Wed,  6 Dec 2023 15:41:15 +0100
Message-ID: <20231206144201.46911-13-frieder@fris.de>
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

The RV3028 driver doesn't use this property. Remove it.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
Changes for v3:
* none

Changes for v2:
* none
---
 arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
index 60abcb636cedf..b161b0c85d61e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-kontron-osm-s.dtsi
@@ -211,7 +211,6 @@ rv3028: rtc@52 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_rtc>;
 		interrupts-extended = <&gpio4 1 IRQ_TYPE_LEVEL_LOW>;
-		trickle-diode-disable;
 	};
 };
 
-- 
2.43.0


