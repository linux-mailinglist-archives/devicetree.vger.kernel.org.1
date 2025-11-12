Return-Path: <devicetree+bounces-237441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A0EC511D0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:30:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3C3F64EE3D6
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D62A2F5339;
	Wed, 12 Nov 2025 08:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UCnqASjD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989CB2F25FB
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936158; cv=none; b=FOUEBUeY0ePI/35KBpk8c8U/GtM8m16TEPylm4xjaw3NthUxYQxYa4Qzs+cUl4/DJNLILKYSo2L/klOPTV9w+ojCMWbBeUXKdNw+zFVF1AC3xY1Uy4LrIA2ftISZ5JlLszcaFUZTJXyFZyTPrutWufr/8/SjnSQvxTDpvc10tK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936158; c=relaxed/simple;
	bh=dEcSRRQtvE4xP0095DiinVR5fFEjss1bE4Kb607L5bU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pLoZtA0dgmeRMF56jWC2k72Z+FjU8hyMOABM3O+O03no3WfekxKdpPt4DeIe9Rny/G70N/hAkSIi+AykR4YLYeU4yO2wc4VDzUZYXkvHhqoRZ4iGfqLPJspT2oIhAX9FgxaLRVrTvs3moZHDcO+ShPwbQ6pz4D6tgi/TxaGq9Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UCnqASjD; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b2e9ac45aso300831f8f.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762936155; x=1763540955; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JtogQFcSHlN8gkfKXvyp9GsEsbrpcQ/U+ViAyh1NORc=;
        b=UCnqASjDhudrSXX61bOwzWzYt8j9RKmc5pwdUoPXDcC2WVoy9wtdNoxI1i6SlV0opu
         t77fcK4yGqR3deYRj/zzTm65oka/BTLPB7JiioJwsDHwIiKV1L0cRpfDIpfST2ybRKEJ
         furXOP8QvjG5VofJomX+4EnWp+3pnxQBuvg4yTRDF0UE4GrymChZ6DlRg8YzLH+4Wn1i
         fFYNES2v9ULyV/jqbknXzDiaoRHQIjeOoqyYPy9yQERm1DOYpW6riYfZZ4NDFD0kveE/
         P+P6xxWP9T0Jm7saVljrwTe8b+Do6MPj8aCoA3RPCD1nO9gCqn92CU8pfpEyyZ2iA5fT
         zccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762936155; x=1763540955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JtogQFcSHlN8gkfKXvyp9GsEsbrpcQ/U+ViAyh1NORc=;
        b=drdA4nzx4ug8osjQtO5qYyLuE9BBlbL+G0YDyfX/2EEQNU5ACWHd1M/d84DpTAAC31
         db87Fe3+0EE9jvy/BoUefRLxaVVIaOlNNAURIBiMxnLJ2EORR3QcmZo4K0naqZNP40f+
         7jnSLGd5luDXWldWWZPlF6mE7cqFnCVotxbwzo/bssvUkwqCYCHpWCEbt/frDRfLqwUI
         y5klCG7hIThcJfAeSZUMPzpmBSm91we/V0AnTlvkIjiGyWi+cb0LENgecDV9TC645KWQ
         YUytxBIi/x4m9p5o6TrIk9PjDc3EAMpd9Q4Q5K3eou9RaaaUdF+7a0zaCcEnjsFQJK4C
         wpRw==
X-Forwarded-Encrypted: i=1; AJvYcCXDKB+Z+Si5ohynV1PNE91qknDrSJSiY13RjSzaJgZj2czQjOXuq7CW9tnJL66P802PZUK45K0HM5Es@vger.kernel.org
X-Gm-Message-State: AOJu0YzszaKVI9WaszoN4prsGp1IbH++rlR5pyG5J7CnN3n75ygteRn7
	9GmzEcq06W+GQ18iDwMyEjcW8M/usUIfKwzU9wiW3i4HSSnHWzEV3by92SoqfVKq90U=
X-Gm-Gg: ASbGnct3tT3LES3y2IOELD1BQEm8Sz3KXVyFibmzUVAqkLC+xRRGBQ8gxiO+rMMpxgu
	mVTmrcTzLaae8EesL+na+lMxjA8gLRIu00uILAmTu8NyKN1Z8Kuz2qtfPwI270Pno7b7x7MrOjd
	nF6YUtpSpkuybdJqySJ5vsEa+460qOVlh2nSTjRX1kiebsFD1XPNRqGPQj33qCr3i/bbO98at3s
	2agJ3NPHiuEj0EzWtwe8/CtqhzYCfnhmi7Vrfw4vitefHmaIXsbkpPAIqbX7b2NBCg83OpdclEU
	uQAukmCRrpMbvnQiYObJxkF8tMBM0AKebcskN9ddK2dhyFAiCZ62Tz4d9X2DnEUjyc+sedo3bas
	4vTb5nSsTN6OC50CxzddMnPjZlFQ3rDC2HzwRUhPsRbzZZr8d4AznCrJkXM6ABXd6lVmepghLxg
	ZNb1mt75FnJzntvaWKpqW55rWT32iEE9BfKkycNmcisMHsBWaOLydI2Khc
X-Google-Smtp-Source: AGHT+IEU4FFylzRDbDiqTl5SDdc681V6U/fIzfBAB7L0TgSU5N2M6VMTglal8026StadrPU/haIBUA==
X-Received: by 2002:a05:6000:2888:b0:429:cc1c:c2e with SMTP id ffacd0b85a97d-42b4bb90b6bmr1430374f8f.1.1762936154894;
        Wed, 12 Nov 2025 00:29:14 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac677ab75sm31571428f8f.35.2025.11.12.00.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:29:14 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 12 Nov 2025 08:29:05 +0000
Subject: [PATCH v2 1/5] dt-bindings: nvmem: add google,gs101-otp
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-gs101-otp-v2-1-bff2eb020c95@linaro.org>
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
In-Reply-To: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762936153; l=1979;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=dEcSRRQtvE4xP0095DiinVR5fFEjss1bE4Kb607L5bU=;
 b=OOX0r/TY8rkVTDOz28jm+bgdNooRzs/EvPWQacDtL9RIRn5yJEOAYEXSxltqVpFD4s7fZonIU
 jteQzbYy5l0BJ5yhYs/b58SW4kymeDF8K5hTUQLkv3HwXTDar9OlFds
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add binding for the OTP controller found on Google GS101.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../bindings/nvmem/google,gs101-otp.yaml           | 56 ++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml b/Documentation/devicetree/bindings/nvmem/google,gs101-otp.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..ea87216761dbab9a7a5cecd87a553a6a2a1783f7
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
+  can be stored. The OTP controller register space if of interest as well
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
2.51.2.1041.gc1ab5b90ca-goog


