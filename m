Return-Path: <devicetree+bounces-189396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35108AE7BF5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EB4917FD99
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3392C1594;
	Wed, 25 Jun 2025 09:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="KytQEz6J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D7329ACE4
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842769; cv=none; b=Pr5b3KvMEW2XTyQ+VAgvhrl9Vpn7vCd6C9Sle3zB9MS6icfU6dCjmIC87Sc2aRYCBVr+Cv5yojyjr8tjBASyQB4F/EIlfIc8rJ3UgaCG92GunZYzYx1QTrxPMcsSDaNLkn+UxF5VJm6mIf9BNGFjTAUN5pzlCDYeIh1elHSfnKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842769; c=relaxed/simple;
	bh=Y9F/e6dicZGN3H4g41Qmi3nJ59/DcdHmY62nX1l3Gag=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PEwdLDPWxQ/Zn0Ga7gZHxf+jtQuPXAL6kUft7o832v78qwJGqCGAnbq/lc+O/a+DKwmqzpnLuAwnirw6SzQ1InPKXQ3IKasrIgD/96JMQZMX+GY1j3zOviMcOCwT/solka4L308yiaPtz+lhpDwWFCAqJ7KNJssQnFO8NmsmC1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=KytQEz6J; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-adb2e9fd208so237115566b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842758; x=1751447558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEUC1GsQ9aW/PL1OvYcG63di2Amn9awZJQPmv6C0j0U=;
        b=KytQEz6J5f6O6ENZ4fkF12zmHzQ/fCzJftM1bu+wvCe7ylPWqfoQMCeJtoxYw0RRM7
         flSyc9q1Vq2EFYAu0wDeio4Ckv0FiErFCt6P3yBEYAPaaId1gopgSFlkGXidINTjc7Cp
         qkv1Lt+eaLZfeZVQpsWP8jQJoMAs3KNqDEGwbX97VvKYmfS/UnbUurDg415WVgHqoqKx
         elbQzGjZwngCZHsrr/q3yik1ukohJz6O27WENtU1j++s3YPE285ijCFDe1bpkVUjcjaB
         y9y/07loBBcwf5j9co2WcQAsy3xjtnlDjVhShPf5dx+ti8aY29jWGNLeaYC0a41iOQg9
         1BBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842758; x=1751447558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEUC1GsQ9aW/PL1OvYcG63di2Amn9awZJQPmv6C0j0U=;
        b=v0UGsF4RuSGSzHdt+EJgvN1Tcc41uka7JOpmfszR0ABkwZAQClB+QKePr/X/Q5Iieo
         mNxhV87Nle1kImRWh2lDTfvm9JubbmxtH9/47ez/Ra5mfvvXMR7D2FS5FuAIkARYOdUV
         c/Ut2fwy+Z0MWR/Cr4fGvqxUiRrXMJoJCUFdRGOipxcVHVrQksSJvF/t6KnOCABsaHKi
         URnLQmEldXwRvV6Et2L3Gynmq8EcgzRZoQ6YFFOpHWpBV85lWCV3EkKKrsic8zaYlLXr
         nn+1ro99Oan7PoeI3RwtY0M2X5q40qQyiTu+lHywudz4yqKbTD+OX+lBJFY7Wb2XbQyh
         VrmA==
X-Forwarded-Encrypted: i=1; AJvYcCWdeRTfb0O6Qzh8PXLB4/aA1Vf0YZVr6MoosH2hBfSez2cgO6Kk8IPRL29xSXqxPBNgWF5qEQ2A5U+/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1vOj1cRyD6lhR8heF/m/RUtaSEbDWe7Fp/DHKIo4EEoj8xP0V
	5jeZhk/A3Kt18GTWjTpwzHchVyKkuNuv4A0YmPplpnUG9/2+P6FbM0B88k1GyLkZX14=
X-Gm-Gg: ASbGncsQpVg6ekCDnebKtKVfCHgQ7mTOngWlzTsJgF623kclDvtkYFUdvGNlp13UWDy
	+Gu5T/FHERWgQzENWlJd5a+oBOThyfGSTTWjcPiv2u08daHw8HcgKtUsgki/wi8IeYmoOAoiiZc
	hnP7hKV4RNvLHafC9QrJffbWogzbf2APueHQ8wW4KHPFlClRwGs/JAdftaAWbh66jF9warD9bv8
	RNPYtU+Vrk7/PT/Cl4hxpX0NabKBbkEASCibXdkSkSvIJMLTXb/1rTiiloxShyykADKXcZ6qszi
	EU/PMOt7CYlcsK5ylIxCZ1LrDy8KwoytAkGh9CWbY5FThBRiGZPZ6rF2z9VEHs9eRBZ92HcsJDz
	uJFFQA/rPWUPBXG36dtOjak4CyhQTu+rB
X-Google-Smtp-Source: AGHT+IHWx2Byt1D7Ev143Q/5KsBqXnkbdTskG5+royIm6iVQCN0VuWJNzssimeKkNapJed1YIyKgag==
X-Received: by 2002:a17:907:9688:b0:ad5:34cf:d23f with SMTP id a640c23a62f3a-ae0bf019daemr222194066b.21.1750842757797;
        Wed, 25 Jun 2025 02:12:37 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b887ab4csm154937366b.129.2025.06.25.02.12.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:12:37 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:12:27 +0200
Subject: [PATCH 09/10] dt-bindings: clock: qcom: document the SM7635 Video
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-clocks-v1-9-ca3120e3a80e@fairphone.com>
References: <20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com>
In-Reply-To: <20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842748; l=3535;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Y9F/e6dicZGN3H4g41Qmi3nJ59/DcdHmY62nX1l3Gag=;
 b=AMHHXFNnJ6Ll+3mffP0MiXjndN5s6haTHL7MeIv69HRFSzP/4lEvoQUN4OZvjidrFyajoGU90
 l/QBKmOSX+cA7K9MvCsHndDtFPDUWu3Ol4jSXQ1NbtaxhwH83+Lwp8P
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add bindings documentation for the SM7635 Video Clock Controller.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/clock/qcom,sm7635-videocc.yaml        | 53 ++++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm7635-videocc.h    | 36 +++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm7635-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm7635-videocc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e893c37ddd0ee4fcc9cdf9faeaca75eb6a29c0b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm7635-videocc.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,sm7635-videocc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Video Clock & Reset Controller on SM7635
+
+maintainers:
+  - Luca Weiss <luca.weiss@fairphone.com>
+
+description: |
+  Qualcomm video clock control module provides the clocks, resets and power
+  domains on SM7635.
+
+  See also: include/dt-bindings/clock/qcom,sm7635-videocc.h
+
+properties:
+  compatible:
+    const: qcom,sm7635-videocc
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Board active XO source
+      - description: Sleep clock source
+      - description: Video AHB clock from GCC
+
+required:
+  - compatible
+  - clocks
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm7635-gcc.h>
+    clock-controller@aaf0000 {
+        compatible = "qcom,sm7635-videocc";
+        reg = <0x0aaf0000 0x10000>;
+        clocks = <&bi_tcxo_div2>,
+                 <&bi_tcxo_ao_div2>,
+                 <&sleep_clk>,
+                 <&gcc GCC_VIDEO_AHB_CLK>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        #power-domain-cells = <1>;
+    };
+
+...
diff --git a/include/dt-bindings/clock/qcom,sm7635-videocc.h b/include/dt-bindings/clock/qcom,sm7635-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..5461250792c30e216dc812db722562fba7e40dd2
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm7635-videocc.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM7635_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM7635_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_PLL0						0
+#define VIDEO_CC_AHB_CLK					1
+#define VIDEO_CC_AHB_CLK_SRC					2
+#define VIDEO_CC_MVS0_CLK					3
+#define VIDEO_CC_MVS0_CLK_SRC					4
+#define VIDEO_CC_MVS0_DIV_CLK_SRC				5
+#define VIDEO_CC_MVS0_SHIFT_CLK					6
+#define VIDEO_CC_MVS0C_CLK					7
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC				8
+#define VIDEO_CC_MVS0C_SHIFT_CLK				9
+#define VIDEO_CC_SLEEP_CLK					10
+#define VIDEO_CC_SLEEP_CLK_SRC					11
+#define VIDEO_CC_XO_CLK						12
+#define VIDEO_CC_XO_CLK_SRC					13
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_INTERFACE_BCR					0
+#define VIDEO_CC_MVS0_BCR					1
+#define VIDEO_CC_MVS0C_CLK_ARES					2
+#define VIDEO_CC_MVS0C_BCR					3
+
+/* VIDEO_CC power domains */
+#define VIDEO_CC_MVS0_GDSC					0
+#define VIDEO_CC_MVS0C_GDSC					1
+
+#endif

-- 
2.50.0


