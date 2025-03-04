Return-Path: <devicetree+bounces-153809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78195A4DEB1
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 328DB3B1BE2
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB702045A2;
	Tue,  4 Mar 2025 13:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kcz72HOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA6E2036E9
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741093634; cv=none; b=mx5J3FcCz8Stb2EP4YqaO5EexFY0S59+rEc8bQNH8y/Y3EqKeTsMaRho2wnmZiZ6jTkzH1nx1UVNaDdjfUMNDSrEB9HzLk0v8t84ZpsZR6y2ONxlfnTa/VlmjTYhcDw5MzKoy5RShPHpbmMRKeNn5MBc8RMeUyQnFkTLkxSAKC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741093634; c=relaxed/simple;
	bh=zp7dfq9ZHu42Fop+Hzp7Ynopwb9wccKSyGLv3/T6KYc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FGDFAiD3cDSf11KU7CyFQ6MuhAoTljyUuAE/1t8B0TfLNSQ6U4ie4jtS1x6LnAy5ynPEXhziELfdiwUELuaI4ktbMlg1njpGQ/o0pWjFjeusK8JKUm6PQoAhefVEKzt2Xx4MzSn9hmpXATJGZ8b6GGWY6s5C6btvR/MjYQlD00Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kcz72HOA; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-390dc0a7605so3026144f8f.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741093631; x=1741698431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T0qKgshl2F0rJcY3RgeB9zYkoCzuHBzqb6ry7L6OfzQ=;
        b=kcz72HOAtWYz3QzNm8dbICF5Wm4deg46csGs3Af1Duj6G2puOgyHodGALb4sYtWgov
         SwDC9XfZ63zRnPfzeaGa39NTULiIhFfQZ2MPCWaaEsWZ8mtjZcmfBLEaDGURLSLZ5DqD
         h0CKxvJ/mlYqCYNMh9mkEwjnmOrfYILOFvnuV7W99Rk7Xy5jnrliwZwEN5hhJogSnVNi
         U37Uzpw0BddOFydNov/0kRkOB0rOmnDEdXRnWcAg6ZPNAC+/4QhQADMCDIQMRoVmnw3U
         /tP0O+6M+dCURtFMYtYs5reBBgGHKwoomWa8rK9AU2XDiKTNWjo9Y/0Vfb2P87WS7Ipo
         MXHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093631; x=1741698431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T0qKgshl2F0rJcY3RgeB9zYkoCzuHBzqb6ry7L6OfzQ=;
        b=qu5JV7zsH4lS4Va6jCZfD7cUzv9Ls/ftjRjtOetlPHs6qQ/tvARvEt97uGZbi9M3ew
         wQH6ULy0X3B3xdu3p28wkVXESzvDVLzcaBrESmr0GT2F1aAX1aWp8iu0vfID/T/1tD9c
         W6mFGZjI8gATkq8+kr5rtyo1sECElNxFfVv4BMysEvLka5EQBKkWeTxhA9h0aD+g8tzU
         OsewBPR9jCEYEm5T+UWak1yyZVh++WPNrKuaoA8/LE/ZnFm/99olkA4sAglIVvLCZOFs
         qHFjMbCVZAYsLkJnYjbmkPa+CbA8y2Z69EZ6ACWFv9mjr9kFyYZsrSYdGQ9kD1XcsAaU
         JcZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGw9kQ6uEN7PWubWS9BctfSH5gzYTGYye2e0NZFl6cMSyc51eP+nwy3SCkIYPUZVu9Lpm64OU9R49N@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn/oMu/ycqhnVwKHSceO5JmlTRJWutKwbPv1iGQwJBcTeanaOy
	x2VM8tl6P0XqqNAoIe2tbWNZB+wjNa3CoaPeSOOdeg6HvZHunXjcJohoPK6Ae2Y=
X-Gm-Gg: ASbGnctb2VJ34Cw8Q4ovGFrJs0WgHiTE8k0+SQXAmhJYtQGPu3Whltd4aSYnWj0iOb+
	/jUVYaiyx5xoqQ0ZB3xu+8qwOkwxEc0NyKX02EjavWWlx1WCz3E3xcfPNF2SNAggU2NhPXvz2i5
	7PBrSyKYPBB3Y8za3d6Coc0Pra2mNnTHeJFRSyVf/difff4XF9/srwwdg8aD9gEOlqo61GQ/TFO
	RFb7kcYdvngXGx14j/70Y/dzkxaZKrUu726zhYAKIvyMNGeEFOUOtTvxeChnamloB0tIr9QFz91
	XqWQcH2+Ag33RStAZO69qZYqOnjfKhLsM9GDRu4fBpMmqWyeBpEr7McZJupg7nnCW1Ac+P/cVIM
	QHJn3dQ==
X-Google-Smtp-Source: AGHT+IGt41Z+aO1r0FZqK5TAia+vDzJ+cmrhxgfP8isz0xSsSE8fCGSnzIfP3HUl2KwIfn42/exnSw==
X-Received: by 2002:a5d:59ae:0:b0:391:1652:f0c5 with SMTP id ffacd0b85a97d-3911652f24fmr2043369f8f.37.1741093631080;
        Tue, 04 Mar 2025 05:07:11 -0800 (PST)
Received: from [127.0.1.1] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6cd8sm17401715f8f.44.2025.03.04.05.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:07:10 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 04 Mar 2025 13:07:07 +0000
Subject: [PATCH 1/8] media: dt-bindings: Document SC8280XP/SM8350 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-1-279c7ea55493@linaro.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.15-dev-33ea6

From: Konrad Dybcio <konradybcio@kernel.org>

Both of these SoCs implement an IRIS2 block, with SC8280XP being able
to clock it a bit higher.

Document it.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
Link: https://lore.kernel.org/r/20230731-topic-8280_venus-v1-1-8c8bbe1983a5@linaro.org
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped dts video-encoder/video-decoder ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,sm8350-venus.yaml          | 119 +++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
new file mode 100644
index 0000000000000..352ad85ae50cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8350-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8350 Venus video encode and decode accelerators
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description: |
+  The Venus Iris2 IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8280xp-venus
+      - qcom,sm8350-venus
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+      - const: vcodec0_core
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: mx
+
+  interconnects:
+    maxItems: 3
+
+  interconnect-names:
+    items:
+      - const: cpu-cfg
+      - const: video-mem
+      - const: video-llcc
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-sm8350.h>
+    #include <dt-bindings/clock/qcom,sm8350-videocc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,sm8350.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@aa00000 {
+        compatible = "qcom,sm8350-venus";
+        reg = <0x0aa00000 0x100000>;
+        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+                 <&videocc VIDEO_CC_MVS0C_CLK>,
+                 <&videocc VIDEO_CC_MVS0_CLK>;
+        clock-names = "iface",
+                      "core",
+                      "vcodec0_core";
+
+        resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+        reset-names = "core";
+
+        power-domains = <&videocc MVS0C_GDSC>,
+                        <&videocc MVS0_GDSC>,
+                        <&rpmhpd SM8350_MX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "mx";
+
+        interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                        <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                        <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+                         &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>;
+        interconnect-names = "cpu-cfg",
+                             "video-mem",
+                             "video-llcc";
+
+        operating-points-v2 = <&venus_opp_table>;
+        iommus = <&apps_smmu 0x2100 0x400>;
+        memory-region = <&pil_video_mem>;
+
+        status = "disabled";
+    };

-- 
2.47.2


