Return-Path: <devicetree+bounces-179675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDC8AC1255
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 19:41:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A323D1BC83E3
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0327F191484;
	Thu, 22 May 2025 17:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="poGRJIOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534D1A0BFE
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 17:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747935661; cv=none; b=MCICzOb/RALrkhY8PLiQdkY+8uisuSfraBCopvzm5XeB1IXQzbRVbU3COM9fiDIWC7kR/ASvRSj9qQl1P/kbqdd5IYRnYcWHa9nXwok5jFia+7XtbWoaXpjRdYRhMnih7vgbVX+uGLd9YIUGTsjJVrHxU7t2Q1GXwSaeBiX7cew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747935661; c=relaxed/simple;
	bh=rpsqCVq7VP7V/ZiMOKAAYLcouhxitWaKRIaoGe3WXLQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aR7FViyKOchYabMmpex27pDfCJpfEmi3u8IIVgiTKA5H1jxvmOO5KPibHrGKj2Ng56ktKF38gGpwvDJmbUjBJyT5/P14JhWQpqPPD2/5Fx284iq+7VIBhXlDI/+M5Pnkzah2QVfi7i5kvbhoMglDb2QN2irLVixL31oISlwomZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=poGRJIOo; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d0618746bso68218925e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 10:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747935657; x=1748540457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=igl4C5n1V3kSpKRSnre7+wY5FZ4wjT5bm40mamAmyxY=;
        b=poGRJIOoSX4V2zXKxmFvJNO5fXModrvNMhiYhDm9hKfIoO0ZOA7yBtnG/J5/V6jEkh
         +JW3lJjXG0tHNO0hMkojCD40uoQJ6x62nrmYje0ckLsm7jkDX4ycStBgaE9OxKTEVCfJ
         psjszQelOXrW4HKqRVv603Iqbm55hFljydaeT+zV2Nh3MAafflgbQec1Qmd5gy24A4ok
         gMwHYPvD9rXIuq+umtj0RCULwb5QiDr5D+LKfxn6v1qFjQzonFtledT5oOwmzd/k2bQm
         L6ffgM1/EgAh18LjXBxMnpdpMII8YtA/v99THB97MpRwHt3VgaFta5Nk7B2J4tDLl+zV
         tl7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747935657; x=1748540457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=igl4C5n1V3kSpKRSnre7+wY5FZ4wjT5bm40mamAmyxY=;
        b=qgSDABO/r4USp5MYWxOBth4iHAdfF2AciMXg3TmSiOp8MpP38CPOy2lLf1pRmHhzO4
         lQgQTURQv7R+7LiPt1wbBeKuk2RYabPQV+UZo5VUSjRQXX/Y+IAVnXqyVtbDErRzrzok
         zWhPrIaI+t8m/f/LmAWBZ/xBlMo72KhwCypTKqclYEeJE3Uobc2nAD7X8JnFNlROHOzw
         0LXLBJhVQJWGJqt3+si/x0xdo59B83kl6iBQEqfUuNcHGMFs7Ni8E9/uTkOfrf6OgaLO
         yhbOcY3THTiiIHCe9oTx82dCdFw98kV2TYYsnxQA39ZynSg/P/40V1HeHUjnnt1CUKns
         6zDw==
X-Forwarded-Encrypted: i=1; AJvYcCVVfoa/dc5USdsz8WjpxSa6Lcu96rDoEqo8Z5+QDLXZ9Q/kyaSdPLTIOUYJITkzbK8KW0stxEYj2Emu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9e++/v21VV+bKDGHO70oJmr69LsRNChfAyqu3RRJHnfKm4Vho
	Ou2m5XodomHeaEi5C20aWctFZog7Wxj+Uzu/D/RYHHB5K0XHh0XEKLOfBgdNsri84OI=
X-Gm-Gg: ASbGncsd5KWKKlKpN8P5ylFboJn5ZMHhl2vzSHSajSfszD74ocjGlaiv3Q2UVab0Yt6
	NavJFxvmt7PXThRXeLw3ax3cKhSU91JOSXZM8ZRtgXduJbyiRV8GN64qEfU684MAXQaJa7XIDka
	MQErTForndAD5/nYDoZgVBLgHeFhLsq2hXCmSgU8fUOWgaNEb9E/j3MEFhkCWbAOrQAlbasau7J
	4GLp+pLO62lECRO8VpdMJLvW1Pwn3fVgF7o/1VLC+Qii0gNsRcj5o0yij6BkHPrVpKpV9D4uawR
	rDFo78Gz5uNh/YMYiz05zHgkIZdd/kfP3Mbe0iKQiLtnT/SxDQ9Qu+25c60=
X-Google-Smtp-Source: AGHT+IE0OKfhp+kIa/ZAYDcixA4XAmMDVXBsJz/sOmX77omH4NylPuG7drJ6v1RuKyyGP3ilU9meVg==
X-Received: by 2002:a05:600c:3b21:b0:441:b3eb:5720 with SMTP id 5b1f17b1804b1-442ff0396b5mr240458235e9.29.1747935657302;
        Thu, 22 May 2025 10:40:57 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7213:c700:6c33:c245:91e5:a9f4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f7bae847sm109563195e9.36.2025.05.22.10.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 10:40:56 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 22 May 2025 18:40:53 +0100
Subject: [PATCH v3 03/12] ASoC: dt-bindings: qcom,wsa881x: extend
 description to analog mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-rb2_audio_v3-v3-3-9eeb08cab9dc@linaro.org>
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
In-Reply-To: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>, 
 linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
X-Mailer: b4 0.14.2

WSA881X also supports analog mode when device is configured via i2c
only. Document it, add properties, new compatibles and example.

Cc: Srinivas Kandagatla <srini@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../devicetree/bindings/sound/qcom,wsa881x.yaml    | 66 +++++++++++++++++++---
 1 file changed, 58 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
index ac03672ebf6de1df862ce282f955ac91bdd9167d..a33e2754ec6159dbcaf5b6fcacf89eb2a6056899 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -12,15 +12,17 @@ maintainers:
 description: |
   WSA8810 is a class-D smart speaker amplifier and WSA8815
   is a high-output power class-D smart speaker amplifier.
-  Their primary operating mode uses a SoundWire digital audio
-  interface. This binding is for SoundWire interface.
-
-allOf:
-  - $ref: dai-common.yaml#
+  This family of amplifiers support two operating modes:
+  SoundWire digital audio interface which is a primary mode
+  and analog mode when device is configured via i2c only.
+  This binding describes both modes.
 
 properties:
   compatible:
-    const: sdw10217201000
+    enum:
+      - qcom,wsa8810
+      - qcom,wsa8815
+      - sdw10217201000
 
   reg:
     maxItems: 1
@@ -35,17 +37,51 @@ properties:
   '#sound-dai-cells':
     const: 0
 
+  clocks:
+    maxItems: 1
+
+  mclk-gpios:
+    description: GPIO spec for control signal to the clock gating circuit
+    maxItems: 1
+
 required:
   - compatible
   - reg
   - powerdown-gpios
-  - "#thermal-sensor-cells"
-  - "#sound-dai-cells"
+  - '#thermal-sensor-cells'
+  - '#sound-dai-cells'
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,wsa8810
+              - qcom,wsa8815
+    then:
+      properties:
+        reg:
+          description:
+            In case of analog mode this should be I2C address of the digital
+            part of the device. The I2C address of analog part of an amplifier
+            is expected to be located at the fixed offset.
+          maxItems: 1
+          items:
+            minimum: 0x0e
+            maximum: 0x0f
+      required:
+        - clocks
+        - mclk-gpios
 
 unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/sound/qcom,q6afe.h>
+
     soundwire@c2d0000 {
         #address-cells = <2>;
         #size-cells = <0>;
@@ -68,4 +104,18 @@ examples:
         };
     };
 
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        amplifier@e {
+            compatible = "qcom,wsa8810";
+            reg = <0x0e>;
+            clocks = <&q6afecc LPASS_CLK_ID_MCLK_3 LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+            powerdown-gpios = <&lpass_tlmm 16 GPIO_ACTIVE_LOW>;
+            mclk-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_HIGH>;
+            #sound-dai-cells = <0>;
+            #thermal-sensor-cells = <0>;
+       };
+    };
 ...

-- 
2.47.2


