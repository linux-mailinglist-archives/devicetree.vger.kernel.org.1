Return-Path: <devicetree+bounces-202913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D195B1F3A2
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:17:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E734F3BFB87
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BDB2820AB;
	Sat,  9 Aug 2025 09:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G990jUwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7824F28153D
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754730998; cv=none; b=Sjpd0QB0SacR7ikZBw+DCDxeyAMYTOvD5W9vOol4vFAt409rdczN1sWa4EsT9tHfn2PkWCR48srZotLW8ra58wQya9Z+LkegxvP07XvRc03HB+ZEmwS98HxdqxTL+S2j2RL8tHALGEtWeRZHATqbI4shA/I4WEVSUz3sPk6OxI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754730998; c=relaxed/simple;
	bh=Y2ogXEDYHHH32US4rqwrs2C1gO2dNoRFZhWAu0HutnI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hFT9qflcVrVUgK9X1t+D2uCluqDFfJiufbTH1A3+JT1kJV48yjedgZ4skg/DXRjr1uSjYdQ7bg2YLLTR6c5S79N0db/JUTI9mO0faTMcfKr3FTD2ztIdWxehJH3SnpQn2YNK8pEWRCPzeD15dt89jUnIHDuCmSln4QPAZ7P94CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G990jUwY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5797hGks015529
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0noH+yy2UERIjrtWf5Izm7M0t2Ukl6cXD864r/H8zL0=; b=G990jUwYOiDDudtd
	r4gVI6oxixWCOPueRj9wNaanyiif96w1GQVDBJBcxUpWflyftokVllhR/fSpSL9U
	L2NT3QeuDkBUCqCXOq5UhDBreKVb9tmRWEIrdHi1ko+tQg2Vs6/3+bkp3cG8oTD4
	lPRdJD32jVh9bJkosxFgH68ypEfUoC3czpa6d8AXExYLhXxCNAU19PvL0lPq9IwM
	8i7Hjtjds/vd1Rtn1sfabhHK70OqF0jPkOblcanEnqPoJkO3YmmF0YlsduzYoxmO
	yKdhqe8p1MbeXEH47d/ZHR/rw4rPqhBjBr5ONsFIshlrCRX6/5rqqE+KgCoulA7i
	mWyDUQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g0bae-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:16:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b092c12825so80060941cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754730994; x=1755335794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0noH+yy2UERIjrtWf5Izm7M0t2Ukl6cXD864r/H8zL0=;
        b=mWFA4YsDpED+tmm4nfUBoy1licSv1zhTToQpDGCf2iKSryWqOYbZrlTTfDFKK0zuca
         foZexzNsObyTdS1yaLr91Er7ksx+MZsWXhUnRuHOL7AQw3psMuLQX2xg8jC7oXPFIrnP
         e3gU4oo+RIe+Iwzre8y8UGK8Fe9HYw4+aDsGLSzjvb9bpW0XpM2Vx3nAZVc/98E/Kxcd
         pz8MNbo2bMFRPEmFWGg7RNzi/NxbDIgtjFO1pkFLlMYWs6Kdcdho3hGlw1fruRbCs+r7
         5etbEas3lYl/cPj3O8ZrvmG/oZCPdGex7r6mLkk5VSkIa28Svm2eS1/dpFJ9AgzfQYYm
         Zhfw==
X-Forwarded-Encrypted: i=1; AJvYcCU2pCPcG0B574iEHPz0K+AQhyeZgPz2NTI7yu78hcZPZTQKjVLvO8QltHIk/20I9DxTX9iGfKjrAzAC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8z4j+/nFjXVMOOCuO4EApig8nPKOfTCS8da8eeM3aZ8hgkGUn
	if0Mk/panWgmNntCPip2OeDRB7YdoLXz4HWs4sbP2CDjyJi+KXV65brcsC5fFLYl6B4OKIsvqW2
	0F46HK47MFRq8OMIdg0MwV5W8YsXANWHLuxmQD/E5GA7A/xf6WXRz7/ELz71RaDKU
X-Gm-Gg: ASbGncvxPnnwH1f54RMXCeFKAcQRc2lynqN/zfkK5RgeIZUIH6EJGyQ4qD+2sREupld
	xg8fLwTV2n0dIPKzQb8eC1I7e5MAeSu1P8VVzWrlNmrlob1TyhDo05iQg1tF2xw+g4gIgE9PZiw
	7SXCWVT+RVau/EIo74gHaUkJwNZDZg3CmvRUZ7QhkgmJNyVeccUSDZroUAj2t9+sjyDeWHQiLQ8
	IB+G1Zg+SAZcA1PPiAYxJi8cXfWaZ1xRKdtKVqLZSdONcn5DDT9BdpjhOL8F6IoWYiTMSDTwBmg
	yTZhZXovj2OADMq7qDzPvPNbGUHkMGqd+f1Rx3XKQvfFk7M1dRuqRNqI8rKscwAQlPimFNT32zW
	mYvF7Mf8axSDpQoDeM8D9CjGJjtLNmil5tvjAZq/NJicTqTqGUXgi
X-Received: by 2002:a05:622a:20c:b0:4ab:ab85:e54e with SMTP id d75a77b69052e-4b0af4deb29mr64422221cf.8.1754730994454;
        Sat, 09 Aug 2025 02:16:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTuAHWg77g8yKCNLQrHsumlaHWKglPw97e39HIagDR9lBOoXatyWgxOgrJqJcA5Il5SmF1ug==
X-Received: by 2002:a05:622a:20c:b0:4ab:ab85:e54e with SMTP id d75a77b69052e-4b0af4deb29mr64422021cf.8.1754730993965;
        Sat, 09 Aug 2025 02:16:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898beb4sm3361989e87.30.2025.08.09.02.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:16:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 12:16:18 +0300
Subject: [PATCH v5 4/6] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v5-4-b185fe574f38@oss.qualcomm.com>
References: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
In-Reply-To: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
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
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1583;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=rRhj4oU1JzHT8f9jk9qa6uf5IjtK4GGvxWKFr60GaGk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolxHiEFvgBRJsk5KkiJQFXppAIto/VIfQ5SOXt
 VqN5ZRglSiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcR4gAKCRCLPIo+Aiko
 1XK2CACzD+zQ/EjzbEYN+rBU1Lom3FBDCKw4M1WqHgNidxsjZ0bOO/tSxCS7Dbk7eTDE0GWCKyl
 ExL0VmK7YCMitPwaEU48kku+VqeBbb3EvuxyWT4Zq+IVEgQvAHqyL3QXc8kyTEeSFt2jldWTOKw
 tQ9C2zXxJAreFrios+humWBuV1bmlq/apeHsAczJHXLIkwGH/MRB4puqxGEmPraqDbtixbn8DRh
 8phpf0+fJ38MV9PQkC/qqGXY1w1mMPF/+3M1uN+gk4MY5F5PSUknf297kvbBiBUoRTWt2bSn0f8
 DsfvC7AuvwSYlDGT8yFg4HCPowud/5eSx/7xG9UKuULxOWPQ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689711f4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=VjVaSBsDX57WhQYIrYsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX1VeMw+anDIAH
 hPZCyKtukZps+SWjl5yC1rVfHCk1d9rhgvC9BAll9FcpsuKlcwdiWt1wlc9jauZo+wR9BpmCCxM
 LoUrYHSK9J7BWC23+ad6QVl1P5u4zJUMR8RIwjpx/91FKcgxG1N3MgFc0HgY2jRoF81pFkLhZGq
 vTG6NL2zEpd0ZjI4gjYNnWP/iXwdhXpiPlfBuFusHjMdBHFA5SRqVWMnaAsu68zuV35SB3+cqXj
 Y/RXMYjZKZLeYkKqFB0vzYX6E+z3DLSrGQd4uuoPrDtWLB7HcKlVk4hYRVel4Ru7YZqzu+gK7k1
 vgLPtLmY8mrx1C0+VA2PgLwwJDOq3kAnhKKTjnZRWrMEmcvKbMwYbKFyA26S3xsmIyzBEfpFPZ1
 c4uDa0Ec
X-Proofpoint-GUID: tfUSC6VgWDoarlFprTKBUhLHzbRqRMNG
X-Proofpoint-ORIG-GUID: tfUSC6VgWDoarlFprTKBUhLHzbRqRMNG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

DP controller schema documents assigned-clocks and
assigned-clock-parents. However these assignments should not be a part
of the ABI: there are no actual requirements on the order of the
assignments, MST cases require different number of clocks to be
assigned, etc.

Instead of fixing up the documentation, drop the assigned-clock-parents
and assigned-clocks from the bindings. The generic clock/clock.yaml
already covers these properties.

Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dp-controller.yaml         | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 55e37ec74591af0a1329598f6059475926fdd64e..352824c245224d7b5e096770684795625fc9f146 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -73,16 +73,6 @@ properties:
       - const: ctrl_link_iface
       - const: stream_pixel
 
-  assigned-clocks:
-    items:
-      - description: link clock source
-      - description: pixel clock source
-
-  assigned-clock-parents:
-    items:
-      - description: phy 0 parent
-      - description: phy 1 parent
-
   phys:
     maxItems: 1
 

-- 
2.39.5


