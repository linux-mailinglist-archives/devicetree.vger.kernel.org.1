Return-Path: <devicetree+bounces-72581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9348FC575
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ED231C20B5D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2BE18FDB5;
	Wed,  5 Jun 2024 08:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CXyel+do"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D94518F2FD
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575005; cv=none; b=TzsKJyW2pc7JfM2cR7lrF613Q0nDo0lsF0N1WCIMgOCGrbI3pn2+S5r+TcdOr3D4fGvLsjAIslysyCMcTlhmNIKTlkFI762+LK4pCgTLGc8PQQ51wVmsKaiTXkciWZZfCm3sWeslS836i8FBldmLdKA4moqKA9WhprIgWmUUCnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575005; c=relaxed/simple;
	bh=oYATjcrExNTHlpRVNqygva1ebipsTlXzpniefcPvJkg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ec8tK+c/fgS+9ZlrVSUJFUClHIZzhKqubX0pI2LUcLPF0NpvDQaEkPy6Zjh4QrdtwPlUdr9+GqArZ0DM8BnMAuA4phxdTULZBknJkskp7QGA9pWvh8NuJ6Ao6JhecY785MkbWvk/dimmXrCeW2QR8EqqCsSKCdhPMoMoCpRWQLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CXyel+do; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4210aa00c94so58118365e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717575002; x=1718179802; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oRRm8CbTP5JFsaT/T9xDzGY4oRGVA/JiDw2/BJRJbVg=;
        b=CXyel+dofZ7L8tCCmqqNKvY1V/MCW6u8Zu4kcy7ZlEpD7ynoKvHpRrc0jU0G11Ysht
         2TkI9XenusQFEBZ2mgO00kgJQvIZ1l3XnXmfw3hYP+YM/BKiwwt96VXtDnTyXWOAAG/G
         +alQsDZuV/N0iPT8XBKuLYbY5/Ode0wum/7ooqUAe9kUMxsGiwQ6UVdPnFsyH9Q2sU4Z
         izRs6csIfLfv49prcbePZXfzzhFy9Wv+1XsWOlyPVDNThn02MUNLGkX9egAbpi0+ffwL
         Jvt60kQorH7TBxU8bp5sBkIlX8AiKIA3OHusbGuPuPe/pqRSHhB5lZMqi033nIFdkont
         TTwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575002; x=1718179802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oRRm8CbTP5JFsaT/T9xDzGY4oRGVA/JiDw2/BJRJbVg=;
        b=kEwQgxwNuCt+6rFAGqsXMlpiceDQxcyt94RerX7bxt0EUMljc/dHNlHP4eeFMRUn77
         nNkGfumLJBTwXjb3JCMCois7kHs7CiuQXgHxRRnIFcZou6KOXClqFI1pzoMCRkM5v+pe
         uW0ZIyGH4ELNm6H/WEnY6EJN5Z7LEMFt5rzMf0rcVFxysx6Fm8Mhk+Is7sbT8AIktjVg
         9pEmRnw/Q0vn92rtD7aycfoTca6miNVEkN5Dqm2Yy5vR4Qaeg2wWBBfxGgsDs2MbLPfH
         YH44wEuu4J9irwWPQdAHkNjjyAJ76bLtmHf61UsL8xuP4KxIcNMeJfkbtvnXhGW1adSo
         G8Kw==
X-Forwarded-Encrypted: i=1; AJvYcCVld32WQmWjfiBHa0UtqA7BCaUU7w44fkLebnb2mn2mPcRgqzrQAmCuFva/kXEHq/uLV7mtGNlmMiEJfkB7RzJ/rjNPozyL+dXVWg==
X-Gm-Message-State: AOJu0Yx3qn46EWH6LR/oPX77p3tFeFm7wgEOpRZ1iHIeNIWnv+wK1Kcu
	L8QW10fg5MbWYIXvA8lRjHeWqY8V8tdUJrnsHaT2Qjiq3DVw4+VhM77hXMOxcug=
X-Google-Smtp-Source: AGHT+IF9RpPz81tmVnI5U88eaNHoLNxBBAGo5FJV4hJroQPuntFoQOCZL0y8HlvHRQr0h2Q3nWlcrQ==
X-Received: by 2002:a05:600c:4eca:b0:421:3879:b40c with SMTP id 5b1f17b1804b1-42156351c82mr13452955e9.30.1717575001917;
        Wed, 05 Jun 2024 01:10:01 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421581490e5sm11025585e9.34.2024.06.05.01.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:10:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 05 Jun 2024 10:09:28 +0200
Subject: [PATCH v2 01/16] dt-bindings: clock: qcom,sm8450-videocc:
 reference qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-dt-bindings-qcom-gcc-v2-1-f947b24f1283@linaro.org>
References: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
In-Reply-To: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=oYATjcrExNTHlpRVNqygva1ebipsTlXzpniefcPvJkg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmYB1I3dcDlw1BhAJDLq8BnpbTSmJkGFB360Q1q
 HW/XaQ4ns2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmAdSAAKCRDBN2bmhouD
 1wDDEACOrSlSqDbOAXeOhME7gSYQsMmYS69uZtlJ4Ww5EKwQmxLp45nj7LWQXLMqQPzb6ZEOHzM
 IHC/yNS/TgyLmFeSBxlbOmmG0v40V0Qn3VyYvWZSP9DWIN7fwmVJLb40gt9XQnDWHGyEqmWJRNW
 3AhOnERoLjNfFcynsOqBuFJHtgz6Sf3lfV5gqSXX7/fI9byob6pCfVsGlg0c3lsilFFREIg+S9P
 +Ktfn9xRmgVKCB34cMHchCvU+1R4x94l3wwUIEgoyAdt+d/IT5UrUpzNpJ43pc2HYvVrStBWjhd
 IHHpl0EwTsZ0Gk9afzfsZ2hM2hFTosaK4+jpVGU71Wkm87+kSgNpuEHGGnVwrAFWutzp0lKGeSr
 bcKqytRcyg8DwSkFj9skoicHU3yStV+cu5IwY0e2RFsAZRu/gGPNUy5o3Jc5u5gSWfQRqbV3Voa
 eQP+3fc3p0P8qsyT5yJo0H4saHn7EJ19F9sfH1eO1g+YqAwcZQN7TuBwZoQ+uBDZCsrGWxrcIuh
 QA+mQ6tvd4c8utNH3nxKyGvGaTAW9sG6kBnYsepi/7IOx5KRb7i2lVctxUEnmYgUblxKes4AvfK
 5Y0WibvFvpo7CIY+1MWT0RNUJBSDyr51L2BrC56l8M+qc+7WmxNlx759YwUsbwkmRK130KKJfnZ
 3fX5+3KlftkjUTw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of Qualcomm clock controllers, we can reference common
qcom,gcc.yaml schema to unify the common parts of the binding.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml          | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index bad8f019a8d3..74034e3f79b7 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -21,9 +21,6 @@ properties:
       - qcom,sm8450-videocc
       - qcom,sm8550-videocc
 
-  reg:
-    maxItems: 1
-
   clocks:
     items:
       - description: Board XO source
@@ -39,26 +36,17 @@ properties:
     description:
       A phandle to an OPP node describing required MMCX performance point.
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
 required:
   - compatible
-  - reg
   - clocks
   - power-domains
   - required-opps
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


