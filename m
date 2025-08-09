Return-Path: <devicetree+bounces-202907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92910B1F36F
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:37:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B4313A607E
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 08:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB67279789;
	Sat,  9 Aug 2025 08:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aK8mAb7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8132519CC39
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 08:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754728620; cv=none; b=pyezFjn3INUwvUPAOvAjYZugRC6q/D58wosgEGcG1dNSo+EICoY/tBtQrv2fkO0Tqt+M5E4d5THxqrvssTx0CPzbWr982VY2xPaUDhIsJEKPC/Zapg9Dtq0rNgf9xwlmeR8GAtASdxyXg+rgLZDZfp6n9rw06sW4LbcAP34/lAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754728620; c=relaxed/simple;
	bh=KmUlDlykqRmfS/c3OkAxh7AJ+0CRPOU7eFP0ludcvrM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iLeRPv6HC7L3NPC4Of/gnxjASnf4Bt2NQaei5qcENWIwEK52JS82AqLkNEBbthWvoijcTKD2yWljUdyF4lwsWr567dXA+uXv57ae5UwI75+Fsfl1ASEKLZf/CR/OkyNbS8U38O858w1MTaL3UOc9pAAIzkxe+WM4I9rSyLHieQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aK8mAb7w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793UUQ3009324
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 08:36:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Vbhk6QCT3EVReeZaEWJCjX
	Dtjty/QxM/QqF3JsKZ/bQ=; b=aK8mAb7wHR5CDudbNk+2qoh4ORGcuSpp7chNfB
	6++T8nTbtFwp61xD+vH4dam9eveMkdL/wdrfiu4W5YiQHRFYEpKGs4UoM+yLMSvL
	EC+Hpbiz43YJ+AqR4FJPLA5uRTECXQZsAjwPJbF0SikwJ3jXa31WqoOsZ5UztfeM
	T70FEGLOcgEOgWfh7eRTDHv/tuyq2NHiKScvNzd85nOGWNIi47eFHzUORm3qtysE
	JFyEgxqX+wXktzaKCD10gWUrzhu3CdS5MldCCYNjdak24e4JzU3/V+m/7g9vUx01
	l07HrL5srnGtmENYNAPKTJD1Vc5QHcPcboGk8jKHA17Od8qA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmgj4t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 08:36:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b076528c4aso32347141cf.0
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 01:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754728617; x=1755333417;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vbhk6QCT3EVReeZaEWJCjXDtjty/QxM/QqF3JsKZ/bQ=;
        b=qDZSrn2Lw4qUwic+x+75F2X6G0gue/im8yXXcVyffCQ9C1gV57nWUJq5NO7ALwKz0w
         NxGzERIli/Ign4taHsMZP14GdZoJlbrhzSlm0olLwcMrehhz63vhwPCHgCAGUa8ruvmE
         QMKAmGF0lMfcBcXMRyJH22B4mw6pOoNwlSoH24hlxPK4jP5c89QQno2CrvTi3B6rWucE
         q3Ew3peQQsjTCpF7/oqBHha7LN5YXQtFwUZ1Vt1QN/PJhe/cGeJtZ/jJrXdfz73QJDlU
         mfV/OYj0je99eYNwwKlt+CqftpFh+LnmD+nniGy+bOUJfJL/6M+dLlwCu8K25qetLe5k
         2FyA==
X-Forwarded-Encrypted: i=1; AJvYcCX03XwciNYUPLVSAZLOAWnTmZCK2KeWkCdkEbuvGNfJhmXN4pZjnZeRwkE1WKMYua317xw+y2VsnMic@vger.kernel.org
X-Gm-Message-State: AOJu0YyVV9XOXPJpU0vtOXxm0S70PuejwBFBKLyjEkFkgMqF8Veqpc7l
	6RclfGAf3ckCZjBtcrzVVTyLbMMqSXxvzmglZeuFpwWh46QFAbZklSXljnqSp38wOasOnn0smsO
	0yoAIYPGqb3+iMCR8EKv4nwhoIQvnMSVoBCleVhQ5EgtfRp6sojUFsXTq/+fAmgQX
X-Gm-Gg: ASbGnct+SdKffzJtEkHukazBjkr7+7v9kukPKeX8hWoFOQ+SyWN1s5jrNzMjnzQNBlg
	3hUY0bM0mfOXTG5dxJvuRqjKgNl9o67hsXF4PxV1r1xNOSHxN+lkhb0vGGyDq4rHKikFZqK6znI
	8srUnNCQa5BwuHMlPfouA4hV0o1pqnDEI8Ls3hrFBma1STv/eozclShfnkm7m8pPXN0IW4xVhhf
	ZVnc6PWSQ6POKppntLXI2YhIJb8F3PbaxVyNQbdwzhsmG5mKcu94tbNhzdBv9rQXUQkjvlIz7rY
	Ls+fAB5P5Fnbh4uUHRjQj41OyeVCA21PJTJe3OWmUyL2eOZdWBtlMrSEY2b6yFD/GlLxvj9NOW3
	2mJc/rSvjlzUilqI3MA8Ls+HFu78WC8EGDqkmtuRqEolgygGnBIlZ
X-Received: by 2002:a05:622a:2446:b0:4b0:7ecf:beda with SMTP id d75a77b69052e-4b0aed0bff1mr90397741cf.9.1754728616699;
        Sat, 09 Aug 2025 01:36:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH37kRnw8/1Yvy8Ct0TseBki1Zc9SOjiU5tdXrLe87OhkeI9dMLexzVEv+ZZeRaP96/LWT6Gw==
X-Received: by 2002:a05:622a:2446:b0:4b0:7ecf:beda with SMTP id d75a77b69052e-4b0aed0bff1mr90397511cf.9.1754728616224;
        Sat, 09 Aug 2025 01:36:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88db2214sm3239974e87.177.2025.08.09.01.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:36:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 11:36:54 +0300
Subject: [PATCH] dt-bindings: display/msm: qcom,mdp5: drop lut clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-msm8976-no-lut-v1-1-f5479d110297@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKUIl2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCwNL3dziXAtLczPdvHzdnNISXZMkU0MDg6TktCRjUyWgpoKi1LTMCrC
 B0bG1tQBoHPxKYAAAAA==
X-Change-ID: 20250809-msm8976-no-lut-4b5100bcfb35
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1257;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KmUlDlykqRmfS/c3OkAxh7AJ+0CRPOU7eFP0ludcvrM=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8Z0jmVKKiy51Y/+3+p5PqP0fs3XmjAmj0vMF8rL7+qbz
 9pwz+dNJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmwt7I/lc0OcDbbM3ekOis
 iwVbqiwWv17z0pxlS2uU0aXM3CsaynEnRPmeb52nF5CvlMBhGOc+92HM1YO1LOrxojddP8zyZRP
 5zHk2sFz3352j1zasC+o/syEq5We3aOYH9cKSCU+5LnV0ae26m/r1Gp/4Djul+zKnijef6Xt56U
 BCzOwJJuueexW0nir2Csl1MQuQFDc93Nt8nmch890Sh4OmlWwWQi1Mu9cw/jBfKjb7y7H57yfPU
 sqwC7/WWmZYwnjp8IHpC+c92KXH2Tox8bggZ5zCYpZnis0HXAqSLhYf+8J2KyHWfnnvXYu/b1s6
 ZO/0Gr+xMvVSfXdl4dTAhx+mz1JO/wa0sWVamsGVsr2yAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=689708a9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=-Y5st2MN6ViVPFRs--AA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: qNJFF5AshkaAENEFvUFF3gRnwZ1tWxOm
X-Proofpoint-ORIG-GUID: qNJFF5AshkaAENEFvUFF3gRnwZ1tWxOm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX7DRSAnOuZIqu
 k6A10HJaJ5HVF4NtfvkJlcqTfLNuKqDkz4O56LKmL1PcJsUzjU0ShghnRdTOsN4jIDTu9frcRn3
 mUZKfPbjWQFh7TFVzKtN9t/tlcDoAJRG2pxABge7vhU74T1A0YXdEee5Ox7xcrY037OTCnZpnt6
 1hEBqswoYaVskhyNyYvs9tWHmKtmmddFsKtrpExSPCGHSTFe+oTlPdgjYdhS/SCPH9xDfoQuwpg
 Y9OFBgQ2O1AtfcZ/bPZndbWLVgvsW2seO+Kuttwnr1ulCo4J81Ra5NvV5qszb+krPCncHOVOtpj
 PJfGqryVH0nv/7yChG21HdgWIZ9yNPJN8hcwQUBK2ac+Xtj299RBp1i2T9cJlyWHnTWMPGadD35
 eSsulCcd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000

None of MDP5 platforms have a LUT clock on the display-controller, it
was added by the mistake. Drop it, fixing DT warnings on MSM8976 /
MSM8956 platforms. Technically it's an ABI break, but no other platforms
are affected.

Fixes: 385c8ac763b3 ("dt-bindings: display/msm: convert MDP5 schema to YAML format")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
index e153f8d26e7aaec64656570bbec700794651c10f..2735c78b0b67af8c004350f40ca9700c563b75f8 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
@@ -60,7 +60,6 @@ properties:
           - const: bus
           - const: core
           - const: vsync
-          - const: lut
           - const: tbu
           - const: tbu_rt
         # MSM8996 has additional iommu clock

---
base-commit: a933d3dc1968fcfb0ab72879ec304b1971ed1b9a
change-id: 20250809-msm8976-no-lut-4b5100bcfb35

Best regards,
-- 
With best wishes
Dmitry


