Return-Path: <devicetree+bounces-84664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3D792D0D9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 13:40:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 324BF289D43
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 11:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7E9C190665;
	Wed, 10 Jul 2024 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bSdt83b+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA937190489
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 11:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720611593; cv=none; b=fbZ9M7OzvCpJHli1Jq3h0stDDBMGUVjdg22+iogT7BMt/ocMxlbPNHZ2ibWDUQPxiJoeVH/zzQHq0bKM0qA2Yr9C/eztA9Ii2wqGMves+OtozL1NDFQaZQKLyww1pSe/ii8UvZAFu2rc1MlCi0Za+WtRfLZXtamzhi9j2tJErW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720611593; c=relaxed/simple;
	bh=kXcXQlQw8cCu7vUhvQQqw7fNx9k+D9plQJiW4hesxaI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t+DHL172+VzYswCfsknEtYSwOelJ0iKXx1ZN59vdQjQT1kePVN3lOYFu6kBKlmPk3HdUP9zAJ8szbyE4WPxuM0oLsuLKa22lVob5LU0M/F88A+7PU/EtW6PSthb/tWJjFQVd0Y1YdVMu4WtFZ+ICSTDBd7e4UAgOSpOYHbPbY1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bSdt83b+; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52e98087e32so6957640e87.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 04:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720611589; x=1721216389; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrw0KmyxDKt0z/+5CdGnxoQjpcekSUdd2Exq++60Pok=;
        b=bSdt83b+STqv3sRkm97i6CNTLb5vmyIPPBOtsDdCeR9q504OtYvtUZpnjR43P6rpQW
         QAKQGboF/VDP7rEtJ2hO307qIW7qFcTaQzOiqM1Yv6Q/lqFaa67Cu3RB+5RnPr4/Ey/T
         3BFXhJP4/k/B226e01Ve03cAXIZsoH1efsb56+VHOh3wNF60vZUwGm0MoaofXw7Pkrmt
         SzCQh1LFyalLhqpZsptgfkRM3vYiK736Ktu+nflInnVeg3jZC335nISUbCn/xJdK2D1V
         zAzsX9+VQEOPdGSJady+UoCoHQPirJgDQZPhMazvZROwz3SOKemvlMPdWcUR/4ttnfCo
         v4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720611589; x=1721216389;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lrw0KmyxDKt0z/+5CdGnxoQjpcekSUdd2Exq++60Pok=;
        b=BXlzkajeCcsArbCL1Eds6xBjLSeB/uglne0JSqrkJSJ9fiT43cClnGMWxO4VCNlcm3
         BJiwR0gN9JEVXg1y/tCwtwV7dzxmKDHibYwGcQxJZUBeUZxSXeGUBD4koopABcbfTQZP
         ntyFhhlKk2fS+yaZmAkrbj8g+Vv6W7mx/3J4X16rIBe4hsx3PSGfzRciQhKcS4Oeh0Xk
         5zeCr+ycSY80XnuUKedTBEXSCi6go4fdG2ummGCGnajlKHipsJPzsgb1APjtO08U1/YB
         3l/7wEhaLy5c3d2ltQKe0RBBuOo2QrFeVDKbEtKgSDgH+4lW6Ombqa4MR89FvzbYUi6r
         3+9w==
X-Gm-Message-State: AOJu0YxuU8l4/DXLCz0sIRmune1jXLS0mWpDZ8GOcRqSuXq0fHtKmWI/
	W/Ds//I+mlaEffIgZTCpmIDTLlQHOzPJ+EeK3NjgtBvV2cSijlKRT9e8Guy48LnFD4/tlCJ+wbU
	o
X-Google-Smtp-Source: AGHT+IGCIfQQFWizC9oYA0R7wEwIwKOXXTqvLbF5U7LfpTs+Ls/Zyvmg+QDt0ocqWOmzblGuzvrQSA==
X-Received: by 2002:a05:6512:b0b:b0:52c:a724:5ae3 with SMTP id 2adb3069b0e04-52eb99cb0admr3854086e87.51.1720611589220;
        Wed, 10 Jul 2024 04:39:49 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f7361b5sm78602875e9.29.2024.07.10.04.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 04:39:48 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	alsa-devel@alsa-project.org,
	Banajit Goswami <bgoswami@quicinc.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 1/2] ASoC: dt-bindings: qcom,msm8916-wcd-digital-codec: convert to dtschema
Date: Wed, 10 Jul 2024 12:36:06 +0100
Message-ID: <20240710113833.39859-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240710113833.39859-1-rayyan.ansari@linaro.org>
References: <20240710113833.39859-1-rayyan.ansari@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Qualcomm MSM8916 WCD Digital Audio Codec bindings from text
to yaml dt schema format.
Make bindings complete by adding #sound-dai-cells.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
v1 -> v2: removed unneeded minItems, added ref to dai-common.yaml

 .../sound/qcom,msm8916-wcd-digital-codec.yaml | 55 +++++++++++++++++++
 .../sound/qcom,msm8916-wcd-digital.txt        | 20 -------
 2 files changed, 55 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital.txt

diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
new file mode 100644
index 000000000000..a899c4e7c1c9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital-codec.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/qcom,msm8916-wcd-digital-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm MSM8916 WCD Digital Audio Codec
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description:
+  The digital WCD audio codec found on Qualcomm MSM8916 LPASS.
+
+properties:
+  compatible:
+    const: qcom,msm8916-wcd-digital-codec
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: ahbix-clk
+      - const: mclk
+
+  '#sound-dai-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#sound-dai-cells'
+
+allOf:
+  - $ref: dai-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-msm8916.h>
+    audio-codec@771c000 {
+        compatible = "qcom,msm8916-wcd-digital-codec";
+        reg = <0x0771c000 0x400>;
+        clocks = <&gcc GCC_ULTAUDIO_AHBFABRIC_IXFABRIC_CLK>,
+                 <&gcc GCC_CODEC_DIGCODEC_CLK>;
+        clock-names = "ahbix-clk", "mclk";
+        #sound-dai-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital.txt b/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital.txt
deleted file mode 100644
index 1c8e4cb25176..000000000000
--- a/Documentation/devicetree/bindings/sound/qcom,msm8916-wcd-digital.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-msm8916 digital audio CODEC
-
-## Bindings for codec core in lpass:
-
-Required properties
- - compatible = "qcom,msm8916-wcd-digital-codec";
- - reg: address space for lpass codec.
- - clocks: Handle to mclk and ahbclk
- - clock-names: should be "mclk", "ahbix-clk".
-
-Example:
-
-audio-codec@771c000{
-	compatible = "qcom,msm8916-wcd-digital-codec";
-	reg = <0x0771c000 0x400>;
-	clocks = <&gcc GCC_ULTAUDIO_AHBFABRIC_IXFABRIC_CLK>,
-		 <&gcc GCC_CODEC_DIGCODEC_CLK>;
-	clock-names = "ahbix-clk", "mclk";
-	#sound-dai-cells = <1>;
-};
-- 
2.45.2


