Return-Path: <devicetree+bounces-68631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A91108CCE5C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 10:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FA2F282702
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 08:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E017213D2BC;
	Thu, 23 May 2024 08:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2f8mCTzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414B13D277
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716453769; cv=none; b=ddyPFi+nVYpVGWsFXDx7f2SXeILncj+Oni23GGZNqJXfU5kcYQ81r667PYK+5Ovp7MICgmNne4J0sFcLm0r8wHYU6QQgNrWfjBtUMFkqXabXBS2reBGGIOqLY79n1X5jPX8+8lTuq5v/MjAevcH2YNraOQARpms+Iv7Zj6gpWUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716453769; c=relaxed/simple;
	bh=SWDpxVosRWcwhcp5w5dGFmY/1KI8cAMYk3ck/hCfKf0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CYTmeSLDYJrr3AcA0pOG60UthmoeZbBCH+OWC3ZqlUDt2QahsW5lTAyM6q6BcUi9clrDpgbTTXuS4EuwE5pOPGr8sf5sna8GnLdDNJdY4JPkqw1LSyn4og6VTyEKpyXe2o7LK4b6P0ljUebiShJRkq1gagy4IUHAv+4l7MEp0Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2f8mCTzG; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e719bab882so57488951fa.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716453766; x=1717058566; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8bNfBdFp5mZ2kI3ADKPWjh4YaxvbI3ApUdRoUcOWyZQ=;
        b=2f8mCTzG2V2xo4yQAFP3mQXlXoyx/b9+OhTk8VZ/74tXNsJuAFUn0x0S4+6XKXXqMC
         bwNdTMWvuRsKCMQ5a0oiVs3/ZAqOshRdz/4J+oU6NsBSi7I8xxMoXc95kzEW9Mkxbbs3
         tLB8AQ8NMFTijnt8aqXapxMqB6II+rBNFLdjYgXE06Ja9lzNygL50FCPxpP/u1FmHizj
         y7k7VDFprkS2pHc2zAN/R0bY68ewrLdYjCcEH5dneeNe7jiBNXsitc1Mggp2l9IkfVSn
         5xzWwAGqoUI7jo4m33u5F948ksciEzhTR8jaeey9fg7tIEva9DUeiT40YJbd0Y/qWMMO
         nPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716453766; x=1717058566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bNfBdFp5mZ2kI3ADKPWjh4YaxvbI3ApUdRoUcOWyZQ=;
        b=xAzCa7/V7miKRT4evYPTJi+3a8M6DiFp+Y2CghCxTIUUsDAvxFKJvIQ02tHiRrrtY3
         mllCbUDbb9f8A1TASvqKK2V/yetpGu3Wat0+jPVMEXv5LILGgWlWNLoTHrpktvhj9U6k
         K+gK/SrxOuYNMCXUm8RIRpcfbq2udZwCAcA+XwBt/UwhJWtfys/dBbCfRORK84+ZXPCm
         WFisY0GdipAXbZNVRR5h+vlKDekFF0X58c4BFg7AJiDYGWjJdwfYveJ9H4BvJAe6hIj7
         3AxPJOIGvgPc/07/P1Xxt5Jl4dojxypdidLh78FfB83j5upzpnmTBaGS8UKFIaDDM592
         YRkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgBMVkf0yhmFPJhZ9gIHgnPsAlIKaq5BGGWF8RFWKfybjRXk+/351FezxWAw0ELj1xO4UIUoMKLj1B7QSYIHQWN/xLxpx26ZrjnQ==
X-Gm-Message-State: AOJu0YxezR6UCaIbhtTYmugbEVc1eD8y/3vXCR+PcwW63t+bSiKukGOW
	YQBlzV2EfYUMCsDHb5SyZS/N0mElm30W6uJrUrp8Y7P01QCE6p8LXYIFIy7vyzQ=
X-Google-Smtp-Source: AGHT+IHNowzOZ3qZoho2kSi/7vJiotR/fYTKwFLPrVzz09lM6jstaU0wjaWz4fdm4OP8i9d1YJ82wg==
X-Received: by 2002:a2e:9858:0:b0:2e9:4c17:9c8e with SMTP id 38308e7fff4ca-2e94c17a021mr23112901fa.44.1716453766077;
        Thu, 23 May 2024 01:42:46 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42100f3e03asm18556645e9.17.2024.05.23.01.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 01:42:45 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 10:42:32 +0200
Subject: [PATCH v5 03/16] dt-bindings: mfd: mediatek: Add codec property
 for MT6357 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v5-3-e7e2569df481@baylibre.com>
References: <20240226-audio-i350-v5-0-e7e2569df481@baylibre.com>
In-Reply-To: <20240226-audio-i350-v5-0-e7e2569df481@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2491; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=SWDpxVosRWcwhcp5w5dGFmY/1KI8cAMYk3ck/hCfKf0=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTwF/2jDLQ5TVCgT3uxzYK5mIuMk4pelcscFCox46
 O4PSEBOJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk8BfwAKCRArRkmdfjHURYsvEA
 CmSN9uNEndT4vCn4eJmEUww7V0IRTwU4v0Mw+SaDo98QMKyZRC82P0ip9h0k1rl+Msvia+4zk4rAZy
 13Z91WE2oMA2cVHcf5SGoQ0ZXLHNoYcAUddHfGGfT8CZ2rViWDzWR6zArvkGvciCJ77pgHwIXdim7A
 huMZ6ooBhWPk4ailWcgwQhSkZSxM2M+odChO+8MwJ8HYJZNWsjP1qoha82hvRL7vmRoxRaIhq8nrG4
 /gUfb9KFRFNfOxHpFMfaMGtA0Pceqple5rLArZZuMapNcEeDDiCfgnIKnWiW5XSiXyQcoHFK+zBCni
 ZlGLrRngoBKrXUzJYnr/ms6XmMujszyAK69ZDqkuzVDx7fM0vFhbnqcr9dzniBXGS+dsokjar0ZtaS
 ozZxmNKs8mmIUMz9zBii6kNB8dcrdYJkJjYCqcxFV0OlIac0BzusXY3JlsdnfZMztuPgh8qw9OrUby
 96Hp/0PCCC41dSl4qGdK3tz1JkWZ1jKuiQIP6Oqt0fDPc4153wP3/+vM/avv8M86VMVcVAATtoKfu0
 1Yc1B1RlwhWEyFFWH3pZMBuSPol3pT8YncGUyPXggY8DPThSIFuIMNJ3Xye3ZqKsfukmHPDZw4/FyQ
 J/exVsb8byuoOAE/R+xKncX9afsOFLtbq77KM4eUdo0rjAHD3U8ucguSuRug==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add the audio codec sub-device. This sub-device is used to set the
optional voltage values according to the hardware.
The properties are:
  - Setup of microphone bias voltage.
  - Setup of the speaker pin pull-down.

Also, add the audio power supply property which is dedicated for
the audio codec sub-device.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../devicetree/bindings/mfd/mediatek,mt6357.yaml   | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
index 37423c2e0fdf..d95307393e75 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6357.yaml
@@ -37,6 +37,32 @@ properties:
   "#interrupt-cells":
     const: 2
 
+  vaud28-supply:
+    description: 2.8 volt supply phandle for the audio codec
+
+  audio-codec:
+    type: object
+    properties:
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
+    unevaluatedProperties: false
+
   regulators:
     type: object
     $ref: /schemas/regulator/mediatek,mt6357-regulator.yaml
@@ -67,6 +93,7 @@ properties:
 required:
   - compatible
   - regulators
+  - vaud28-supply
 
 additionalProperties: false
 
@@ -81,8 +108,14 @@ examples:
             interrupt-parent = <&pio>;
             interrupts = <145 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-controller;
+            vaud28-supply = <&mt6357_vaud28_reg>;
             #interrupt-cells = <2>;
 
+            audio-codec {
+                mediatek,micbias0-microvolt = <1700000>;
+                mediatek,micbias1-microvolt = <1700000>;
+            };
+
             regulators {
                 mt6357_vproc_reg: buck-vproc {
                     regulator-name = "vproc";

-- 
2.25.1


