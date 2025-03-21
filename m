Return-Path: <devicetree+bounces-159711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA09A6BD83
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCBB13AEF0E
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C5941DE2DC;
	Fri, 21 Mar 2025 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rqXRScU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC251D54D1
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742568354; cv=none; b=th8hCEszbnpB+aPKw5k2LtFK+Q0PUXsTv0MTIJGeayUQ2E5oQdvUBMy4S9NO90igvUueIt2uQiS0CdySbL8/777mKUY/IwvZGplHbLXKD3vMwfN55TuafBKVAFX6hkR7BTgXNDVNru9wgWZ3oWM4BkuxUsGNPhFMpOKOD5PkxZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742568354; c=relaxed/simple;
	bh=GLAsUw1OONraXoc4O2AxkqLiMT4MdPKRGHr5nbrSBI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pmAZLc5EjixYhLngGvUiCMmIpRMpWLJvTH4Z3Ts/PyfDMlPu7ilDg4TnQItNavuxTezwZvkT3Excw2+st9P8+BfhSqC9OYneg775wznTenR4Ytj7AkIhkD5g0OhTe5e0jFWKLHWX2Pom9cZFm9XbVR6e9n86AJO5MzLiBvTlWAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rqXRScU2; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac298c8fa50so378171666b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742568349; x=1743173149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PHERlL971lhRhRNPhw773ZN7phaB0MazKYjf9mnRkOo=;
        b=rqXRScU2DtXHdaciscHnD6KSOKHbxpgIVAGJgAVdUyoF627tNp+VP0sjIqJ9I74l1a
         fYdxqhF2wgbIxtXKgDtPcqZ78D5opVnyAE7wy2d3s3KfWYlvprimXVmrOadae74kxiiq
         9ojxWKaJD4PoBvNHZsjXE5O8yZZNPjcAkkJLPrXsJbNTDd5gvl+itlUxDeizIlTRWvA/
         H3qSvveniv5qWc3UNGiJMCdKNCnod2mVjiI9oTZ2fVE/TdI4iRK9UGg0U1IpbL1F4J96
         cf4qPO/XL31S+QQ8m09L1N0VpDj2SrWcwo0KMb3ctG3wxIXtzr9bVhseh/x26ddvSY8e
         1AQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742568349; x=1743173149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PHERlL971lhRhRNPhw773ZN7phaB0MazKYjf9mnRkOo=;
        b=m1sQB0iib/rxIp3pqzsCtmNCp3SjJVyFW03gNJ+j0m38YvOH37RhfggsoGC83XcZAE
         S39rg4phs046BGNKzqe1ETuOylT5ZSmeT/jbksEZQDdS2efRa9bX2zn/mZLt0dOGbcDl
         hFtbULO2b4OQ025dPhO+YVrw9GhrYa02VRVmctedpJYzJZIUywC4W23Xc1IrCe0g7yoj
         tFVBxxeaR4zIiZpn+3KM8umZ9q8ixyuYexICWCEPWPn7ZJn4C67bqIzDLeX7hCbGehmg
         SahWPre9nvWnFDF7G5HsaFQB0aZFQ4CiWbiW1UHE88g4dODHzCbQlmeihRNKyln/ovM8
         jJyw==
X-Forwarded-Encrypted: i=1; AJvYcCUUpOu5xLV2G2vH+i+w0l91kQeeYMypBC55ohe0ICJIR28X2BrwfI1Z/XefOfdtqEG8kA/21CyMZ6B6@vger.kernel.org
X-Gm-Message-State: AOJu0YzYgj9HSbp8wN1pCnZu2+7e8OL7m1MSKDqZ9RYw9gVtUdUXQx2A
	UcVm44KFkgp4icbg7DwQKQJb4B62RgwS8rq8EKDHnAEQQue54VkMfFu25q+5J1A=
X-Gm-Gg: ASbGncvZQDnr+RoBkSDv1HOXQeDiwjGIvRIL+yJh1fvaZFxwRUYPxEQw3YVr7LgK8rS
	CspdnYd1pg4FL4UCL+SwV1hmMW8oPqulDGZ4cZ+d7EXeVQMwszYqwLFonAOJYh0MqxatTRaeBrT
	ql932PVVg1QAXrQ8TfRYWib+Aw6C7BFlgGfPE7wT2nkvo9gdsci6GJo6JoyThznnvBpgQfbBcMn
	D7LKV4ykYoTMxoYkFftaMSS3vwGiUNtHNokjUF5NCBz19mmQkA8+mApGro13PY62/H70CnGKkGz
	qkSLg5Kok7SJS1v8ms0wSU35Dq7bLi/z4y1Osqj1wMgrg3dfAP5hwVOx1tussEXOBx4EK7q8pjz
	uUzar0d+P/1Mb4l87oiVmluUCXGrn
X-Google-Smtp-Source: AGHT+IFqAX43/zq/hujHzHnH37P90RVIE+VluZyGm3/YhAvwrRM7pYjzxeNBMWHwFGfVNM0d7l7R3w==
X-Received: by 2002:a17:907:7f8c:b0:ac3:cad2:9e53 with SMTP id a640c23a62f3a-ac3f28053b3mr412540766b.55.1742568349002;
        Fri, 21 Mar 2025 07:45:49 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb648acsm168092466b.98.2025.03.21.07.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:45:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 21 Mar 2025 15:44:59 +0100
Subject: [PATCH 1/3] dt-bindings: clock: add SM6350 QCOM video clock
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250321-sm6350-videocc-v1-1-c5ce1f1483ee@fairphone.com>
References: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
In-Reply-To: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

From: Konrad Dybcio <konradybcio@kernel.org>

Add device tree bindings for video clock controller for SM6350 SoCs.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
Co-developed-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/clock/qcom,videocc.yaml    | 20 ++++++++++++++++
 include/dt-bindings/clock/qcom,sm6350-videocc.h    | 27 ++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index 340c7e5cf98024dedad6d7db4fea10e9f8077419..5f7738d6835c4ba999402e163fc85a07e3a47a5a 100644
--- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -14,6 +14,7 @@ description: |
   domains on Qualcomm SoCs.
 
   See also::
+    include/dt-bindings/clock/qcom,sm6350-videocc.h
     include/dt-bindings/clock/qcom,videocc-sc7180.h
     include/dt-bindings/clock/qcom,videocc-sc7280.h
     include/dt-bindings/clock/qcom,videocc-sdm845.h
@@ -26,6 +27,7 @@ properties:
       - qcom,sc7180-videocc
       - qcom,sc7280-videocc
       - qcom,sdm845-videocc
+      - qcom,sm6350-videocc
       - qcom,sm8150-videocc
       - qcom,sm8250-videocc
 
@@ -87,6 +89,24 @@ allOf:
             - const: bi_tcxo
             - const: bi_tcxo_ao
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm6350-videocc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Video AHB clock from GCC
+            - description: Board XO source
+            - description: Sleep Clock source
+        clock-names:
+          items:
+            - const: iface
+            - const: bi_tcxo
+            - const: sleep_clk
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/clock/qcom,sm6350-videocc.h b/include/dt-bindings/clock/qcom,sm6350-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..2af7f91fa023bed469bbb2c071d93383dba29441
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm6350-videocc.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM6350_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM6350_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_PLL0			0
+#define VIDEO_PLL0_OUT_EVEN             1
+#define VIDEO_CC_IRIS_AHB_CLK		2
+#define VIDEO_CC_IRIS_CLK_SRC		3
+#define VIDEO_CC_MVS0_AXI_CLK		4
+#define VIDEO_CC_MVS0_CORE_CLK		5
+#define VIDEO_CC_MVSC_CORE_CLK		6
+#define VIDEO_CC_MVSC_CTL_AXI_CLK	7
+#define VIDEO_CC_SLEEP_CLK		8
+#define VIDEO_CC_SLEEP_CLK_SRC		9
+#define VIDEO_CC_VENUS_AHB_CLK		10
+
+/* GDSCs */
+#define MVSC_GDSC			0
+#define MVS0_GDSC			1
+
+#endif

-- 
2.49.0


