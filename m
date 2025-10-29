Return-Path: <devicetree+bounces-232599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4C1C194FB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 553E04FC546
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E0B321441;
	Wed, 29 Oct 2025 08:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C3Tw5nHp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EuT9Z1XC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7D6320CB3
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727919; cv=none; b=P5UDdYEIPJoJ/YKXQhu8IC043AnuDSUEs+5Ai78QLnUBdZ+ldSEm5grbKBxBX18HJo4JjaPBk9QREKC/Ks0VjjupiTfXzL/2MV7XzV9z8xYk2kD2yplg223UNYjV/HHk4fjcvWHbHemcnWpwGxLDcd8mqOGyfUOdrdJ8JBDypvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727919; c=relaxed/simple;
	bh=fxALVBYM7qYW96U/dSw79twk6v0y6XKjhtJ/F/CsPC8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KPgJDNtJ03XVKvAvhqEhR4vGZolxk9/A+MSEknafk87FQNNzyzghE1JU3KgWnexksSQyuJiOG1G2g9XpCex7bnTnSbB67dRHk187Zy4ewbhX4bBcUieG1nPINr5FI11OTfkR6tEPPGzSOKuVp3uckgyBx3xDacikFXwRqdTus3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C3Tw5nHp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EuT9Z1XC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v0hR3664616
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:51:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IzFssouc9mamtc9gsC/kHechOIc88AvDywUnbNXgus0=; b=C3Tw5nHpALgj+0qW
	tXRn0MptmjOfd3RmVrEqCgzgzBoe4shjTzPAABkERvD/tBs2I7IIEBbyyO3WqWzf
	sST6p5zwrzb5H/KRn6nhZzkSLRWgyWkahBJJGzWJPBZ+z0gntxqqF8lgRZMMU1kK
	8FVa+V/nnTgyFr3H+pGrs0jJPKPWggpqOlHp/b3ITCwKbx4Tm5Ixqy2m9fXFBQWv
	hm/U8bMH/6nBNh+ytPSBVHHI0OKJNKHW4IEwctOfXIymZ0XSMW6iNsy3TLYUz1v5
	VzxiLCUSnpAvXm0rYg+tcBJArV6EBbnSeNcsfUIP0/aJ8+dU9r9DaZd4POJBH2yC
	T5sXnQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a3sv7m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:51:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8a15d36c209so1149087385a.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761727916; x=1762332716; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IzFssouc9mamtc9gsC/kHechOIc88AvDywUnbNXgus0=;
        b=EuT9Z1XC2pz4QfHyVGcCbBW2z0h0P85MNr1Y84+ax/tY7fvp/X3y3HFiZt2JJjoJuD
         K+vt6pfqwA4jQ+kjIV+dO+i3LfMS1tt0aNtiPL85FIzpN9ZD/I6goFw4YEwy8SmVsXf3
         V7n2jG4ReKpIpRi7qFzgWZyRfW16R4LR2+7RTiM7+OM9xws5igMoYlXcrnZZPBPWdjkh
         qdxHOQXhPh/0KDaJQFZUnNOzVq4HPot532ALeaao1D42bGWi/m88WHQhAmLq3LTbzQfV
         bWSuLadWi0eJ6CGHnxZOPPAgHo0m6n3T5CxvwH+2+sDiALgD7CTOeh+lwxo3O3Wt74lV
         iIQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727916; x=1762332716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IzFssouc9mamtc9gsC/kHechOIc88AvDywUnbNXgus0=;
        b=sFwkAac3Dc+eUJCE/CRm+p71lkfmkS+bTuhyTRBzid3omxDB1tbTPJnXqUw4xKjMAn
         T4yayeo2zXlrkwKuHBYnlr5nS6+Ck96uo1uH4BF6pD6Qh/v6LIAJI1CxRXJGjJl6h3mM
         wosSGSWssEG1JzUMkCV9TV1XcC2Bcys9MyJVXlH/luS6F6ODNCxDoaDEYSgWn3gbLVQG
         KPnfab7ojrhFGVW+zRIzFR7YWy0A8nBiNawZwDSSqxjnbnEuy4Js3uthHvDZVG9O36OM
         hM7QiK2kPeDohQtM3AhDTUus/ZD/BQo+bepUjBsQHLOVS4wgeFCFcXeCenTsc4DQCpC4
         b0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWMjyyQ8WDWlWmKQtHvKYZ07axUPeW/jKxeiS7x78gsfVg195WZgIivbubV39E+C0azMRhxvP9lsxis@vger.kernel.org
X-Gm-Message-State: AOJu0YxI5VzgJsmzC2pDyafr1JjWK7JFK4fzL6zLD8LOrlJ6HaQYfmRt
	oa9Yv6rZsQ16VtzCBJ83ado17abhCjAQsTbYQ5ip6YJGcZ6cdmoInWEkX3XRk3DKKnjOVc+Xolz
	HnokyUAWetORfvLAtsRpVsEIz1f5wxvLgaozk8ItlOQ2WpJH2POWKKwzM89rn2JbU
X-Gm-Gg: ASbGncv/WXgccM2XBznDqZCybjnwb3fl9zrFHb0PRaLswUK6SMxWnvoIJJbFVlzDOXO
	eLsHsx97fdCwJlrbJMJvRuZMlB8fqOF6jMWjmsWUQf40aBje1BsppnhrDVspJ0jag4DV3I8KFif
	UjWqYARe+6SyF23jm8z6eErbRqtNhjdvSUoDsKcv5jqpCA+pBbyFKEF1f02ePYqILMFkkr3IL0f
	uXOsEwDJoqnSOut9MLQsH8xXQXbpgISvfINn6hdo2obMOnytuveE79bL6/IaTh/dt7NnqvZzINF
	1F+QkN0YmVnTGn18rqwg2vsCHLeNvtw6SjN5f5Cv639w9ltDi95uxESofav62O6LswAR6c1vLlP
	oOYBlmItohb+3cbZBcXJUN8s=
X-Received: by 2002:a05:620a:40d4:b0:891:a480:ee92 with SMTP id af79cd13be357-8a8e8f4b236mr263535585a.5.1761727916320;
        Wed, 29 Oct 2025 01:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFI2PPKXtce5YNBSyc9dJxl21ePvANeElFkhe5Zdk44ZWE7owVm6fkHwQ2Bv7PW0DPT8yoJzw==
X-Received: by 2002:a05:620a:40d4:b0:891:a480:ee92 with SMTP id af79cd13be357-8a8e8f4b236mr263531985a.5.1761727915839;
        Wed, 29 Oct 2025 01:51:55 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ed0817602dsm36760171cf.18.2025.10.29.01.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:51:55 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 16:51:34 +0800
Subject: [PATCH v13 1/5] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-qcs8300_mdss-v13-1-e8c8c4f82da2@oss.qualcomm.com>
References: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
In-Reply-To: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761727898; l=1242;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=fxALVBYM7qYW96U/dSw79twk6v0y6XKjhtJ/F/CsPC8=;
 b=/VZVTs/VCe7bEotB+iOg1SXvQxgcLXB73EUedAC6ofipNZxQMOrmecv2X3OIP4zJJRWiOZ1v/
 sgCB+hAwthmDkZ9K/e9+jc+Sq+3GbOhUuqoe+dIa3hA7sgc7TMZb42I
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: ItVHtuY4ee9YP-pDn0-FHZfbEV_gZt-9
X-Authority-Analysis: v=2.4 cv=HM3O14tv c=1 sm=1 tr=0 ts=6901d5ad cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=0ru3Ub4c0dYyKLRCKckA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2NSBTYWx0ZWRfX9GER4w1REK6U
 95vVgvp1l0BAr3COJBr032J0P/VKgixDZ9NlmxVfcypCLHnB+f1XJJTMNoMqLrAnpgGdr+l3WAr
 kj22Uim6fu7cMVtsXsnwPyvSB9fv9ETEsCxlBNjKyQVLqB+nuEFTc8rer3MP6J6nFeTGlu1Qkkx
 zZXSm/2N4y+mgmsxF3Sf/Zi3/xMusBW9IckIAz0AH/I4cRho0pqoqdWVxwAnhuHfE1qNAZFiP3/
 Tyuo7BjfvNcqGFV0qVcF0Rm1KA/2ob96wAz4t2ScnBPCAvZoJCgRQU0Xs+7RStRmGVOtWq7595s
 qKOrGaDvWjSAkZbARPBRp1R0W5DD2K2WYUgC6zwu0Y50fXLzdMWVT1NHUo3+FLYI9UNqevtP9cd
 Q93ZsN0+jGVNeXRyFH7zxDbr1slepw==
X-Proofpoint-GUID: ItVHtuY4ee9YP-pDn0-FHZfbEV_gZt-9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290065

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml  | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd868..d9b980a89722 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,11 +13,16 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-dpu
-      - qcom,sm8650-dpu
-      - qcom,sm8750-dpu
-      - qcom,x1e80100-dpu
+    oneOf:
+      - enum:
+          - qcom,sa8775p-dpu
+          - qcom,sm8650-dpu
+          - qcom,sm8750-dpu
+          - qcom,x1e80100-dpu
+      - items:
+          - enum:
+              - qcom,qcs8300-dpu
+          - const: qcom,sa8775p-dpu
 
   reg:
     items:

-- 
2.43.0


