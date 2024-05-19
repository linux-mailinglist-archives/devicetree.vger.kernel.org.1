Return-Path: <devicetree+bounces-67716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C6D8C95E1
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 20:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DBC91C20B19
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 18:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC786F09C;
	Sun, 19 May 2024 18:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H3jvTEd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D406E61E
	for <devicetree@vger.kernel.org>; Sun, 19 May 2024 18:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716144162; cv=none; b=DMLGcKP1kbsK49aIM4gmJ2i0u6WJADlA54oGhkhg+OjMEYp4NUwuwqk+Nk0BqFP7s3kxDpOOmCfgCY9YdIXceOwOy+/x9hRYaOCQP4FN2IkqJATXWq5YxYpThFp17piSCTWtUM4ZSpVMc3F4PkjgwAMBGNZlm7j+Gi3cwJGXQE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716144162; c=relaxed/simple;
	bh=KLwl8QR9y7PCdA8grXbhLfcs6VAielprx2Avjw32E0U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Of7JcALU0OL3SYrv5A+xhy0S4WrJa91Z2n8mFyZapUYPTbVJ/TD3WZlm1Prc9NkQg3dMDYUldqg2bjEVZjd9M4/SwNCEfYGUBMsz9uafKcUhSBZxZUm/Acr7Kxk3anrCBdtCoauUv5Q8y7ruy0bQzhzCdFhGXwdNAIGythJASTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H3jvTEd9; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-523b20e2615so4289393e87.1
        for <devicetree@vger.kernel.org>; Sun, 19 May 2024 11:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716144158; x=1716748958; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RG1aV24RN7E3p6c9ASDyYan6B2OB6NWdWdHsWR4ahx4=;
        b=H3jvTEd9k0Uca3R6O3JuDhc4CNcv95tZ2/Zrc73LeBsoM8DDrZs01IhvohenY6njhM
         koA3hD9PX1sbVQMWeLUoNrpG9hw75M0W/9t5xyjQZ+spagvpueYVj5+LHrR76BdE3Dty
         UXbUEBb3rkoY6mEuR8jT7jiNWxECGFpHAR9fUnhWyB3NOqhtA87w1Lg7KPc5befjuNwu
         vVHj15xM3MkoM34I+mFyJsw0EJQwgZHfakbpD6ku01/8wrG85A8r8D0tw0xnOsy0Z/SB
         QCUmN6sCE9+2ApI8gT5LMIEZMA9/fevRIRt5BscHdDOdIeK+nM3Zzu53EXzyb+CghwAE
         OTBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716144158; x=1716748958;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RG1aV24RN7E3p6c9ASDyYan6B2OB6NWdWdHsWR4ahx4=;
        b=Qd5xIHZhQMca9bJhtUKh2oRvlUeh5GpofBzEEotHb68Lj+dA1nQMYSKKYZfx+CxFwy
         zzJVN7eu/ON8HlCZoekUxOlOW8LdGMFRiEwhDZXfalIqjCdvMC0gYjDUoj9SS1KNtMw4
         sfO1BSf78h8FeakJn3nzOU/9HZxMAi9QzBDwGuEFq4ydtIjg1mWX7Ai2IM0RKvektAc5
         W7TgsT97ZzLBu5CRGUoGwAVqbdg1Jsd9QglNLbatIqFDUbDcsTFEIdV5EYJPOPzwoZn0
         /3VDKIStCjWN/lqlzL2zmk//QmmOoN/S14gZEGDbFOGZecmee22xDaL9BFP/l67lNw4r
         J7fg==
X-Forwarded-Encrypted: i=1; AJvYcCXmg/ZyUy2jDE1VKIz2sUqrSWQy38nyyqD2PGYFPvP+7KJl/GFToJkBuGiSP8+SmtSCQ3XfCOTsrbEU0npd3SygyIMj+fNI8g27UA==
X-Gm-Message-State: AOJu0Yz8JBpjEdJumbO71l6nU5spOf8JBwSDU5IRjfD9l5/XzrcYiNP0
	5u9yNdVosYx7MVRxuZSROyjFnlnAlLzVUStHIigy76gGMUq+7okD7bLvepw8Vt8=
X-Google-Smtp-Source: AGHT+IGeP5PBCKh7R7auyfHm+GXOjm+D8EqF1EdnvZtmcr8kFLBQpsFXYhpZsC566l7dfYdexNT+Ww==
X-Received: by 2002:a05:6512:3447:b0:51d:82a2:8d72 with SMTP id 2adb3069b0e04-5220fc6d7fcmr15155418e87.40.1716144158271;
        Sun, 19 May 2024 11:42:38 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-575313d97desm1789397a12.41.2024.05.19.11.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 May 2024 11:42:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 19 May 2024 20:42:17 +0200
Subject: [PATCH 2/8] dt-bindings: soc: sprd: sc9863a-glbregs: Document
 SC9863A syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240519-dt-bindings-mfd-syscon-split-v1-2-aaf996e2313a@linaro.org>
References: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
In-Reply-To: <20240519-dt-bindings-mfd-syscon-split-v1-0-aaf996e2313a@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1847;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=KLwl8QR9y7PCdA8grXbhLfcs6VAielprx2Avjw32E0U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSkgRADA1CSPsrZfoM/PxSQDkifcbA+LbMFTzB
 lBlt3VKxieJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkpIEQAKCRDBN2bmhouD
 1xIID/4yXJXNCUgau/f+VFKvHW5KJWWiPMu4jqoVeRHkyYejYdulr/dHo+3XZU3LIw5HIssC7VK
 F3I+eB/7GAZqSlc/5srwYTYqezXZnWFaQqlLdoAqJBV0ciHJ1jviOpUbehozInPy9UCBWHgRYL1
 VThz8W0xRwqMJ69aM2DrWawttaPwDgrGpWKhRB5f/wTv5L94oHiJM3SA+K8WJ0HHKOr3/x4s655
 d2l0j9qYzD7zTaXkpuJKp95QCy1ivqruNAPY75hMiQIC+YrmlBJtzeU1iazhyv3XQeyPrWjpWcH
 bBSLvkZhJfN3RwyxkP0+cHzZlNRTqg8K+Q8uPETF+fHopYK/h6smjrtmP2rDBSsZB2c44sZn5pS
 F9CkANvNYYQZC6Y741OfQg8ztXKDm7x0rLeF7UEWLXcr5Gctp+qY5aXARPmrTwbJanBeoQxcspw
 QDl0Z1ajFgz9yhr8FJxLMnvmM+kx5K9n+aAtcyuInz219Z8iiDTFi4R/2Lrj+A5jRJ98Pf8kaK3
 5kxL/2qA+ac9qBs5oM5dG85E2cQir6ZArE5rBtEtXGJij7289DoJOsPYAcrmKm1PU5BhVupIAij
 NFXaRvjvBQSxI7XayKQk9jJs/LDV8b2XXWu/0wZZhxUPDutRsVwdbucmUlEz8stJK8O2wLZvGwn
 GmJYcvQFskDl4qQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Document sprd,sc9863a-glbregs compatible already used in DTS and other
bindings example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/sprd/sprd,sc9863a-glbregs.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
new file mode 100644
index 000000000000..49add564e5e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sprd/sprd,sc9863a-glbregs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SC9863A Syscon
+
+maintainers:
+  - Orson Zhai <orsonzhai@gmail.com>
+  - Baolin Wang <baolin.wang7@gmail.com>
+  - Chunyan Zhang <zhang.lyra@gmail.com>
+
+properties:
+  compatible:
+    items:
+      - const: sprd,sc9863a-glbregs
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "@[0-9a-f]+$":
+    $ref: /schemas/clock/sprd,sc9863a-clk.yaml
+    description: Clock controllers
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@20e00000 {
+      compatible = "sprd,sc9863a-glbregs", "syscon", "simple-mfd";
+      reg = <0x20e00000 0x4000>;
+      ranges = <0 0x20e00000 0x4000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      apahb_gate: apahb-gate@0 {
+        compatible = "sprd,sc9863a-apahb-gate";
+        reg = <0x0 0x1020>;
+        #clock-cells = <1>;
+      };
+    };
+
+...

-- 
2.43.0


