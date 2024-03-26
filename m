Return-Path: <devicetree+bounces-53555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C04F88CB39
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 18:46:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88E551C2F738
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C502110B;
	Tue, 26 Mar 2024 17:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eS1Kh0c/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E0F1F60A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 17:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711475200; cv=none; b=Hof2Wm3XPHvWVTQG9brMYIPbtiOCmNPrP6RPL7mRABxonVYrybJYQdykFiLvjNDK2avAc7+j3ynRBSI71oHqiHHBLf3OjyemhDePnDtRsv2hAxji/BZLWz6EFLnX67vtKelHEJFVzk8zvtkBbiTPgjJDT8YG7kpUkNn7YzENeXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711475200; c=relaxed/simple;
	bh=Az76Er8yXjZV/tqoHhSzJRIVBRn0rXo06jGlOz2rx8Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cPmLAJ4XNewMgXeS8Rhfolcdt4ydvVW7oWqOy/O8LSJGxz1SbRnkBvJ/Nln1qcQH/wJeRu0XGJIAyhf5xQVWkbl5n8/lqoipRxuNx4TwBij0DAb6BjOFRPMw8NTFitCh4CQoWGQxtLOw6VIGPt6g4IDurkLSRmzp0CZIeZh1rr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eS1Kh0c/; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56c08d1e900so3423290a12.3
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 10:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711475197; x=1712079997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMq/Chsdogq+cfRuHXND3ep8x+cn4B09GRV/ht38i7U=;
        b=eS1Kh0c/FOy5NJYA0S6xP7LpznhK0XAGKYzfH0H58he3fORWd8LHvqTDk1wnbl4TXn
         VpfFCL4d/N/LIQv0lBpyeRaX9lGfaYTuKLyL6VYXHRIZf+dedj7uLKMQXwBVFMQtHu4G
         ceqPBEmFYxse/yi33Sc1Ht6R2IRtB5+80fyuDw6OFSYPmaitvBcYRvUD3TSON7S50gDE
         LBgdbyM/aeD7Kmu4p1gNDOtQKd8AVj11eIvdS1nepohMTMGnhGLo3NwBcdioYy+z2P96
         jX9Z2JelKmm38dIyrxm9tW/Jm1UmqHIiU9h10VvcS40//raXva/y0DCAaiZE7sRNSd6q
         UcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711475197; x=1712079997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMq/Chsdogq+cfRuHXND3ep8x+cn4B09GRV/ht38i7U=;
        b=ub+UeuEbA/0Fa5rJA8oIgX6n3jk81ynJ+/ZnClIhxslc7OBAc9uIZOiVl22n19apoX
         JHggyvGiOaL5H25q52jYPbswPIb0ybIKGyqh69uzQ+5ABqWPNGGjAeUhKonIrxu1myS5
         uZSvCp/vJw7PAoJPEW8bD06CEq4fP3zj9dsau7dLaWfYM64p+qM4QWKazJ5IRtVDgleq
         Y9MepoW3yCT2RCc7ld/f7ZUjDaonzkdV1itDePrvTr6chxPHp4z13MjLpwv9IuC9sYMS
         LMp2fZLf/TzAYtmi95MSclyyZzSmWWe3I0uV+/kZi0uvleiUhpwqHcpSkfVT6xpuPNBt
         +WVg==
X-Forwarded-Encrypted: i=1; AJvYcCU/NBGb3MguWTfa1WzwX7etQPkMju5grK5rK9FRsIjp1YmS4du29560ZeiO4V28qfQPSyYvdwEldCz+R1xIV8I7khRArJ8QLtPamQ==
X-Gm-Message-State: AOJu0YwCg37WNlTZmlMq5RlzRG9QsErUxRPlI/Jk53/s60I2eUh58Vcr
	0i3iKx/Glum5BMXT0m1dKuGzJeIKjP9ZJfVQhJRbBIFvgs0oPUjlreCo7JKA8qw=
X-Google-Smtp-Source: AGHT+IFsb/a8yspkgTaU63ejswPOvVq7IprH+YwgB965qrt8TOYqeYtYghC4E1sSxqaEMfHnP4XXUw==
X-Received: by 2002:a17:906:d10d:b0:a47:16d1:113f with SMTP id b13-20020a170906d10d00b00a4716d1113fmr2580119ejz.47.1711475197572;
        Tue, 26 Mar 2024 10:46:37 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090612d300b00a46cffe6d06sm4451438ejb.42.2024.03.26.10.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 10:46:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] dt-bindings: ufs: qcom: document SC7180 UFS
Date: Tue, 26 Mar 2024 18:46:31 +0100
Message-Id: <20240326174632.209745-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240326174632.209745-1-krzysztof.kozlowski@linaro.org>
References: <20240326174632.209745-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document already upstreamed and used Qualcomm SC7180 UFS host controller
to fix dtbs_check warnings like:

  sc7180-idp.dtb: ufshc@1d84000: compatible:0: 'qcom,sc7180-ufshc' is not one of ...
  sc7180-idp.dtb: ufshc@1d84000: clocks: [[39, 99], [39, 7], [39, 98], [39, 107], [36, 0], [39, 106], [39, 105]] is too short
  sc7180-idp.dtb: ufshc@1d84000: clock-names: ['core_clk', 'bus_aggr_clk', 'iface_clk', 'core_clk_unipro', ...] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/ufs/qcom,ufs.yaml     | 34 ++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 1ab3d16917ac..7e6d442545ad 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc7180-ufshc
           - qcom,sc7280-ufshc
           - qcom,sc8180x-ufshc
           - qcom,sc8280xp-ufshc
@@ -43,11 +44,11 @@ properties:
       - const: jedec,ufs-2.0
 
   clocks:
-    minItems: 8
+    minItems: 7
     maxItems: 11
 
   clock-names:
-    minItems: 8
+    minItems: 7
     maxItems: 11
 
   dma-coherent: true
@@ -113,6 +114,31 @@ required:
 allOf:
   - $ref: ufs-common.yaml
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-ufshc
+    then:
+      properties:
+        clocks:
+          minItems: 7
+          maxItems: 7
+        clock-names:
+          items:
+            - const: core_clk
+            - const: bus_aggr_clk
+            - const: iface_clk
+            - const: core_clk_unipro
+            - const: ref_clk
+            - const: tx_lane0_sync_clk
+            - const: rx_lane0_sync_clk
+        reg:
+          maxItems: 1
+        reg-names:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
@@ -250,7 +276,7 @@ allOf:
         reg:
           maxItems: 1
         clocks:
-          minItems: 8
+          minItems: 7
           maxItems: 8
     else:
       properties:
@@ -258,7 +284,7 @@ allOf:
           minItems: 1
           maxItems: 2
         clocks:
-          minItems: 8
+          minItems: 7
           maxItems: 11
 
 unevaluatedProperties: false
-- 
2.34.1


