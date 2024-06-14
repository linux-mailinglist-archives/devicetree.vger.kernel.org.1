Return-Path: <devicetree+bounces-75666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9559084C7
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:28:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD5FCB2524E
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E41B183071;
	Fri, 14 Jun 2024 07:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CX3hg3NM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861B61494DE
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718350087; cv=none; b=B6x2uXaAh7p5xz6JTzuDt7GDipXZf3Kt673X1kUWDJBzHygDudfZXofkCIcRTkIzEA8MU6sriaDofsBJpBmvp2Gz8W8NFwO1CcMRLVx8jqKW2+7njujk1g7e29fuPKS0jAbu4UEbjjQnFTp7/+wUF7l2PAwvGjqXQuX9RLwMDYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718350087; c=relaxed/simple;
	bh=cKEFvnur0r9wK70qRsiyMlYMUWCy0Z2MhPoP9t2s+R8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FxEG1iOduIgLqQPJm4Sj7nwbruhegvyMIDmFY+zDqgPjrLkfZOhfIMpcDVCAmlgaI6z+B1h+w/IbUBcNxVAenju76TJSM8tD/nWsL62xbJrXu509kFjauWEZZNO7jdLQPx9KmvHtcnXQFC8vvWsNDHK4rZIdWoFEBrsMj0p6hrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CX3hg3NM; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4218008c613so15193215e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718350084; x=1718954884; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wcqbhlzk69tSoPzbWxkhR+N5g5aDso2+zkY/xdikbcA=;
        b=CX3hg3NMBXKa5o1ULYH/8MT84xyNy2XTAtjJ3OBnoWdKpMKDIiIlt6xe6Ma/d8RJkx
         tpImWBVtK/LeADI+smZsz8Rp+QdqbG9talYHHhBFzWDuw3ocuf81YFslnNHFqdCzoWLg
         UulSSpzGIVdpFOhGfi8eMgnNVBk38BTS2BBDBQYLcrGmfBIvJRNdBeURghkbcehujU11
         lazxkFmXO55QYzJYnucTuO84CNakdDYsbj9fp2dIiWaKIGLTnhw+2Kx/zgPsookHmFaF
         A1wY7fE2Y2+pE2ndvSuja9zLQryD13dl5Sciteop99lV1uOO0mcorwIEDiCdpq5CfXyg
         MeWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718350084; x=1718954884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wcqbhlzk69tSoPzbWxkhR+N5g5aDso2+zkY/xdikbcA=;
        b=H9txE3QPkh0tYPrORs3VMMJav7C39gpv2hWn5qGT9RJog9CQzHnmHaz2QxnbdFcCAO
         beNB4P9LGPWgOa2ODu1qlx31fxF90cnsbSY6MGnKaNr/b9rw2Cf5GX9X7S+yhy7nZdri
         oPBafutLYKaDfjquv/ODXYFfBHAd17DTOm0p9US2u5GDgn7ibdK0dxL231Dg+y2NLK+3
         G2WtUZUAd3OnDEoWYshgyaDqT8K0FzGBni87itFSCaQg13tOhuVXcOhe7ym+1brVW/Ej
         FIg8YDfcILY18zpZicorQZxJJwpgscc7IV/Xt+USKTj61VFV2OBuLB0STeIxRniUcWx6
         GoHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxCR9MMGyYGQXSV5Q0feqb9Qt9xhBYmYKFChPFt2Xp9TKAEeMDNOawlhSq2B8ZQrkOqGTDpXmT0Y0BQcv+HLUH0TjBWW1Z7ohyFg==
X-Gm-Message-State: AOJu0YxtVknjaEbVh2mTbvbrEG71GBv1sPf53HxpsiM0N3uQz0prMRUj
	UmqEGCTevy+2+f1g38UD4IPhD/GR79jmsX91ejx3jnLFeHuKPv2trB3GdbdNDbI=
X-Google-Smtp-Source: AGHT+IFqz1dgy+EkZ2nWMXlLo0facR7vF/K3mVFSrIkL1XoCW4xdx2J4FdrSp/oL4Wg+mDoijesP2g==
X-Received: by 2002:a5d:4d43:0:b0:360:85cd:15d2 with SMTP id ffacd0b85a97d-36085cd16f1mr192260f8f.10.1718350083878;
        Fri, 14 Jun 2024 00:28:03 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-36075104b2esm3535773f8f.101.2024.06.14.00.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:28:03 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 14 Jun 2024 09:27:45 +0200
Subject: [PATCH RESEND v5 02/16] ASoC: dt-bindings: mediatek,mt8365-mt6357:
 Add audio sound card document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v5-2-54827318b453@baylibre.com>
References: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
In-Reply-To: <20240226-audio-i350-v5-0-54827318b453@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3330; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=cKEFvnur0r9wK70qRsiyMlYMUWCy0Z2MhPoP9t2s+R8=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBma/D+nYv/EDAhy7H3m6RJwWmdHTceswfrWziDe14m
 yVtbhD6JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZmvw/gAKCRArRkmdfjHURYXjD/
 9Ieu4k836F7MKBxZp/GH6IhoeeM1ScLClCw98D55FAjs2uE++c4tkQxd7j8s6vCf7baH4Lx7C7yUBB
 +kvTzZsC/KUmj+U7LgNfIfFOrAgbRGeV9Zfi//swaATwAP2rg19KQHp0M/tAe8OYnXQrozYM2lcjsy
 rC0bOMFXSB020FkuEj6dzf97RlMhUZDrVK0a9KOLHlFyGfc2I+ZkNskoJr0c/i3T1UYGOhHc20euTF
 pMterSUcfV7Z1XsktI3FXVH98tUZe+vPQoYZiAWZ/MHSn/L4k6tIkZvmVAI4PaUv+rFpZWO/NI+Vxi
 tVccXoWKqyghEwH7h4mLxj1SisXk47uuUYuEcDUWHWEYxX61mqNXYS7W1bPm5qDcch6o0E5enT2iEe
 PJAKH79/zsAD5J8R+p0ZS8y4rNy9H8bdUInH3C5Fk959FAQyy1384QjeBPcIAzHSCpkmB/jMrsKs8H
 MMMjmvsKCu6qL/0BCAUKAS925rHQam8jkUMS5QN/KC1Ab9l9EQLlRsMntR3hf+n8Maxg1k+ih1Njzp
 7LNoVRnCYdbejWyCt2PtnGeCgNV0QxgmKRUF8NucRFlmhRgk0eJfSMGvjZjeCoj1nQK+7ZgT6ND66I
 qGm4dfthK4dlv6jg0+IgPREH/Xgc0YYQzLjdZ2BR1MxwANdORr+6obyk/a8w==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add soundcard bindings for the MT8365 SoC with the MT6357 audio codec.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../bindings/sound/mediatek,mt8365-mt6357.yaml     | 107 +++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
new file mode 100644
index 000000000000..f68883da1bb8
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mediatek,mt8365-mt6357.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT8365 ASoC sound card
+
+maintainers:
+  - Alexandre Mergnat <amergnat@baylibre.com>
+
+properties:
+  compatible:
+    const: mediatek,mt8365-mt6357
+
+  pinctrl-names:
+    minItems: 1
+    items:
+      - const: default
+      - const: dmic
+      - const: miso_off
+      - const: miso_on
+      - const: mosi_off
+      - const: mosi_on
+
+  mediatek,platform:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: The phandle of MT8365 ASoC platform.
+
+patternProperties:
+  "^dai-link-[0-9]+$":
+    type: object
+    description:
+      Container for dai-link level properties and CODEC sub-nodes.
+
+    properties:
+      codec:
+        type: object
+        description: Holds subnode which indicates codec dai.
+
+        properties:
+          sound-dai:
+            maxItems: 1
+            description: phandle of the codec DAI
+
+        additionalProperties: false
+
+      link-name:
+        description: Indicates dai-link name and PCM stream name
+        enum:
+          - I2S_IN_BE
+          - I2S_OUT_BE
+          - PCM1_BE
+          - PDM1_BE
+          - PDM2_BE
+          - PDM3_BE
+          - PDM4_BE
+          - SPDIF_IN_BE
+          - SPDIF_OUT_BE
+          - TDM_IN_BE
+          - TDM_OUT_BE
+
+      sound-dai:
+        maxItems: 1
+        description: phandle of the CPU DAI
+
+    required:
+      - link-name
+      - sound-dai
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - pinctrl-names
+  - mediatek,platform
+
+additionalProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "mediatek,mt8365-mt6357";
+        pinctrl-names = "default",
+                        "dmic",
+                        "miso_off",
+                        "miso_on",
+                        "mosi_off",
+                        "mosi_on";
+        pinctrl-0 = <&aud_default_pins>;
+        pinctrl-1 = <&aud_dmic_pins>;
+        pinctrl-2 = <&aud_miso_off_pins>;
+        pinctrl-3 = <&aud_miso_on_pins>;
+        pinctrl-4 = <&aud_mosi_off_pins>;
+        pinctrl-5 = <&aud_mosi_on_pins>;
+        mediatek,platform = <&afe>;
+
+        /* hdmi interface */
+        dai-link-0 {
+            link-name = "I2S_OUT_BE";
+            sound-dai = <&afe>;
+
+            codec {
+                sound-dai = <&it66121hdmitx>;
+            };
+        };
+    };

-- 
2.25.1


