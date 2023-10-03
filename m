Return-Path: <devicetree+bounces-5497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D09817B675E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E2E591C20473
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B0B2111C;
	Tue,  3 Oct 2023 11:13:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B683A1A286
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:13:00 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C00CE9E
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:12:58 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c752caeaa6so5620245ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 04:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696331578; x=1696936378; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJn/XE5IZh1ViEk2mkl0oILYWUWFd3CGaoQa/Tto8Gw=;
        b=RyuDWkD9tJhj5YN44ILORB5JNlwqb7EWKT0HChFRPblJusW1iqG2/K50sDPDDB1cUb
         iAEWdgB4mrL+LDrIscqfodLBikbf/RY+FNewkDCK53ZfNYkSum239RDFQaHWani6Ztru
         3GopquKiM2t3nw23lvcR4GBFr9oOVon/8fbRwxtMAOGSZsnMvy2bgxmHHNMtjWkoXBGZ
         chI8y+UdM3LjUARDnlSc3qfLvIKbLBgGeVgIaTQsmMVA10PFuxyLVpcaa6yqi3t8HJLO
         C4VOl2At+RbgdaP9ImxRWMtjJNAY6URmfBRo2EIfSfSJFbQ1QywnJ7iT6QB0Wmgz2rmK
         edXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696331578; x=1696936378;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJn/XE5IZh1ViEk2mkl0oILYWUWFd3CGaoQa/Tto8Gw=;
        b=we1ay4sczIsh8BmM9ZM78ScPwnKb/gtM0M+0Zn1rkw2fMOVz8YgMXQvMICYkOrkU0b
         xhgNYNV7YOLlgluZlm53l03im23AGRSBAmfgcOgf8b/KLZnD7hRe0ArFSuAUo19SAeHi
         jSbfUTGS8QktsDgxQxttJ8p0Ta0Onk+/GVCNkIGqbL6VkwYKKZaspWT0qqKbMcbwMWJe
         mt62PSSAyYqdsfeCJQ/nkuDN+uVduYW1RzoOEG/oaD9Z1FwO9nvTraor1s4NjdI/Co33
         bTcFnXzBowJJc8QUv9mjgmysKc/L8v53/ssjMJe0ikTdt0hx5gYhcH+o3+iEf7N7wbSm
         8NAg==
X-Gm-Message-State: AOJu0YzKIYq8QUDzKe1mxVkGhLu4RJ3YmSIQTsZOQPt5NBPIMGKLPwLx
	oqbwbwFhoOJj1jF2w1o7NVXg
X-Google-Smtp-Source: AGHT+IE0lSrF6SzJLMpQ/0kKJ9ghVS9vUDi4JoGX11BrkGN8gx1tpMxZTsY4ro8fWAvXE1LqKDxu4w==
X-Received: by 2002:a17:902:8649:b0:1c3:1f0c:fb82 with SMTP id y9-20020a170902864900b001c31f0cfb82mr10669936plt.41.1696331578185;
        Tue, 03 Oct 2023 04:12:58 -0700 (PDT)
Received: from localhost.localdomain ([117.217.185.220])
        by smtp.gmail.com with ESMTPSA id d9-20020a170903230900b001ab2b4105ddsm1250328plh.60.2023.10.03.04.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 04:12:57 -0700 (PDT)
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
Subject: [PATCH v4 1/6] dt-bindings: ufs: common: add OPP table
Date: Tue,  3 Oct 2023 16:42:27 +0530
Message-Id: <20231003111232.42663-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
References: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
 .../devicetree/bindings/ufs/ufs-common.yaml   | 36 ++++++++++++++++---
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index bbaee4f5f7b2..d7d2c8a136bb 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -20,11 +20,24 @@ properties:
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
@@ -74,9 +87,24 @@ properties:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
 dependencies:
-  freq-table-hz: [ clocks ]
+  freq-table-hz: [ 'clocks' ]
+  operating-points-v2: [ 'clocks', 'clock-names' ]
 
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


