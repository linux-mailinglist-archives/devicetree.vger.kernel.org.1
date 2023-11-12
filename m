Return-Path: <devicetree+bounces-15231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 466437E9216
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F401C280AB7
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FBDF16407;
	Sun, 12 Nov 2023 18:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vBsApbXS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CFB156EC
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:45:27 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C84A272C
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:45:26 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5a87ac9d245so43878507b3.3
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814726; x=1700419526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=au8K9WY/iUombJX3p1nFVf4VIUhW2X2Wokmw1tQzis4=;
        b=vBsApbXSF55+Ekkg08U1ZfSni7V0cBDupDRPMLBnVSEZnxAzWo1LmpKf+PzAlV+ALn
         QQ3h8ox7r5l3Ve6O9nNNQnE6xO3/4TpzMK7nfvS21y2Jc8CJ4uCglQCkOC22CE69okVw
         xGyiI6oRL5uWsuAho+lP8mDhoBlQf86AGAVl6/GinluI8NOaBWCmTRpY2mLUgotQmCLe
         XbZ7WbxW565ZrVrISigVU8MQGNyZN1XJNS5D0R2Eb9Nyw3QpUtDnSiniv1OWDlqe+rbh
         +mBdCp+M5Sj2rN1Cdb8/+OFB6mYPwxdc0UVmSbozt+JCLFWHmjFjVPcv7t1qxK1zKwj4
         5u7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814726; x=1700419526;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=au8K9WY/iUombJX3p1nFVf4VIUhW2X2Wokmw1tQzis4=;
        b=Wundj9Pvgx5fwf0reaaECQg0p+IVYmIPkLkfhKJv4O7jTbu13fSKwN1DgEmmbz9aiw
         BNnbVX+Z1jamxl+1uUuRp6CbLUL6i78hMt31vj9htgAeeLs4UG7ym5A7567ivMs8aJg7
         Pw4AILkIQ/H76gzhnnaHqb78mm6TSY55OvxUnnTO0bsRE+Z+ilE6/G5k9tnO6YkOs3Sc
         DaW3aCU8wphN3uPyG7WPYfJK0toUGDf8p2JX+SK+d6QFCyTAxQJRmu8iTLXdn8bYhhmi
         NXzk6wLcUsgHyG/26DB7G91fDx1ZgUG0r7r8ycpTRXaxiWxZo8VQAUgXwaCvQC8Dwfxh
         prQg==
X-Gm-Message-State: AOJu0YxNdVba8oczOBtqoW+/T9i0Wqb+W5pyhMcoHj4Lg0GbOO6VO611
	tG7QxHpFGX6lp0TT/0eKyQr0FA==
X-Google-Smtp-Source: AGHT+IF2udF2fwlU8PET8WHgbCKxefUzJrVDCjzQhTvpy1I45HhFrhD+hAOgyXZZdHCtBcEhLIyDSA==
X-Received: by 2002:a0d:d781:0:b0:5a7:d9e6:8fc6 with SMTP id z123-20020a0dd781000000b005a7d9e68fc6mr5142491ywd.39.1699814725807;
        Sun, 12 Nov 2023 10:45:25 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id u63-20020a0deb42000000b005b3f6c1b5edsm1309473ywe.80.2023.11.12.10.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:45:25 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iommu: arm,smmu: document clocks for the SM8350 GPU SMMU
Date: Sun, 12 Nov 2023 19:45:22 +0100
Message-Id: <20231112184522.3759-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the clocks for Qualcomm SM8350 Adreno GPU SMMU, already used in
DTS:

  sm8350-hdk.dtb: iommu@3da0000: clock-names: False schema does not allow ['bus', 'iface', 'ahb', 'hlos1_vote_gpu_smmu', 'cx_gmu', 'hub_cx_int', 'hub_aon']

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/iommu/arm,smmu.yaml   | 25 ++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 54c333ddf916..14dc54b0e7b3 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -429,6 +429,30 @@ allOf:
             - description: interface clock required to access smmu's registers
                 through the TCU's programming interface.
 
+  - if:
+      properties:
+        compatible:
+          items:
+            - enum:
+                - qcom,sm8350-smmu-500
+            - const: qcom,adreno-smmu
+            - const: qcom,smmu-500
+            - const: arm,mmu-500
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: bus
+            - const: iface
+            - const: ahb
+            - const: hlos1_vote_gpu_smmu
+            - const: cx_gmu
+            - const: hub_cx_int
+            - const: hub_aon
+        clocks:
+          minItems: 7
+          maxItems: 7
+
   - if:
       properties:
         compatible:
@@ -472,7 +496,6 @@ allOf:
               - qcom,sdx65-smmu-500
               - qcom,sm6350-smmu-500
               - qcom,sm6375-smmu-500
-              - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
               - qcom,sm8550-smmu-500
     then:
-- 
2.34.1


