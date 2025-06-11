Return-Path: <devicetree+bounces-184792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEE6AD538A
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:16:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9F6C1712DA
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E63025F979;
	Wed, 11 Jun 2025 11:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C0RsGiU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B582E6130
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640567; cv=none; b=GzEL+1wxrxu3haj1LEeX3OrC/cR9qpLiLAhI7B1294mn3s18gAevlhhDXUROs4Io3XrxztnyXLsGBEY2dLRe+2bV5hCRBnEMb9Agjkm994qFqL2a6XhIitmjNeG+Bk19wUim5jbXhGNHz+F7lRhvjq5sEyhD3pAIfDcHSLKY4FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640567; c=relaxed/simple;
	bh=lHxIg8z3r4MYFlwLi2deHZy4r/sg9/34BnWytVOD0js=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EFG/0t7T01n9NpcV9ZV+VuQtZsQI7J6q8TpIURMUQKyaVyBXkZjkF1ph/XWSdvSEiTUL/uw4QXt5vT5E1vT5fxuAgycmp8zAV8v/iozXveGAAWvwo6az8CjoU6c7RWI7B/57oERUC4gf1fTZTAIfO9d2Kzj63ExD4vTQUu8GCj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C0RsGiU/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55BAnqKx003259
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oaAMiIVJgXHtfHES7X7LLIIzOL/6mPXxYGS9Xfa5ANk=; b=C0RsGiU/UHg7iW0p
	svVWXkU0RudSs9AO5l1NmCI7crNwyH2hWulQoF5yVRPLU6Mk/cf1sutTnEBNBlfN
	8vp0rUukMbBibpHBnVWJof2ELlPAWbMYV7Gzl1Xw+aHQMu3A3KW08zVCrj19JWtH
	PcVLqZqq29NMMKHEoStPP27WhjyvClIOI59gF0su8zTychqWCIgDWW/fAFV+F1Yn
	8bmjzOGSzucXTq9bwnNNldkyRkuqeSt/9DxSarOUaYi/lhZkfRjr9ngVPuLyyTwx
	30fXizmPwOi11Ue4ZnJOe+08ZYVVTDYvlJIIab9Ty9+ULKPC1Y19hwOGoLM2JoAA
	E8WQoQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4778cwg23p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:03 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748764d84feso347820b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 04:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749640562; x=1750245362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oaAMiIVJgXHtfHES7X7LLIIzOL/6mPXxYGS9Xfa5ANk=;
        b=hpZYv/S0A6sswbUr3+ZlHtRzFqb4AQ2JXK5W54uvYvmgVe2Ghnt+Nq1IiH3DeX5U+n
         3U5sH0wvCZU0qgkRLZ3yreamjls92WFOSpEYqHl/IoF6fHcqpJ9tNn39gc2Kl0giyZMH
         Dv61JACpPLfcmjEot+gr5NzjZCIM0mBcpSwOtvcB3YnezS830V5GH2yLGXKNwFWBWEhr
         oLsu562Z+4AVcfICIxwXETtQcWzWWVZFoURvfAhdQkzws3E8+QwnrNmC1M7/GIagaYnf
         4fvc+9Wa9uWw1lPc8IwZpiLSisic9ZxA/gt7/ntxEiXYz183T2KQJ1W9Un7qnlaWnIaX
         GGgw==
X-Forwarded-Encrypted: i=1; AJvYcCWpMKYSJEXLP9pvkuP31FcxVaGfv0jgBrc0cQJZnZelfGki9GI5fCnaMPfrV9O7EPDKk01pw+usi7r1@vger.kernel.org
X-Gm-Message-State: AOJu0YzwRWV3Ob3HgYqkgauz0TT1CH+yQYnyXGdPzg+ftIWZbnt+j5VM
	/44p23Kkn6eucSrA20TTeoPTjJL6VV7A2mwwnEAQ4eyHgHAltdQED2NbPtoD3zqZTiHH7Kvl74H
	RxsIwN+NS6vmOjRR8ouNbVTnrqCWi65f+HO5r5fDVJrjkVStSUuSCqCdDaLfCn8I6
X-Gm-Gg: ASbGncumZEqHJPcs1ogVJnP3UCCV+wfNVoN492ru+idSZyUIpR2lQ8FzC4IzjYR1Tlw
	xuaZKZMV8LRu4mp+T6RIdLVJML50bmVfVnyOjhvGFDvrAqs8fg/Qorzd9Eu1QBo+avMn9DHSYkr
	PENt6XN3ylOxkkWS6lyXXYyG8xr8BAanTy8ke9rtUVZZvpxUuuh9S+/ai+BwAQ56jrY+0DqlgN5
	O1jxIWV2q3qKLMIjcxUVJ7Hc++SmQIRXi7jumU9vMCEMe8gqsM2PqLY9o8pmVMCqpE3/btzVqGc
	a3x18KOCGRxBf4sQZRyvdbrYjHlnFYRP
X-Received: by 2002:a05:6a00:84f:b0:747:cd01:9f75 with SMTP id d2e1a72fcca58-7486cba09a7mr3858945b3a.10.1749640561953;
        Wed, 11 Jun 2025 04:16:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHROg37CoLQX/gpU9C5YtRVK3WyqImgZyCmQYBDNqko/4jqswI6HbSmNXgi+XM35/6CERVSVQ==
X-Received: by 2002:a05:6a00:84f:b0:747:cd01:9f75 with SMTP id d2e1a72fcca58-7486cba09a7mr3858922b3a.10.1749640561603;
        Wed, 11 Jun 2025 04:16:01 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0e9d57sm8820772b3a.160.2025.06.11.04.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 04:16:01 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:45:31 +0530
Subject: [PATCH v2 1/4] dt-bindings: opp: adreno: Update regex of OPP entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250611-x1p-adreno-v2-1-5074907bebbd@oss.qualcomm.com>
References: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
In-Reply-To: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749640547; l=826;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=lHxIg8z3r4MYFlwLi2deHZy4r/sg9/34BnWytVOD0js=;
 b=ICq0mXqikfLYi6zoSoY7dUbF11OEkSXzvry9bOOUpbQi4bPFyVr+Va+GQM0kxxwrsM2sVUL3o
 J5HOSoxdbY9CddPxQ42d6Jw8+7mjv5B7uHLuEWJY1k8LDyEMdilimZ4
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=AaixH2XG c=1 sm=1 tr=0 ts=68496573 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=j--r9fh2p167zETY0CYA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: -j0Br_7Db7sO5kf0za9M-ufgpdnJkimo
X-Proofpoint-GUID: -j0Br_7Db7sO5kf0za9M-ufgpdnJkimo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA5NiBTYWx0ZWRfX+UxQdk3OBXf2
 MG8Lle+54cHt12qLVDU4RgMaCywttZ3TTmnmvEkVYVdDqC0QWU28sYt11Xkk1U/1xRFPi7YbF3s
 pyZJnLOXwEcJbWiQzicTE4RhivQG1VKy9jgWWUdFD8iU5LpFISR+vgvgZWFm4RWobPT65KF6upJ
 5YLAu4KK9W03/KS24t0W4faigYUVlQrXD5oTNJqEw2w7hrGO3DR/VwrdRTYXSqWioXRjuf5tv2M
 cckDYUzdImAbfrgJSeo/VqwT64Ok7QwW2RnWb9Yhhc2ncEv2ER7EivEqmQ9YO8F4xaqvY4+nyDL
 UvG/J8k6Ogi6khrEJ4bkfIjtdQXXzBaiP/ajEoP9hUNpIIrF0yqXfq9DXkuF/LyWEUZMiyYqGRG
 X9UU+sCIVtx8sih0yEBRsCt9BKSLolNSzsO9XpCbLu9E6a7JTq/fY18EJ1rETEfWoba/kYc6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 impostorscore=0
 bulkscore=0 mlxlogscore=864 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110096

Update regex to allow multi-worded OPP entry names.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
index a27ba7b663d456f964628a91a661b51a684de1be..bba95799919eb52d12afa42354ed909d0ef3c627 100644
--- a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
+++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
@@ -23,7 +23,7 @@ properties:
       const: operating-points-v2-adreno
 
 patternProperties:
-  '^opp-[0-9]+$':
+  '^opp(-?[0-9]+)*$':
     type: object
     additionalProperties: false
 

-- 
2.48.1


