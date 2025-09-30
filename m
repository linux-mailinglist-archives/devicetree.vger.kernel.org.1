Return-Path: <devicetree+bounces-222652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F167BAB969
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50BE11C8312
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E299C28136C;
	Tue, 30 Sep 2025 05:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lKszC5nL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4785C29A9FE
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211519; cv=none; b=MItQZvxFmdj6+PLzhcQLei6iHTDDzgj5bAYlv38TXKTe//rcl/LmYyPvAxGi76Fx1D46Mgqn6xWRO1nNyPEDUwRFri7BaDkgsso2PJfYYOXzdII7uUl7ylPUwfKEqHpZXxwxocW3e9OKuqZrr5ehNuUn8vh4JoFPesa8ZlkedBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211519; c=relaxed/simple;
	bh=pH7QzqfVd66CUSD6i7hLasiAtJ31uRcCjsRKu6nI+uU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FIVgJ9ELSGxIUeFsOYp8RzSaIGVXZxL4g+f09jMCibXf48p+X9s6sJ91eZ0H3LJykdTgPgrwzoA4wi5PT2ZV4xjZmo2J0ZTmV5CAmsRdjRLKPQUbUuSFnpLscp2ZuLZOGDDZ6vElGTZbprLE+mojNAEotR/6mN5jc3mTdBQ5mM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lKszC5nL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4Hg8f011523
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Hx2GBX9F7NQ8LRgJrlO3MtzBoxHk2zM9UYRVlbcmb0=; b=lKszC5nLb09MCfFy
	9qAXJATNc91t9z5O/MuQrzYAQKzVp+/ETh9Ycr9nQyCqvTraXNxjiKDJtHN5DVA4
	+8VURNjrpCnDtu6r5iwojX/EfAVmZOBXFO/pg6BjrOnYwTWlrs/1AfvpW2Y5fLQc
	dMiEUiUQ9cVUV5GsDmeVRfNTrvEXpOwzmwUXMfZddzEyzMvhiOmPs6Zgjth7PIRi
	Q8UsR/+X1Zwo7107X7hB+QKZ8YzwctDk5yyVUurjtGjBFSLTAja7EaD4tpiAAqtL
	dT3dgCF87O8G6pmKRvmoA22ke0i/JK7jkXyam2ScMjLbo5H0Z6HfmU1Hgs0Jmi5u
	XBgc7g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mcr2et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:51:57 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eb18b5500so8789633a91.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211517; x=1759816317;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Hx2GBX9F7NQ8LRgJrlO3MtzBoxHk2zM9UYRVlbcmb0=;
        b=hmGw2j3/pr4cRBAEig491tnd7JmTNNieCCcNjQKMdb/gKKHQN5Ksn3ss3ODWEre+JP
         wrSIrXJam6EliXrbbh0i13Hkvp7LuIrz0MP1xChwSrFteDUSDSc6Jsm5amguMUsIfC+0
         ymRgWeEBPSgQR5l2qG5z2i4ycmHkrxDXllh2vllWbG6cb2D5sangXQWW9AIBAVcHr29q
         dqRALHG4m0zObDENfm0MQwEKUBVxyqXa3SxtEwLcTjfriAqHEFncXMsn3T0F5A7HCXR2
         wAjEcWKuPZOpjlEr8/cnaqMkxjALG67GOlRQ0LhMZEhaVzy1mdA4M4PsUhWA3s05uBn0
         FKRw==
X-Forwarded-Encrypted: i=1; AJvYcCV+dVUlbNHvr3/Mhdy6VygwVWNczB32iqy2ycG0RnkudcRPfEC9w4rNGF6C7eONXsvNF8cqzAzjss6P@vger.kernel.org
X-Gm-Message-State: AOJu0YzP2s8mvbHhKr3Fnzk1C+fpOMriPdnMK9Mgr6nlwgC2mGG79VrU
	ouAS6rawwaExxaDm9K5y3lpH7oPpr2K4I+5uPLYpWf/ZSioyWxRuT/UJzKK7nb9+bCgrMgmbISx
	inZ54v00XGTfae+Kb8h4wZF5Eooy/cqx2RmAk9oX8+ZuAUmeZCNV5Fc7YFYG60FjV
X-Gm-Gg: ASbGncu5NLYbPYhkqs72CB3i8G+ahEdathaEvwndZNr3ylwnLJ6kvHzHkAAznnkWSht
	5wFTstOpl7R4LWrwuZ+Az9pZyC5rHbsgWl6ZE/ZWWnSKp52hgWxOOZGCwmNwZN1/uEQ2BV7JUXr
	/vjJ7+1TXHvCMgWWjcSU/ihH/bbA5+eYGPm3axW+jcAopN9Q7K8KJjNcn9HLaBFDaXQvu7UMqQg
	dM/9WThBR2Yh0Z716KjMXodXHJVU/cI3HHE5+BB34OLhdZgx6rnGfLHOrp32DeP4CnGIuIEvj6Q
	nxHu4xTGWSrDMYsZd5GD1yTbGjNsp3YZ/P3EIe/PmPylOCdUkAuQ5TXowmK2yVeBVsOF9Q==
X-Received: by 2002:a17:90b:4acc:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-3342a257424mr20752771a91.4.1759211516700;
        Mon, 29 Sep 2025 22:51:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtRSNc4DK7E+v2shAPlx5lz31OGXX7JSkA3qfyFJ7DSBwKjBFDVh4Ipo5Nf9B3OBI5+WubwA==
X-Received: by 2002:a17:90b:4acc:b0:32b:c9c0:2a11 with SMTP id 98e67ed59e1d1-3342a257424mr20752741a91.4.1759211516271;
        Mon, 29 Sep 2025 22:51:56 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be23412sm19029779a91.20.2025.09.29.22.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 22:51:55 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 11:18:22 +0530
Subject: [PATCH 17/17] dt-bindings: display/msm/gmu: Add Adreno 840 GMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-kaana-gpu-support-v1-17-73530b0700ed@oss.qualcomm.com>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759211380; l=1801;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=pH7QzqfVd66CUSD6i7hLasiAtJ31uRcCjsRKu6nI+uU=;
 b=PGjrYLobY/yshGg2rKdYdHx3hBf1rR+pcl0fXzC/zlsE0Q4LT53RJdWXkdzvjlbXr1Lox1Rsg
 V1eBxYAHSsbA85oYuhGvB/V8bDV+FCIysw3mOWm7AUUVLL+RIKg+LcJ
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68db6ffd cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qH2KftFUxmXysmBszocA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: F0ZVRifiBBrT2B1H9wGs4PJ5YknU1ZIM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX1g5NRu9w1zNz
 MeRF3pBgsA1YksHVAGLrSxGLRShoPqaZHW/uFSt/BDl7c7mQlELJDijfgheI2v2xluT0zAEQVs8
 zg6raURFFNsGaFarnUbim/rZ8yUq2ilgmQ8zHwh8nMxXXDpK5cI2xcX64cfP6XWTC2UhBXf1cTT
 QigbLExd4DApwnyXNTKGZmcCM0w/qEB5cgQhhKvHX/5WV87wsqiogH8Gd/J0msC7d3Igav8wbUV
 kzAANkNL0sFJ4KARxvmtIAPqXLMs4cjBUG6SsgCvxN3WpCezeaDBiTouPGFzREhADOA67gVOZ2v
 DwBQlpRMMFnrBSf7rkk6X3WNDXGRvg00spg+I+QqfowYQKy7LeqVzKlQ0ZoJik3mIlaU2nfBDpG
 IYBKhNEM70UEWJ/ZndZ0fBL1gIpzwg==
X-Proofpoint-GUID: F0ZVRifiBBrT2B1H9wGs4PJ5YknU1ZIM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004

Document Adreno 840 GMU in the dt-binding specification.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gmu.yaml       | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
index afc1879357440c137cadeb2d9a74ae8459570a25..2ef8fd7e9f529967e28131e1d71a6a6f455c4390 100644
--- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
@@ -21,7 +21,7 @@ properties:
   compatible:
     oneOf:
       - items:
-          - pattern: '^qcom,adreno-gmu-[67][0-9][0-9]\.[0-9]$'
+          - pattern: '^qcom,adreno-gmu-[6-8][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno-gmu
       - items:
           - pattern: '^qcom,adreno-gmu-x[1-9][0-9][0-9]\.[0-9]$'
@@ -299,6 +299,34 @@ allOf:
       required:
         - qcom,qmp
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-gmu-840.1
+    then:
+      properties:
+        reg:
+          items:
+            - description: Core GMU registers
+        reg-names:
+          items:
+            - const: gmu
+        clocks:
+          items:
+            - description: GPU AHB clock
+            - description: GMU clock
+            - description: GPU CX clock
+            - description: GPU MEMNOC clock
+            - description: GMU HUB clock
+        clock-names:
+          items:
+            - const: ahb
+            - const: gmu
+            - const: cxo
+            - const: memnoc
+            - const: hub
+
   - if:
       properties:
         compatible:

-- 
2.51.0


