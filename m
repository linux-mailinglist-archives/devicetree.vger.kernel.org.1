Return-Path: <devicetree+bounces-18528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD30E7F7056
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 778062811DE
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E46171C4;
	Fri, 24 Nov 2023 09:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HkoxW7vE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97C0110E3
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:46 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9e1021dbd28so226394166b.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819264; x=1701424064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9+ThUuyBMc8tE0TTrcKzb0NqRa+0wf0OPRYLrcEY5ZA=;
        b=HkoxW7vEL5FwkyzeHyVzGqpVLttkjWR7aRF9h8wrBrwVS6F10ek2ndN/qyCQz4wSX5
         8ImS+eD0+V5ykpKNERdcL0NB/3NexkDCbtVqB18ZWkwSG9ECSuPAvEbbKyUbAE5WEILF
         epV6PxjUCH2X7sGDRpdai14h8utoT0XtuGrxJseoAVk9QIbzZLr3u5frA+0jF2yaLst6
         MefyO7no8rZqO9O2oYlcHbOk4JeyhgJA9ei/f+H3n5vQPdnKBiVT6v2GtPgfii363ca4
         poT5xfJpcYZh5wj3JQO7cEiw2To6SZ40fUXHmczAwuZahQYJgczZE/Dn3TMNSwxnwfzI
         iemQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819264; x=1701424064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+ThUuyBMc8tE0TTrcKzb0NqRa+0wf0OPRYLrcEY5ZA=;
        b=Qg5JMNk5J52b0Xr+rfOv10nq07BHtTivo9ehMDIomfrcLR3zz64zYykYTi3n7rVurg
         lTnPl3McNS2D8oBfMbYDqY/hkw5gLzbxD2U1V3r3bvHggsDPjommkKvwWfjuw2wBKyKh
         /Myfc2Ii/uTYPBoxJZW70ZrFrNmtPy6U8gZHM1ahN95qOO1PgVCKV7svgvnt9M0oZL/7
         uIk/30ANINWe4JiWyxyF8qZozcXug0TcV/JgGZuydlYZh3UcAJX3iPhGRwSAbSPC7a6K
         gFjFaUA1ZlKSAynbco2VqpmCQO3aEi16m7VNZeGhaqWqf0u5qu8TQc99DtP/6P261D+9
         jkRA==
X-Gm-Message-State: AOJu0YxXwJAeuN/ArpFDQtLoNEBrjYvKjsBUMKc0KC3zvcBOMgnSHNE5
	2qxIfdK1ezpbj2bpe/12tFm2hw==
X-Google-Smtp-Source: AGHT+IHiC5jOSc+vYNtalwC9n1F+/QoS4nBpsEIqcldYuy36Nbcsh8V81quxWNDRZ8JD4MVzRbIwMA==
X-Received: by 2002:a17:906:7f96:b0:9c2:a072:78c4 with SMTP id f22-20020a1709067f9600b009c2a07278c4mr1615067ejr.25.1700819264730;
        Fri, 24 Nov 2023 01:47:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id gr19-20020a170906e2d300b009de11bcbbcasm1859767ejb.175.2023.11.24.01.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:47:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: ti: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:47:38 +0100
Message-Id: <20231124094739.58163-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 9868c7049bfb..d6a7ae086244 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -671,7 +671,7 @@ exp1: gpio@21 {
 		reg = <0x21>;
 		gpio-controller;
 		#gpio-cells = <2>;
-		gpio-line-names	= "BOARDID_EEPROM_WP", "CAN_STB", "GPIO_uSD_PWR_EN",
+		gpio-line-names = "BOARDID_EEPROM_WP", "CAN_STB", "GPIO_uSD_PWR_EN",
 				"IO_EXP_MCU_RGMII_RST#", "IO_EXP_PCIe0_4L_PERST#",
 				"IO_EXP_PCIe1_M.2_RTSz", "IO_EXP_PCIe3_M.2_RTSz",
 				"PM_INA_BUS_EN", "ENET1_EXP_PWRDN", "EXP1_ENET_RSTz",
-- 
2.34.1


