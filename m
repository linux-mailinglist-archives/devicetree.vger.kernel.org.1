Return-Path: <devicetree+bounces-98690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F28E09670BA
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 12:11:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D40C1F23078
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 10:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0082117C216;
	Sat, 31 Aug 2024 10:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IBEdoZ69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393F017BB01
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 10:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725099098; cv=none; b=ksAZ+rRSDtyvHV1t3flpPNUxXJ+CCzhLwBe6Fy7sD0B7HOCfJyxlZc8F7NP/fEhvW/rflAV/fYTfpNXcmg5mK4CyeWg6Gm+9eZYlhEs8R3GIYypFq0qz5e0c51uSFxllcsug4tAdIU6sWSy0aCGMtIJcNVcmScUpdi5K1c8GP0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725099098; c=relaxed/simple;
	bh=6A/KZXl0SOszbMPxJ54MyjSi/j4NMy3w33LDYgwEuUM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KBiBp8Odf9o1BxtBI/g19BGCcG+rBNlgBXll/hBu9p8CSGVoGDkm3Lec2u6Ay4I5ZQRLrgs7Gga+f581UQ2LU8UTTq+ihSvOAVtdaa6ii58AI4HcfvAPUa8Hmd9dVjYIAOJoXQWkFgs7UB0GjVtjJKuJKe8WV++kbFaz8reLzkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IBEdoZ69; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c24e51d2d4so9654a12.1
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 03:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725099094; x=1725703894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HAA/88jUmPoX8j9EzkHuwxEf+0bfdEcorfVyfMeqjt0=;
        b=IBEdoZ690OOzBbuySs8tCMVkCUqFMIUxQx81sIn/QchJS+bh25iezZacv/xCgizvN0
         kOrPULkPtPyYEM2lz/pkaWD+t/lpbWNGuBQxIV9YRgLmV28Epqxba3g5ioMm85fyziJg
         +1MAPgzz5O0y11l4W50AtMAP7HE2sMk0ugTfS8c90BseI046ApdU3C3dfJ38HKfMhukb
         m4FWWkTuV4PY1+TVYlIKsGaSkGMtp2tdiUTwkp2woZo/OheYbR3WLmhwWBP8SYzO7xvI
         jbMRgC4t5WWyF7izgphNDIw/3BdY3l8Sm0Pvoo/N7BS9lIaTkr6eoYBTHq9W29THFfx/
         aylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725099094; x=1725703894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAA/88jUmPoX8j9EzkHuwxEf+0bfdEcorfVyfMeqjt0=;
        b=c2PQEhkucfAwjPAWVhg8YCWURITNBYntkpPvGYuKAeyHLnD34bJHPduJx28oSMESZs
         s0P9Bbw0jEyPxgwykHUUq9CUZWK+RiTcTLO//n9ym8bpZLCJ5PM8MQKYWmRMKH3TVTwD
         7F2PZeXrIe3tSGIiCYnyI3wWuIRb3LeWmEK26sNveFNzw0Mj19qQbzpNV+pDP+r+qAaF
         P1RBoDhluYnoOFEuYshNFkscY6seqyNvaA1CfXHNVtEMDevgM35pJyBdoZgL5sD0KKru
         E/qYv49O29NTAicvPcKJfczTDb/ekIL6CgiS6dOLY1+w9Ba3+ag8hmR3PBGuv8u/NPUe
         CBVw==
X-Forwarded-Encrypted: i=1; AJvYcCXM9CmJeEGDXpfWG1H30j/uyA4G4hepQ5/H57qZArOeKfBJrZH9fVnl/HOJaL+kLvN0fl4y98D1/+oR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm60xuIITpG+JX+3MnKRcAT8p5mO5VV0uOENJnhxhhHvl1nrGP
	iA2SmP+3Pf06KBMnGTRDu+1ze2wjF2N3zQF9GNORa02VLqAP4czdLodqjl/TxnY=
X-Google-Smtp-Source: AGHT+IFlB45dEul3ujIqmq8Dxo7h/2KpPUUyuM2NL5Hz0hrjeccIA1n0Q+AYQl2uee/M95VUlejx1g==
X-Received: by 2002:a17:907:7f06:b0:a83:70d0:7a1e with SMTP id a640c23a62f3a-a89a37f673dmr133763166b.9.1725099094557;
        Sat, 31 Aug 2024 03:11:34 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feae4dsm311707266b.31.2024.08.31.03.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 03:11:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Parthiban Nallathambi <parthiban@linumiz.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx6ull-seeed-npi: fix fsl,pins property in tscgrp pinctrl
Date: Sat, 31 Aug 2024 12:11:29 +0200
Message-ID: <20240831101129.15640-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240831101129.15640-1-krzysztof.kozlowski@linaro.org>
References: <20240831101129.15640-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The property is "fsl,pins", not "fsl,pin".  Wrong property means the pin
configuration was not applied.  Fixes dtbs_check warnings:

  imx6ull-seeed-npi-dev-board-emmc.dtb: pinctrl@20e0000: uart1grp: 'fsl,pins' is a required property
  imx6ull-seeed-npi-dev-board-emmc.dtb: pinctrl@20e0000: uart1grp: 'fsl,pin' does not match any of the regexes: 'pinctrl-[0-9]+'

Cc: <stable@vger.kernel.org>
Fixes: e3b5697195c8 ("ARM: dts: imx6ull: add seeed studio NPi dev board")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi     | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi
index 6bb12e0bbc7e..50654dbf62e0 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi
@@ -339,14 +339,14 @@ MX6UL_PAD_JTAG_TRST_B__SAI2_TX_DATA	0x120b0
 	};
 
 	pinctrl_uart1: uart1grp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
 		>;
 	};
 
 	pinctrl_uart2: uart2grp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_UART2_TX_DATA__UART2_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART2_RX_DATA__UART2_DCE_RX	0x1b0b1
 			MX6UL_PAD_UART2_CTS_B__UART2_DCE_CTS	0x1b0b1
@@ -355,7 +355,7 @@ MX6UL_PAD_UART2_RTS_B__UART2_DCE_RTS	0x1b0b1
 	};
 
 	pinctrl_uart3: uart3grp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
 			MX6UL_PAD_UART3_CTS_B__UART3_DCE_CTS	0x1b0b1
@@ -364,21 +364,21 @@ MX6UL_PAD_UART3_RTS_B__UART3_DCE_RTS	0x1b0b1
 	};
 
 	pinctrl_uart4: uart4grp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_UART4_TX_DATA__UART4_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART4_RX_DATA__UART4_DCE_RX	0x1b0b1
 		>;
 	};
 
 	pinctrl_uart5: uart5grp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_UART5_TX_DATA__UART5_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART5_RX_DATA__UART5_DCE_RX	0x1b0b1
 		>;
 	};
 
 	pinctrl_usb_otg1_id: usbotg1idgrp {
-		fsl,pin = <
+		fsl,pins = <
 			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
 		>;
 	};
-- 
2.43.0


