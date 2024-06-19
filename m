Return-Path: <devicetree+bounces-77500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2761990F10C
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 16:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B657E1F252A9
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BF33FB88;
	Wed, 19 Jun 2024 14:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="f7jov7kc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC7B335A7
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 14:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718808409; cv=none; b=koL2R4R3tY4HByPA6QsmzvnlAEqvdHGi9I8glEG6CyXwoRtK1aLW7YxGnupxf107Dl74SivgV1/NSqn0SorZWIjcN0NmHDYCW+XdP4EnqZQq3RvdphDgpvw4BtMDV0Moy4xIs24OGl7NDN+dqb/S62Jaskmv9swQVn7a+I9Rirk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718808409; c=relaxed/simple;
	bh=WVoFkdQ/0FpyCHJrAYCh9k+mXMPqgGmWwmumiaugOMk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RhwuTvPlUDC+SIbL/HPPVAvshcqaK58EkHnpsnLhmUv8euqY8kirxkHrfUwfotYEwMfCDqAjY7FrfZ3zfBiNGm+LRwoGz6v66Z0HoknElIv7uZ+ztDjVWjOhSCF+bwTyIBZCrQ1v7Ts9UVrh7yJ1jmzmXcXk4MOScDIrKMBOloU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=f7jov7kc; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a62ef52e837so865042366b.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 07:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718808406; x=1719413206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFgfVYXqfttnG8T9cixZ5XkV74OKDwZYpy7meDYMP0M=;
        b=f7jov7kcprczbczQbMVm4ywTLsIomrH0+G9adXLE7HuAq/Z7OHgjPGypEn6evbfxgn
         qPnRDGFQ5ImS67tV+ICUEVP8Lo/v1ZtlidxVrp83h2sUcocElnOM3b4iQTYfJshbC8Fi
         2fQS023UKdDGtjD8QeAON8D1V8N+pkGuCXUrFjsiFkvpKr5CSMBT7j53uHMn+lAP9J9z
         bB5t09pCNPbdMY9Y1/D7owQ+9qRO5IRAJcxGUTe+bOdm3SOEXExfbMncQJhcNw7p5bSD
         uul2RnnIs/1VpjAPmQirXpK+XtON7wJ1FQmAGhx5d2/U4b3gkXVfrRuTIG6VpwBx4rWQ
         BA0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718808406; x=1719413206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oFgfVYXqfttnG8T9cixZ5XkV74OKDwZYpy7meDYMP0M=;
        b=HgQ9J2BV7RRfK5/h/1b0rlJAg1ZRAjamr1xCatPQSLBPVgo3oJp1HeWGYSqRPGigZs
         s5x1ytGC8w69LQOjOInWkiTgPjgvrD8iyDsiPXYb/zWChVOLNeqUUHs8AllF3STc4c4b
         t+v13ZRCOJCxIHSQYnFd4Da9TNccy8mdCjIxR72Yvod/4BVXK/nzvO25EIWSCGJNVK37
         hXVbPngZCeaIzsgfGoRXIlaT3K4mw8lkevqvFpfjc8wo/PROraZseRdrublDBi2TBGm8
         LAOTZbRIL4XP241Me87yDKDA0MHdmkh2a2oqP4SRMyZNplDoFP6EWqbEh5gD46DWhFJo
         63/A==
X-Forwarded-Encrypted: i=1; AJvYcCUosj5QFIzr3+LBHKwMnGWE3WEqaoUFxO0IRQpFkipcJqx37KpmUpCSWjYxXc79CCZhoFw6PXYp2nzmkPkA2+3sBIJMByThAvK7iw==
X-Gm-Message-State: AOJu0Yy3aHIR8B/kgMyXDNRt9JgOwXHT22sl9Xa/qF4o5refayv3T6dS
	PHsAGdm2iBDxDouoGT3McqzLj1XWLcTxPHKVoO0Y6p3Pp476mZZvd9iXVoQ/+sA=
X-Google-Smtp-Source: AGHT+IFlaZlwOAJxvwmGRf/CHI//hdexatLRHUYloGcUFhB/gTLV0GxBWttIfjHk67IkaVFJHbCbYA==
X-Received: by 2002:a17:906:fe44:b0:a6f:96b0:ed2 with SMTP id a640c23a62f3a-a6fab61c269mr216418766b.30.1718808405661;
        Wed, 19 Jun 2024 07:46:45 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a6f56da32c3sm679787566b.13.2024.06.19.07.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 07:46:45 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 19 Jun 2024 16:46:37 +0200
Subject: [PATCH v6 01/16] ASoC: dt-bindings: mediatek,mt8365-afe: Add audio
 afe document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v6-1-f754ec1a7634@baylibre.com>
References: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
In-Reply-To: <20240226-audio-i350-v6-0-f754ec1a7634@baylibre.com>
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
 Alexandre Mergnat <amergnat@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4718; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=WVoFkdQ/0FpyCHJrAYCh9k+mXMPqgGmWwmumiaugOMk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmcu9QUHsOwR1bJHFMdLIjryojpYzpcuZSbISXYgl8
 SYBfAZuJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZnLvUAAKCRArRkmdfjHURUrID/
 9nwPCJW1jcqVmPgquiw2YQ8njzzp8SPVmiUeuufiiDw/Tk8Du2byeJaJguZOdoQs60JE/Wc+/wKCe7
 Ka1pfPUyw35OviYERPr56uYQV0lHJWNdwIDxQMw4pGOLbUdBL3T4qJYwCNSRjeISDe+u8yrdc3glAR
 12h7Egy/BOUvPneoXtXq340WDj2BgbkfnXldrd5xN3zkMa+TUCemQAGlzPevaNycy1c9kDqbIMIhrt
 CWn64dc551ZO8gf1kUhD1E9+dk4kw5fbGdJz6WCIE86Qu/vkcORcgjE2gWvmRdP6UwckRbOC4VTIU4
 JS+NokjEEgreIsDieFd1X0CAvQmgsKH0+3ZzIJZjzfs2TG40KkaBRfHiM1ypvyK+qIG/7E3JX6cKf8
 On8iMw4sju8OjDCJrGmp7BITez5JXv6cpUThl5gjYkMcZZoOwmow8KONux3st3OkWTF2Uws0Lz7fhk
 XWSS0560I+m1mKg/WidUn3M4b55Z9nDgyFFDD6OvG38DQ86vllhRn/EO4c2CN/s3u7CcQ2DUtzhRfg
 WeKw6xz1COiSoAbmybWzUUCqqyxKfUdal7B6YHrjr5h1ndtrQE3Vb7PYIVt4c40kFdxNE7kiAoMfdy
 G1aEQv2g2o316vov85eMuZR3n8CFisufslmiNRLN1OL/baggGdYVe7N4Nd+Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add MT8365 audio front-end bindings

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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


