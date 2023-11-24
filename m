Return-Path: <devicetree+bounces-18537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4D87F7074
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18601B20E55
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1936717751;
	Fri, 24 Nov 2023 09:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YqYHg7Rx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50AC210F1
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:07 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a00cbb83c82so245831166b.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819406; x=1701424206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+ThUuyBMc8tE0TTrcKzb0NqRa+0wf0OPRYLrcEY5ZA=;
        b=YqYHg7Rxa9F7UGL0wuq5+JB/3WC8qAQlQRtD5GpoZaMZoeTUSmYZBpEVlC9Fg0rVVL
         wxC1MqjS5bYXTYPlWiswpUkVDMUdS0YatrTz+Tqvu//fS1ZEK+pXhe0kYeXleAVzl5U0
         sGgDyBh+xGag+PY2UHbaAU/3HSJ2hfs6TBefgfLXprYZ63H02EdeIYBaHK+dwuLhOdf3
         1F2n4id2Ld0vwTHmKpiBT+Oz0542ziicOcKTZgJzkqV53owXkSVpfiWww0jVWBzfJwu0
         gEgc/4TzxJ4dbrEZhvu0F6yZXY7uUrw/IZglmL1ldvWJLAQdOHvaMyHEiJkgfHygOJKA
         d9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819406; x=1701424206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9+ThUuyBMc8tE0TTrcKzb0NqRa+0wf0OPRYLrcEY5ZA=;
        b=FEeB4jbtgyagdb+qbwkrQ4EEbdjnSGurs/iwuq7HDAyxfXET2jX/naUaYUsG0rI2z7
         /VlpEXTcSxGfYvihCt5oxRMwIUNmjzjqibsRvjuXX3wwINEeVL5O9DEK03bCfdtckLwe
         GYuThdcijGQcwhI3hbTcBC8a/ltwRlVBANAz35rYmJw/NTd1xAknwVN4uXzBnXCNCppe
         JRIDwslHGAnXueGVgC4fX31AP/ZYUZoZFdsOjNKoNf6GD+jlpaMGnWKz5/Tlpe4+LlvI
         7TeRfOxeIoO1kQ9q7CnnxAGMaKXcrpeMEWYVQtodjuNYXrt6u22rYBLrqXUsyfQtwNWq
         CZXg==
X-Gm-Message-State: AOJu0YxFo2na1aGt98l9PXsPKdPsYUVEpfp0Is62vDZlzLfh65Pqxk0U
	kFUVwzXnLLOEQYEWUsomF4XQPw==
X-Google-Smtp-Source: AGHT+IEMLYuBQprXx6furIjSydQTpd2dYUw25t53EyujGSlUTPIszuYrOq7XHBbcwqek1qk4573viA==
X-Received: by 2002:a17:906:39d9:b0:a04:9608:3c89 with SMTP id i25-20020a17090639d900b00a0496083c89mr1486389eje.75.1700819405717;
        Fri, 24 Nov 2023 01:50:05 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id t27-20020a1709063e5b00b009fd727116b4sm1839941eji.129.2023.11.24.01.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] arm64: dts: ti: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:50:00 +0100
Message-Id: <20231124095000.58487-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124095000.58487-1-krzysztof.kozlowski@linaro.org>
References: <20231124095000.58487-1-krzysztof.kozlowski@linaro.org>
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


