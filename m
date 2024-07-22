Return-Path: <devicetree+bounces-87102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE7593892B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 08:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 414A51C20E54
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 06:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441141C280;
	Mon, 22 Jul 2024 06:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P/JXLbXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC618AE4
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 06:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721631224; cv=none; b=Mbm4sNASAGGB6q8Gdz17m2VNsvAePSD/ns+NU0618+hQfJ5csbvWHYQUOROiu22Ioh+VNcGa8QKKm5+YlnXT2HmZKyAMqIetIsfgV8FjaszAPDBRdTArg/hfW+IqR2SVbuYKs/meu22yD9kQTra4YS2ymsSYrJqRky2trs+vwsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721631224; c=relaxed/simple;
	bh=7RiTz7/DbEcpnGh40/G/GiZJyYiXWSGAGW7k/Ludygk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mlBW0o+tAhBVS7kOOJpMgSjT8OHeVxw1PCbPfR3urMrfJ3/ji0AStYaE/7aRqW2eL9d8gu3cCCv54tnsFnEShGv2ceSdABlYWI+4WNE20jumNbO4aWd0WnWMb52bWTHBQGMGTQX+MCi69DPUzysHArgAL4Y2Qm1POi/B/wOgPH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=P/JXLbXq; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5a15c2dc569so1452627a12.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 23:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721631220; x=1722236020; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a+Cj7XwFFzAC2R+vJ+C1jfJoPbZ6EO8weZS6/aNxaN8=;
        b=P/JXLbXqT7z/XmbknFNoiw1u19Rrz/YAZ0bl3xS7Jz7ZwY8VnTz93XZCrAPJA6DCRG
         JtSv4r7teMbbel7fk4eUkUyNOA/2UJoSUxF6Jq1jc4HelkEkhXk4s/avp5s0/NmWlHj9
         ODTxsM6kpEwc0aShxlPpZtjXk02JYZpYO7O4k/wAV+jIqxghohb/TDCzBPQDMwJR8jGT
         5hWhMav98Xz/W9Qh9ZZbdPvhP8g20LQRQtsaV5ImLmTxCirdfqBvjgAfUOpkPaImfSAT
         skUPFCAcu1j12an0ux5FhX0VzSM+wb7WV3zm28DEBHU4BiKG9TGS/SOEx8xQo6bVi9Qa
         1sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721631220; x=1722236020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+Cj7XwFFzAC2R+vJ+C1jfJoPbZ6EO8weZS6/aNxaN8=;
        b=ACXk36ruFT21sfdaiUBz/BHeavLIdsxHiF8CrlrdWDHUYHjCikWM/VFZBVJ19TZ5Uf
         gtJNRfsXQ+SYUI8v5cZOzcOXzFzOJpj+J/CB3Rdke4toBe09Z5F1K502kijLyTjf7V0U
         R6Z9jv+xBve5aYC5JX7MUu+9HVs+5Ybz1s4vumghqvmC/9VDNuZHd2r+d6qUemshPF1F
         hYnp5dhKHruhktJ3Q9GZR8ug0HS6aEVM2D/7LPOxjZiz73pIM0JMevxLUYcFIieltOqP
         fbvkPHZMNlDw206FnViCLDNMzEOg+E3letWAWe3sb+UWuLkOByQwXooEXS1s1s6bd8U7
         XaHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVi9uV3PwB2gS+2lsU6t5DpXo9GfKUMKhaUbomWWtFY9uCZLp05baazyFENwEGJg/2Depw+OWXtPsMkYG6vKf/zoRFlTJNbAGeUow==
X-Gm-Message-State: AOJu0YwR9njNZNV0/VxKOs2IA9xQwuFE1jxgeafmGZU4S0jvUL5mCtbD
	RoXom5zdiCWOmg4ilbWs79fDVuHmYigWHSsvRpLjw/xauw/xgmi9fr9zsGklzIo=
X-Google-Smtp-Source: AGHT+IHUPUZEPf4MkuXpuZ1eBdP2F87Pg9/UOsRP7bwjnKX895Rnp97yYU72I9lpPkf7L+Ns9p//8A==
X-Received: by 2002:a05:6402:1d4c:b0:5a2:4558:d17c with SMTP id 4fb4d7f45d1cf-5a478b65d96mr5616343a12.4.1721631220529;
        Sun, 21 Jul 2024 23:53:40 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5a69c1f56a0sm1982126a12.64.2024.07.21.23.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 23:53:40 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Mon, 22 Jul 2024 08:53:31 +0200
Subject: [PATCH v7 02/16] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add
 audio sound card document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v7-2-6518d953a141@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
In-Reply-To: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3413; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=7RiTz7/DbEcpnGh40/G/GiZJyYiXWSGAGW7k/Ludygk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmngHwXd0xvDpLVp0CSV+q14Gvkt2Efi6arTJxAw3p
 IJGl4OGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZp4B8AAKCRArRkmdfjHURYIBD/
 4r2AhbZX+WCAyw7/UINA2YuXQ2ixUIY8ECPOeuc/Y10XhRSWTI4ohbrcxZEFA8E9j7J9NEoH8cwwzq
 6JlDHxqVGQp1k/Lh4ov9LLrknjvPU9uRFz3j3A/nEE5Ffm6eBQN2rFd4UdR6uZIm6WHYNmgFAg/TNl
 etNmpFgoBPJGaB2haSczJ1fsuyf4IvER2DehMRZxj6gtIq/bwdfffyyt9NGHwHHuZVTMlyrzH8D0YW
 kKp6ZL07eWqLFBe8SCubj4TqSPNWcA71GuXiFPA6GVeVpxcsFSDTnzTISdFj7X+LKUai+X4wo/iLQp
 yspBo/Ogo+ccwbKrIY035Wa8VTzrYE+/wEFHBr2PUxfYYuaj5C7Ze+VhWEFtRVjKp/MVe8FYQkFgRv
 lb+LT7D0xw7Ns3lUxJcOFNAMW+xf2o5UCF3XIH8VMWqoNSk1zhfeeN5JJznWlo9O0H23JodqdoMYHt
 cY+T6UjM8fc3vyCYVeZbpp2zOVESoMJnq3hNYxu1Ulhvu/9SkMnVUX+cpoBGWiQjIPME4QBPr6aion
 m1HrwlT1L67suGAkAupoMTqLWhP+fbmTjWwdpWxGlud0Z+gBIdYTudf93RpUr3LtjYEuw5o+F/XLe+
 y/Iftno3bvJeVhXlPr9a4Tw4sZPOSitH5nDK2vQjz3tJYCMKK2nRCRMNipPw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add soundcard bindings for the MT8365 SoC with the MT6357 audio codec.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../bindings/sound/mediatek,mt8365-mt6357.yaml     | 107 +++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
new file mode 100644
index 000000000000..ff9ebb63a05f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8365-mt6357.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mediatek,mt8365-mt6357.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek MT8365 ASoC sound card
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


