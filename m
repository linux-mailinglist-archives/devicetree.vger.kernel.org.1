Return-Path: <devicetree+bounces-134576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE089FDF74
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B4B4160CE1
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A25E19CC05;
	Sun, 29 Dec 2024 14:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="fNx073Vk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E319D086
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483855; cv=none; b=g9vy8ADPFztCjfFuedRmC0P6JvThl9ZfqRaBNUYZj9JFZfTDdETubRnjDgSEQDXvEv1RuRGyVznTdq6/eq/WXPt+OnEqpZyetcMeWNLI5mqCLKypC0fWjWeOHdxD2lXV8l2dvsWyx61Rq0Gs4YFL353GQvSTjWxQuerrWnaNAi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483855; c=relaxed/simple;
	bh=3HpG5JSfnp1rR8LM9tLDyGAnkrv7gQYHSv7Ks+OYcRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ry8I/NaAcRJ8WVQfUzDfPc/TXcjojITLa37tuXLs5cVHFS5DxvybBMrbDuIdeO2FICBvhI9wADMSpx0YdGTPYOHbvlZyo2bgQUEbgz74vzlHBRQ3eoq5pxcDx4T20RCTXzoL/H5uNESp40RIGQcX6ygunOJ4mQSxSMOYdn43IKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=fNx073Vk; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaeec07b705so666671266b.2
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483851; x=1736088651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=fNx073VkFNcHajTQaq7kMBGREn9S/Uy0N4fCO2FxqT7p1hYPKzAlRQ/E+0iANAcOMr
         9AtGY/6DT5XdVaOaa+WsH9W1R8liHqjTLgKgk+mqkNVq1kGQf5YMenhJSR3QzXVRHudZ
         KBRxQjlWdDnzkq7tM14F5tPNyh9kHHLiVDIo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483851; x=1736088651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=D0XL3kgwIkFvuw2PzrcBda9rvR6XdpgyIKdmDZIG/NLx1I6Yy+0138plPWotrpignc
         lWlnHHUPKlbq9DyOpdzXpOiXF49S5Rrrd/ZAVnIKujcnAXruudwLxFXf1/AGzhWxlYZF
         KFxzLXc9HV8c7G8MEDlJfrR9SJAzJap4rx2loR2F2WgWJl2iwuXtQMcDmVsyow7ePx1R
         plkSswW79fe7F7jsKoty68ZrRQueIhZm0g62066zCr+X83MPUce28T1tMguEBDTHGd57
         krEsYFZd9rQNgpfY3G3FxKMFE80rsPYhiAv3LVhRsZz8r+hdeE0IPzXVRNeUMmEnlLUl
         L0VA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ1Abew2zNTdhuRDsQqS26WZxGi/YIzV2O7t4lYffK6ZbjW5pwNN+3YixmeLVN+pytlJWHEOlQkjFL@vger.kernel.org
X-Gm-Message-State: AOJu0YxeUPcTSuoNcdNGwUqJOzMbnqDoSWPNfuFsiy4qpd7ENQvxihSe
	vDtZfUsljuBCoaMC5yB3nd9iz1chVl8Rfeq74dZNUnWkFWtlf1Sk+GKpM73+7So=
X-Gm-Gg: ASbGncvvBxsisjGMmPskTf5f2vXpi5VhJW7cvQFFPQGk6OoXlyyEdZfK7nyVDQVSz4D
	MV8i2gnISfr9q6gaawesufTnqFch2ah1mUguarPia20vTeVa9xV4ZlCPZb0CV+6K33bRhV892Uc
	4ZQcJcpGaGBssZB9UxOh0UUtDN/4UFhvBM/AJ1PQ/EqoLLwmZ86FvXTC/5skFwE31Ji9UvLugtm
	q/4kiMOZ3D66mULu0qnIrVt9xAJRZ4FVNZBbUrl1eIc0Cn51GckX04oDahhkd9IzuFx1UyXZhLr
	hnwH+jH1cajyGnfEAiwXrA==
X-Google-Smtp-Source: AGHT+IFxgItt54HHYH/8mA88WaD38CQ9mOKSbKko/RvuXIeFzD1DAkYznBzK7j3ZQqQYmVzmFb1k8A==
X-Received: by 2002:a17:906:6a15:b0:aab:d8e4:2062 with SMTP id a640c23a62f3a-aac3366b549mr2566530166b.56.1735483851580;
        Sun, 29 Dec 2024 06:50:51 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:51 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v8 12/18] dt-bindings: clock: imx8m-clock: add PLLs
Date: Sun, 29 Dec 2024 15:49:36 +0100
Message-ID: <20241229145027.3984542-13-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Though adding the PLLs to clocks and clock-names properties will break
the ABI, it is required to accurately describe the hardware. Indeed,
the Clock Control Module (CCM) receives clocks from the PLLs and
oscillators and generates clocks for on-chip peripherals.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v7)

Changes in v7:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..d96570bf60dc 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -29,12 +29,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   clock-names:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   '#clock-cells':
     const: 1
@@ -86,6 +86,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -95,20 +99,31 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+            - const: audio_pll1
+            - const: audio_pll2
+            - const: dram_pll
+            - const: video_pll
 
 additionalProperties: false
 
 examples:
   # Clock Control Module node:
   - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+
     clock-controller@30380000 {
         compatible = "fsl,imx8mm-ccm";
         reg = <0x30380000 0x10000>;
         #clock-cells = <1>;
         clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-                 <&clk_ext3>, <&clk_ext4>;
+                 <&clk_ext3>, <&clk_ext4>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+                 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+                 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-                      "clk_ext3", "clk_ext4";
+                      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+                      "dram_pll", "video_pll";
     };
 
   - |
-- 
2.43.0


