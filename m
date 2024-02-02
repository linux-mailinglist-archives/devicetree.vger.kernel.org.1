Return-Path: <devicetree+bounces-38101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7659A84778D
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 19:35:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D774D1F2B512
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 18:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC24151CC9;
	Fri,  2 Feb 2024 18:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OKljdHPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C210214E2DB
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 18:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706898902; cv=none; b=dnu4u7ahYVbbDudOC+bOlXImCegRdlawGVKi0zusHdIBBIo4h5KF06SGK2Jgekbf7rLVnLuUWyT/n22l1kwc+VojG0Qc3RbNFvlDndoQ/pXX+kvzAqX2TvBRcjeqZKYBUp/xY0FL4PWPxziwRSRvyEKbYC4zSvvxqsRSmJEA1S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706898902; c=relaxed/simple;
	bh=k///e1KzpDnCc228R66xHigJDPcNt/klKkR8uId+QKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sldFserNI4fMQaP6MHWDORXDeZjEGzQAJG/4eQPCAybUYUBMceennYd+lT3f1tHiqYUJuM+r/F9IGsPeA4XdsY3PhhdF1h/k3c6bQUEp9+8677hNMs3AzRAN0nECP928R2WZ7mUTWkkY3gOauGlxPbH4YtqGEzFgfO/UCusvtqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OKljdHPt; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a26fa294e56so342948466b.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 10:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706898897; x=1707503697; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K2Wt9fAXkZ3ocbSZ++hiJKJPMhMtN2kMdg9DBtyKus4=;
        b=OKljdHPtoDmSmrC4UbvYl3KJGRtXFJeWgWEGF69LDZNzHRDAwa/a2EcAkIByswvm6l
         59sSco9NF8tnVO71r/fJoRsQZiU+lBrM4BboXN2MuZcxTwhQzwIJPlk+opoAyycZPB5q
         SI1T4LYISKk8gFu76fXspFa8c4+kIJPniXkzgjkYrJgPtAp1OItaBVqqnXwGFUq/eN6U
         i9Mx9lGA8ujTIPiv0z1raluxcfgeMIG6OMIhRcF9LZIFM0+gSge76+xzzQwx8xS5j9fz
         lcq2RnuCHHAlL4zksEfPHxNpXQ0M2GAEKomT6qii6fOE+7rVJHjuhOBBvR/3+jeRWbGg
         6vEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706898897; x=1707503697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K2Wt9fAXkZ3ocbSZ++hiJKJPMhMtN2kMdg9DBtyKus4=;
        b=MLYtUYmC1lv0gPcUTqcC1I2QPytnDZbxVi5nDbn8qfpG5uxn0jgb5Jbn2bU6ZILcZ/
         +yiXnPEbOjNt++84XIJ4oBxWw0cRhTdetFrv1inO0Xrde12lZcG3M8CrLdRkaB5oL6dc
         tREH5iJv5S32Ahu1/ff2p/mudTb6ET5soYkh6bPDk1mOK7oLPUvObeC/j9hLalRwy/nc
         0vLeCKOHhoITJVQuVcl08UzoXaUqsWsv8b9o7foNu25fQrSSzp0FGuANFPpqjUP35Ety
         gltvRB21NMYbnyw3RcPjs7Jja3IfLqXS9dy6rkgiaApRpoV0Rd/4MxZB0gQuSEDfBvnS
         Nl3w==
X-Gm-Message-State: AOJu0Yx7Tf2UjEpGPdvXMfUC/XjZpIj1fkx6I7Y7x9lOCCiaKF60XzNN
	gG49MYdsXFiC1lWMZ7hp4MVZ/YyoMRTAbwfHGK4o+O3T4/+2cKIBiUAjUn2RiVs=
X-Google-Smtp-Source: AGHT+IEoAD8DGl7zKapo5rDXpBDP9Q9w/6cjHz+DtXQnOltEHbn7bM1ZIe6qsN3omQCEUpBRGgpRBw==
X-Received: by 2002:a17:906:30c1:b0:a37:3b41:4587 with SMTP id b1-20020a17090630c100b00a373b414587mr143322ejb.13.1706898896997;
        Fri, 02 Feb 2024 10:34:56 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVjz+9skoTwBjJM8yhHSpFaP3HSBFII2nxbDKMDvxswUeEo4ckktJEZfLhROKud/P6WYCLwLPRUwyvkn4GFoc2u6d8Lh+RtsRCzwk7bmAF/vEXzK2hh1tEouK9JaIsozzeTHtrkuZ52h/yEa2yPgqPmtinAwu/bXhANB3bOpDqgCroiriu93dYh5FNsyRB91QHE1U3Fe6SABEDx57bdqB0qfSqDuTzUFHj9imzfSlv4/mDXsFpv7KAe4mrmn2K1yhYd38e/8+Na5JaCjrn3agQc0vn82hrvooDNOJ4RY85jME2dkVpmpl4/1WKBJcrAJ5AeHUChTvdAiEMm8xiNf9IqL2wmwDydtSaqJId8N1tY9Qp4y5EbBcyPSB91z/VtrRpUuAGfeEETb9MNP8ciZlPDnPcmWaINmNJFHhoT70MEGw62g3J+GfHAzScgtY98qNKYqZ4wMZHX87i9Mk1OdIyrMhFmWeTRERE/crf/99rpdUL9L97wsYg4tK3d7E0Iwr2pUi2D9xs5x4irGE1KU816lsisfQFgiqT3M102WA92tUr3JkcQi78D5tcPQLWhsnVX6jaVHchNMjAqzk0i/aEo8Gmt2lruyf/yohvq77M64KTBtU3v4slSAel35tuah5dM
Received: from [127.0.1.1] ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id vh10-20020a170907d38a00b00a36fa497a65sm1051328ejc.110.2024.02.02.10.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Feb 2024 10:34:56 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 02 Feb 2024 20:34:36 +0200
Subject: [PATCH v4 01/10] dt-bindings: clock: Drop the SM8650 DISPCC
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240202-x1e80100-clock-controllers-v4-1-7fb08c861c7c@linaro.org>
References: <20240202-x1e80100-clock-controllers-v4-0-7fb08c861c7c@linaro.org>
In-Reply-To: <20240202-x1e80100-clock-controllers-v4-0-7fb08c861c7c@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4633; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=k///e1KzpDnCc228R66xHigJDPcNt/klKkR8uId+QKc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlvTXC2oW5wbJNhYAbmk2mq6p2Za8La6gGjACt4
 u6+hg48j1iJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZb01wgAKCRAbX0TJAJUV
 VrrsD/0U2PUg6fX2OENsizm9HR+nh83SbUWKt/cG9WaOhmy8bn7Y+aRjI6vWAJ71H07Xhrr2kXG
 rN4cadcELJ8T0sDe5CLG8YguP9+g5ICsJ9Ez+gqWatYrruuKT6Jcj4bNFI8NR1mm7YTl1dsmKHC
 AZQ1T0AUhRoSpk7mLvWjG4nOO7b9Oc/7rlqwGGb/F+0oW7CerSsGMc+mt3eJPYuJMLs2MKt7T+Q
 MBu4m9DYoMMYzmrtf2txtukJrFIA9QSxuxWRRnvefMbdTJQTPT6nTjx2oriUxB4aBBf5qvHYHGe
 bJkjRrefjiqQtpDQm3XgAazO97XttUzHffJzQ+N254WOUvJ36/jFW1ag+vsrwpwHSZ+sg14i9Mn
 8xvqNaSt3wZovirRqdGHEIem56sYiB22UHcLMi3ZgQDB1TXBtJbT+t47ucCznm4urC97O1rcXSA
 JxXlaXMAl3DcvcEtRo25laZJg9UqPJTQ3+nIlDPLjZC97OakkFOTHFFgQzY2UUiZ2a3R2rGugcu
 nBTBSMHhsbOnQNiTpTNP7IP02rdZgzOjv0gGphYUmP5yfIshWyb8RBhDVT6KeSVQmSxbaM6aUKJ
 rnuZ/saaZTLt+ZtWuz/Y91hdRDVI6guoZ9Bsa4jPeamqwIGVDlFEh7w9QVGWlVa71Ibu32LMCzy
 vUBcVKnQxedVOPg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The block is the same between these platforms, at least from devicetree
point of view. So drop the dedicated schema and use the SM8550 one instead.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../bindings/clock/qcom,sm8550-dispcc.yaml         |   5 +-
 .../bindings/clock/qcom,sm8650-dispcc.yaml         | 106 ---------------------
 2 files changed, 4 insertions(+), 107 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
index c129f8c16b50..369a0491f8d6 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-dispcc.yaml
@@ -14,12 +14,15 @@ description: |
   Qualcomm display clock control module provides the clocks, resets and power
   domains on SM8550.
 
-  See also:: include/dt-bindings/clock/qcom,sm8550-dispcc.h
+  See also:
+  - include/dt-bindings/clock/qcom,sm8550-dispcc.h
+  - include/dt-bindings/clock/qcom,sm8650-dispcc.h
 
 properties:
   compatible:
     enum:
       - qcom,sm8550-dispcc
+      - qcom,sm8650-dispcc
 
   clocks:
     items:
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8650-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8650-dispcc.yaml
deleted file mode 100644
index 5e0c45c380f5..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sm8650-dispcc.yaml
+++ /dev/null
@@ -1,106 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sm8650-dispcc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Display Clock & Reset Controller for SM8650
-
-maintainers:
-  - Bjorn Andersson <andersson@kernel.org>
-  - Neil Armstrong <neil.armstrong@linaro.org>
-
-description: |
-  Qualcomm display clock control module provides the clocks, resets and power
-  domains on SM8650.
-
-  See also:: include/dt-bindings/clock/qcom,sm8650-dispcc.h
-
-properties:
-  compatible:
-    enum:
-      - qcom,sm8650-dispcc
-
-  clocks:
-    items:
-      - description: Board XO source
-      - description: Board Always On XO source
-      - description: Display's AHB clock
-      - description: sleep clock
-      - description: Byte clock from DSI PHY0
-      - description: Pixel clock from DSI PHY0
-      - description: Byte clock from DSI PHY1
-      - description: Pixel clock from DSI PHY1
-      - description: Link clock from DP PHY0
-      - description: VCO DIV clock from DP PHY0
-      - description: Link clock from DP PHY1
-      - description: VCO DIV clock from DP PHY1
-      - description: Link clock from DP PHY2
-      - description: VCO DIV clock from DP PHY2
-      - description: Link clock from DP PHY3
-      - description: VCO DIV clock from DP PHY3
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-  power-domains:
-    description:
-      A phandle and PM domain specifier for the MMCX power domain.
-    maxItems: 1
-
-  required-opps:
-    description:
-      A phandle to an OPP node describing required MMCX performance point.
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,sm8650-gcc.h>
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    #include <dt-bindings/power/qcom-rpmpd.h>
-    #include <dt-bindings/power/qcom,rpmhpd.h>
-    clock-controller@af00000 {
-      compatible = "qcom,sm8650-dispcc";
-      reg = <0x0af00000 0x10000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>,
-               <&rpmhcc RPMH_CXO_CLK_A>,
-               <&gcc GCC_DISP_AHB_CLK>,
-               <&sleep_clk>,
-               <&dsi0_phy 0>,
-               <&dsi0_phy 1>,
-               <&dsi1_phy 0>,
-               <&dsi1_phy 1>,
-               <&dp0_phy 0>,
-               <&dp0_phy 1>,
-               <&dp1_phy 0>,
-               <&dp1_phy 1>,
-               <&dp2_phy 0>,
-               <&dp2_phy 1>,
-               <&dp3_phy 0>,
-               <&dp3_phy 1>;
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-      power-domains = <&rpmhpd RPMHPD_MMCX>;
-      required-opps = <&rpmhpd_opp_low_svs>;
-    };
-...

-- 
2.34.1


