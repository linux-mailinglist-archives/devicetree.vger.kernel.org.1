Return-Path: <devicetree+bounces-52429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB9D88697D
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:43:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02909B21383
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7437722606;
	Fri, 22 Mar 2024 09:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+gVQIRh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E13D20DCC
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 09:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711100570; cv=none; b=LAKqzS4DDG8OcM0bLqt/1+Oh2ai2Vd9YQ1aEqJkCijbyHn+3LE/KC+/X2+/CdpFDDWs0qJn+s2kjDKL7Zw90kYQxG6yU8l/aXHeAtxi2h3zYG/j5MoHDlbSH7Qa6v8Ib8sIr67Z2cy6VJ/EkwZBYRXz1pW2IU5ZdloV+QHIk0A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711100570; c=relaxed/simple;
	bh=c1g+yc7zI9maix5fpYJ7QOTQi0BGTOzrNoya3sqaYyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EMI19vvCWJpYuBnCiVgD2EJ+BeWxp/oqTRsMN+PNyNtCpzNgxxgWUbbOeb6srj6jn1APcZCBCVnyT0ZUp1jsS1TblUCY4tOpIgI7orMgiCCy97SSz/EvCsdZLLnS8F0tnAD3DNcBfVRAr/tJzH9v3YotNRTrN9YFH1NjLRL8r9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+gVQIRh; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41477211086so11806755e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100566; x=1711705366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HN3oSp+JRbtDFbrldKc94Yfei/E6XtVFhEcK3+4cH+Y=;
        b=O+gVQIRhAMGCO0kIM3DFjor07geNPISuuWb14IYZQSn9PQ5nr5vtBrQVRi6BGhKuo2
         4j9j3QexwgS9fEj7E6uE02GGgQoGrX4V/rhePVPpRrPc2fEsB9QEOZ4+1RLry1CROvR+
         bq2IBMzxW+SOen2QNeqpy3DF7jbYyyYS/l4avledvqq09T88RZsSy9hEfbtDRnQdD1jf
         VSgQBwfjbFcHdiLXvX7jap9UatpW5s5mbl0q8d005M347BFgftRyvb5v3Hnygyq2BhIQ
         vrWgPk4DzDr/u3KUrh/MetC0cjdHyorzdZa6seAwdw1adI/60os4kW8IkQKmhkrhWLQE
         vP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100566; x=1711705366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HN3oSp+JRbtDFbrldKc94Yfei/E6XtVFhEcK3+4cH+Y=;
        b=oZ+VoUVDPSUHN7kSfZe5xj3I2FHXGi6AqkXmSnt8XRcuSNhIsFekQjxgBTdIYRK7c3
         /O0JK7YhA4YJmY6qc7/1RMGdPOeSkOCsXwJ72uSuMuwOVXJ59Y+nIu/Fil8/sxBDRouw
         gaBBsflByOpGmq8+fHEldX4pb4aXYBReorV1wobTAA7HDm+vaO06wb4KsFOJ/aZQqYHu
         8jsJp7BoB+Lae4GILVZI6X8t+QwQFXJl8V+jOK2wVec+rNXzZtUaSjKo9czDKjHXU40z
         A67apJh6i+LRM6ZLtoUs4ZMowvNiREOYO+s+GStHYIBQDTUxr/QQvzMeqRGFtjpx5d3q
         0aEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7maZzjcknphfz5IRFXLt9mlcY614eX4t8VSrYptJkeiE/a7oDmf1szHeKbag4qc95sqZcLclxdRRQTj9TUWsYmqCJzsJgy9n2GQ==
X-Gm-Message-State: AOJu0YzZAx99Ec02kR/Ny5fgZOezUZZtw4fEoaX8dsikntceJL2gKzcb
	0WrnWaK1RbudQ7kNbaYgnQSwnlQNT0mRRlzpQTDWoUWDHc07otxYMQhIQeOVOP+y7VUeU3agjYP
	OIx0=
X-Google-Smtp-Source: AGHT+IG7VkUWz6FVtAHIOz/kPgFoX46zbE19qmEXnmSxhaPJzIoQ4SZJmcLQCMdI29EgkuYgV6UqtA==
X-Received: by 2002:a05:600c:49a7:b0:414:5e91:124f with SMTP id h39-20020a05600c49a700b004145e91124fmr1587412wmp.23.1711100565747;
        Fri, 22 Mar 2024 02:42:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:38 +0100
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 document PHY AUX clock on SM8[456]50 SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-1-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2562;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=c1g+yc7zI9maix5fpYJ7QOTQi0BGTOzrNoya3sqaYyw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKQPPVHn83qKZmKU5a42tPZYhmeiWh1Tb7K51SQ
 fIFCcqGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkAAKCRB33NvayMhJ0aQKD/
 0WoGrEk5PCnTh5wshSN3AG4/GTZZa3TCtIjHOqnp4tTYGh1UpEUVYmozXoh9xcB2JzUykASy9gChBD
 mYzBtOUNoyIMi0hdM3SEtRncIL6D+6ijJaugNzIZN/KnOnTTL5D746DD2cSLi3yVGEeffOlcuKdG8g
 cGREHJsWXeJwuBIeGjh2ceVVqBMv4WUYbGTgmY2P3NHARRKzFmf+kKVDGMXueMz0+gvFZ2mpKst2QH
 dw96UNpSBcpjgHlPM7DkhxNHdyAPyWH8FeNyZPL7Nm78myAY98179dVpm6RKBZ4YSH4+g9K7lkeiII
 52N5pGM7IgfUQ+TLypND+mDOX87ExdrepHW5ugoD59vTeBORxRQ9kyGNf4trW0Objx7FPcyoJqR7DF
 zPx2dPR+i/vkrKfBsHE8+ebgOPbXDIqP+axLP2a93K5a0O6irPmNZTKDyKXV3uCgLtgpmxBpmapGmb
 Ja3PgogUrAnR99k70cuZJQUASADE7pImF4LfSJcDK5Vw75YYL1hy8/BP57QKo5won8UP/sgID0Y32A
 YihhzzuPOvAz5JGHVBFlND0adUUiAALypPNBYSOu5P1Q5dDsly+UwYUDTpuEa9L8dnOUyHvHoHRm2H
 /BnwRf9Z3nBLI7D0DST9DA01jY6eBIv66tCOgWEYMWsB+yEaWOM5w3z3Chmw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 27 +++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |  4 ++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index ba966a78a128..14ac341b1577 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -88,11 +88,11 @@ properties:
           - description: offset of PCIe 4-lane configuration register
           - description: offset of configuration bit for this PHY
 
-  "#clock-cells":
-    const: 0
+  "#clock-cells": true
 
   clock-output-names:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   "#phy-cells":
     const: 0
@@ -213,6 +213,27 @@ allOf:
         reset-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+        "#clock-cells":
+          const: 1
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 1
+        "#clock-cells":
+          const: 0
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 4edec4c5b224..6b43ea9e0051 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -17,4 +17,8 @@
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
 
+/* QMP PCIE PHYs */
+#define QMP_PCIE_PIPE_CLK		0
+#define QMP_PCIE_PHY_AUX_CLK		1
+
 #endif /* _DT_BINDINGS_PHY_QMP */

-- 
2.34.1


