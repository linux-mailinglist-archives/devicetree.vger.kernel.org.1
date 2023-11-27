Return-Path: <devicetree+bounces-19130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD4D7F9CB8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 156EA1F2029D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4787215AEF;
	Mon, 27 Nov 2023 09:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="idD3yoCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B444E11B
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:34:42 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a0bdf4eeb46so198990566b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701077681; x=1701682481; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r/cLEfEYsDlJ66whBNkZuZq4CWHWfN+jms36PvtVtn0=;
        b=idD3yoCrxbb9nntr0AWzXClUrz5UkOzUrGMasZjR9s8T9MByMbF4oxGFL7qEs7/Tj0
         TivjHTH1Sy7zUtcb91eYCmCGdSDWXsKYAh2n/5g2xFXGfIWbM/EhduokfhR/tq0fzxQv
         RXRf1TfcXYUxzKC3MllyORN5chx3WOvi3OQ4oDisGTRzc0QjoJ8fTs0XtBYYHhWwmkTX
         GAC/c8jlce3QkBqJf6PD1mUhQjhYJ8iVCBodI/auin81uYhpzEJxmtLCWWyytJCvD/19
         XGEEGeKHTrOAgWeIAo/6qnAMsczv83abO2V5VPHfEIrmdYilJh9UtPk9XKe/B8L+exXf
         On9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701077681; x=1701682481;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/cLEfEYsDlJ66whBNkZuZq4CWHWfN+jms36PvtVtn0=;
        b=uMj7WBIcWK1yFz5D3TfCBodKp11oziXqkLzdO/RQJySotrVuraf1JKYZob7CpQTi1x
         KItfM8ejgvAeoRQd9usjv1sXNgBj528HNjah+4srVFHmbCN68ceV7bvpAZR99wvG+hBW
         veJjEZQ1tnSix/CbmQOz3i+TVINHvjl5HZsG1+qPyeyEfDuiv2FpU01KflEMekVvdBzG
         x3fBgqzPXRZ5TyzbLJ3ZPkxk9ezaym9dDJhQX2kbb6u46QtOOmH/B1XZKzK2Uhwv9C5W
         WmJc6FUoxBOpEgI9M13VfYVs2HtfQJx2Lv8TYGJOW1uMy8ygGwXxBTXGgHI3efY0J/Sa
         39Bw==
X-Gm-Message-State: AOJu0YzpKBJJeSLL9PITPT4RCLMOi0YP3fVpMwIXgKhgx24BAqtGB7iY
	WESU7+rq76jOtI2+njLEOFxq/A==
X-Google-Smtp-Source: AGHT+IGnhYWsRzafsu4ynClwI2g+4BUzmbE3Md5LZwds9K60AiVBQlMrDOPX5/2ErDeanuSExoJjdw==
X-Received: by 2002:a17:906:693:b0:9fc:9b28:7ff7 with SMTP id u19-20020a170906069300b009fc9b287ff7mr8766198ejb.60.1701077681201;
        Mon, 27 Nov 2023 01:34:41 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id j8-20020a1709062a0800b00a0185ccedcasm5506518eje.223.2023.11.27.01.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 01:34:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Patrice Chotard <patrice.chotard@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] ARM: dts: sti: minor whitespace cleanup around '='
Date: Mon, 27 Nov 2023 10:34:38 +0100
Message-Id: <20231127093438.20512-1-krzysztof.kozlowski@linaro.org>
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

Changes in v2:
1. Split previous commit touching entire 'st' directory.
---
 arch/arm/boot/dts/st/stih407-pinctrl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stih407-pinctrl.dtsi b/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
index 7815669fe813..dcb821f567fa 100644
--- a/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stih407-pinctrl.dtsi
@@ -462,14 +462,14 @@ pio19: pio@9209000 {
 			serial0 {
 				pinctrl_serial0: serial0-0 {
 					st,pins {
-						tx =  <&pio17 0 ALT1 OUT>;
-						rx =  <&pio17 1 ALT1 IN>;
+						tx = <&pio17 0 ALT1 OUT>;
+						rx = <&pio17 1 ALT1 IN>;
 					};
 				};
 				pinctrl_serial0_hw_flowctrl: serial0-0_hw_flowctrl {
 					st,pins {
-						tx =  <&pio17 0 ALT1 OUT>;
-						rx =  <&pio17 1 ALT1 IN>;
+						tx = <&pio17 0 ALT1 OUT>;
+						rx = <&pio17 1 ALT1 IN>;
 						cts = <&pio17 2 ALT1 IN>;
 						rts = <&pio17 3 ALT1 OUT>;
 					};
-- 
2.34.1


