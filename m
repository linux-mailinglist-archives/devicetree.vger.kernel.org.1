Return-Path: <devicetree+bounces-235849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A35C3D695
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 21:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C13F3B4884
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 20:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6852FFDCC;
	Thu,  6 Nov 2025 20:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XtOdaP1z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GbUtg4ai"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D452FB612
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 20:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762462243; cv=none; b=LSRPXkPbU3l3b7rZMJJInJ4gowVGQh4nqOZDSYPM87oJe680H+4SPrqiRBwxXh+4xnow24scxyCQ5+LF+GrdIoTICyRAMxFhhH6eb06CJ2GPYstUOGOHfN1j+ag1yXcVeUIr5p0nAtGpr/rg56ALfGf1QzeWtCXWzzxJXKXSuUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762462243; c=relaxed/simple;
	bh=b0JC/QgVlb4XEDG4RFGS7AL+H2pQv9eCGoSbRQd2CRY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OJMAf6uZIEW2JmTvOEg9KAXyxn4RQZ696dQOHfDiraDNticEsNxmIm+IfrdwQYcIvf3lxkSEjazZsVrG4Q1uybXaJMG2WA7sfecEqrrpQvbm9lB2xf5LVW8W2Q39WuoCDrB5xu6uiNzcwaYeptZhYa6rF+PH8z8CeFTiTS0lILo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XtOdaP1z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GbUtg4ai; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A6HJxus2326626
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 20:50:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kDesZG6/CED7jpvXL9qrzM0XoMxGJBuAq541n0vQcxU=; b=XtOdaP1ze6xKX7i0
	eBD5QWTU9T3sjzWofXLkxcJ+ApO0ZPmgQ0PGELA4dS+vYNfTqMX5OjinCX8JqUAq
	mRXuD+eEqs043Qbq3hBLlIJGpu4NYoxJB9Mhz3nbQyTEpBWoGg60aBBIdLCzkzHy
	IDHHzV1wh2n3g4faKIR/RsohZQLZD8wjeKD23Gq85mIdObkaTibXu19wN2N7ezSY
	7d8mreGji8iJe54hzB2Y7XI9qNJUgr8Hfq1xHmSWyucWYytERjyW+rZ1/cZbix4A
	1IoaxaSHcyQLwLyScyaPiv/G3K6gI0xjIuavXd7gaBCzDQHKzS6BkQu8ZxKlKZdX
	LBMBqg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8h0v3ejp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 20:50:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29598910dd2so1007585ad.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 12:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762462240; x=1763067040; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDesZG6/CED7jpvXL9qrzM0XoMxGJBuAq541n0vQcxU=;
        b=GbUtg4aiXAqn1vAm0vTr2JuwO+aLf5Ot7S7pQJ18F5gX/XtxDMZM4bjJD9buDQ3eHz
         /n9KjHZGmxuFmIfsxFNF01L5t139Y5GxF/LqNCrQ3G12zuFmkSMqGU6K43NwzwS22WMk
         +5N+boA2ljHJMVhCt4/EykOatIsMtxO1FUbgfxAdFo1sORy2VIl4T5ejF8ANd4D2qtgg
         S2Crv89qyqENLlvT6x0ao8xJmDDLrPzmpoFZU8ZXd+S4WBSzuwg9MD/9XWidcBwyqd4u
         stP8CEFa/S9MY2DhQ5wKzCPrKcUCF9zGVjNUayyKRLTX2xcd+FYsgtPaOQAYNYgxGuV3
         3P2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762462240; x=1763067040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kDesZG6/CED7jpvXL9qrzM0XoMxGJBuAq541n0vQcxU=;
        b=sCkyupQMEgtIzR9nuFNu7/51lkJ4CT7cBhgNSNCSv7U5XmlgAHkYgjul5ZVjw8p6Ff
         iDdI+F+hYYnq+zQJdxM32Nz2f9LmgY0P3+UDG+rw6KZVsfNImehMgpm55dZoneBsvjIp
         y62axK8KjKli3WR1yRjdfm3qtAPQJdNyJgLU4fXw24DlWHu8sR0jtrdMZpyJ+wH8BaU9
         VZrbyA9vV+SrRpSSeSCHsvPR2R58eI5KNWcJeuxNhKMC0Djr1AbY7Hu9g2NiEjm95cZw
         4gPCPLcHMj6JDQM+6/T3TKT954U49PrxD7I40XodUeYdc4RBVXEljulmHQxKny+zC/22
         ajbA==
X-Forwarded-Encrypted: i=1; AJvYcCUMLzUC26L6kpk+/F0zsvET0XVP53wx4s7YZ+jDx6th2m6ToS8/UGOiozkmaHJ+bZCdkyzBIdhLbyXH@vger.kernel.org
X-Gm-Message-State: AOJu0YxWotASR0qG9bZc3T73Tkuh/7UoV5UwLodNUDhrLcNfRjiOpQPx
	xx9VWRCILOjHhU8mvHd0rLDZ3bjPt1VW/Vu3aSVvRTP32wnokPe+zMiuwqZmBHRDCyC2M5ypPNJ
	TTwXx4QCwlrYTJjXmpjpTj+wQUFZF4md5L7U+Y9aL/tw+zD9Kc9NaG/NbkukXzuhapRr+C4mW
X-Gm-Gg: ASbGncuepo2EGGZh/GpSYQ21SA71srgHGkog/5nH0Mz1ekYavj/kVLtn4TC30vBw2Vt
	hHp3Vtd/WZIGLUsnT1tqUDFPjg/MmQvfsvLnlXbwOJsV7SpxFNjYWoAMyrBxebNAyNAdicXIEK5
	p+6uPxjPbhbbZrtQvCe0MVBolMld3Hoo4KsAXADhWvq6RuZvRslZZWFs0UkQFIHHT/J028LpPFC
	XnWedAnaoGLy8bjVaGAk+GY2/PKk9ZWlQNg8anzbM48vBI4cOyvbi6Qu8EC6Rru70HSWFqitNfO
	+TuOBEaHTEMe8chLJphSP+grr9Hb2VQwVLTCZPnqemRcPo0cxRPMBcx9Ud9oxecFuIVB3aHD+j7
	KxCNKSAMHhbdzFJqVtBH2I4E=
X-Received: by 2002:a17:903:388c:b0:269:b30c:c9b8 with SMTP id d9443c01a7336-297c048bd5dmr11176995ad.56.1762462239687;
        Thu, 06 Nov 2025 12:50:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyqMq8oXPm8KMRuVdssx8T94PXld7l7/+iih8jTurPLCDECgsDxR6DM0VmHaPkbu7+iLvRXA==
X-Received: by 2002:a17:903:388c:b0:269:b30c:c9b8 with SMTP id d9443c01a7336-297c048bd5dmr11176685ad.56.1762462239212;
        Thu, 06 Nov 2025 12:50:39 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651042c24sm37408815ad.50.2025.11.06.12.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 12:50:38 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 07 Nov 2025 02:20:07 +0530
Subject: [PATCH v2 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-qcs615-spin-2-v2-2-a2d7c4fbf6e6@oss.qualcomm.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
In-Reply-To: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762462219; l=1701;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=b0JC/QgVlb4XEDG4RFGS7AL+H2pQv9eCGoSbRQd2CRY=;
 b=IKm+r3bn2wtvdU7Ru1WSakT8tsBkihaAlI1fqDLfI5tHULp8KMfKJydUyzPZSO1P/88hnE2Kw
 n3DkKJtDyIrD8yP8C6E86emtqqvf092kuBf5b9O/wH4WNLv5DoyJMho
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: oj0REmfwzWty6LyENuUZUuGTWg32UVDc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDE2OSBTYWx0ZWRfX5BFhUU9tRChz
 g02MKAS5F0oV6HhfGfCxwy6KJYV2zOezOrSnwEkB6T24cxQ9R+jk2ag2oiMFUU91fBKSAI8WRYv
 g1RcWGpnF3CPPqd27AOxxokGbVDptpt4GdO5MozdE6pcGI4rb+akZI1JOECF2mb3GqiZTrwcHUR
 52ejwi+Y/5l09LN9rRL9is5pWizHTjdQuquFO4BgxCtvvFbKtfMQ9zVXgulVmm/iOOvoKoxhk5s
 N87gvA2D5XNQCbqSK8HelAeoTa+15pGzPjFu1wAilgDZ3/3Enx98vLqFp0syPvJKBInAurj7ePM
 i/LrgkC0IYRK3WWb4BwcEBoc32k0lUiVFMW6M+mkVrstiLaYFc+2v5iN942WF+26EGAHIjMG1cY
 MXoaSDrQuKDUB4sUayITlNqEG5CrLA==
X-Proofpoint-GUID: oj0REmfwzWty6LyENuUZUuGTWg32UVDc
X-Authority-Analysis: v=2.4 cv=PoyergM3 c=1 sm=1 tr=0 ts=690d0a20 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SkoZtctDx9gcCqASqUMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 phishscore=0 spamscore=0
 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060169

A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
which replaces GMU. But it doesn't do clock or voltage scaling. So we
need the gpu core clock in the GPU node along with the power domain to
do clock and voltage scaling from the kernel. Update the bindings to
describe this GPU.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gpu.yaml       | 32 ++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 826aafdcc20b..a6bbc88e6a24 100644
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
@@ -387,6 +387,34 @@ allOf:
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
+          items:
+            - description: GPU Core clock
+
+        clock-names:
+          items:
+            - const: core
+
+        reg:
+          items:
+            - description: GPU Reg memory
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
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


