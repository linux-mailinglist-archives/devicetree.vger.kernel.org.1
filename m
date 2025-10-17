Return-Path: <devicetree+bounces-228280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B0BEB030
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 25C8E4E57D0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EADA2FDC43;
	Fri, 17 Oct 2025 17:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laJoqBTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE943002D8
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720960; cv=none; b=a3ersSNWCo9Cgvj0Wuv1tJipdRtb7CIO3APVDcURIl9W5WaN2eTLVdNIBOH8jGA7VOKFMJtfw471zn3wWYxa5hCr7upqf+JhvEF8o4iyaxkhyAUtphpFUu8Febp7c2zIreJdzONqL/R9wrvBSxEiotP7dGARLsQ63PAsHL0cNPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720960; c=relaxed/simple;
	bh=sX4EE5hAcefL6V6eBB1BxZA4MnJW4trHfzsuBuA6010=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QR8GNWY6A4rbl1mmxfwHNnPPVKH/7LnUq397n9Empj0lb63Dr+FjeDZnom2R1IkVyENSkgzrqgqaLGr63DvkKGzSTiDRc6Ozeo8yZVvA6zeQyWoi9aa51rnXX5+eY5mElm1Peqg5j23FzxQ261PbFHnnSUXpdGafsvrZa/y2zaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laJoqBTB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H8aHQc009754
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hqmiSi/EcNgLN8MIHk8p4XKaA97uQpMTNTjFIwpiBBo=; b=laJoqBTB9PkIZxTw
	ybi4CHmMyV/KgAZuFrPtr1TyPbXKBZLIe/DbGLDpfvCxgKtD0HW3jBIepzMBml4Z
	NgnDSNooXb2gPJ4yESpzHUBAboaDMQERVr7p6MRWFfTKJvsEmtGrL52NYGCZsXtj
	AinMl6x28NOOhnTOoDoZEW+LsXJuoBk1xLarj5NKppEBtM4MitIfOKUJ7lOFNrSx
	kym0/7HKdeat1IaDHIn+/Mh10IdjxmMSTpkSzL3OdpxYz12N+bYj+Eb13euUklqI
	uG/b+1uWtklgAomBQSqVaBbbizcFUEoljrlEsgECCYpEIQ/3ILvJAG3JL0U0uUaE
	fg5Wew==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1asa63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:17 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-290b13e3ac0so19462615ad.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 10:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760720957; x=1761325757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hqmiSi/EcNgLN8MIHk8p4XKaA97uQpMTNTjFIwpiBBo=;
        b=JhXg8g4AaHbODPMM/V0F/SGEI6cDX2fxelp4AJGwyth5A2rsXoXOzFsAta5uo1DqxN
         pF6Cw6OxH1aTCIoWV2cDcl1UmzbzbAwZslrNYCl0yP+prM91xRpIynMvNfpqqm3E4os+
         YuH+UXTHuyaOKS/ultczS+6+KjUnfFr2FXd9ydgcs8LIJogtk0RJ8Mx16aykyJ/tEo+s
         NXsfuhP7O2HVFQc3FRje80HIkNk3r1Hb+QVo3NRBE5Gm5monpkOzfHUGYOPkWnAvkIi7
         lwPRaiqZPF04l6nTukmPlwof5heU4z7hEKnb4dH0SZrUxa5s7jN/LzEdMADxJg5UB/eJ
         k0Vg==
X-Forwarded-Encrypted: i=1; AJvYcCWtO6xf1h3qzrXOLsr0+LejfLlNXBXSN+YoP6S7w3+uaUMJXrrVdHEZ5EjfZo8hnskuVl2qq6ajjcfM@vger.kernel.org
X-Gm-Message-State: AOJu0YyQRiAo425t7QsYjk8P1UzbQMFHRmQNxCj08ArLsIAh6kkLGQx6
	eWO94SJ/l6Vh/iOBUL+U1ppUGUMvb0SFpV+TfD4FLYvg+98bVz1wmuPUA57s28U8e1A2Yk6N1n9
	XALXsnzg9kvJUZDx4MUkve0UuO6Hp6aWmzCzbXUlbXYuqenI2XTh8AU6SInTXzRjC
X-Gm-Gg: ASbGncu9jAQmHHq3SGuQVeWFXX0IBY9RZQCFMOFU/ZxIrwNytcM57f6XFkOquXcCdbO
	lSMQc8Layw+2APcDj+VBBxj+/8nlub1PTYSMZ3LHZCR5R+nMzwL4abGZyEXSSjlBXbVoPhShpmm
	94xcw8STPki7Tbsi66wne67H8kpKxGMyOfCYvrCX9qfgGuSW7YKcBCTZ6nCpxDRJSlzgAGb0kAt
	abQAbBPWQJRtGv1AM2FtwotzSe+ObtHRuReQN18vw1QoTmbi91Ff0Lu7libHjKlUu4guLCytwr9
	PzeInHldciKXavN9rCNu/ZcGa2AK3870UhcZxQFM4l1a44tM2vWtiUJDyzM4rNe6hxrSdU7tgg1
	3CMgg0lv5xtmpGCUNMFsWQG0=
X-Received: by 2002:a17:903:24f:b0:267:a95d:7164 with SMTP id d9443c01a7336-290cba42a8bmr43850935ad.60.1760720956308;
        Fri, 17 Oct 2025 10:09:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECM4Gg19lRFs8Sa1aaNG9GkjYF95qSMpT0D7neC1fOINMo0JSdB6MFdV9osSiN02voYub3Zg==
X-Received: by 2002:a17:903:24f:b0:267:a95d:7164 with SMTP id d9443c01a7336-290cba42a8bmr43850645ad.60.1760720955826;
        Fri, 17 Oct 2025 10:09:15 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471febc6sm173625ad.86.2025.10.17.10.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 10:09:15 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 22:38:31 +0530
Subject: [PATCH 3/6] dt-bindings: display/msm/gmu: Document A612 RGMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-qcs615-spin-2-v1-3-0baa44f80905@oss.qualcomm.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
In-Reply-To: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760720932; l=4163;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=sX4EE5hAcefL6V6eBB1BxZA4MnJW4trHfzsuBuA6010=;
 b=uIKWqinlgjkELumeJO3EaOVUmuZOe6ykmBwI2gz7iZFC2+LOH11T6sTLyL36mUQHk9TNRx3xV
 wVBlBw4BqdOCJNBAURiKsSCeETvn3FwR1OeOEmlmqNNQ6E7rj6PLFHi
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f2783d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OspxmFM2CjPT0bdoapIA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 9qqMMZsizNyxMFAeiNty4WOtxvBqcAXZ
X-Proofpoint-ORIG-GUID: 9qqMMZsizNyxMFAeiNty4WOtxvBqcAXZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXy2FmHWpCh81x
 IqUdoENJA7XFwfKasR+vk1jhld6TauKjyg0CTRuvSRpSJALvlEoAygGx/21N6OpS81wA7DqI7r7
 0wRWUAJNsHMsmFTOXiet3G3gq7Tny1J3Z2fArrkUK2bt2GKFx2SkKlDv7zWPEJB0uLnES6ph2lA
 mT4kT43gx3mChQmpVDdtZMyUWAS0KjF6bnBdT1Z0MBpD7vqxAx96WwG+e47gT/k/Izlj6BNRnYe
 WWlu+VhJ5s83UjevP9m8fS9maSfWJMco+rTUdmmT1bOexWvXbq1Ywq90+uUeVZhAtzYGpi4x0KE
 vQ0NSEHm5sdj8Ym9H3pGA3qK1m8QLEjbkZnAKrFNDdURG/qma4DlBZLE3xO90NRhyiA8UhF5Vmm
 wTR/6Z2LriiJkYf8+yuU4twB9YQQ9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

RGMU a.k.a Reduced Graphics Management Unit is a small state machine
with the sole purpose of providing IFPC (Inter Frame Power Collapse)
support. Compared to GMU, it doesn't manage GPU clock, voltage
scaling, bw voting or any other functionalities. All it does is detect
an idle GPU and toggle the GDSC switch. As it doesn't access DDR space,
it doesn't require iommu.

So far, only Adreno 612 GPU has an RGMU core. Document RGMU in the GMU's
schema.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 98 +++++++++++++++++-----
 1 file changed, 79 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index afc1879357440c137cadeb2d9a74ae8459570a25..a262d41755f09f21f607bf7a1fd567f386595f39 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -26,6 +26,9 @@ properties:
       - items:
           - pattern: '^qcom,adreno-gmu-x[1-9][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno-gmu
+      - items:
+          - const: qcom,adreno-rgmu-612.0
+          - const: qcom,adreno-rgmu
       - const: qcom,adreno-gmu-wrapper
 
   reg:
@@ -45,24 +48,30 @@ properties:
     maxItems: 7
 
   interrupts:
-    items:
-      - description: GMU HFI interrupt
-      - description: GMU interrupt
+    minItems: 2
+    maxItems: 2
 
   interrupt-names:
-    items:
-      - const: hfi
-      - const: gmu
+    oneOf:
+      - items:
+          - const: hfi
+            description: GMU HFI interrupt
+          - const: gmu
+            description: GMU interrupt
+      - items:
+          - const: oob
+            description: GMU OOB interrupt
+          - const: gmu
+            description: GMU interrupt
+
 
   power-domains:
-    items:
-      - description: CX power domain
-      - description: GX power domain
+    minItems: 2
+    maxItems: 3
 
   power-domain-names:
-    items:
-      - const: cx
-      - const: gx
+    minItems: 2
+    maxItems: 3
 
   iommus:
     maxItems: 1
@@ -86,6 +95,44 @@ required:
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-rgmu-612.0
+    then:
+      properties:
+        reg:
+          items:
+            - description: Core RGMU registers
+        reg-names:
+          items:
+            - const: gmu
+        clocks:
+          items:
+            - description: GMU clock
+            - description: GPU CX clock
+            - description: GPU AXI clock
+            - description: GPU MEMNOC clock
+            - description: GPU SMMU vote clock
+        clock-names:
+          items:
+            - const: gmu
+            - const: cxo
+            - const: axi
+            - const: memnoc
+            - const: smmu_vote
+        power-domains:
+          items:
+            - description: CX power domain
+            - description: GX power domain
+            - description: VDD_CX power domain
+        power-domain-names:
+          items:
+            - const: cx
+            - const: gx
+            - const: vdd_cx
+
   - if:
       properties:
         compatible:
@@ -313,13 +360,26 @@ allOf:
           items:
             - const: gmu
     else:
-      required:
-        - clocks
-        - clock-names
-        - interrupts
-        - interrupt-names
-        - iommus
-        - operating-points-v2
+      if:
+        properties:
+          compatible:
+            contains:
+              const: qcom,adreno-rgmu
+      then:
+        required:
+          - clocks
+          - clock-names
+          - interrupts
+          - interrupt-names
+          - operating-points-v2
+      else:
+        required:
+          - clocks
+          - clock-names
+          - interrupts
+          - interrupt-names
+          - iommus
+          - operating-points-v2
 
 examples:
   - |

-- 
2.51.0


