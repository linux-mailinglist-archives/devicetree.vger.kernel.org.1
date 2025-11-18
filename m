Return-Path: <devicetree+bounces-239823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D73EC69C4B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 88A163805EB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A15361DAB;
	Tue, 18 Nov 2025 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VKrjRJrt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216835F8BE
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763474183; cv=none; b=fHDGaUIkG1kLFj5136R9gWQCqYfBP7rUSp3NMMjcPvwiLSh6BDZqZyeFkaFNXuxfOAQBxnvHTli+I+fOyiMgATGmuTld93FxbzVy92AGlU4XCORKKhyZVXALtWujyxbjXIL64CVFr6FShJm2uFp7u6Hb5+BT2kpKZFI6mp9Qw10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763474183; c=relaxed/simple;
	bh=hE9pu4zL09R2VnRw1hPAh8QPybkRzkJsjvziTMQK6lI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lsEgLFjlyL5Q6jD9dZ0A0ZWBaAKobIsEmNkKMofc6Pp1mzabk8k76jesbsDFQtemvZKHPz9QzZc20QdLVxnTGvayaC+JzHNanvW7+rpuZt1bJZ95Sh9TMrfji9Ug+DwYGM42xtWAeuXMLup+Clw1U4Z3yh8NDUYbTQtbSCGhHIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VKrjRJrt; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b32900c8bso3162790f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763474179; x=1764078979; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mT9D4mxJaHrktugW+TtOKGoZWS1UVqUBb8i2CtMbCwk=;
        b=VKrjRJrt4E9ve7xMjcOl8HIgloLsJ0YzmKJcLmkQV6YYWaZWxGS/TiQ17OdTcc+l3j
         K65ygQ+BME2B1U8WvzXaDLoJka1ly+l0Kjhk0XwAc6FBdJ3r8Desy7y0NDFgIqcDDXkD
         LzgPknmB/Kvn/8tO1W//gLbXC7qTZhnSMERlx8OfRAhrDPIyvrcrffSd+kKMn2DVP979
         MEqylFkib95L1JsEKkInG/Ixe+gFST+a8W3M1e+Dkd6vVW9tHEDfMBI7T+cgpROA9MCE
         DXhCltDo20bZBE+uJPkhffpyvNBiivvqkmpNUC/jLDHbOJelIZU1VF01RAgmsWEfEGcO
         5n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763474179; x=1764078979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mT9D4mxJaHrktugW+TtOKGoZWS1UVqUBb8i2CtMbCwk=;
        b=JyQi6CJ86EiBOBKfF/BogXTRx364MafCzNNEFd5GbVRJimRHPNnU8kwLcj0XeRp1sh
         qq7w3pV2UiodFQZ4RPiwxxVv1HMQlLnZiHwJxgnsC13xYGDIPM04y7UDIrjccl7H/nYU
         Xm9cfGUqJClGMZxyNB1CawQmxIaKaktJ/OEuF0PZpe4Y4FpcEwkbehV+32hF0zihDdBt
         I5QeYcD+FJX7Vz6toJuoCvYfQrjQkqT5CaOmvlq1tBJImDGnZnDYpBeKL+sxzZxkerRB
         1oeg7yeJNP/eqO5fQvGdaEgW5lyMOzSuCrQYM6JvvwIJX1zMhFLC0/9Shx1t8gab/oZi
         s0/g==
X-Forwarded-Encrypted: i=1; AJvYcCV5DY3CrxL93Ikrs8GUl1vurYWLNnRTaabBA3iUv+clIVuP0/hsTFhf16guteS5HF5ELuQvMsTok/iy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9SJXFS8PLwIgU24HXn0Dbyd0Q7R6HseBq8yuimho1YM3CrS89
	ePuxDFkaHEzu0lcGUcM5TEr3wwZrHAZqlnw7OdoDwcIDjfxpNYCS3mlSdlPMFzLpABw=
X-Gm-Gg: ASbGncs1GeOufZtQFMd5l1l3pLLcBjcZ/wf2cz9wnUILXG6DKb/3VVi9f4LTWUKI55q
	HjNiIrEwAx9xUj3Mp4ZdXtVGogLFDwscxroMf6j7eqUcoLr+yNITHnLf/A5KVIAY7lc7vRKnrs5
	IRZ8IlNiJwtM+CD5hPWvSdRMfxQLg/JCZf4TOKBTdLphYDi+kveCxa53t43hOgCXw9/b8dEEUhT
	hZ/+EDoiy69AH1N1tg9EN4NzviRZz3QrMojnW7dURX6+HUN8Z18vp+NdoMV8UZbZ4SzWe5rEk/A
	R9ktV/yDVrbWV0nTrPt5ZA5bpUe8HjNw9geRqqU5INK28YlYpP5p5RIkcfe7JEkdnslf7e+yS+e
	9I4QUxUuKkyPfCwvDQYNWZQ4knkWxwSH6aXHOIZS6q0+vh1UefBPs8mRvnfNpX81xBXWgPeL/wX
	Lvfls9SmbeEmIi/XswpF+lYuPzAi3N3ifbRezYhzaeNYUl5vWZ/fySclbko8zIGeSAvTVaLPi3j
	W7/pA==
X-Google-Smtp-Source: AGHT+IFSeYnPbCw3tis4yQRZI08iOt4XrwHVQj4yd7amd2aPdf7DLT9bDe6bDLKPiGXs0lIp0USpvw==
X-Received: by 2002:a05:6000:430e:b0:429:c4bb:fbd6 with SMTP id ffacd0b85a97d-42b5936c4a2mr14623335f8f.31.1763474178959;
        Tue, 18 Nov 2025 05:56:18 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae16sm32728666f8f.3.2025.11.18.05.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 05:56:18 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 18 Nov 2025 13:56:08 +0000
Subject: [PATCH v2 1/7] dt-bindings: nvmem: add google,gs101-otp
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-gs101-chipid-v2-1-e9f1e7460e35@linaro.org>
References: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
In-Reply-To: <20251118-gs101-chipid-v2-0-e9f1e7460e35@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763474177; l=2105;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=hE9pu4zL09R2VnRw1hPAh8QPybkRzkJsjvziTMQK6lI=;
 b=rOjp9fByKIiYv2zyDGDmfAh5uHoPJlkPj+pJH/Wo7/4XVrDXytSpx2NxMD3/6YvsMTnrew6jU
 MLbn/+h0vuFCoeJHn589V0xkn5CgCijQecUkHEOp3AFcz3Urq6cHgrN
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add binding for the OTP controller found on Google GS101.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/nvmem/google,gs101-otp.yaml           | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8ed65e906a2a1b0c216a09c9444f87af61090b81
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
@@ -0,0 +1,56 @@
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
+        interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH>;
+    };

-- 
2.52.0.rc1.455.g30608eb744-goog


