Return-Path: <devicetree+bounces-134361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3192D9FD4AF
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A2BD3A1149
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 818B01F4272;
	Fri, 27 Dec 2024 13:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cJsmKB8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853661F3D30
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305139; cv=none; b=Eeks9erXWr96I7+ZJirXgcMbitvOztJWr/Iu0/qOUFvwTvUnv7GxatuCcw2x1BVd/TMzYxgOiHAkZow5JLHcZTpU8VC1hXtIMWR2PMmySIfc0iCl5RD4NFgluhFPb/OD2jXNBoMQzRrqKdU6IKs19+jxaKqfpLQECR+q6njBtDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305139; c=relaxed/simple;
	bh=1A1Mz6E7xYN3MvaSfjeMHy8CNatmsryIlxCYCFCun0s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d4TzomF6z7qihNFTK8O6tdROp8nr46/AbvJNBvNg9o1sTO12aNOhSV9t+kZ/X1OMdBBfjFrBvYg4a/D6cBGOuTTXW8hEO9G4uga52A2Qeu7DhLTcHner1D5jMCRddtD0d74ytRMW2bemO+CXHBwGjU/KjgVYLuDQDNOT4r+u/fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cJsmKB8v; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4361f796586so76465855e9.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735305136; x=1735909936; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UDahXDiMrMFuseveKIbLBTZHpEpgxwm/BpoTDKiwlh0=;
        b=cJsmKB8vX2Lz3C8MIWuIdxm5vspBb3Sea2Kc2oHqf9bFgDDhJUrlIrRs8dnhFh8Do6
         SEffhBT8HoHZn87MGLQmszFe1kNTjHp+9NyvCHTe7xGDuAfA0Ho0JIT4Sl3SZjZkmaNc
         0K8usf6LF4vZLoZ7cl//E3djT5LHsdb+NFSouY2X4nG4TszSHmFOp62OAwcuBpZ2w+gh
         371JARzawb2VRA8S6zz2ZJXIurNHBFDL2QLNN73lE0n2wcH/R/UbIf7JQmY4Ugmm58UW
         mlhwWSIrUGJHz/z+Zi6hyu4mHOB9DSbh4PWqa5A7Aa0A/2vYfb5P1UMDPNzHQYPB6Ixd
         /R2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305136; x=1735909936;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDahXDiMrMFuseveKIbLBTZHpEpgxwm/BpoTDKiwlh0=;
        b=vm2b+oJIusShxP32M/Dd0PyhOhC1OpoWokjRg5T56ZI9ufQVPxG1H+uvO1RadMBpR5
         rEZYwsuP7lFHUklacq+452CZUHWfxgGivDYm0P47jqEL+oK8zrf6M9+iH+HrkV5i1Hsk
         LwNV2oF6q3HlgiPrisfOXcwD4nJXiO9N3zDZ82oWkz0LoFmGfSj7j2wIwWRJE0aOphcQ
         SyVZh3rJC43sND6UwLiL4FRfVurgxLDYp6ZEYb9RUBUEjBGWo9GoeZOH3KAKcy3i0k78
         con0+Tv6cu++hq71oJ1Wcfm+jmFikhYYmCoZvjpL0OtZobN3TaCH9v8nfeQGkN2W6ofm
         kiyw==
X-Forwarded-Encrypted: i=1; AJvYcCV50dnpDHOLATtQodWJtIMnkoSBnayebg5lblT614mbncM6MrzTiEzwYswKPoW+E0os1vXRyammG4Vp@vger.kernel.org
X-Gm-Message-State: AOJu0YzeZbrdB+gnAkGOMM4AgHMh2g9VDaIhm7POudkCWMtKOgUP82q1
	DYh1Uk4yuhpGv/19RyEGt5X9Yoc0mhqwcobW5WTOtte/jcyBErBkzWBzsNkilHY=
X-Gm-Gg: ASbGncurr4Cr6Oex9UO/wByJ8GLSk77a128atOfCFu9tAsCA63m7Eu6aei1POOJUy4L
	+km3dHv92evJSzA1jKbn+0yIStTR5AUk3dp78+VZ120UHY6b4Fep7jnALEOSpGwbUUhbcgHsmFp
	p2QbpE+jsZLDOcLsV2xDwFJZqCO3ERnoRItZnZRcBBqn1gWQ4TeDt5lqNf6SF+PZce/izsG2nyv
	LToiZ7D9cO6/SRQBBzNYTSt4OFvz4M/EG//ks5bgIa6Tbl3O4Yw4PDyNFuNxrPpCA==
X-Google-Smtp-Source: AGHT+IGAmEDxQC3LgNG94AqFNSpl7gwcE78FuW8AtAJgn7d20DM376eooCqV2MdMQ77nXSgpIFUobA==
X-Received: by 2002:a05:600c:4586:b0:431:5c3d:1700 with SMTP id 5b1f17b1804b1-43668a3a3c4mr205128975e9.21.1735305135904;
        Fri, 27 Dec 2024 05:12:15 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656af6c42sm298899425e9.9.2024.12.27.05.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:12:15 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 27 Dec 2024 13:11:35 +0000
Subject: [PATCH v2 2/6] dt-bindings: clock: move qcom,x1e80100-camcc to its
 own file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-2-06fdd5a7d5bb@linaro.org>
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
In-Reply-To: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-1b0d6

Add an x1e80100 camcc binding. x1e80100 has two power-domain parents unlike
other similar camcc controllers.

Differentiate the new structure into a unique camcc definition. Other
similar camcc controller setups can then be easily added to this one.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/clock/qcom,sm8450-camcc.yaml          |  2 -
 .../bindings/clock/qcom,x1e80100-camcc.yaml        | 74 ++++++++++++++++++++++
 2 files changed, 74 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
index 0766f66c7dc4f6b81afa01f156c490f4f742fcee..b88b6c9b399a4f8f3c67dd03e6cfc306963b868f 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
@@ -19,7 +19,6 @@ description: |
     include/dt-bindings/clock/qcom,sm8450-camcc.h
     include/dt-bindings/clock/qcom,sm8550-camcc.h
     include/dt-bindings/clock/qcom,sm8650-camcc.h
-    include/dt-bindings/clock/qcom,x1e80100-camcc.h
 
 properties:
   compatible:
@@ -29,7 +28,6 @@ properties:
       - qcom,sm8475-camcc
       - qcom,sm8550-camcc
       - qcom,sm8650-camcc
-      - qcom,x1e80100-camcc
 
   clocks:
     items:
diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5bbbaa15a26090186e4ee4397ecba2f3c2541672
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,x1e80100-camcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Camera Clock & Reset Controller on x1e80100
+
+maintainers:
+  - Bryan O'Donoghue <bryan.odonoghue@linaro.org>
+
+description: |
+  Qualcomm camera clock control module provides the clocks, resets and power
+  domains on x1e80100.
+
+  See also:
+    include/dt-bindings/clock/qcom,x1e80100-camcc.h
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,x1e80100-camcc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Camera AHB clock from GCC
+      - description: Board XO source
+      - description: Board active XO source
+      - description: Sleep clock source
+
+  power-domains:
+    items:
+      - description: A phandle to the MXC power-domain
+      - description: A phandle to the MMCX power-domain
+
+  required-opps:
+    maxItems: 1
+    description:
+      A phandle to an OPP node describing MMCX performance points.
+
+required:
+  - compatible
+  - clocks
+  - power-domains
+  - required-opps
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    clock-controller@ade0000 {
+      compatible = "qcom,x1e80100-camcc";
+      reg = <0xade0000 0x20000>;
+      clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+               <&rpmhcc RPMH_CXO_CLK>,
+               <&rpmhcc RPMH_CXO_CLK_A>,
+               <&sleep_clk>;
+      power-domains = <&rpmhpd RPMHPD_MXC>,
+                      <&rpmhpd RPMHPD_MMCX>;
+      required-opps = <&rpmhpd_opp_low_svs>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...

-- 
2.45.2


