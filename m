Return-Path: <devicetree+bounces-73108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F174A8FE08A
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 792D71F24414
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE0D13AD38;
	Thu,  6 Jun 2024 08:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pDk1KCcs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDF412F5A6
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717661223; cv=none; b=NqrKHaB1UHSRmo8ENpdMhBA9VtrqzCSGCt7RH8XKlqHrDpyecduhEmh+JcZ449IJhtYK12MN4ZAoH4EDWcamgbF7jUEIj0IWX31h4Lqa9cNWSxRhtNlFBFPzXXkHKuKMnJckqSZFktTcaGGettkdPdklRjmkE6dAUGByrnMm3nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717661223; c=relaxed/simple;
	bh=1y0aJBMNzzU/0LQjfOvpee00DXAiGgdtWGL31QFkJrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dSqhM+1Vr5xV/nFMODWngrX7k85iUWXVj7Gd/E4bmQoBc3uQK5i1zm1d/vIcFR6Wg8EPVqe1Hi3Zhb+AWONuAjJR17cBQ9SEkJazWcp7GtPrQCq9Nj5mGWrX3i+nDmmQMEJXEdph3oMdWGh+nZHRtx1aGyKuGhcglwmiTSEgvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pDk1KCcs; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-35dceef4227so675254f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717661220; x=1718266020; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u7hiYkj91RUaU+iS0uljhHNfGcki3QtOOpKSiUyUuf4=;
        b=pDk1KCcsP/McW6vPw7NqyTjT9DoN6i6yvp3+qaX+CapLyrocL05dnR5iDGj4PN5orA
         CyM3tl/TbHEOUOMz7sPofnAjtJdlUOlAKOK8aYR9Dw8wvVCz+NzuDrNxFAuAlSLGu/ci
         sNkm8ruZaOZd6TmBwpzk9gNnRHZSsZ3mT2ynQgZpQex+a2Gj9qEdOkpyXOYJPP2pXz5J
         zysdAo+R05JqGT9L5P2R/JMw+ivQwNzSDbgDIv5yjMhf4i0gKnIUrFXnwIq4kCuY35/D
         CI+0ksfV169CLq3KnVmjZ7Zt/ETEXPKH8LAYIyT8ttLO+teHTMMGelVujXcabYPwIZc1
         qlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717661220; x=1718266020;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7hiYkj91RUaU+iS0uljhHNfGcki3QtOOpKSiUyUuf4=;
        b=MYaooF4a6cifFwwrDZI+X/mzRtn81fa+m4DGeLLnCxqh4QpLcZ6/Dx5QTcl1ye+2Pf
         EWM5ls+/11GnRKe4nbuZALwURtwI+3QoNJPy0vNofok451k7y+On6zWXB9mke8mJrtRi
         cTX2mh4dl3f+BB/B3h4LDvQZBXtooBORYVqBwZYEnq/DZA8wWUihmCbWPb5gZWKpvLp9
         8HfVEA5AAEpsWn0eoK0bIMbesWM+aJlkcfwEVnhzRHw3djKz5YqyxIMy85pnLys9lVQV
         q3Kal6AIFqn7uHOxHymrW6Fd/4yVgXJMnsHLTOl6A2X82uEJfnLR+8sgntGhcM4HvH8g
         Y/bw==
X-Forwarded-Encrypted: i=1; AJvYcCW9dvsAy0tMLKkASE4MEQMc2LqiiyWbz+DWKZIqkymrMQv3nDxpMnnyS+FxUBMPePEr4Km3MOjBONF0C+WQgOH6hu1IJznJkPMJyw==
X-Gm-Message-State: AOJu0YyyhznxcYpPz+wU6zVP+0rDD1BGWf0tsapuQsCtcmf2KjvawtVu
	22dSidN6OunFjYuFIJ6XNLtCpviMJcYa4VEPIo628tCfHQk9GXB6uYfnUrnpFMY=
X-Google-Smtp-Source: AGHT+IEZYO9oq1GhQAcOgxg+qi6W3zUjN5wlcTNOdZBAx1Esog+GP3ZmqjC+yd5zkil3a/PtA/bsPA==
X-Received: by 2002:adf:f00c:0:b0:355:39d:f82 with SMTP id ffacd0b85a97d-35e8ef5f8efmr3724702f8f.53.1717661219564;
        Thu, 06 Jun 2024 01:06:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5e989besm861205f8f.76.2024.06.06.01.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:06:59 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:06:58 +0200
Subject: [PATCH v2] ASoC: dt-bindings: convert amlogic,g12a-tohdmitx to
 dt-schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-convert-g12a-tohdmitx-v2-1-70d44fa30790@linaro.org>
X-B4-Tracking: v=1; b=H4sIACFuYWYC/6WOQQrDIBREr1Jc95coMZiueo+ShdFf8yHRoFZSQ
 u5emyt0NbxhmJmdJYyEid0vO4tYKFHwFcT1wsykvUMgW5mJRrRN10jIYSUDepmDq/peU46oFxj
 JW/IugQm+YMzguNA1PNmF8gZWyaaXquNWKVa714gv2s7d51B5opRD/Jw3Cv+5/y4WDhxGJbnhv
 UTR8sdMXsdwC9Gx4TiOL3m2HqD7AAAA
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3894;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1y0aJBMNzzU/0LQjfOvpee00DXAiGgdtWGL31QFkJrc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYW4h9Jzln7/TviHyxOE5x5rMDExs9dXnNCJXaGS3
 u6lM2XiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmFuIQAKCRB33NvayMhJ0ZD/EA
 CU3evx4cxhODhk+lefwnpVuu5JQUFqdnm0RFajEvCjdkk6pyM4dAtAS7LwQiZQlWqsFHImZN7sFKLh
 RpA+AHshG8+uektkvJdA5EXvjBF5iaRmv2KtXZHyd5a++PBpgdXRfUuS/rvSxvSGcG7rjswT3newSt
 nxPqDqKpwIpcG/8oBgctbunISD4hNChY0JqbIgtm97dK9MOac7jh9QGLQ2PUh6ctjHecQLFAuv+hiA
 WGcRo+2C0llKaFGnqk6uktleLuZKPAxDp/VRK0lVhFv/FS2PmmT1r3d/itr4LM4OSl3IWnn2ydl25Y
 9mSbQEj0X0hGAtki6jOfdkHpQA1iCGq5WZvjpY4sJbEEf2XfDvQXbxbPaUFrQM6H+ghtUK6sSnDkBu
 KKvzjdH8LPULBtWd4bncC/vUhVUGR+9+cqvvs3ZwpySSEnNueQyDxWUQjBsPkdeK3uXDSsxn3b1rPB
 6MZR3sJca4ihf9LtAQREuESburCE2IFoo4SMmm5T0px4pGDzt2KCn8lx1CGHB7eH+CsvUtoGt0eaDH
 w87hjqRMO4FXc0uXQsSqG5oHikVJdUhrWpfd59HMa4H0KtWY3L/HUmnRuCl0bojZxQdEGb39eAZFqy
 yFtPk0WEeP+eKFjFQxH1bxco7TD+e2FgGyestVNvpsdwBadPfjJ4dBS/FibA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert text bindings to dt-schema format for the Amlogic TX HDMI
control glue.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- re-order properties and required
- switch to unevaluatedProperties and drop sound-name-prefix
- Add review tag
- Link to v1: https://lore.kernel.org/r/20240605-topic-amlogic-upstream-bindings-convert-g12a-tohdmitx-v1-1-b851c195e241@linaro.org
---
 .../bindings/sound/amlogic,g12a-tohdmitx.txt       | 58 ----------------------
 .../bindings/sound/amlogic,g12a-tohdmitx.yaml      | 54 ++++++++++++++++++++
 2 files changed, 54 insertions(+), 58 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt b/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
deleted file mode 100644
index 4e8cd7eb7cec..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
+++ /dev/null
@@ -1,58 +0,0 @@
-* Amlogic HDMI Tx control glue
-
-Required properties:
-- compatible: "amlogic,g12a-tohdmitx" or
-	      "amlogic,sm1-tohdmitx"
-- reg: physical base address of the controller and length of memory
-       mapped region.
-- #sound-dai-cells: should be 1.
-- resets: phandle to the dedicated reset line of the hdmitx glue.
-
-Example on the S905X2 SoC:
-
-tohdmitx: audio-controller@744 {
-	compatible = "amlogic,g12a-tohdmitx";
-	reg = <0x0 0x744 0x0 0x4>;
-	#sound-dai-cells = <1>;
-	resets = <&clkc_audio AUD_RESET_TOHDMITX>;
-};
-
-Example of an 'amlogic,axg-sound-card':
-
-sound {
-	compatible = "amlogic,axg-sound-card";
-
-[...]
-
-	dai-link-x {
-		sound-dai = <&tdmif_a>;
-		dai-format = "i2s";
-		dai-tdm-slot-tx-mask-0 = <1 1>;
-
-		codec-0 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_IN_A>;
-		};
-
-		codec-1 {
-			sound-dai = <&external_dac>;
-		};
-	};
-
-	dai-link-y {
-		sound-dai = <&tdmif_c>;
-		dai-format = "i2s";
-		dai-tdm-slot-tx-mask-0 = <1 1>;
-
-		codec {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_IN_C>;
-		};
-	};
-
-	dai-link-z {
-		sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-		codec {
-			sound-dai = <&hdmi_tx>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.yaml b/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.yaml
new file mode 100644
index 000000000000..b4b78475c5b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,g12a-tohdmitx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic G12a HDMI TX Control Glue
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  $nodename:
+    pattern: "^audio-controller@.*"
+
+  compatible:
+    oneOf:
+      - items:
+          - const: amlogic,g12a-tohdmitx
+      - items:
+          - enum:
+              - amlogic,sm1-tohdmitx
+          - const: amlogic,g12a-tohdmitx
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - resets
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
+
+    tohdmitx: audio-controller@744 {
+        compatible = "amlogic,g12a-tohdmitx";
+        reg = <0x744 0x4>;
+        resets = <&clkc_audio AUD_RESET_TOHDMITX>;
+        #sound-dai-cells = <1>;
+    };

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-convert-g12a-tohdmitx-d85095861d88

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


