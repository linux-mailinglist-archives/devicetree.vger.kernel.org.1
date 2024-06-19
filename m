Return-Path: <devicetree+bounces-77501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11C90F119
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 16:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94BB91C219FF
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404754D8C5;
	Wed, 19 Jun 2024 14:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rdrCSNIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2DE3B29D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 14:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718808412; cv=none; b=YozpCZ7SX8TMNtFIhbb0z/P6cSK3gqAvKRm7ozXc8jIZfTTV8YR0ask4+XnRFZ6ciZiLPpUfRKzAP71FmBpgixNeSODWWv+p9kt8qxv4eLNyZTFKqjYpF8BHWII2K/zXbU7sjJtBZwpfSVkdGfSQNLtlMBVcabbaCBjq2Y6vdj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718808412; c=relaxed/simple;
	bh=7RiTz7/DbEcpnGh40/G/GiZJyYiXWSGAGW7k/Ludygk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BnRqR3HA3W3bfXv7fXX1NYFZ2nyvet9jLNdhSp/vLCoDqTNnSkNrk4oi5xgjeGCK3ssCPRKYI8iTE4jWQ8mtV0YcLtgyxaoaCqlSZCEoEVl9VGCXP77HHqF0woAI108E9aJYJTxloTXio8qvLiFUXHcDosjXQzBi4perRC1kgMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rdrCSNIN; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6f1c4800easo826647666b.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 07:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718808407; x=1719413207; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a+Cj7XwFFzAC2R+vJ+C1jfJoPbZ6EO8weZS6/aNxaN8=;
        b=rdrCSNIN0fkyzJpA9BhVwy4ZaVrPqMdzO+4wOfN1MGU2MUlCcdh12nsVikqPwJC2b1
         a7nBRTVQcGMFyJ6yNN8gmPYYFNErKQYTgIZfFi9tjC5XMZ2NEOvHpJh1AdLdtvlyMxRX
         7JbFYQWcmmP6odkCWqkv7lAKI5Ue/5vMJECt8jvZ2DS85PKGYm+r7qbQ6pStthSChKdV
         s7f/qGT/J9l0NOd5mqmrnbLGK0hPJ9SksS1gZLPrWEsiMInKza2SgUZm8epqrAcEzl7u
         QlkhO/HUcnRYLyXvkFF2Rs7/k615jfNZtnTEME0ZKtbxMUroBqXMTrTCsZIKtXyXV5FH
         o0Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718808407; x=1719413207;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a+Cj7XwFFzAC2R+vJ+C1jfJoPbZ6EO8weZS6/aNxaN8=;
        b=Cb36zYPA1tz5JodeiuQoCJxQEFY5mYOROjOu1ERjRd3jWXBwCHPcK4Km4SUTG8gQqJ
         LgDYCN3Srp5S6tiVTgFiWMEZuJWBTIqEmrZY/3tjci4kb9sFl3lkpv5wIlsVUGhiEuT2
         RXqAi3E3D0eKiHCIFcH/80RhAjpQBATYss88TRrxSL1z12knovxeg3fujBS1CyHltXTc
         +4/hlP4bzGrTzoIfiq+qi0YgAm94ym0ghVL6fwYILpPEQbIqIRSF8jnWFXSXOFNTKF/H
         lB6g4KLrZSr4tcpodmu8CdHZqaYNNS9qwRGQCIF22Jm6sCPSm+26d0JBTIzwS4/En9lL
         993g==
X-Forwarded-Encrypted: i=1; AJvYcCUbATIxnydpobbM6CeCUSuCZ3/RQyWvB2Mb2IZiL8bZ1sEEDYVkIct/HDcSr3/LofaiTH85neo+FM8f8Ld1eIviDX0DOASXkrNZIw==
X-Gm-Message-State: AOJu0Yxa0K3EC0CkAo1HF5QM2Ry4DysgTcCXe9kPS6SNtNrFWS/r+FTM
	hT8mdlcPK0KyoJl3LmakGEgt0D+i5N+Fv67kH7Lo4B1GtDHWlLu4J1+Pp76lvGk=
X-Google-Smtp-Source: AGHT+IHcCmx7Ff8tzRoEcvYhXCGLLgXDhdg9nu2xhwYLgjSrSDM8l07iQA9nCSrJZspZpj+ivPtIBQ==
X-Received: by 2002:a17:907:d30e:b0:a6f:ad2c:af7 with SMTP id a640c23a62f3a-a6fad2c0b2emr133975466b.2.1718808407460;
        Wed, 19 Jun 2024 07:46:47 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a6f56da32c3sm679787566b.13.2024.06.19.07.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 07:46:47 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 19 Jun 2024 16:46:38 +0200
Subject: [PATCH v6 02/16] ASoC: dt-bindings: mediatek,mt8365-mt6357: Add
 audio sound card document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v6-2-f754ec1a7634@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3413; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=7RiTz7/DbEcpnGh40/G/GiZJyYiXWSGAGW7k/Ludygk=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmcu9Q9mYV/1gwD0pQWXgPg9ZCCRvxvauWGrJdzOCY
 y5vA3fmJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZnLvUAAKCRArRkmdfjHURQSnD/
 94gbG0RfwOzk2vV/DQ2Mi4eaIlctK9Ci7QgWmylYBzMF0+zC2iwidba/XQrrgwSFmDuZURHpT1BIy7
 LVH98riHY/GqlWi5W8wX6Q3k+gleAi2QZMN3rX/M6kNVJo+mIqHHmAZih60nlBO/tE0ger7D99TRIL
 jiv9Ne2ogeBTfazyPGE+O4EsAXtV8Jd9k7zK3dnIfj8hu/10Ws8d+74N+Ju9KLSi7q+utZjrWMkrk4
 5LilLfcR9V+9ISirGv7VGX43Gc1bRm4F0+p8mdIrroIc0bYgph+zCEQkaApbofS9m2aAnGvBwwPfCa
 i+JvY69OA3yXVlyRpRb9s3LJnbm6F4sGVNLTZAGp26LC57lUo9VGOU98K+POtbebxtFE1iD6yp/dMs
 X2YIRBBtUvtJuGv6C2jmHa888JFy4oqgd3JTztsw2+PyIie/u/alyC5jDrfqCdjHwtuBnamjyVjCu9
 /YkcZ+9PqDIim1RpYWZ0SDA586Qs+CPPfRQuxfgbKa5EjR8HryaL6FpFL+lRkpuYGUVuGYGJaV51yF
 U6I4XwRqeZlsQpuV7B2GD8Zh+o0O9gBBDKwB0Qgeb+92mAaYR+H62ZUIZNIP08xqjIlq7YDSbcNJL3
 ZdsSeT5KhRcVCmEtIR4AB+MzztsprHemSgHEuXmkW1QESmP44XupmymOCpkQ==
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


