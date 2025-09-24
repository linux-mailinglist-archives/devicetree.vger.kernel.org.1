Return-Path: <devicetree+bounces-220939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2ADB9C8A3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC4ED1898ED8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9247329D27F;
	Wed, 24 Sep 2025 23:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aJrX8zTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B36C283FEB
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756304; cv=none; b=ho37MKfZ40XtOu3vPWx1E6b0yPTmdLw22Gu8c+dwbZinzwxeDEtPgWm9i3DxoSljXEfxjrmt+DvnQGoFxO3p1FEpMFZg02FufsMmnjiSFFzYT3mxVzWh7Dti3z/VjVTt9b5kgPOkCyvBVkBYaRQTEfY6TxuIHOrchad1WqZU9kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756304; c=relaxed/simple;
	bh=1jSNN7nG1Jx/FaYwu3aqqljrHb7gvNyiukhR06RJUMY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ArrJiSllqpG6aaqApJhhj3H0a+O4F+EvEhg4K2XZ/ZhS4up6i0qNk2MfhDQYU2pfoFN+0BudtUc4bdz2yRVBmbRMH+jrwaoqXpBfHLa8Fv/Y53GQt9qSAqn4r8Aub4Lm4rl/g4GCjr7zISqL/LN2xNY5xRcBdPpQgHFLzUUZUNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aJrX8zTo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCtHQs019915
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nuP8d2NZYxMa/1aXrVOCmz2l5Nad9HOjeULbPqe/3U4=; b=aJrX8zToOl8EEmTa
	nM0b9iH/mbaTQHR8SxACJAtyXwWiUAY97ZOLdgyEMJYBs2dzszIF1s3f9+fK4Ukj
	jWDJkvTJcS+a4aAztwi4aN0i+7Ohq+QR/EWADwAQI8KwCUYfs/dPLkm/NiXw9sh8
	meIAei/x87/u3rCOMAD1PXJGl0uK6yX1FlvUDUOQG+GFpJWPYDexylvXuKYasDlY
	T0E4/uzrdi2cb6PpJvkw2vXxLhF5kAaId+QWs7KOdzFRcjxXv0hs8NieCG5t0Z5q
	aXtTuQgeb/CFpxQg+jsQ9cfPhJRzSZTVvWiAuBJSS4YPOK3pK3JiMv9eQOue3ONe
	71Syww==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdy86p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2697410e7f9so7172915ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756301; x=1759361101;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nuP8d2NZYxMa/1aXrVOCmz2l5Nad9HOjeULbPqe/3U4=;
        b=YXerXwpNYvDJJbdbjYonigCCqaBtfpMffjQPpVuo5K78bky3zMu1DdxLU9lhGmNtt7
         U2ufljgtEcP4PcGQAthmEKEYe7VhPJ+dl6Eu1ODBgftQ3TUazBgaQ2yYLSOG1wTWGE3g
         UUxh8+WMxE+MqdBm7CHh5Hk5S7FQiqfMw9Kt0vwl21vLF8MdGlIdPyGZOeScvcFaHrN+
         ccY6lZHRA6ok4m6T+JL8UBnoy5O99ueZL687Khrl1/vTDwW6BSUep2JWPrCk6ibDedYa
         acZvA6bAnbdV1OytoaY1RDteGpfTijEyDnRn+jsa1e3mSZ0iAOyVGxdFDkYbaFE8ubs7
         nWrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJXQ1fVQVxrRsrqGj8XAzJHQd1C+iljONr111Nf1REUSyxJh3zwhrfQX5v1tvakj8nRztGhV4FHqVj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr3k+8ez89ZPCAH8VMOY9AwtAKp/Ge6gav7n9M61rs46kcX6p7
	3pOaLhjg0Mg1yovifjOp5dkklSyRI3/nbm/hRA8bxaUE05P5Urxa1nr08cSuT+bP3mAc8cgKV/H
	JS+gx565tCnBTgimE3ZOnd0MKWdnD5KRGYtCZxgaqjfLymy+lqN5mjAE0TYrdOlpI
X-Gm-Gg: ASbGncsyU3PFqhOWFLg/4NTcxHdk/q9DNjQeEtVGPW5npuRd1SiHur+FgIzGignmCE0
	8lZeqDW00HwPZpxaa/tLCP9nygNJkGeWkQjk24pPWpXxjH6VSWirmZDzLytDsDZAqfbBYFCH8NB
	EH1csWuYvECGQurCumL/eTsOLVDsPcoQQyH8kVqKRMPPAlFx6s/J0yUCqtwxX3PetoyISnpgoRv
	1T1luCmsCFwq0GDV+ilTDTzF/MfAExUluVViH46MIlrrmFsXsR3QZtd/wlA7ZuFSdWOdfTsspi8
	kIJjDi/ZEcRbkeWIer8LBChrVIgkIzV8cZrC7hU3fNSUDJ69Q78I3354Z8E10IwOW2geZXURl0o
	o+U4s90xtfE/jnig=
X-Received: by 2002:a17:902:f707:b0:267:9e3d:9b6e with SMTP id d9443c01a7336-27ed4a653cbmr12739385ad.51.1758756301544;
        Wed, 24 Sep 2025 16:25:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKd5YW7RIAyNymwkxq9WJ11sgacuX1IvLBuMSes+opRF6AMzkG9E2A93BBbxb6gc7otKLwag==
X-Received: by 2002:a17:902:f707:b0:267:9e3d:9b6e with SMTP id d9443c01a7336-27ed4a653cbmr12739205ad.51.1758756301157;
        Wed, 24 Sep 2025 16:25:01 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed68821ebsm3981745ad.84.2025.09.24.16.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:25:00 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:24:54 -0700
Subject: [PATCH 1/2] dt-bindings: cache: qcom,llcc: Document the Kaanapali
 LLCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-llcc-v1-1-ae6a016e5138@oss.qualcomm.com>
References: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
In-Reply-To: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756298; l=972;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=1jSNN7nG1Jx/FaYwu3aqqljrHb7gvNyiukhR06RJUMY=;
 b=R1wSI/Rc251P5StZYdCEIKzxhN06cYkYBagmtA1sgGuXNAEl0/noeivlX0HJ4uTDWxAG3ft7S
 4h/YzTHSBbvBknpsH+vBY1dWTX4tbNF3W03lFu9DcCOfBBTN+0Jd7Sl
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: NJpthySjvaJwFu_bDAlfprD8K0HoETum
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d47dce cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=sCV_76e64iQtlowYmxsA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: NJpthySjvaJwFu_bDAlfprD8K0HoETum
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX9VIXab+T0us/
 Smt4meVtvDSzBc8Khx6EGqUE0WNDhzH/sxAaMOE5numHX0tbNvhwRasoPgBrP2xDnOXr5qotbGo
 638sct1U083aqoJVh19JA5YAKZubCJKuvjXrHatUrV688+WF0Pmmxb8aS4oN9xD/MTRe+kj37zn
 UORoS/3wfJBqgoiaBtIyOB4ADLkF8zob53WAAHS7ZrzFcuJpbphrzqO65F48AA3tc+bo+9HWUZI
 cfBueRBM4+qF/cbIX6F42lek6sNcvlK/qAzNimGtqeK8qdmDuQ9aunxdfk/n3xmvpWiMb6gWiyn
 A4rgTgB47/k5CUIecGvLva2Hv1v4XPV0HqIrj2a21cEzX64EzhQ5PYmk62T3YToSpWhUe5z3nF5
 iOnAqQrQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

Document the Last Level Cache Controller on Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index 37e3ebd55487..a620a2ff5c56 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -21,6 +21,7 @@ properties:
   compatible:
     enum:
       - qcom,ipq5424-llcc
+      - qcom,kaanapali-llcc
       - qcom,qcs615-llcc
       - qcom,qcs8300-llcc
       - qcom,qdu1000-llcc
@@ -272,6 +273,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-llcc
               - qcom,sm8450-llcc
               - qcom,sm8550-llcc
               - qcom,sm8650-llcc

-- 
2.25.1


