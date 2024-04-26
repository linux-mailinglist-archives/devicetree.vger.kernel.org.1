Return-Path: <devicetree+bounces-63152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C588B3DE4
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 19:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1FEDB240F1
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 17:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD0316F914;
	Fri, 26 Apr 2024 17:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TX0l4d9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574BA16F0DE
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 17:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714152165; cv=none; b=bK2Y8451M+uweYWtqUEBs/vD5apyC61nfMnmw0RdbVs3Sj2nB03u3mtkQ1hp2Td23LdrP1VxS1amYn05yCFLPHyD4XeOpaS5Rvc+yUg3YdLl5P9iifDPlm2b/XtAnxmo7ZzOr5Hlv5JMSnQ6GJV7fdsZHL/BIIUmRzKtZOO4dLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714152165; c=relaxed/simple;
	bh=hb4Sc+m6+KqrDRmnsqru9xwwm6vpFvEeTj8R76uZXcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PuEBXCcm8fg1H7cDjyfjx48OH6fVuoJ5B7/JDdyaTyNZmfADI2/IofrB6lIGQdwA0u8WXmDfLMCn2airs1onOdzjWjkPhCuLfoHcpR6lxB/GS6kG7kxR+Lnh4EcgkbCbUDRA+JcQa7PAGp4yrrDv3L63W2sf36WGfOhbQoJ6BgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TX0l4d9Y; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so3010542a12.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714152161; x=1714756961; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M5h1cKb9Wd4tygVd4523MaRapeEHkSuSBrFUYOzLXOs=;
        b=TX0l4d9YtYjlsuZEqZpftZjGDAXq8qNcO+0fwbCo8ltMvOHUUGGWHcs3F+NbzRhYBI
         HfdPbrDukLZfk5Vo5ICqKrkQvO06BM1xFji0CvIfJ12KP2d/82+M+Fin/13bAAxPolQ7
         jgAafTCmJEbQa30ZfvUfxdEQrVrOm8ss29a9ASNqtOkVjlFJuPVZKpUq0mrcjpUTc5YY
         cCZCZ9Teshk8e+O/Fx4ByHhlxhkD5BmlCR52bp7iHgmj0P0gbNVS8PtRI0VbYHsltrMB
         zX3cESIFV108xpfUpvv22ufScuBfWpWw5ByihMwSnGsx9FsgXWoo9z+aaO0NX4AkO7XN
         6Rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714152161; x=1714756961;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M5h1cKb9Wd4tygVd4523MaRapeEHkSuSBrFUYOzLXOs=;
        b=YmrZ5MFVvSjkl9jzC26s7PCsrcTODmKerdXZ+VBJtQqPdZwZM4p8rEV4xvsg9FzgGG
         yGaUE/tzmFjzS41cHi1Ur+dTKk13CGO6p4DaOpSoeoAUTp+JXNlyRGpki9dBdNUvrr6q
         fEcyWm/NTPn+B/AhhWtA1Bu+8nKdV+pLk4v523ZVGYsd/C0lhVbNaIDKgLOR2WTV8kS3
         ITIJ2Lb35KnozPscsQoDBjDEJD3a4Q4iQ9yk5yEtXX3bAvcxyvU9JHzCrkENoXCrTWtJ
         KFqunRTKCToL4dg0oGAL+o/HZR/iT9tOjUTdvu34HIE/xDbymchVYk/gtaHZ9YcGH2iB
         gNzg==
X-Forwarded-Encrypted: i=1; AJvYcCXC2Fm8+2inXeVvE+eGMWmDKMGDrZGjuNAxLZcwo3otY/8gbZuSB0LElftuGLRrKxxRoI0peY+ZEvvXr8cacb8PkPeEZeAEiO7Pfw==
X-Gm-Message-State: AOJu0YxmSSjXIprQ8iNJq8R0Rta4JRh0TJ3C8lT9WZ5q62avo8Tj9Rat
	+86XUJJMWh9o99fcvmg46whNxhPn9d8od6VmZkH3GFp3NVNvNQV0U6WSSTsCkko=
X-Google-Smtp-Source: AGHT+IEn/eMoitApgBUgg8pUEzJGdQivGCLI6Ph+rcC2EpA3138fG0ZSzfIhKnaXEIqhtSXOiOuDMg==
X-Received: by 2002:a17:906:dc91:b0:a52:2e08:207e with SMTP id cs17-20020a170906dc9100b00a522e08207emr3002872ejc.77.1714152161629;
        Fri, 26 Apr 2024 10:22:41 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ot15-20020a170906cccf00b00a5239720044sm10763363ejb.8.2024.04.26.10.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 10:22:41 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 26 Apr 2024 19:22:32 +0200
Subject: [PATCH v4 03/16] dt-bindings: mfd: mediatek: Add codec property
 for MT6357 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v4-3-082b22186d4c@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2270; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=hb4Sc+m6+KqrDRmnsqru9xwwm6vpFvEeTj8R76uZXcI=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmK+LaLpQM5c95jo6O7Mo+/ZZ15lOssjMuNjGmsrwq
 VNAKjCOJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZivi2gAKCRArRkmdfjHURUkqD/
 9szNNvPScpI+ZPCLaKq2JhlSvxl7NubkybaxFDnbZZN5rZuWJjf3Io2EMZp7xgPg9qvwuCSnjf0O3t
 t6KJTT62Cv8K2HaAZEKUmTxf94dY9Mb/mpJm99n5WWjRIOt/aUxqpILst9spy3IDLNJZoX2wLyDUaG
 Ss8Uz+FKMTtzzZ8tK9/7ZXmGWjbHGLeUGXz34zmBWK5+rIuudOEwNNX/9xhxv77tVzD56pVjb7ubcl
 baF6fdn+n7IIQUccQVCnNHxAMrqCQuz4jzLWBYbhAD+EoIoe0y36ZCQwPsV2v5vDXwm92uhpAhic3X
 6oV/VYIluV6Ygg8FzWGuC08vXaJ5hASpczPT2S6ch3wLq4ExegtWFXHv79MIyW8N2griJ0/iSwCNZU
 2eeDx7Y3gqi/wHeQ5n8tIMIHIsVZsDRdIWXnT4VtYIpMyrbzj7QsETPB9zYm1xZgzxu/ElYmitgrtp
 ZoJMP9sj+fAVVZBWeucdazDEgK8G2IgL9s49TRsF+PXDGL1lePzQd5/9qynOZY1lUdzQxXqYgumIgd
 jwTnvGuoD9VvOwCwzYdLWm9d0YyigwuzHOxDI6Lk3CTQCcyc6kMBbNKEdnLW2PjT389M+pivjq9YYR
 l7TvJ7oZDeI74NRSKU4Az7sXeN0HebsBq8sfnBReTVZqRJGxs0bWpZWik0Tg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add the audio codec sub-device. This sub-device is used to set required
and optional voltage needed according to the hardware.
The properties are:
  - phandle of the required power supply.
  - Setup of microphone bias voltage.
  - Setup of the speaker pin pull-down.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../devicetree/bindings/mfd/mediatek,mt6357.yaml   | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
index 37423c2e0fdf..30234f13a810 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
@@ -37,6 +37,34 @@ properties:
   "#interrupt-cells":
     const: 2
 
+  audio-codec:
+    type: object
+    properties:
+      vaud28-supply:
+        description: 2.8 volt supply phandle for the audio codec
+
+      mediatek,hp-pull-down:
+        description:
+          Earphone driver positive output stage short to
+          the audio reference ground.
+        type: boolean
+
+      mediatek,micbias0-microvolt:
+        description: Selects MIC Bias 0 output voltage.
+        enum: [1700000, 1800000, 1900000, 2000000,
+               2100000, 2500000, 2600000, 2700000]
+        default: 1700000
+
+      mediatek,micbias1-microvolt:
+        description: Selects MIC Bias 1 output voltage.
+        enum: [1700000, 1800000, 1900000, 2000000,
+               2100000, 2500000, 2600000, 2700000]
+        default: 1700000
+
+    required:
+      - vaud28-supply
+    unevaluatedProperties: false
+
   regulators:
     type: object
     $ref: /schemas/regulator/mediatek,mt6357-regulator.yaml
@@ -83,6 +111,12 @@ examples:
             interrupt-controller;
             #interrupt-cells = <2>;
 
+            audio-codec {
+                mediatek,micbias0-microvolt = <1700000>;
+                mediatek,micbias1-microvolt = <1700000>;
+                vaud28-supply = <&mt6357_vaud28_reg>;
+            };
+
             regulators {
                 mt6357_vproc_reg: buck-vproc {
                     regulator-name = "vproc";

-- 
2.25.1


