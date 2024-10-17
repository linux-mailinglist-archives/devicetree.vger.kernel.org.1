Return-Path: <devicetree+bounces-112229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F5F9A176B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 02:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 875A5280FBE
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 00:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95DB34206D;
	Thu, 17 Oct 2024 00:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O0tyEMPU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8586F1DA5A
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 00:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729126691; cv=none; b=chSiG1XrQ0qOYJxE7WkHihvnEzrGK20ygAbxnB2Jn5B4tVud7fElEs8axtIB4oy0MogLXffJqGuJc20uCzwJiIwBFBgXeEyKXAMfgIm1qG5DWeKwimIhyBNP7Ng9BQgJxBp2b9DFCedUPHUlweAWElghWbUq1Z9DpN2qCK42rwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729126691; c=relaxed/simple;
	bh=CNL+Ig34N68+kHITtnAhpOxpkfoD0PwUku+ZSbvZG6I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aI0D9alPtbll0IsfF2ZXTS6mOCa6srut7jnubasmQThaAUw9kYYjGNESdjqBipDlA6u4/MDnufUSJ2GBORuWP32AOlSsiGHrU21PRKRXYC3TShZBWhHjLAZp9BQ0Fx4Mk7rwUy1F/x3adMYPe6sqd6kwfWKlzb01RajYdKOBErQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O0tyEMPU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4311c285bc9so3776205e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 17:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729126686; x=1729731486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Og+1aRqu8Inhthlmi6UocpEoa0BnsYlXmjVa8fHly7A=;
        b=O0tyEMPUVt3mLH2BpSjJmsgC3VbftKEFA1na5UHhji0I0O8t2TDar7kJGhenK7vdU7
         7QtMh2ziR08fXvoVYdn69oB0VZF8E8YiCRS7AlWiCQNRjWbUep1b+yuZgBKnCiVZIxtH
         bEyEG3Aajm7e430T5xrukWu344ZayNVSffrsVVIH1Tz9rJbMuTSinQ4/RfVoW3NytIuG
         lTZKzqWJrAG2cPf6sjc5NWmw2yCWWwGG1d4VJMa7LUyXvTsWdRI9/CxtcxqMq0qwrncU
         uJxLlLEdJk+BCQoGx3sZEJlpkCMLWieFZWozp+a70Q7+Yi8LLzrvw2ukJwy6DR2IVISk
         FKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729126686; x=1729731486;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Og+1aRqu8Inhthlmi6UocpEoa0BnsYlXmjVa8fHly7A=;
        b=AakWgWHH41yTrJR9vxMzlQFpf+XRrsyraxGRsT2PdRSZpQw+89uoNmS6WAD/IHdYOF
         P8zRB4Rrvn3FceRwEHlT/3KOSNpk2qQRd7AqvVMvL34HBO2mjZAwJl007g/sGNRLOoW1
         rNTgA1LtlKUDoYbNKWHOSoFFa3t10nk4jeIkUfWUG6uamOMX8QG+rMOxcVcGw7qG8FdO
         rrlOLHo7kjmbHFFrLn3sDoE5jr1Y92nNtKQh5F2eMis6FAFPhK/KZLX3QrInTGAezlDG
         W/Wxip5M1oQKn/aUlVgiMvXfwCER5ZNCxcMPghk2RlmVVWVsgI6KFXeheU5BpcekBdOE
         q9vg==
X-Forwarded-Encrypted: i=1; AJvYcCWJZCChDg/c+f1m5TI/WyiMgvk47TN2Od5iSRZA4vxy6ZxGhERzXnbcM/1/RtMTrglScDzCcdwnlRFF@vger.kernel.org
X-Gm-Message-State: AOJu0YwSUJbcHqq4PvS2Mmagru5mU2Dc9fL9TogRf86Gf4tcakAlUM+1
	6PhrQsRvvvJcjnjfz4iABsg11tHTYW26tNggbNX+yfjS/27FQTWPRoTTcLU8zxc=
X-Google-Smtp-Source: AGHT+IEr/ZnAkhAbk9S5+rbnfpSpRxrzL7ZprPo9nms4Jz3Tz2ueRbft0PW7G2V5hKrnIXz3jc2DlA==
X-Received: by 2002:a05:600c:1d0b:b0:42c:ba83:3f01 with SMTP id 5b1f17b1804b1-4311ded4265mr173332155e9.8.1729126685224;
        Wed, 16 Oct 2024 17:58:05 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa9053csm5657259f8f.59.2024.10.16.17.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 17:58:04 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: clock: Add Qualcomm SM6115 LPASS clock controller
Date: Thu, 17 Oct 2024 01:57:59 +0100
Message-ID: <20241017005800.1175419-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017005800.1175419-1-alexey.klimov@linaro.org>
References: <20241017005800.1175419-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Konrad Dybcio <konrad.dybcio@linaro.org>

SM6115 (and its derivatives or similar SoCs) has an LPASS clock
controller block which provides audio-related resets.

Add bindings for it.

Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[alexey.klimov] slightly changed the commit message
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/clock/qcom,sm6115-lpasscc.yaml   | 53 +++++++++++++++++++
 .../dt-bindings/clock/qcom,sm6115-lpasscc.h   | 15 ++++++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
 create mode 100644 include/dt-bindings/clock/qcom,sm6115-lpasscc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
new file mode 100644
index 000000000000..58ee84aed073
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,sm6115-lpasscc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm LPASS Core & Audio Clock Controller on SM6115
+
+maintainers:
+  - Konrad Dybcio <konrad.dybcio@linaro.org>
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  Qualcomm LPASS core and audio clock controllers provide audio-related resets
+  on SM6115 and its derivatives.
+
+  See also::
+    include/dt-bindings/clock/qcom,sm6115-lpasscc.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,sm6115-lpassaudiocc
+      - qcom,sm6115-lpasscc
+
+  reg:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    lpass_audiocc: clock-controller@a6a9000 {
+        compatible = "qcom,sm6115-lpassaudiocc";
+        reg = <0x0a6a9000 0x1000>;
+        #reset-cells = <1>;
+    };
+
+  - |
+    lpasscc: clock-controller@a7ec000 {
+        compatible = "qcom,sm6115-lpasscc";
+        reg = <0x0a7ec000 0x1000>;
+        #reset-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/clock/qcom,sm6115-lpasscc.h b/include/dt-bindings/clock/qcom,sm6115-lpasscc.h
new file mode 100644
index 000000000000..799274517c9a
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm6115-lpasscc.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, Linaro Ltd.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_LPASSCC_SM6115_H
+#define _DT_BINDINGS_CLK_QCOM_LPASSCC_SM6115_H
+
+/* LPASS CC */
+#define LPASS_SWR_TX_CONFIG_CGCR		0
+
+/* LPASS_AUDIO CC */
+#define LPASS_AUDIO_SWR_RX_CGCR			0
+
+#endif
-- 
2.45.2


