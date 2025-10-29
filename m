Return-Path: <devicetree+bounces-232532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA53CC18BF8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A5EB4EC9B8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331F23126A2;
	Wed, 29 Oct 2025 07:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kKqNv1oF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610373112C4
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723859; cv=none; b=U89u+p9YFOPFybSPAp6HIb5oWtScbSNdL+lHP/4uYDolHHTaiM01dRXIm2BR6dWYwGraPeD7x4JPkgO94hS3GSwiPSHmETaRoH9eq6RzH/s1GAYgYf2tZkHnBYTERZ1wrQxTSG/umHv/QeIorcA0l8AA/pNbTvq13HCebvJVZcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723859; c=relaxed/simple;
	bh=GXXsvrBuxsIjEp9B0sGXvcOguVlsbtvQMPTm1B6x4UQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XXF/10uHRoB0GKyvt2d1bLneQ/DVNolXy+mYJP7pqhbNRpuLtCusrhCE9l3JO3HrpRPj7n6htBp/kDM66GNry7k5A5tzwcb4DRF6LwDvZCTPviQEKCao1f0C5VTkw2PpHcTjy7YuJSLI08aPeZJPutduh6oJrXG7xVqtNT9lzSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kKqNv1oF; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4285645fdfbso904792f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761723855; x=1762328655; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYx3iCNX8spHtQshueNYuQZcEQhUGk9Pdqai63AQIFY=;
        b=kKqNv1oFd5CfuLU7SNu79iXcruQZ4lCWIZWNCKhFcA7X7Ujw/tk0bFamjCCOOC5yhz
         4bMlfvGGE3HAi6C8LY/Ox7BF/zaM90fnG+7zoUZ4sqfbYFwMmemJdGKTXk9ZR0kaxkPf
         RqI5baov7LGJRGNEffwVoFoOL4zdyspKeRlxaai21kPd9SluUfecDYut9FLdLxNAkvCz
         pcsxZOjJ1LpsrR7wQrXc99ULjZ1UH+3lB7HINV8AprgBq3PypKiJdwsdSYRHs244kPDR
         QzgP3rfwz2p9oQ3F31bvLhOVSKQmS7TMg30lXxMMGsvXl6RUlLw+QQFBrB90HI+gigv5
         DGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761723855; x=1762328655;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KYx3iCNX8spHtQshueNYuQZcEQhUGk9Pdqai63AQIFY=;
        b=vopbczGoXmbVnX+8o+VGzVvKhTeTLIMRfOvKKzN531liw5lFJWwRm+teai+pN/h2Mh
         9wZIyd203+2YntqShX1ER29b5kq3nUM9NVBqRsrPAwSgpoDzcfaRghUazYamNGsQJV1k
         eacfKbA/CrI8BGu1SZy4d2/ETKKhq4Wqr+A7SsQo1m0GzMFZ90BI1sdZ2TX6yxmArBAn
         mzUbktXjS7J+Cm6NdSrePJdhZG2cImJG2jFQ4Ut9geTyEGCUvAd/5xhVW+mXzFKcXkeC
         RK7VOBfJfYzttKBBzCsx+Z8obl35d1eb4rN58zMUOvx7rXoAGjdzRYQhpYscasiuoR6B
         jy5Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9RcYb8IGDqOLFl0tPFZS1Ft8lN3PV1KaISqDKXPTfBQiGcPoGlWgskSWp2ifMxsaCy3VRMXrIh0DZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyhO7kLopNHA+xtE2MM4sa+AnUitSTNoRXpnZw4lQLPCJB7WIN9
	/xMx1DtYLXvZ5p7PagzRS1PXocuG+OMTD4loj13HI2jMk2XzKqgwtYtNu4xQIE36OEo=
X-Gm-Gg: ASbGnctyqTdHcs8F9AjR3fJk/h8EmfwiqxbSiwo0DNWbiaWeVT7kDr1ETTteZlrL+sf
	B3/goH9m1v0dV8ES7Sv66wvBORhQEbzgHdLyVLJYMxWEW0sYQ9qewIMMnR/s5KqBwuANxH4/eiS
	5MtcEglAdc9yq5kZ2tVj/71BABxHOqA9szEEsgdi/lvdeTD3P4HhMd7nLE5F7fr6PYO1477TguP
	9bbPK7lP4ty/qNOxeo0mIonpczZn9/8ZnjwRuHMhjT8AmOrIuLIRqV4jpjN13yTShNcFjQTDgYX
	tOGOsigsyN1nOQFBMXr6no2vV36UapYEidLCa4fX1pyA0Ak5rDd/c6TTojGulzK/jUtOUEtQfR6
	6NO760LKpJVnayTkeI9J0eyTtceuGUJXhI2hdo4Z1Iv7YUUrEpXRoLxef8ttFalFk367DtSGSv9
	prjLTTyBkV9gfCYotuz6gBnuiXKJM=
X-Google-Smtp-Source: AGHT+IFpt1d90xh4rq12ERXehT3rWSB7W7gpgheUUuL3SoCeyQH4KLbmt0Kidz/+v7y0A146dlbl5Q==
X-Received: by 2002:a5d:64c7:0:b0:3f3:3c88:5071 with SMTP id ffacd0b85a97d-429aef802dbmr816884f8f.4.1761723854631;
        Wed, 29 Oct 2025 00:44:14 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5c9dsm25861146f8f.26.2025.10.29.00.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:44:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 08:43:52 +0100
Subject: [PATCH v2 02/11] dt-bindings: bluetooth: qcom,qca9377-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-qcom-bluetooth-v2-2-dd8709501ea1@linaro.org>
References: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
In-Reply-To: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2962;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=GXXsvrBuxsIjEp9B0sGXvcOguVlsbtvQMPTm1B6x4UQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAcXBxytrkLJZ9tf34k4dQirxMHd2BCWQt0+vI
 PWlN4PGVpqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQHFwQAKCRDBN2bmhouD
 17ZCD/wOHyRnblbxFu3sWp6wIXoadT2EtYQChlGpq5dlpYsgkcUtBJIRCf15JGYpuUTvyZ0z/W1
 l8+5oiLl3NhxLfJopJPVze+L8pXVk0oAdX5IPKHbnbBpXMBg3aNo1DuE3Yn6In/C+fKPf7VtAGd
 j5eBUzuBDd9HVz5Ux8g/PST+W/f/qOB9pjhjM1H7NrE0DkA3zsTmyOLhx4Q2jgyYU35w0O1ZQfj
 /d7Nf8ibns2zfGrY9i4LPEjl0UXhNNuW6INAA9u7CBMRqBkYn8dFAB5/+2Pjx9HEyWwM1L64CXu
 mwjUCSigAErWXXpv4Lf3Nx/DgLvkKew27eR1Q3Pvb+xlkqWzpsOVJI2BJDrYAY1hgfxiJZ29e8+
 NTNb2N++JWUfAdHEy+Hmpf+lSgcbDBauCfUrJXBHy1FOxFrpqg9D2X8SLL+OWo+2Uw26afVRcKX
 PPgBfPnZVX95w/U9SS4OuaJ6bE5xXfp3MiuRKlR3IlNZwcPyLIijIZYq2tM0n8Fq2ZLmdHTnDLq
 kzEjjY/7jk2E6X+da32LwJAf3STydvof7Pib3ak3KH7K/kPLyv7ZEBc2/DTzKV8bPs7MkptB6rK
 B9jLVnOu5+DWR1SHlMGoQFqtcXHFrg3VliRxfqFtbGddjFn+eIjaZdlYFhT0HZfcl0M+R5UGZhx
 nhoAWxoPbyGQ3OQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qca9377-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Existing binding has incomplete and incorrect list of supplies (e.g.
there is no VDD_XO) and Linux driver does not ask for any, thus keep
this state unchanged.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/bluetooth/qcom,qca9377-bt.yaml    | 58 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  1 -
 2 files changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
new file mode 100644
index 000000000000..3fe9476c1d74
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca9377-bt.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca9377-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA9377 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca9377-bt
+
+  clocks:
+    items:
+      - description: External low-power 32.768 kHz clock input
+
+  enable-gpios:
+    maxItems: 1
+
+  vddio-supply:
+    description: VDD_IO supply regulator handle
+
+  vddxo-supply:
+    description: VDD_XO supply regulator handle
+
+required:
+  - compatible
+  - clocks
+  - enable-gpios
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    serial {
+        bluetooth {
+            compatible = "qcom,qca9377-bt";
+            clocks = <&rk809 1>;
+            enable-gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+            max-speed = <2000000>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&bt_enable>;
+            vddio-supply = <&vcc_1v8>;
+            vddxo-supply = <&vcc3v3_sys>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 85d10d94700f..dba867ef3d06 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -16,7 +16,6 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,qca9377-bt
       - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt

-- 
2.48.1


