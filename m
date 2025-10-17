Return-Path: <devicetree+bounces-228279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF28BEB009
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2835C1AE3BA4
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037B12FFF9F;
	Fri, 17 Oct 2025 17:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oJD1oggI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B942FF649
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720954; cv=none; b=d+BHjGKMiqoPUraGvOMwyXRHoAvvN77d5bs7gRgdaykk07gU1OYGLCO26qEe1LdXiwK96ZZ7z8hR3F719l1Tunh+hPBeZo4n/Osi/2DtUn5fr22YN9+dSVHgvrc7E3j289I7UNyuMetpzI2yfveBMGAgR5iIXfvIabrTKnbvvQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720954; c=relaxed/simple;
	bh=fmPSoBFxIBBtZG+qNKbc/Y8PFtIvsIl44u/5OiNM0QY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ittrxsAYjooW5dQAFZLq2oWvml96fGdqKiQ3+lfvQb7ele5s31914GLA9ZXBWoBAi3tgAgS2wnBNoF6uC01Mrq6rnM1duijunT/SJ6jhRHJpmxJVzlE+C9GJILaoRodAD7VvcAf+zBhhNcRZ9N3YA2eiRG8x6FJ/YlZicOM8nMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oJD1oggI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HGq0ql020159
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UwTH7o+4XBoJuJ+aQB1pooKD/6ls1YBf76KMTkN2sOs=; b=oJD1oggIDfiJdUlw
	ZUGUmGGn0/6uhJcBvn6tQqGPgLU3+WG9F4WabqSjp707++CaZ2bRZ6SV28uro0Kn
	+GgSYfUSmPzUI1AQ/BkS9vNuhSqgnF8+VO3THPtAbnM6YR5MFFmTEjxzphbxgvia
	rEn0BPPHpXfFD7/P+tgZB4E5g1EjT170Ff56riYG/IvLKe29oa7BqJQ+0F71youe
	UXQ21AuGbr1k2M5R8h64fhuCNhTgz5KwRS/YvXsVWeq1/6SulQA6FgCLQIx4cHXo
	GE2k0YRrB3ZhdNpYDXk5AY7sg5G173LR1RETrWH/NYXcPG5Nqls4rygaK1mbvGJZ
	2oFdNg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49tqvppfx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:12 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2697410e7f9so53755695ad.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 10:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760720951; x=1761325751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwTH7o+4XBoJuJ+aQB1pooKD/6ls1YBf76KMTkN2sOs=;
        b=OzjaG3cU4ddoKjbZVLtzeW38/UER8IgIBbUdDP9iBpIs+B7OIs5LSnmf26doS42/WK
         TxkGB/h/0HGGGf6oIQ0TnGSQ2JkoAnDGqy0lS0M4jKzzd2d6EGa1kT9g+oEDPBGAQ2c7
         t4UQ0leKFCg8cftlywMJ3awGTdnGJvfZPXY9oeQkNLJGn8TYtocsvuKtyqMJ80+zAQAk
         IkGfcw/wIgyOkkrE6x6s64QCHXz4Ypioh+G4A7nXL40YT4fpYbmT/VNv3b6lBddAJSJR
         0XuPuDiwbrp5P7rr9p302NtppqayVSobLj0EfJ1PSAxUgOanfQgd1cJgsG/cPIc+eOfX
         AK3w==
X-Forwarded-Encrypted: i=1; AJvYcCXUl+dIQIfkzOaJ9qXc/OC0AxGkZLhdevpCACbJHi/uHFHTHcK7rxqtY+chTatxpfEYfHmi6ykBD9nJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwpjDgXIqzN/EjTVCPnT4dmboMlVDY/PPszM6etfWhKBS1gIrJn
	4ffxPrxEH2c695vYhkssrvoisDRiGp7IhjNARgxOwc6bDihFFKw4NLOY+8izrJ7znVxHt97iGOO
	ee23XYHpm/ei50J3j9UNj59l/y82eGo2dU4zxll6D4Z6gMHunIZVebFQ3lD2JBErw
X-Gm-Gg: ASbGncspGyIh8kCKxwEchspqANb1wphirf8PYgygfPBeMFEsLfBJlTgT64+b+jFr3OC
	5go2mQjyUjniVenebf0Unp+yrE0G3kZjtTCMlICNhaC9fWxlZmOD0pCk6XhIA9N1Ly0BYR+Ff7F
	+8QdKRK9kj38l4IDAvCM5NOkVIqURiYgTwyBMDmzkefTqvhyirEgnTf77/0VWjO4Sy6eTEgoolT
	NB6g6QxCeteMCuSUDvwecJaJUc46RRGm+kVKJIzBKmNAgTVj1ZY3sErLyPZjxFSK1wQbsoEkMbR
	vKTenSm3yf6ZBSsjA7WZBTBC5p3oRQO+MT9KC5hXoPdC4BARTtEvTxE+1ST+saEVc3MBXBOKd5P
	tdOZEzRYYdVKcrTaT5G+xA08=
X-Received: by 2002:a17:902:f681:b0:290:d0fb:55c0 with SMTP id d9443c01a7336-290d0fb5971mr49335035ad.43.1760720950679;
        Fri, 17 Oct 2025 10:09:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUb9LP/n6zFrwXHJ8I2abuL4JVKUjA/SfniRPodA4FW/70lC1MQrLHyQxLVOJP9P+uu32WNA==
X-Received: by 2002:a17:902:f681:b0:290:d0fb:55c0 with SMTP id d9443c01a7336-290d0fb5971mr49334455ad.43.1760720950092;
        Fri, 17 Oct 2025 10:09:10 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471febc6sm173625ad.86.2025.10.17.10.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 10:09:09 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 22:38:30 +0530
Subject: [PATCH 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-qcs615-spin-2-v1-2-0baa44f80905@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760720932; l=1760;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=fmPSoBFxIBBtZG+qNKbc/Y8PFtIvsIl44u/5OiNM0QY=;
 b=CidJC+6YIpgBHlxxquE8ugzG/PB+2dG02+F9rIWT64xQPn2fehu/vq/ntaaWTpRbuC8YK5AY4
 skKJ5CEpX/tDAlo3rsnQMXCvQj8m3Cqg//pKnlIS2RWohnlapiyEozV
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=aPD9aL9m c=1 sm=1 tr=0 ts=68f27838 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SkoZtctDx9gcCqASqUMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE2MDAxNyBTYWx0ZWRfXzNZukP91SYLF
 yqwvilMW2xpprNZhs2qVhAE93/B9jinrIluumQXDu36a+Tud5G/uXrSV3poSJIgRmokzERvXU/4
 cA0zyK6XUNwqh19zCr1cNehzu+vBAj+lh104ElB3bKXMP0spKk3caPFFN83YZh8qBMk9uIjkpYb
 kS1wh1c0qToYSQV4Teo0Ki+uzelUoDuc3ABXtw9CyZ1pN4dqzA6KScug+vHwyem8tlhA+3u0PSM
 kWvw4AeAqMSVgJlmP0FPz4ed2/EUNjEq5skjQBkPyiexbnIKRqGeSBs08XfMpcj/JOOLNE+zMFI
 V31rjuK28EH5qWZ5W05uchztlI7ghQEknabI6l4Ys/DsdXqGqdA9oJ6JxWz/5SWdvhjz1zh5rkY
 EMy+576st7liLMrEGqPABHbfG8Ow2g==
X-Proofpoint-ORIG-GUID: -aVt57TVV_vNZKv6PN0ceqkdMJ_TuGOE
X-Proofpoint-GUID: -aVt57TVV_vNZKv6PN0ceqkdMJ_TuGOE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510160017

A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
which replaces GMU. But it doesn't do clock or voltage scaling. So we
need the gpu core clock in the GPU node along with the power domain to
do clock and voltage scaling from the kernel. Update the bindings to
describe this GPU.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gpu.yaml       | 31 ++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 3696b083e353031a496a1f299d8f373270ca562d..efc529e82bc198e7c3c89a5eecb6f929960a8de9 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -45,11 +45,11 @@ properties:
           - const: amd,imageon
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   clock-names:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   reg:
@@ -388,6 +388,33 @@ allOf:
       required:
         - clocks
         - clock-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-612.0
+    then:
+      properties:
+        clocks:
+          minItems: 1
+          maxItems: 1
+
+        clock-names:
+          items:
+            - const: core
+              description: GPU Core clock
+
+        reg-names:
+          minItems: 1
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_dbgc
+
+      required:
+        - clocks
+        - clock-names
+
     else:
       if:
         properties:

-- 
2.51.0


