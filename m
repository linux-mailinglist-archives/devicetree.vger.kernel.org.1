Return-Path: <devicetree+bounces-63150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 004118B3DD6
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 19:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8195B1F2378A
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 17:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EEC516D9AA;
	Fri, 26 Apr 2024 17:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="orlrbXpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29A115B57B
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 17:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714152162; cv=none; b=F6FDZfaZyolxdPgyqjiGSRAq7vXcgngpx+Qz3PcDTzFw4c8PkrI8g/2xKfzCLSwmVHhZXxj+mpMVsodEE/YTVG0k269RgV/n0JvKFL+3yat+aKyiaI5orxlCbZPErSATMrTMVrUaLc95tCff3h/oIEoIh/76vjvJmbmVDi9bhSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714152162; c=relaxed/simple;
	bh=XK/yaNy7n8mlOsrCzgcSHm0w5LeFndFZXd+EBLOo2Z0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GOP7hCR4zbkwX9mkhfNDx7+hK/jQtzYHPpxZ2KAlFpM/WS/p24gcWozlJ/cW3sNTAcZbBW6sxnMBoWyI8snO6E/LixVsIf5zrv+pbWH75w8LQuIrmiUVVFKPOHAdtzlDlY2Z2tLRgJzlmnOyVVGabpVBFk5gr/frH3ET+oSjIf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=orlrbXpS; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a55b3d57277so302189666b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714152158; x=1714756958; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I46Ibjxmnn5yy081gSXZ9cudlQC/VlKWW3WhTJhSrbw=;
        b=orlrbXpSfqZ3K2q8d9uFAgeJn61Lxe0DI/lwFHzRAD5rINo1ks+3GP27/a3a0hc6j6
         KWUEIh9MCzcRRrVFvmEJkJDoQ2Hd6CUEjVO7Dd0YovPwJ69/D1RyuURuA0O/hut2kwWT
         /KZ9bWlankCMRPMiGXWoctbD33+EGy5sbmYf/Fjp6YhtVbAcJfIQ0Q7klE/TI4jgupGP
         qIpXAbaE8QmCOQa6BUbX3kYMiiivBQzc4Dty+e/7UMl6NhgogXeHldYyvEYemxXnbePk
         cZqjkBKSTFUyAsYdjaZvaKk84D01H9D4i15ANaO5zEreuDw9qlKrXT/QtvT2NzjCh9Bt
         89hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714152158; x=1714756958;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I46Ibjxmnn5yy081gSXZ9cudlQC/VlKWW3WhTJhSrbw=;
        b=HQZ2s6DmG5p7pGnWWJMbkM25YK7294erAGT4pSAzg0FTTwe6dD8OMYnj3t2+1cG8FP
         qzX5gqlnEggyrvn+XCeN6GDT+I+MX46QSafgbxHQ+geHaHkDVRf/NCYkxnxde1cNNKBm
         8a6f5CdXiIKDSqaJqy4YM13xKfkmojbDKixk48cpHxNCQMeSUNxgk5Xzs2Mfa9j9lZSG
         QkpuPKNkaAoEddZooQwwDAQ2TcfqpdDBMnPALpe43k2KSyId0zdHkruOVJLiUbHVn5dy
         mauXXBi87hRpraZQHq1Gl77qEWTTkQcx4LXFeBu55CRP6PxOhNKDYDfPKuB59q0oRe3B
         FetA==
X-Forwarded-Encrypted: i=1; AJvYcCVL1lBE0QUlaXKOYwYkvQE7tL/MRaVlMtXGPcIkorPG9xq70Zk1V8VScmb0CjaDiz8le99hQKbRh0e0oJRefysw6CywLV64ktH56Q==
X-Gm-Message-State: AOJu0YxYu99pz+F75xvup77an1JTfAE2XxFStPx0rMsrYflfJ1Za1Obq
	TKNNxKWgwXmXBbVewhZ3IpsgTGMIgPxWIyt18NVELI8p18IGDRJQf+Uu5E7sZkc=
X-Google-Smtp-Source: AGHT+IGUaKJ2bisa2YXm3HzCKI+QdDP+ZC4VvfOSJA6Lakp7bBabcfb0LXePJJPgP2PFAKWrz8G/yA==
X-Received: by 2002:a17:906:6899:b0:a58:dcc3:f4b0 with SMTP id n25-20020a170906689900b00a58dcc3f4b0mr580280ejr.61.1714152158342;
        Fri, 26 Apr 2024 10:22:38 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ot15-20020a170906cccf00b00a5239720044sm10763363ejb.8.2024.04.26.10.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 10:22:37 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 26 Apr 2024 19:22:30 +0200
Subject: [PATCH v4 01/16] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio
 afe document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v4-1-082b22186d4c@baylibre.com>
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
In-Reply-To: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4568; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=XK/yaNy7n8mlOsrCzgcSHm0w5LeFndFZXd+EBLOo2Z0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmK+LaW9P90pKeXd7l0uFbxmJvFZ+dwyCWlzTbC45l
 x0lgcF6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZivi2gAKCRArRkmdfjHURVvVD/
 4jEt2v5XKDN/IjGKFFuvIq6pNGahsS7ZaCjB/2lN8OHrRy2UjymVNP3DyzTCvPidzuU8W70lRgMc9C
 yzaalBkExgjofRIrsj68u/deILcEPJPdsTDI/zvxVa5gJwniDWdvbQI1nt+2nP+OsNDm4Z+0LHkHrh
 DJxwDRXbVfajNT99ZCUGvU/pwvv4NYQjzbZFOlSpcwqJpaQ6dA19Q1GtjVBF/UYBgM7tilY6qMpshZ
 NqnoNktnCWyjP7o3wiq0HEAuxdf497NnfUtm6L7vEO9hPmfVCShMlbUGGiK/m99rVcbhlsksRRgAV1
 i+lrUcB6gVXT1ZEuJTRvZWmSr8Fs5YnAZHJyHysRsGrOAjSZWTv53rfUDs4e9H7XxOiGEcaLx8uiEB
 xQBsREGu8uiffWcapfGZuP3ex17ptsLSqgTMgXfFCakTPXK2XciSh4AwUMMgbAgqQeVgQstL0bv+Dp
 1/QOs47jAwCSHx6BUb4xXxdjGZyMRoPaWzf8rmNgzd2hs4pH6kYyE7sqEpAHqYfnFZS/vTn/158G1H
 W/AZhb9UmDgrAxwrFbCGwtz781w2XI32H5tdVpG2KJPmv6v2tmk2hnLU7+Ah8WWfIZiUqWT9DyLvth
 RqBSA+8CCZIew6/xjw6F+xmAWJsbojdBIh86RPIYlZBr/Vp/ufiri5OU3y6Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add MT8365 audio front-end bindings

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../bindings/sound/mediatek,mt8365-afe.yaml        | 130 +++++++++++++++++++++
 1 file changed, 130 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8365-afe.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8365-afe.yaml
new file mode 100644
index 000000000000..45ad56d37234
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8365-afe.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mediatek,mt8365-afe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Audio Front End PCM controller for MT8365
+
+maintainers:
+  - Alexandre Mergnat <amergnat@baylibre.com>
+
+properties:
+  compatible:
+    const: mediatek,mt8365-afe-pcm
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: 26M clock
+      - description: mux for audio clock
+      - description: audio i2s0 mck
+      - description: audio i2s1 mck
+      - description: audio i2s2 mck
+      - description: audio i2s3 mck
+      - description: engen 1 clock
+      - description: engen 2 clock
+      - description: audio 1 clock
+      - description: audio 2 clock
+      - description: mux for i2s0
+      - description: mux for i2s1
+      - description: mux for i2s2
+      - description: mux for i2s3
+
+  clock-names:
+    items:
+      - const: top_clk26m_clk
+      - const: top_audio_sel
+      - const: audio_i2s0_m
+      - const: audio_i2s1_m
+      - const: audio_i2s2_m
+      - const: audio_i2s3_m
+      - const: engen1
+      - const: engen2
+      - const: aud1
+      - const: aud2
+      - const: i2s0_m_sel
+      - const: i2s1_m_sel
+      - const: i2s2_m_sel
+      - const: i2s3_m_sel
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  mediatek,dmic-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Indicates how many data pins are used to transmit two channels of PDM
+      signal. 1 means two wires, 0 means one wire. Default value is 0.
+    enum:
+      - 0 # one wire
+      - 1 # two wires
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt8365-clk.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/mediatek,mt8365-power.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        audio-controller@11220000 {
+            compatible = "mediatek,mt8365-afe-pcm";
+            reg = <0 0x11220000 0 0x1000>;
+            #sound-dai-cells = <0>;
+            clocks = <&clk26m>,
+                     <&topckgen CLK_TOP_AUDIO_SEL>,
+                     <&topckgen CLK_TOP_AUD_I2S0_M>,
+                     <&topckgen CLK_TOP_AUD_I2S1_M>,
+                     <&topckgen CLK_TOP_AUD_I2S2_M>,
+                     <&topckgen CLK_TOP_AUD_I2S3_M>,
+                     <&topckgen CLK_TOP_AUD_ENGEN1_SEL>,
+                     <&topckgen CLK_TOP_AUD_ENGEN2_SEL>,
+                     <&topckgen CLK_TOP_AUD_1_SEL>,
+                     <&topckgen CLK_TOP_AUD_2_SEL>,
+                     <&topckgen CLK_TOP_APLL_I2S0_SEL>,
+                     <&topckgen CLK_TOP_APLL_I2S1_SEL>,
+                     <&topckgen CLK_TOP_APLL_I2S2_SEL>,
+                     <&topckgen CLK_TOP_APLL_I2S3_SEL>;
+            clock-names = "top_clk26m_clk",
+                          "top_audio_sel",
+                          "audio_i2s0_m",
+                          "audio_i2s1_m",
+                          "audio_i2s2_m",
+                          "audio_i2s3_m",
+                          "engen1",
+                          "engen2",
+                          "aud1",
+                          "aud2",
+                          "i2s0_m_sel",
+                          "i2s1_m_sel",
+                          "i2s2_m_sel",
+                          "i2s3_m_sel";
+            interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_LOW>;
+            power-domains = <&spm MT8365_POWER_DOMAIN_AUDIO>;
+            mediatek,dmic-mode = <1>;
+        };
+    };
+
+...

-- 
2.25.1


