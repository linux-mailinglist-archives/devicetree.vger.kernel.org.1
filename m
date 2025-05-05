Return-Path: <devicetree+bounces-173588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3CEAA8F35
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9861F165285
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F39911F4E54;
	Mon,  5 May 2025 09:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BJb0FswM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CB81F4CA8
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746436606; cv=none; b=FjohVQ78EqiFR87/XFnlCv2Ch1ye9eP2ofgb3y+u/cPQH3BWNGk3j2JnlbXpYLxcYFjGG7fZv1gIH2BCLs7SLGNavDbp4+8Je2CeYnfvrTBl/Rut9AS76dvBz/+to0J4PQRqGfyxlJJK1Lu2/BM8byWSYWi0k8dAfWXsE/5G/s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746436606; c=relaxed/simple;
	bh=myYAgwe4Uvo4pZ4TdmGjIMDrUx1GUpHdZvEtUczKmjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rD+jXadeLNSbay3uIABOjT+TI2vmO1g5AIbeoip8o+OMBuk71tu0raPloH4WhOwfxbfoChHNnhKRcm8czfdLpiZvGCelFB54ZS/zrjOuJJKGuIPjsBCMrvSwny22TeJAyX+iFkJDXmquZjhVII509RapC8cJCW2DRjvydj9c7w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BJb0FswM; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-440668acbf3so5703445e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746436603; x=1747041403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4bgv6KVmjcRZE0LErys1nX4WVPjn1RSVgidnV/lpwo=;
        b=BJb0FswM+sNCnKiCogA2sSNjD1KhIS7aqLHRE95O2iOs4DmXwZUKoELSsNKWqwd8vt
         T4VbM9uTJY0lU+2pk3qsAZ3rTfFxI86Xhncl2OhipcAcQuI2Z+Eb2Y0yoUShmyAU32f8
         CHPtKtYflPIMetVXUsc9Dd3dIGmu0mWHvDstRPLGfGKSxb6Joevs9yy6mvwIYsQEPVwE
         GvGIgSYhYTzEkcWyKhCz+6cqoxBU3RPdmfwUTd/Y3I/5Y90z/t/zfB/7nlkRYniWpVlk
         //A5xYDCr/fpnL9RUqeOwT9RK2fjujZ0EZ+bNnOuz/Ptp6XWIQ9bTYCg3Fbs7hXk5BTg
         soWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746436603; x=1747041403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4bgv6KVmjcRZE0LErys1nX4WVPjn1RSVgidnV/lpwo=;
        b=GjVIIWv2uBSqvFqTKBOK7FciKXh9oqlV/umtiFDAspe45yqjueqzKbrBFUQLadM3iv
         Xpl9Z+oGewgbS4bbFUxsoM0zvW00RXx6jD9+PuXxcwVKGXk/Rr6kaYXCUXEnkMiLex5A
         HoGtZ1p5CBuaweUlLvYO7k1jOoLxMZp3kQAY7Jr+JWNxzyyiF6o7RmXCLBXcSgB8YHtD
         pjF1gViYh3HYL+HuvgPVUHlSbAS7VVYYZjie4WNTDfAxgKtzMdnh61vuJxwoSjc+vPfG
         F8p5uZo4c70hhL2SSbtYQqpcK+dscmqnnhQmAYvDFoP9C15Qq9VfLYPcPwYjUkjt4cda
         TkHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXmRYB6qNzOVAkh871C0ZQhSnsHY0/dnTQX7F+0ZCpOzO/QtHIsiZCxGE+D673mpQRUmv4uy6eRUZR@vger.kernel.org
X-Gm-Message-State: AOJu0YzFfHbmQN3kTXhG5C5ruwBZn2MDCsgaqbswyZ95V4ZRImBSb1Qd
	zQeKRDOXTlkly+hMUuVX0nhzonKQYUWbxQEWNdu52/gbghuiqV85d9wtnc65Rn0=
X-Gm-Gg: ASbGnctLwjURVtUHOEhMIwMq7dpUPvfKigZ5CsDY2cccIq3I0ADCgwZzh2illyCG8SX
	QkMiLnpseOYV0cCJsiK31q294O9IG0hHZuXpsVUyU35XiBBoDghqBVjjhk7sD0/pZs2IezaG7Th
	c6DCGFqvSw9HSVQWHirX/moeX0r8HmaGnQivnVNilbTvaikdCiGs0yldvoGLtyA9bCx/NVEWA01
	B7yDCzG96v4TSDfCvJvaExfelGuWGhLUa3bY7wqRJdPkHoauWHpHo7kJL6kq3J87l/c7YpP4hPW
	xn+YIw4mSWTEpY3jtk54d9f4J4bbtAX9B6mmzOloLPQNVqDeALEttHsY3n0=
X-Google-Smtp-Source: AGHT+IEw5FuKNFm8/QHlYSWSxgEk5Utm8CEJLfZb4GNFY9PyR4vY5NLfmVDfUzrUr9GSrQrTJ8tj+w==
X-Received: by 2002:a05:600c:1d8c:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-441bbf4b11fmr38391925e9.8.1746436603220;
        Mon, 05 May 2025 02:16:43 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2aece0asm171784775e9.14.2025.05.05.02.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 02:16:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 05 May 2025 11:16:28 +0200
Subject: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT37801
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250505-sm8750-display-panel-v1-1-e5b5398482cc@linaro.org>
References: <20250505-sm8750-display-panel-v1-0-e5b5398482cc@linaro.org>
In-Reply-To: <20250505-sm8750-display-panel-v1-0-e5b5398482cc@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2288;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=myYAgwe4Uvo4pZ4TdmGjIMDrUx1GUpHdZvEtUczKmjk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoGIH2ScsJDcvIBEj9t1ReIUtNo3cMb2/ZJgKUC
 l+qaSluVbWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBiB9gAKCRDBN2bmhouD
 16vOD/0Xg7HRST6WJpe0HHIavieRlmZ4EFQDs1jrlhqFiVP3V0sQxpYAs3nWiECJuSAsUoW/SAd
 sxsLQukOfdeRmj1HbE21xDxkeBO02E84D1hhnuBh8afGj2ub5dB/mf1UPrEhvOdd5iZvHtCbTa/
 6Qck/pri8IxiPpCqcgRLeiA5TycsntYPy/A7QKW4Cz3dQjw/rU5A3yBPiE+mwV9+ffVbaoJRfw5
 Y7/lZVVmqnZlFDV77FPaeTLtG+MDZ/oIDgo6V75FIXSeNkWVQIhU1v77kZuK2Hps73A49PMS8lW
 Sng7/ctyy9WsBOEu13whSv/8y272P+euJyom6HhD7ulxipjizCnHtVSUJVAbSeZaJ9SPlrNl+G7
 DYZvN1eIYJOMaxYocM6pjsbMWWDnQag7dRKVpCPQhT3rpuLVy64QoGjto2I852IrFU93JPqA4M/
 Sg85L7Ry6SZZ5KGHa0aQINHcjmgXQ5OwR2P56fBFe54DWu2EfwkdWLD5UdSBRW25CzOw1ykj48B
 BFqPs17ex0WdsnUgfFEVoLk593yZ3hZE0eAM2JiPua168trVB0xpTZ0yK1PGdz0L/vp78KPKmZx
 3+W/wtlOEPzysK7T46NSPt1KlKW9ohW9mSktel4bH01leYTrFO8PfaVXAxEYezSYA3hQ1mrZrJQ
 4/pHUnqAQsle3vg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add bindings for the Novatek NT37801 or NT37810 AMOLED DSI panel.
Sources, like downstream DTS, schematics and hardware manuals, use two
model names (NT37801 and NT37810), so choose one and hope it is correct.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/panel/novatek,nt37801.yaml    | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt37801.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt37801.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1b38c1d0af6825341e047af57584a93261e7af2c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt37801.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/novatek,nt37801.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Novatek NT37801 AMOLED DSI Panel
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description:
+  Naming is inconclusive and different sources claim this is either Novatek
+  NT37801 or NT37810 AMOLED DSI Panel.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: novatek,nt37801
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel
+
+  vci-supply: true
+  vdd-supply: true
+  vddio-supply: true
+  port: true
+  reset-gpios: true
+
+required:
+  - compatible
+  - reg
+  - vci-supply
+  - vdd-supply
+  - vddio-supply
+  - port
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
+            compatible = "novatek,nt37801";
+            reg = <0>;
+
+            vci-supply = <&vreg_l13b_3p0>;
+            vdd-supply = <&vreg_l11b_1p2>;
+            vddio-supply = <&vreg_l12b_1p8>;
+
+            reset-gpios = <&tlmm 98 GPIO_ACTIVE_LOW>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&dsi0_out>;
+                };
+            };
+        };
+    };
+...

-- 
2.45.2


