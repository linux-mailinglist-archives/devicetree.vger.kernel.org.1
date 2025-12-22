Return-Path: <devicetree+bounces-248915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C529CD6A97
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 523953014DC2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCDC3321CE;
	Mon, 22 Dec 2025 16:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AaDFUFk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF98A230BF6
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421038; cv=none; b=PQ9m5V3U/gvW6ByyC4q3CrLVTkAXpVQnZ3N0VOldidewlF1C8r1wAtlD5xmGwyydRTXdzdU144X7NI8xwQI1lz0+4aB8DIveERwFgYIN+pVD3meWwhlg5rY5YNEPfUN96qikU4LJ7C2SlXC9m5DJjau7I51PYqw48HlpUQso/ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421038; c=relaxed/simple;
	bh=McUiHXa4sDY4TxK9myaei/Das6DSOvZ5DH9n9HIK5z0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QIw73R0gr3BdB5VAZJl/S6dXMAiopUDLRfDYi5cawaPCxoi9HgJMzIw9ESVxi2qVZmaFlDwn7bwbVtx3ebIPsxADaqe/ZuQ1R8lbeJo0CVeFZRIMQr+X7tX3tFQjuCqcGv5dsSUZrwCvbDbdvsKwReu+7iZmw1urWQ85MBF6SV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AaDFUFk+; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2d5e119fso1813792f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766421034; x=1767025834; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wlhs/F8IClVmoUeoQn46BTOR0VEDNo6dJrg+YAjVNP4=;
        b=AaDFUFk+4C5ybqHKozZbBrHhoOp0kQbfR2Bm/9jMt4HrWErk6JLrX7yERzjLK1F/Ig
         7sY0/ZH2GIavDjViP2ewAhrv7V0jbyB+TWnwhkXvT3s/QhB7cPNrhiZHwOMVaxIshRXm
         6FlfwnZb/5ExHVart+ynHbmDrGxgZFQMQPfUvh3q2eVJ3XbvJvR4vNslT+PvDBQGHcl4
         o9qSO3RRnMY5rHRhCBFrAxh0JHLJBXZuEAOzcNaUSVb9pCrnvPD/zBHRwZJGvCsREFfA
         0MiC5Gif1gw71Ogl30razyKrRzmzwch1qwrOA0AiRiKQW91Y1gbr5NANaz/RfX/+/hcm
         JO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766421034; x=1767025834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wlhs/F8IClVmoUeoQn46BTOR0VEDNo6dJrg+YAjVNP4=;
        b=j+baHH6RVir6jV5WCEe8LlO3D+RaEdFBl2bn9LybmUp3miynZ0w5l/478SuwqQriVB
         FGOZImnWOY1lB4ju4Ka5xpUMETuCkHur8qCNl8zEwtsOVmylFwLpYV24YL0NnXkSSSD/
         6uU6VsoWJQOfGe+7dPBaKqM+rDERAck3I8hNoEmShfswmkoj6pi/DkpOYz0tkrYvQTTK
         aCi5vhoFrMMEt7bj409ChdkRMWa8tCFoobiAXVU5r6ySVkrO9yys0Q6UpIS8qFWgmUvR
         +fRQUQoPQeC/brBfM3ujLGh+MCU1oaQfWlvFIxMvhwl6eJqS+W8QITemJr+6W54gSkAe
         9qug==
X-Forwarded-Encrypted: i=1; AJvYcCVoMJ7ra/YtgQg5ZyQCUOiRfdSD+8H6t9keZzchHj5Rf6YcCTD1jI4TnUbcqpBETMu7N/XRWTb7EdRt@vger.kernel.org
X-Gm-Message-State: AOJu0YyFEqWjfePw5Pk3/HgDlFlbmYgFmgAMYRD6rG9PwPiDYVyM46DK
	x9PcEoa30IemMWNde0U0xD7WZYEJIivl1w3uiqnwujjpBo22wAAFEAD0MNIrMdjFXyg=
X-Gm-Gg: AY/fxX5fAHJWqIJwnawa/mjIH0NLjuy41Qc37cpC9naoI74PAE114bPci5/cXSwhfJc
	DOTjzvrQ+45eSaYR/dEhBY315O8HjxfpB3dcX+Uh9lYZL4R+y5q75FVMbzYe/bQVT2jnHTTW1k7
	I8MjS72UPvvo0TyeEneTDHo+425J+sWoCJChTAWk9wVPqCIneNPnmtbuUQOtUhqRvEDPaxWIUxz
	HPBAUQ6+K/slKRueIj4TXtkKaa6w0NL9pQcYWjcj51YNHuiR24wxFKdZrVku7xUu7hZCpO7dnIg
	/vvsY/nfMhC92avvhuZI7watuqqeV5AmQu8utkHIBAzFV0USQGdWRS2Nqudzun5AlefdJr0jvs6
	bNm8Vg8696Zjqd1elI5fvclzpGdWdUjCeOsbtrXpZkygX9sacnkm+Frb+/wj2p1Cey2h5EZXuMw
	sEaRd56JTZK437q1SCmnqimd+/I5MdXgh+geoQrG2cr/KfAsDn9h6CLRwoOVfSAAHp/BRzUPiCQ
	A0=
X-Google-Smtp-Source: AGHT+IFsMafyDmIztGS5eFQmA3T+ssMBvK+Usv9rZU++fuZY5gKcMu9PEAPmRCs7wEEjvON8LVqWEQ==
X-Received: by 2002:a05:6000:220c:b0:431:752:671e with SMTP id ffacd0b85a97d-4324e4c906cmr14343129f8f.15.1766421034026;
        Mon, 22 Dec 2025 08:30:34 -0800 (PST)
Received: from ta2.c.googlers.com (62.221.76.34.bc.googleusercontent.com. [34.76.221.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa4749sm23071258f8f.37.2025.12.22.08.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:30:33 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Mon, 22 Dec 2025 16:30:05 +0000
Subject: [PATCH v4 1/5] dt-bindings: nvmem: add google,gs101-otp
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251222-gs101-chipid-v4-1-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
In-Reply-To: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766421032; l=2189;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=McUiHXa4sDY4TxK9myaei/Das6DSOvZ5DH9n9HIK5z0=;
 b=CAQSD5FGU+EphuBCmrULdCUhE7IlVwlUPWIGhc6icc4yiw5qm4ZAkkXHyrcgxE3+TDcTEJzxJ
 juUMNR5p/1kACyIXO1B0V4+ZF5hS6VMH48BNxDvFr7kMnXW3AMP9FVK
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add binding for the OTP controller found on Google GS101.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/nvmem/google,gs101-otp.yaml           | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..99e322c72f9ee1766f3393e604991364c41456fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/google,gs101-otp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google GS101 OTP Controller
+
+maintainers:
+  - Tudor Ambarus <tudor.ambarus@linaro.org>
+
+description: |
+  OTP controller drives a NVMEM memory where system or user specific data
+  can be stored. The OTP controller register space is of interest as well
+  because it contains dedicated registers where it stores the Product ID
+  and the Chip ID (apart other things like TMU or ASV info).
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: google,gs101-otp
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pclk
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/google,gs101.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    efuse@10000000 {
+        compatible = "google,gs101-otp";
+        reg = <0x10000000 0xf084>;
+        clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+        clock-names = "pclk";
+        interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH>;
+    };

-- 
2.52.0.322.g1dd061c0dc-goog


