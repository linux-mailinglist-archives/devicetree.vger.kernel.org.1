Return-Path: <devicetree+bounces-8233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C9C7C7415
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 19:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52CE6282C51
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0B8347CB;
	Thu, 12 Oct 2023 17:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jsp8cAqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF7734199
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 17:21:53 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7FA9E5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:21:51 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1c9daca2b85so9218185ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697131311; x=1697736111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=emz03f3uxdP7Dq6lqeINaZBEdrIm5oTH0vEaEEX0iS4=;
        b=Jsp8cAqZRfPoQAwyDLvOynGiSaXDUBIpdQIr9Sr23jifeiqV1AVkD9mJr/dTBRlynR
         KzkeSfRdRsqx6ez3115boHO09wZqYQJuJ67bSH1WWI8g0srt3Vocn1BKnnYToSZ6wJ3F
         sx6RS8jsItRWx7EXxbgz+qORos3T8PSdZrwGPdI0+A0f4YD1Jp2qe6NOpzAV5+DnlsOr
         ikwyGtUbcTk4LEZWJb8e8bi+3rnDo3scwgSAoxRNahKhjSYpd1dBfi9POhKNSebJYJhe
         HO+smd61N3vYZIq7uhoWf3QecIJfMwrzwVDxKMWqV7ynX3zSlVOSp+LO5zmiQaTMOYmX
         FRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697131311; x=1697736111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=emz03f3uxdP7Dq6lqeINaZBEdrIm5oTH0vEaEEX0iS4=;
        b=vle7tgnaYg4azBlSfKE2oB+LKFciDjm6o1r/9+7kCpvAkq7ZYyKqQkeGv4NMj6yoa1
         tGoNa1P0QugsBajW2bhqVoqMjLNBilP/Cr1WVptKXzoFRnob+ife1OOxwCoGpYYE1oQV
         y8eq1raRIGAvTP8SSPeofpC8dmEDEmJyHzBK4qlJXuqwJz5gjbPSRiu1Af/rrycbkd7r
         HlSZz5qTvcZALKr9VAaKZ19YoDrdraHobT6oU3prn7VxZNx1ZgtFPFfAwXdRC1yDxdAm
         52qG4n74C4sWoCr7K27j6DDkw9lYLXhMBzlToiQBCY5bzhcs5ZPuCi/IhXMWGhmcQQUZ
         YkYw==
X-Gm-Message-State: AOJu0YzonW8GomNX4ajMUKoAoo/RHgWFs+GVTWGUlJtxC5lH6viH1GOv
	/LyAh+7ugQFZ6oTbcsUsGLuO
X-Google-Smtp-Source: AGHT+IEw8ngM9ONqiOY/Lpq6bCfVEQBRoq3XO4ZLXCgxF2MnAul4Mauj/JUwnqv5RWxQLqInE84Psg==
X-Received: by 2002:a17:902:e5d1:b0:1c6:362:3553 with SMTP id u17-20020a170902e5d100b001c603623553mr31262262plf.31.1697131311172;
        Thu, 12 Oct 2023 10:21:51 -0700 (PDT)
Received: from localhost.localdomain ([120.138.12.180])
        by smtp.gmail.com with ESMTPSA id f9-20020a170902ce8900b001c75a07f62esm2242359plg.34.2023.10.12.10.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 10:21:50 -0700 (PDT)
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
	alessandro.carminati@gmail.com,
	Rob Herring <robh@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v7 1/5] dt-bindings: ufs: common: add OPP table
Date: Thu, 12 Oct 2023 22:51:25 +0530
Message-Id: <20231012172129.65172-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231012172129.65172-1-manivannan.sadhasivam@linaro.org>
References: <20231012172129.65172-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
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
 .../devicetree/bindings/ufs/ufs-common.yaml   | 35 +++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index bbaee4f5f7b2..985ea8f64de8 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -20,11 +20,25 @@ properties:
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
+  opp-table:
+    type: object
 
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


