Return-Path: <devicetree+bounces-54830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE400892BAE
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 16:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5388A1F21DF2
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 15:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D203984D;
	Sat, 30 Mar 2024 15:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m6flh9OR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986E33770D
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 15:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711810852; cv=none; b=dAM5EoLDnAyT+M+R2EiH0a2M3ipCW4x/fhPLLrVrb3P989Xk2Tjk4KYI2OPx9wYCmXjNeo7ag/9p8CT3Suomw0BpXLD6kPDOeO0q1gKg1DIYj/JEp1Xe9oKYCKNmcExcXIpvVjqBdJ1QvDQhjTawfO/1aVobbEYLCUtIRSDe7XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711810852; c=relaxed/simple;
	bh=HU+wa7woAnHSS2dl5LU/WB4CeOKcUqRCEklmEfoGWUQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D8WhK6oQiVJrW9cMoB4ytPKxfL1x/rVmch72VeOXYFv8N8QOqsV/9mFVHniV1d9rcbwiDYUk+KEoRH5crUAfhsT6SzHVPzdviOmldaYI/mlvTrtPdwftvblXrzlMdRgW5FxHo7O+pnBKWwdrMw/Lv7FwwY2Gj+TUG8pXmpWHViM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m6flh9OR; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-515d55ab035so481605e87.2
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 08:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711810849; x=1712415649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+eEH0u79NHtVDKA13PPuTSc6hJlgwppuYqct0Olpnw0=;
        b=m6flh9OReFCMiA/YZfFoCFO2kYl6I6NhQ/eHN4u7jbBeHK6A1h85erWaFo2gzlVCBV
         mFSODyoDYdhHAS4BsduBCsx0TYmiZQBHf0HBVUIbAdVF9Tjs1HfYeozQ2Pa9KkjtRWty
         L0WM0pBYSJKk87yiqoK4Z/TBlASrWDelh51B5TxDiBnxmTOjl0LBSwhM6aoGdOlp6X2m
         a3dwXnBfWxNpZPMcsJnM9IM75pUHb7RLwPhLub6jf+SCNVbNSMLVrebu551oy+9PhOQd
         rnDxbNNmQRUvR5piBQVTE2J7b4Q0ew07h96fQ1Dnf3tCQlQtyEwscc4e+T2ZUAuAA5cV
         AU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711810849; x=1712415649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+eEH0u79NHtVDKA13PPuTSc6hJlgwppuYqct0Olpnw0=;
        b=s9ZjtnNXQx2UJMmfzRPDRNUvS5TsWbM+d/uGlI82jTrQyMQBewy7ixZi3QBkEKxO4d
         svuaUem7CoxBHc4l2fjeaNJeO4Ac8pCLEOgMfCas8Ha3xd9malPkdoH6LfbNmH9t9kIR
         kaS8tE/zZUjZg5Wue8A/uHioKEIQHSqgptWdRYPTeJEjAyXt67sMU7KnYQqxzd6As0pS
         amC7kez4xpyShbw7ZHKOJds8z/B7bIPNqSfNkSIKk9CQprR3blIPbec+Oaj4jMXdmL5D
         34nlMwi9WusGre5+i0m5JTDv+rWSGkKkxGZ7l6Igjkrbngx904m96gKvgWMQz5p/T0CQ
         uPmw==
X-Forwarded-Encrypted: i=1; AJvYcCX+NuAInMPoSpOdVkQ0xa2qtV4zc3nrTNzURlUOghZMgCC8FV9ZEpFpIe1K/GHMjDuOHIEoUDG2gEKA2CWtmQJkUMGHxblabQYVTw==
X-Gm-Message-State: AOJu0Yy12Wwn9fRFLEuwLAabwCLZEij2ilumanDxuB7UkP07lHFesNfM
	6Xj4700RbQo+36pLpY0NRmmJkNIWgxZeuJq+FQ7X1w6eL8XE8ZFU0991Bu0DFVg=
X-Google-Smtp-Source: AGHT+IH4Tqjo7n+gZfDWHfbp4pn41LKNbDyjcyYgbbfVlJT7z8EA4U+nfZQJN3EKM1ToKIW0H6Fz6g==
X-Received: by 2002:a05:6512:31c1:b0:513:cf75:2ccc with SMTP id j1-20020a05651231c100b00513cf752cccmr4944654lfe.0.1711810848812;
        Sat, 30 Mar 2024 08:00:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j5-20020a056512344500b00515d205a6f0sm496199lfr.29.2024.03.30.08.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 08:00:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Mar 2024 17:00:46 +0200
Subject: [PATCH v2 1/3] dt-bindings: panel: Add LG SW43408 MIPI-DSI panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240330-lg-sw43408-panel-v2-1-293a58717b38@linaro.org>
References: <20240330-lg-sw43408-panel-v2-0-293a58717b38@linaro.org>
In-Reply-To: <20240330-lg-sw43408-panel-v2-0-293a58717b38@linaro.org>
To: Sumit Semwal <sumit.semwal@linaro.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Caleb Connolly <caleb@connolly.tech>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2135;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=12rUl+2HnN8d7afCUpo5jilPDeMfLdH1F3n7T397uIk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCCke8taj0wJ8X25rcsRC2l4+1FyzH+0L4pQEl
 PR5XN45bp6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZggpHgAKCRCLPIo+Aiko
 1dgUB/9Cy9Youl9yPUldBL810Zn8CCZQKNyF9iQbeAOAtEWQ0mzurRp1QWj3JhIgeIEtsvoMTZz
 ZpDFHdscoQzHkbDfoNYE94D1ikHhhPGT23yTeruJMAGLITZncwrk1BUngFD1tjDpgfQOl9+SkbD
 X4uBi6Q+IXETGPTWmrn2w95UozYHKavRJFhJEgiSTO474Ffssaay9XvQ6Peq3we1Jk47/cBdL5D
 uRG1QNXjc1gA8I1kYTR5Z2ExDqlxea/kCr/AiuZb+qEx6o1Vc8FIJq0CY+9ghyypA5tW4k8GcvV
 8mDQAHBf5LvJITEFgHGyotsJEB+DGuZan6fpP9Cj7Di3P7RJ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

From: Sumit Semwal <sumit.semwal@linaro.org>

LG SW43408 is 1080x2160, 4-lane MIPI-DSI panel present on Google Pixel 3
phones.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
[caleb: convert to yaml]
Signed-off-by: Caleb Connolly <caleb@connolly.tech>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/panel/lg,sw43408.yaml         | 62 ++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml b/Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
new file mode 100644
index 000000000000..1e08648f5bc7
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,sw43408.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,sw43408.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG SW43408 1080x2160 DSI panel
+
+maintainers:
+  - Caleb Connolly <caleb.connolly@linaro.org>
+
+description:
+  This panel is used on the Pixel 3, it is a 60hz OLED panel which
+  required DSC (Display Stream Compression) and has rounded corners.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: lg,sw43408
+
+  reg: true
+  port: true
+  vddi-supply: true
+  vpnl-supply: true
+  reset-gpios: true
+
+required:
+  - compatible
+  - vddi-supply
+  - vpnl-supply
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "lg,sw43408";
+            reg = <0>;
+
+            vddi-supply = <&vreg_l14a_1p88>;
+            vpnl-supply = <&vreg_l28a_3p0>;
+
+            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&mdss_dsi0_out>;
+                };
+            };
+        };
+    };
+...

-- 
2.39.2


