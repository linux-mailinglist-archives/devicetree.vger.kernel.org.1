Return-Path: <devicetree+bounces-36991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7254D84371C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28DB7285299
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF973E46D;
	Wed, 31 Jan 2024 07:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B5xAY3Oc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134A44F8B2
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684878; cv=none; b=TPdXa8pjFu+2dIz9F+vkIjajGHmM9mj1y/XB3Z5Xh0q0hss4S2kX3vXaKF4tUx5NuYiO6rTZS9G69FKgHY9+f51sEzyJqC7RiRgVv0Ssi6Rgt+pdcXDAauRJDyEKmqxcrR1XDFbXLXDNRn2Fp//C3EDEuvwIVI8MK5f4uV+9Q+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684878; c=relaxed/simple;
	bh=ml/UM28kjmlc+frUcnxa+j2RW6/d0+c3kGBo/EvxtPo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FcCjA9t4MVuQJNw6l8lET6TiFsfak7sF1h17LUj7NB0yT0+EV42tktQ1QUhXAsCKoXKtRl6YLK0hErJjUTGy+p23gluEmHGnIHWS7OLECvoNJieLaaXhsPSAownOrxIBfz+Ua/yQk1IITIEd6RVXoGD7Gd1Q5Uosb6CDyNCwqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B5xAY3Oc; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-5d8bc1caf00so3003648a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684876; x=1707289676; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=coxloDouSUUvKnRVFNrYwU4912onDxzNLQ/Lzm3Gahg=;
        b=B5xAY3OcVq6vU77Qswdin5rNUbEvStUT44EXA4JkMu0MiE91MUdgB30XNvjisn+uQS
         8zx4ijdhf1sTeYZY5Y3R4Y41Pvellsd5QO5DF9aJcK7ek1jW10oYPPBeLPhfP6Lfkxq4
         aXWnbccyXvYPv8RF+xX4qwHdOZSzchwy9bSNqdfguwnQykvNvncbUmlDs4bhMXiscb97
         L0WeC5kvAmC1e3Jg14guvxDKLzsLd1z39sBfDpy3uyKsiEpLNlgltCz8uxahqVZabEtc
         zkIXmU0nnkUG9dJrc0zFQ1DL8zLGIkMSaEfW0n7ztQwcQl0q6KnyeJ3+4VzfMY7qakbF
         cY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684876; x=1707289676;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=coxloDouSUUvKnRVFNrYwU4912onDxzNLQ/Lzm3Gahg=;
        b=D6LfEMPTLn8nUFNKKJQbFeVS/g2fZnCT7jKs2YVZZ0d9Ngh+iDitUClV6F/mfdz7xo
         xmC+oDNV1rJvuQG7BgVZePZdW0FNH9dceHsb+7AvgSCYfuykTOUdHfgCasEeLVJapa/Z
         A54VXvW7o02S77SvnI4IyKoYw0HZGyohtYTlR1GTUO+bFoYBUq3OrrlwhlQtU0IvxxlH
         YzEDt+XDkdIoSfJoaOTvUg/fm0JGr6qmKZEu7TTpDfSEGwO3aqJHLcUbdROj8MGJvIOA
         419HsZk0REmbVgOkBIMR1d3mufhoZx+4ReKMorAEhh8zktA/62YxTqhFNnIZsBWS7rtw
         LfDQ==
X-Gm-Message-State: AOJu0Yzofxz/zVJHPnY5vqmudVABnng51A/Gn9RCAo41K6i0OrYTK/Du
	RoWlKjQnkZjp2F/FHONC6KaqwIBwjP/lgfed3zb8rybNJfd4M/qIbLxpRi+NmQ==
X-Google-Smtp-Source: AGHT+IHUy0XPbMF4KwS60BBVoH/xkV/oZdh8S9A4JKqzGeq7rtyDQzOffoPagqAFRnuPhp4OsfOf+w==
X-Received: by 2002:a05:6a20:b99d:b0:19c:8505:a232 with SMTP id ff29-20020a056a20b99d00b0019c8505a232mr660070pzb.40.1706684876422;
        Tue, 30 Jan 2024 23:07:56 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:07:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:24 +0530
Subject: [PATCH v3 01/17] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-1-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3589;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=ml/UM28kjmlc+frUcnxa+j2RW6/d0+c3kGBo/EvxtPo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG790GDMMLVLzZeV/Q9JRjDC1zn2/vd0of52
 gXjQqF7AuCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxuwAKCRBVnxHm/pHO
 9ciGB/0TP8dhgNW+Upo4kF97YvCsnKZIv3FUbqCT/SokeCap2KZPfFokITJmj84238+AtQ/j8EC
 UuI/Cptq5CUkY8W7WSJXhj2QbHlEsQVUSoFAtwcJgqkk6RJ/iQk7D7JgozqmrDPqpigiR0J9R1n
 mqRzD0ayr2SOMNlWLGwpNZvvZEOIV2H9dMHmIhpcMOh2jcKn1Pv61VvhSxsfyOPOYNQSmHbmyzp
 uhl32nYOLLxrOc5JAMrISgKTBjLZNHb60J/+yiIx6o1Nq9bjVCzQ81+JJnRYckgp0SmP9SPTgme
 dA2DQxbf8HIJ95K2EembigLgZLObil316MycK6KkIXtdj1yD
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

All QMP UFS PHYs except MSM8996 require 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC or TCSR (since SM8550)

MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
reflect the actual clock topology.

This change obviously breaks the ABI, but it is inevitable since the
clock topology needs to be accurately described in the binding.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 48 ++++++++++------------
 1 file changed, 21 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 5faa1cb3a12e..91a6cc38ff7f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -39,15 +39,12 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 1
+    minItems: 2
     maxItems: 3
 
   clock-names:
-    minItems: 1
-    items:
-      - const: ref
-      - const: ref_aux
-      - const: qref
+    minItems: 2
+    maxItems: 3
 
   power-domains:
     maxItems: 1
@@ -87,23 +84,9 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
               - qcom,sc7280-qmp-ufs-phy
-              - qcom,sm8450-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          minItems: 3
-        clock-names:
-          minItems: 3
-
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
@@ -114,14 +97,19 @@ allOf:
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
               - qcom,sm8650-qmp-ufs-phy
     then:
       properties:
         clocks:
-          maxItems: 2
+          minItems: 3
+          maxItems: 3
         clock-names:
-          maxItems: 2
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
 
   - if:
       properties:
@@ -132,22 +120,28 @@ allOf:
     then:
       properties:
         clocks:
-          maxItems: 1
+          minItems: 2
+          maxItems: 2
         clock-names:
-          maxItems: 1
+          items:
+            - const: ref
+            - const: qref
 
 additionalProperties: false
 
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
 
     ufs_mem_phy: phy@1d87000 {
         compatible = "qcom,sc8280xp-qmp-ufs-phy";
         reg = <0x01d87000 0x1000>;
 
-        clocks = <&gcc GCC_UFS_REF_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-        clock-names = "ref", "ref_aux";
+        clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+                 <&gcc GCC_UFS_REF_CLKREF_CLK>;
+
+        clock-names = "ref", "ref_aux", "qref";
 
         power-domains = <&gcc UFS_PHY_GDSC>;
 

-- 
2.25.1


