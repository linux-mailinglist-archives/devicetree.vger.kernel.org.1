Return-Path: <devicetree+bounces-15232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E44B7E921C
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0E251F20FCB
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C42D8156EC;
	Sun, 12 Nov 2023 18:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VCKr8s05"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D67616407
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:46:09 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C25352715
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:46:07 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d9ca471cf3aso3752334276.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814767; x=1700419567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K0UezdLYD5scNL5kYSvTIK/LGcnTqVfERy2ExLqUR88=;
        b=VCKr8s05r+s7F1MKoBjoD9X5Yju/zxitaUofUYbxEcZRUVgOW5BfpPbmegldxh6aUv
         U0HdQ4gEfBsJ4rb7HgTCfT+Kp948hd+DZIun+JuZ4CBlFJXP0iDV19GWcH+juCKOX1z4
         wnuXMsKM+Du/f4T7Qwti/Jk4C2EDFBYgW6ZioMx0fuskJBDIqHYcVA2ceilM7WTYRSnG
         l/S+5GoC0Rkj+5NzXUltr1HzbsC0lVlkehEODlkdnOomVpQCF0mH0D9WMZ0+7QqsfJ8Z
         2kOdHBp2KVc/vCQ5JflzJ48q3QkyUwVJQKP9w9uN8ddnoIilwW64BmOCVnSQgAtH/IMA
         ISTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814767; x=1700419567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K0UezdLYD5scNL5kYSvTIK/LGcnTqVfERy2ExLqUR88=;
        b=ut/N/hpxMpmjtfpYQn1QbCCZdqwO2d8FPsHETaQDl8HXyUgXBHfGs210zlbh9EjraE
         MuruZKJDSOzv9bltqBBpNEkNFPvTlZ0QHP0lmAkh+sd5aaC87tL26KM+RK3QTuFfnHXq
         jDvvBHfxC9/rM4OdRTUO6Muvbx2Hlzl2yxYCkDaYk8umsLzsrQLZF7c7BgGFwaKmuKpq
         sRq7D8D4HmTFOqAsBC6l5+2f42Q4PYKk0xl5bd5TB2BeTZb+4sgOhMCK86fzABVztfPQ
         a6AmFp0vwbPT4g7lwkWMAt30CDPixxck1SgRALhARDp7Ugjgsja/G3dTABjoshMFWTZE
         MWzA==
X-Gm-Message-State: AOJu0YyU7FbUvQhvIvXBMiWx6QC/2TvzxUvl/1jErRZ93NwRN76+55nv
	Ad9UHJ8vaA6sZdU7+ICbfK/ir0EoIVmhpWxwIRR6qQ==
X-Google-Smtp-Source: AGHT+IGzMDV42Dc+z6kVlgJlDpbc3rB95mpnZwob8pQsfQOsfIb2nXUi2vL3ixJhYc5tnfaiJtoJ4A==
X-Received: by 2002:a25:33c6:0:b0:daf:6259:43d8 with SMTP id z189-20020a2533c6000000b00daf625943d8mr2987278ybz.36.1699814766920;
        Sun, 12 Nov 2023 10:46:06 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id o17-20020a258d91000000b00d995a8b956csm1104185ybl.51.2023.11.12.10.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:46:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: PCI: qcom: adjust iommu-map for different SoC
Date: Sun, 12 Nov 2023 19:45:56 +0100
Message-Id: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PCIe controller on SDX55 has five entries in its iommu-map, MSM8998
has one and SDM845 has sixteen, so allow wider number of items to fix
dtbs_check warnings like:

  qcom-sdx55-mtp.dtb: pcie@1c00000: iommu-map: [[0, 21, 512, 1], [256, 21, 513, 1],
    [512, 21, 514, 1], [768, 21, 515, 1], [1024, 21, 516, 1]] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 8bfae8eb79a3..14d25e8a18e4 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -62,7 +62,8 @@ properties:
     maxItems: 8
 
   iommu-map:
-    maxItems: 2
+    minItems: 1
+    maxItems: 16
 
   # Common definitions for clocks, clock-names and reset.
   # Platform constraints are described later.
-- 
2.34.1


