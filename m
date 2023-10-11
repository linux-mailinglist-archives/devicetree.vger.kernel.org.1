Return-Path: <devicetree+bounces-7733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D287C53D2
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D02F281258
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7971B1F17E;
	Wed, 11 Oct 2023 12:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FAUGLiu8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDE51DDF1
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:26:15 +0000 (UTC)
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5C5E3
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:26:12 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3ae35773a04so4652489b6e.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697027172; x=1697631972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajLtfok9CWqCwja1uJsqZOOGL/HNBxULXlTNnK81mjM=;
        b=FAUGLiu8I5xzzmo+/uGIknBc1/UyuEqH1/WopQm8Wj685g/p0wmWDMMk5CKKKFLhkq
         ZTHm59YDVYGka2FQUkYq9WGLsH357nslEHwzjjjYhx9OkZ492zMyHZVAR3r2onZQCFui
         x074uM/n0atlQap8/lM4J2Jry+5id+S1O9hJ12vMrDq8QfAXPH8A6kqG8II0eV3YG55B
         GnOOqaUEOGdVSsvC/EgeaUgvYaHeEg3LwMiybgrxD2vtrmjHYEldhsMnkVDHCnS+gW/Q
         YVfvSkOO/rPlj89BVUevoodDF9bjLW1O2YMuN6qygeEaU969Wq9fMf0V9umIqYqUg1eF
         4lDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697027172; x=1697631972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajLtfok9CWqCwja1uJsqZOOGL/HNBxULXlTNnK81mjM=;
        b=nNA8g4MbEtU3z4SyHgS5WYcsq+CbKOy8Rnv0FPjSlAbMKQYUEfxPpj+A8ApDD4ltvD
         f8mkN3zXyPYklDO4bSHFeyd05QZu8zGFd5ih689tPn3BnNA+jOaMZimZXxtyhEaQL1hG
         3cSCIRV575Pqe0D+PoP17twP3I+E5APZVdNHvqvyVH82wr/ht2MflaxVmCv94Yc391eJ
         HyD0C4O4kEGbWxrGkIWJm/ypoYnzVeQy6vN8xdKZhiRZBQrMyVJz5FgGh73OjEK5vDfM
         zUL3v2SBBxN1IMCceixG1CJNRnrcBjBilub/KCms2QZMO4BmjgMeFxg+v40vB4Qfr0sG
         zD+A==
X-Gm-Message-State: AOJu0YwHebsUTPL5Xzni3c2d3oE4UHDILxxt3BzS+J/pznTvr/OpxI55
	rSFeItL+GzzPujCi9kzb3lOz
X-Google-Smtp-Source: AGHT+IGBhTb9lrUeO8oz/kYG3VT7kbp6AST3wqkX7dtoOpiNSSUjATNnt22wzJ9hL604HZpdoArbeg==
X-Received: by 2002:a05:6358:919a:b0:143:5826:dece with SMTP id j26-20020a056358919a00b001435826decemr21895407rwa.25.1697027171716;
        Wed, 11 Oct 2023 05:26:11 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id a19-20020aa78653000000b0068fb8080939sm9953620pfo.65.2023.10.11.05.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 05:26:11 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vireshk@kernel.org,
	nm@ti.com,
	sboyd@kernel.org,
	myungjoo.ham@samsung.com,
	kyungmin.park@samsung.com,
	cw00.choi@samsung.com,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	linux-scsi@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_asutoshd@quicinc.com,
	quic_cang@quicinc.com,
	quic_nitirawa@quicinc.com,
	quic_narepall@quicinc.com,
	quic_bhaskarv@quicinc.com,
	quic_richardp@quicinc.com,
	quic_nguyenb@quicinc.com,
	quic_ziqichen@quicinc.com,
	bmasney@redhat.com,
	krzysztof.kozlowski@linaro.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 1/5] dt-bindings: ufs: common: add OPP table
Date: Wed, 11 Oct 2023 17:55:39 +0530
Message-Id: <20231011122543.11922-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231011122543.11922-1-manivannan.sadhasivam@linaro.org>
References: <20231011122543.11922-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Except scaling UFS and bus clocks, it's necessary to scale also the
voltages of regulators or power domain performance state levels.  Adding
Operating Performance Points table allows to adjust power domain
performance state, depending on the UFS clock speed.

OPPv2 deprecates previous property limited to clock scaling:
freq-table-hz.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/ufs/ufs-common.yaml   | 35 +++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index bbaee4f5f7b2..1cb022cdc349 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -6,6 +6,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Common properties for Universal Flash Storage (UFS) Host Controllers
 
+
 maintainers:
   - Alim Akhtar <alim.akhtar@samsung.com>
   - Avri Altman <avri.altman@wdc.com>
@@ -20,11 +21,24 @@ properties:
       items:
         - description: Minimum frequency for given clock in Hz
         - description: Maximum frequency for given clock in Hz
+    deprecated: true
     description: |
+      Preferred is operating-points-v2.
+
       Array of <min max> operating frequencies in Hz stored in the same order
-      as the clocks property. If this property is not defined or a value in the
-      array is "0" then it is assumed that the frequency is set by the parent
-      clock or a fixed rate clock source.
+      as the clocks property. If either this property or operating-points-v2 is
+      not defined or a value in the array is "0" then it is assumed that the
+      frequency is set by the parent clock or a fixed rate clock source.
+
+  operating-points-v2:
+    description:
+      Preferred over freq-table-hz.
+      If present, each OPP must contain array of frequencies stored in the same
+      order for each clock.  If clock frequency in the array is "0" then it is
+      assumed that the frequency is set by the parent clock or a fixed rate
+      clock source.
+
+  opp-table: true
 
   interrupts:
     maxItems: 1
@@ -75,8 +89,23 @@ properties:
 
 dependencies:
   freq-table-hz: [ clocks ]
+  operating-points-v2: [ clocks, clock-names ]
 
 required:
   - interrupts
 
+allOf:
+  - if:
+      required:
+        - freq-table-hz
+    then:
+      properties:
+        operating-points-v2: false
+  - if:
+      required:
+        - operating-points-v2
+    then:
+      properties:
+        freq-table-hz: false
+
 additionalProperties: true
-- 
2.25.1


