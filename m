Return-Path: <devicetree+bounces-175103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 631D7AAFD4F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88D97A0045E
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089B92741D8;
	Thu,  8 May 2025 14:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lf6loya6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1102741C4
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746714901; cv=none; b=FHbpnb8o7s8vY7ALHwyw7kz1CZuBj5t1L3PR8eYDQ36RuDDcVaiVkL7nbkh5xOhcqI26tDp4FtftUg9y8vfMH5wmuS2yvOeK61ofWPsE40d4vaVLlWjEhHiWYDzpgjFevRTjquNAKzbVIrnsYbAe7dSBQ4MYN5ySL/T+REXDt9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746714901; c=relaxed/simple;
	bh=mmCgVzQJzsiJHsxsGKjiL+gLKzhGedNBIe0oSKTyY9A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dEsTz8J9TfMBA2jfvlircT27/KNwZQloaFya+lvvVyrr0a25jqOwmjlS6jvDAGiax+NTl8G8EfSGbf53nAQhQdptRGcYpnSfR7QKchLMDKNiOC6+QvVt8AUcggWqtIbYyMKukow2WAyJWAABJd44i2qfZbDoO6NiGMJTMGo/XsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lf6loya6; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-39d73b97500so61955f8f.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746714898; x=1747319698; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CgE2WTGiWCfnc7NeK2kSaYgY56zlNeLCAVlMEt66+W4=;
        b=Lf6loya6LNbD6svnTBHjqXoNQ0cTNDTcFUj5nU0ziHxjWNPbDX0hie6RA/Vt/7937z
         nhV4oCp2Mr7ImT/lcs4vyTSOOvg5kK2VnzztSczG2lUK6rWKwOfZqPVURh9AWMu+yTZH
         bIAtpZOX+vBGFLzb3gxSdB058H2ZIVIT0aThXABpgWTBt0FvO+PW/XS9HMEeCvA+wPeR
         Du4mZOnK8WEyR2M1UH/Xsz76B8OD9jwUt61CQfeYkYjb8Crfb2BxiAGJw+AIrFJ/nQDO
         TqdbCmVLr54nAiYGO70RWjF2gXUyg+1Li839Y+XcTm/4u+7VunSjHBs0M1YReJguZ9Ku
         p2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746714898; x=1747319698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CgE2WTGiWCfnc7NeK2kSaYgY56zlNeLCAVlMEt66+W4=;
        b=V5vHBWq27sHbCv3x3bdmox5csliPYcdskFaRVOgsUeb0eGVdYeV2LtgFqL5lbVZVPl
         pxHfcs26aKv1BbIrONDCuoEelsKQzYibthHHjoKv5ePinTNlI78zoYdHAwRNLaxqu7hN
         YoJzw7zBxuf9bwqfAmHoNeL7QaDRM0QhwBtEJ1nKDLBKP1Q39OKL3KjvAPHWSTb1Sb6m
         kIJjGkYj9LWAWh1UvGIHHX6lTeqyOmG79i82HDrmw1E7tOemOqWFBWmth+3YdjKo7OXs
         sHEumMQddReHkPvn50TQzvmXxyUtgpcjJHu73NZCah698xVjZsoiiPLYog8Ka0rlBzzZ
         xROw==
X-Forwarded-Encrypted: i=1; AJvYcCXr+bKiuRokiu0QU6Xqy34WHMRIY9hgyS108/49mhmBBpzmPCEae/T34A1mdzyc8uz8qU84nOpSH5Kr@vger.kernel.org
X-Gm-Message-State: AOJu0YxhrEqR/rJgA1v0uJTW+RQC/w7X1FrVxEHXQ1a9/JvThJE9Cvyo
	2qJQZHHUfwAzilBnFpDsC7v5J3n4NF8FhnYQndst610oHQjlGLYOFCsSxT5D/1Q=
X-Gm-Gg: ASbGncvcfkE9rjLCPSu5GWCepQpJ4qHS9ZFhwuMN1+FKAD8IET5FYXNTzRoR5Q6hqHg
	mNdio5swZFKpMf/7x4P6dIeJ+LKvox368KYyfYltGpPsipg6O6C+rmxLm0+kA2sRJA360PJEnTN
	xCyvxasUZ6bW1NAvOeYknKlgeOa58GsNJOjD/yhL/e9WWHjkLuVqpQjye+uADlSlFLtxKUOvLLx
	dI+IWSfgG/shOntIwkXje4vivspS3xogmAVxO2dgGZtm4wDfCttfp8Jo9b6/GGnCqFndn+RabbW
	VBUj8iBmthFlmlAP7auoqtM/FXz8sCYeEshDebsB2cWW5DMjz4l4RilfywR8K/jSRzbmEQ==
X-Google-Smtp-Source: AGHT+IEgjVH5Gai2FzOEVQtWx4KBZsH4RW/ea4Ooz9CuY44fNFqBtMuk7B+eAGIxo+lKJuwlVs8f8w==
X-Received: by 2002:a05:6000:3102:b0:3a0:ba92:1d65 with SMTP id ffacd0b85a97d-3a1f5cae727mr26929f8f.13.1746714898322;
        Thu, 08 May 2025 07:34:58 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ec98dsm149861f8f.25.2025.05.08.07.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 07:34:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 08 May 2025 16:34:47 +0200
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Novatek NT37801
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250508-sm8750-display-panel-v2-1-3ca072e3d1fa@linaro.org>
References: <20250508-sm8750-display-panel-v2-0-3ca072e3d1fa@linaro.org>
In-Reply-To: <20250508-sm8750-display-panel-v2-0-3ca072e3d1fa@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2343;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=mmCgVzQJzsiJHsxsGKjiL+gLKzhGedNBIe0oSKTyY9A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoHMENp/XQ3L9Ceixx0GdxKwlWYq29nkuBqz4/g
 zpB0pEbXZWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBzBDQAKCRDBN2bmhouD
 1xwQEACK7E6RLBULRANTgFxki4/bjEzEZqHz/C2ZLnRF4rVP/t2FAwXH03sxR4YRSQOJshMJS0h
 TK15qHGGB7vFzf8fJBGBUw81EHbO7v9gbOdrWD1hdNqhAN9MBOIEFbnqM0cxrNcK4WATTW6G/X5
 s9ToeTeaCs7RGhnw7V9gHUhmF+eohsiyD+/u0tSTQHyHqBwVIoPFkmnN4TzJB5HIQ81wov/jnQU
 c3cGptsEk2cqQFrT1/zq71jJNRzYRHf33SIPS5fitfZMo2+nO/XQ9phGMrwmItpIJ7CMd0np65k
 V4MLSIH/5P0jUh7a0bq9Ek2ln+gKQkNq3RTpIJ6Zv/65qwidow6oQBuiH7PGFgMOdlGR6p/+il1
 A8wra//JSw6ZrCBrOT1Q0ajj8ptufw6nVBtoFB11oH03K3Ip3+s138FW68nj7YuKOwJ6l9LbStv
 PwA0EM4z72U7e3W3yschxw36/4wehM/p/GGKZ6S0OQKHDAE2aeoRM1td3H4JxtU7p435JwjDjtU
 DZlBWSpNq4IPOCorzCr65Zjl7+zSijWDU6OqaObAi9fjFlbgYXV5N5x9xnwA8IGAMpkGUHTdkzJ
 0Be410F9QLYdNCrjNIAAT2qYQkZC0+vedAsXtqb3nmu4zHzwvBLwvl4rfFCer8/RqXwasQiGeI7
 LQcpDtXLbfeSHNA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add bindings for the Novatek NT37801 or NT37810 AMOLED DSI panel.
Sources, like downstream DTS, schematics and hardware manuals, use two
model names (NT37801 and NT37810), so choose one and hope it is correct.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
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


