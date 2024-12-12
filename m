Return-Path: <devicetree+bounces-130048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C13A9EDC7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DBF12835C5
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B87F33986;
	Thu, 12 Dec 2024 00:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DKxwVjDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F5579FE
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733963161; cv=none; b=MHvrN/nowGvoF45TrfDBBj5rMQactYMSk2AVBDm3fqmu37ZE58GcOaSmGGb+MGW62E8rkd3eZl4i/W28Ge2H5Eh+u6zAicPyd0SorNFDKv/2YHAkwScohlczXC8wX8QnKcQn4xqjdPAiwSU2SSBzlN3ar7cmNOyy/D2zj7bJLdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733963161; c=relaxed/simple;
	bh=VSz6u0OmMTsrtnLmZvPYijuoFZ3V2heCXlt5BgEegSg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u0MyQcxIwwmttHwdNeFnenH6DNCSTHLLLsBb5VuVCFgqOWCANWoSSfk3j+hj9IoLBC46iSJxIfMkBXZGEuHAWm/SFJJ3+2HgjeyPRlJM4r8KffOlC8pITja3uia/H/BGlEx1QjbyArLwCn645QMXN64CeboeCL++/PHZszzlMhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DKxwVjDd; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385deda28b3so7374f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733963155; x=1734567955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2CwB4Qts6MAXahbsrdAc/r1Nx/s61A4u9eeqlNVrd8M=;
        b=DKxwVjDdzUvhwER+3UPG1Ei+L1zbfYVpFemAKr1gpEUZiYqQEICd610WqOQb7kHmrX
         JYH0lSBaILnTdUMZ0XeTRy7ej+Hjv/UeBmAW/7h1mqMhKjymlMhJQe2jtLeWed9chKId
         Uy+NyFnmipSuhgO+dKcsVl8Qhikmt8zD8h6KxEMQD82AOBqRV7tQUqVgmM8tWEyTfPIT
         0oXBBhTfKXv7mGawB63nk0zsCS86YsrWJKx4qznbzZha/GZGdAO1Ie3qpoOh4ObneGNu
         wKSBRLs5KtV5wDj4/TF5HmdPbdJK6sWe21W1BnUiMOi5uhszkWx8S3GOeliVBh9nQh+L
         LVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733963155; x=1734567955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CwB4Qts6MAXahbsrdAc/r1Nx/s61A4u9eeqlNVrd8M=;
        b=iCu5E5rE/ye/Xt6/erGfmO+TWImedUlb8FwnE70MQ3EViruHFe0kQucvh0izX5XuLJ
         6eoNKQSIWKS4SkOV7+NeeX7nmNasmelVEItJ4df4e7CWXVyeVmuHumYGYOIZNsDx3+dV
         0S3FF3adWn4d8/v42qFYxHw6WC1zWVfs6783OkWCzxtaQYcHta8SRYGujd3uEu8ZygMz
         CGivEW1L1HchbRY4SKzCoxNeeY8CL/Wcg+V+LbBdp74bBn4nnuRF4ZkPBd8rQVxGGv9B
         aQk96lsS9lOWFj4PvkiXjVRr+s6RUkZMcnYNtgSCt/nR7P0uFHaT/WKg9tXRZO1RzrD1
         wybQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkj6/HIgw3rS9dLcElhR8Z/K2wljaYN5RHb/97gyS7K2NetO1hxsFM+AxMRu4S9pLZ7t3mg+naQ9fm@vger.kernel.org
X-Gm-Message-State: AOJu0YycU+1MFur2HQ3F8HAXyZxT9h7m+Utl0wuBDpTOdQwvFfRgL12h
	1A2MaS+3B0cTd/FJ/nYWPolcU6obF+VB98WGVO0/ArvqwibMpu9ygjC+ZT7IElY=
X-Gm-Gg: ASbGnctz0aia31IFsRk454sl6EAXgc36JRpCpXNQLn+WxLhP/ZzICPPPSTGzdj0TUwc
	Q/qEGyWNrszcqWSK6cykYOzPVVSmSAGc/0mu5n7vR+hUGVAaSPGVPuBNASuk/0v0LO1qwgOjxhV
	CGWG1Q1sRKaoi9FxeD1WAGX1yFeZ2VotF9ajZxdn+bW+DRgbnqO2yraUImMG72dP2sBoQbgihyB
	UU1KHi41zfUHDdsRKBdRHocNqnZRxe5YP35yOVvCTHIpccBYwm0bdMPEVozGhdoMLiV91vf
X-Google-Smtp-Source: AGHT+IGewZ2z2IqE90vllYh/bn/+uyDjmucW9rlC3njOtz/uGCDCzsIBsNpq2nCLNEzu2+p+2Qc21Q==
X-Received: by 2002:a05:6000:1acf:b0:385:e37a:2a56 with SMTP id ffacd0b85a97d-387877dc7bamr991607f8f.52.1733963155437;
        Wed, 11 Dec 2024 16:25:55 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625553333sm46095e9.6.2024.12.11.16.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:25:55 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND 1/2] dt-bindings: clock: Add Qualcomm SM6115 LPASS clock controller
Date: Thu, 12 Dec 2024 00:25:50 +0000
Message-ID: <20241212002551.2902954-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212002551.2902954-1-alexey.klimov@linaro.org>
References: <20241212002551.2902954-1-alexey.klimov@linaro.org>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[alexey.klimov] slightly changed the commit message
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/clock/qcom,sm6115-lpasscc.yaml   | 46 +++++++++++++++++++
 .../dt-bindings/clock/qcom,sm6115-lpasscc.h   | 15 ++++++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
 create mode 100644 include/dt-bindings/clock/qcom,sm6115-lpasscc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
new file mode 100644
index 000000000000..247b6b0a9f5a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,sm6115-lpasscc.yaml
@@ -0,0 +1,46 @@
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


