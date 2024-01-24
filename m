Return-Path: <devicetree+bounces-34555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3183A30E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8509328B7C3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DBB0168BD;
	Wed, 24 Jan 2024 07:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R7vxYCsY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AA217735
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081827; cv=none; b=soDGglXd1eny83MxHHrKP4tQcB+L78PAUQqlDUMzBrbHDFvZDl+vJ84JlV5j+07wx7udq7v04JWTDP3mCZOM/T3H2u/DUveoXqwfCR4eW6VTQACFiufN7n0Q+Ca10UKVwvJZuP/DMS23qYCuhOpvk7Qz1XtjRGLbWw6tyET9S1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081827; c=relaxed/simple;
	bh=FUkkiV+2vDk+h8Fu4sCklCuzOARyg+ribP0i686xTfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hmuon6gBhyUFVVjtddXgSSVd+RYUB+4P2XyjPc+nwR7u/lymNySAtuiFvnHGvtUmIqMyU0LFkA26GrcBAk7wYgFQziEmH8YDHdgqLQ6+cW5lJA5gKD9tA2fEGYkv0TpF5CkB/CiyHZIKluosjb+FfdB/OFZrEv28flccTeab1Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R7vxYCsY; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d73066880eso30740415ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081824; x=1706686624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TYkvTvEMLj4JoaODxeTHusWVUfI5+qI8qMmzgmBVEBE=;
        b=R7vxYCsYdbDys9lO8RMdXOwDRxRfguI1j28N+bI3dvFL2bkROK5AtVIj+GXQQSjNa4
         h5zVWTZ9o2TZHgpIhOxuCvoJwk4Eo1L15UDAfPfQD0iqHM1W1jLdSyEmjbxS+HsMF5eb
         EGeLQ/OdZrt0w+cag4jxczjuwC0sXCmdNop7acpdiKHoszQDnX4l/fcp9RQyLMif81/i
         qKwt6ZbXIIwmLzwrt+0mKYKheup5gCjka3H6Is5Z5ydntTYcIJEZMdv4VGYkvvyiMXCT
         ilP5S0n0pQTZxIGew4nTXrQO2PTZy2jMCAkDB5D7TgYls9zSHWrULKnrgQznGCcFbK/h
         R78A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081824; x=1706686624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYkvTvEMLj4JoaODxeTHusWVUfI5+qI8qMmzgmBVEBE=;
        b=NhKIjJP0exv5X4jrrkV/Bv3sPlnC/4KSUJKoJF1wFD9cpRMOfT5vYjseUeEsLJhJgG
         jYoMTUJ+skpfjio83FRLPovYcEXHPBjKy4zRI9rKt9Z8GCw+3d+XWQco7WbeKpdudcQg
         b/Ki+LdiQgVqcoOV+NKufhRDeAEki65addgQgAFpd4M2qpF5ETLypCf7kpHGSlbP7Oov
         HddrRG/Vt1ZKpURTGUMBVJrxKKtsAbNPqLWq1GqtgY88rSuZPuA+TzH4LR5j025MhJPY
         qjSmYYXaCL9SeuIB/1CR5ZsvtprHEflamOkiEPKEqZSTXjvqFwbU5VTThFKnv0+6Gp9I
         t3Wg==
X-Gm-Message-State: AOJu0Ywq9r79wI741T97p4vfeh3fY0JhkqeuWnhk1AHEO0fzf7gxw09g
	wIjoR3sh6MsCbmesgDgy1adaVwpFIFSs5FxvHfBgcWiMsRCxqBA3wFTg69d7uA==
X-Google-Smtp-Source: AGHT+IGTjeibUHV4ILPDRl0hWCHWuyMofMnIPtbp+2gsEYpQvq4noe4HRVKYN4q12hIlzAyNaf3Y4g==
X-Received: by 2002:a17:902:7401:b0:1d7:e84:4ede with SMTP id g1-20020a170902740100b001d70e844edemr494893pll.67.1706081824565;
        Tue, 23 Jan 2024 23:37:04 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:04 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:32 +0530
Subject: [PATCH 04/14] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 the usage of aux clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-pcie-aux-clk-fix-v1-4-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6248;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=FUkkiV+2vDk+h8Fu4sCklCuzOARyg+ribP0i686xTfw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4DHLbLRu4/rLPOQs1IQsAM94Al1MnHSEL/G
 wX5JYbKC+uJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+AwAKCRBVnxHm/pHO
 9V8RB/4lFYgeiPK6H+XbHF+JN0qyPo58sySDUBLf/BX0tIhPOzwJ6npj041l/nk5ec9gDfo+CaN
 tJN7h8IN6S8zqtRZrIy2JpUo2nctn7HEPPoeRuk2DLVh6rTPwxGcFa01gSuDGZ+ajytR+/0Z+wd
 3ZtZXVcUaHBxJXJEznY8SUrE24e99wXNhCJBIvKGT9+b/6eo0RPdy9m+dDm6a0R4zbL8QQg60Mb
 e2WBw9v+QGK8KSPyaBupTaM4ycBHxC82P3Ryvw7RmdJTuym6QexRpM5wLaAqPrStq4S4NXq95Il
 5yImBNw7KWTyGuutHy0uYxDMv9X3sk3SwQGY3o6cFYpOehfw
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On some platforms, PHY block requires PCIE_PHY_AUX_CLK to be used when the
PCIe link enters L1SS state. On those platforms, a dedicated
PCIE_PHY_AUX_CLK is available from GCC. Other than this, the PHY block
doesn't require any other "aux" clock, including PCIE_AUX_CLK which only
required by the PCIe controller.

Historically, the DTs of the platforms requiring "aux" clock passed
PCIE_PHY_AUX_CLK as "aux" clock. But over the period of time, platforms
that do not require this dedicated "aux" clock mistakenly started passing
the PCIE_AUX_CLK as the "aux" clock. More recently, SA8775P platform passed
both "aux" (PCIE_AUX_CLK) and "phy_aux" (PCIE_PHY_AUX_CLK) clocks.

So to clean up this mess, let's remove the newly introduced "phy_aux" clock
and just use "aux" clock to supply PCIE_PHY_AUX_CLK for platforms that
require it. For the platforms that do not require a dedicated "aux" clock,
the clock is removed from DT.

While at it, let's also define "qcom,sc7280-qmp-pcie-phy" compatible for
SC7280 SoC which was earlier using the compatible
"qcom,sm8250-qmp-gen3x2-pcie-phy" as the clock requirement has changed and
also restructure the "clock-names" property for the affected platforms.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 79 ++++++++++++++--------
 1 file changed, 52 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 6c03f2d5fca3..2396a457f9c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - qcom,sc7280-qmp-pcie-phy
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
@@ -44,19 +45,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 5
-    maxItems: 7
+    minItems: 4
+    maxItems: 6
 
   clock-names:
-    minItems: 5
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: ref
-      - enum: [rchng, refgen]
-      - const: pipe
-      - const: pipediv2
-      - const: phy_aux
+    minItems: 4
+    maxItems: 6
 
   power-domains:
     maxItems: 1
@@ -130,6 +124,28 @@ allOf:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7280-qmp-pcie-phy
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - enum: [rchng, refgen]
+            - const: pipe
+
   - if:
       properties:
         compatible:
@@ -144,19 +160,19 @@ allOf:
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
-              - qcom,sm8350-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen3x2-pcie-phy
-              - qcom,sm8550-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
-              - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
           maxItems: 5
         clock-names:
-          maxItems: 5
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - enum: [rchng, refgen]
+            - const: pipe
 
   - if:
       properties:
@@ -169,9 +185,14 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 6
+          maxItems: 5
         clock-names:
-          minItems: 6
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
 
   - if:
       properties:
@@ -183,9 +204,15 @@ allOf:
     then:
       properties:
         clocks:
-          minItems: 7
+          minItems: 6
         clock-names:
-          minItems: 7
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
 
   - if:
       properties:
@@ -215,13 +242,12 @@ examples:
       compatible = "qcom,sc8280xp-qmp-gen3x2-pcie-phy";
       reg = <0x01c18000 0x2000>;
 
-      clocks = <&gcc GCC_PCIE_2B_AUX_CLK>,
-               <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
+      clocks = <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
                <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
                <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>,
                <&gcc GCC_PCIE_2B_PIPE_CLK>,
                <&gcc GCC_PCIE_2B_PIPEDIV2_CLK>;
-      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+      clock-names = "cfg_ahb", "ref", "rchng",
                     "pipe", "pipediv2";
 
       power-domains = <&gcc PCIE_2B_GDSC>;
@@ -242,13 +268,12 @@ examples:
       compatible = "qcom,sc8280xp-qmp-gen3x4-pcie-phy";
       reg = <0x01c24000 0x2000>, <0x01c26000 0x2000>;
 
-      clocks = <&gcc GCC_PCIE_2A_AUX_CLK>,
-               <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
+      clocks = <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
                <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
                <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>,
                <&gcc GCC_PCIE_2A_PIPE_CLK>,
                <&gcc GCC_PCIE_2A_PIPEDIV2_CLK>;
-      clock-names = "aux", "cfg_ahb", "ref", "rchng",
+      clock-names = "cfg_ahb", "ref", "rchng",
                     "pipe", "pipediv2";
 
       power-domains = <&gcc PCIE_2A_GDSC>;

-- 
2.25.1


