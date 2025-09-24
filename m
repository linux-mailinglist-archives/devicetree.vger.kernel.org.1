Return-Path: <devicetree+bounces-220860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B41AFB9B85E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A93416AA5A
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6514331C56F;
	Wed, 24 Sep 2025 18:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OePsLT0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8BA31B831
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739095; cv=none; b=M7Mfea9atCbizozlZp9DBuTPhUZz5zBNeEHZ1Aie205AejagVytwov+bKUphxQIU8Gl8kpk6KaZOW6DK7ow7xDk2EUIY49Jcn2QNyULGnrM7o29N6qNlZwviumRLSnkWb+zmZuE9MdxrDz8RFtBkBuPqN2FgVlON7kcFY95S0W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739095; c=relaxed/simple;
	bh=k9CkL2qkm+Gq+OsTV8Xqcli2o6B8i6gZkt12KJczsqM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YKqGrhhg4iWBXMWVeaPpq5Di6N8LsHVy4K1cqi70Czin8Qcoe8XODte/9no0OhtlhglG/fKRlEMybpSo3E82ayuYDv05tw9XPgRDu17G3KCGh6zozOxi5ira/GJYoWETrbHLjdLKtr5UiM7jf0HSzJZ9qHjwiYh+BHJOzXFc0RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OePsLT0r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCnk6p018615
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D/76oTdLGn3
	8H8eHzIbnSh0dnKY4nS7/Ubm15EkVBLs=; b=OePsLT0rP3C5KSJ48BTLLYYzDye
	YOsJgJSKMJ+dViCi5lNreoTP+N96DhyjMRRsB/JspqyNN8SbyVZD3LkLLez11wCM
	X4JYWtR2ThFJb2cOBJUwkJMEXX3WAAumrFT85wX8cUQWuONJBhHKkSZyzARK4JO3
	lPhS73x5vSHASWNllmI/fpICOQCCDW+LTVWZxQeZ/lVCOaMsolF9KY8LAvLw5qVd
	ubqNKabtAraU7CXLQecw4zdwhEbdNRWVI1UH5PfFJVQdqzWuRP80okibmoaia60q
	l5/zUZjXe2DBTcEgdoYT7qwEPhRtlvD/MUpwW7UXPhh2wMqXDn91Qc9rPOA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjxreq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:13 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77f29f473a2so113205b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:38:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739092; x=1759343892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D/76oTdLGn38H8eHzIbnSh0dnKY4nS7/Ubm15EkVBLs=;
        b=Rq0DLe8Ol7cjJB8T4X5UxWe+vrsqsOwFUpoBKGRbonprMMG1ZjAihW5l/qxf+UOaqT
         eJ02y3QjlTxQ5xhPk+pEj7wqmQObMfG+K0s6/V4/+Nq+iBBrAgCjnOD2acfWo7NygAHU
         34EUQ6nHQdpWAGidl0YCE+Qc0/VBnsgCtdqYpN07fkJNY7aA5zV13CxQRP1VMHxThB69
         YgKiEp0TIVcbiyUBXD/Zs862mD/Qi54sT2lIj6hxGKdaO3mK6E/udHbwNX/Z8lqc00HF
         qJLEhTc01noIYy3V7WZwxHcrFZ63iVtvqaYn7v2wbXrTtO43LFVbjtSkyZY0TOSNs/6n
         z7VQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpmPwL5cN4mr9PBZWeYvo0WDlalCuMWY9xx8nXdg7lwm1QeaE5OvVQEI8vvy7rJ1Fttq4rZFvHpt0N@vger.kernel.org
X-Gm-Message-State: AOJu0YwhElR1kqUHsL6Duk5vFeC3N42r76MGB9TSLPz2lSePrXUbO9Mp
	3yZTOlxXv7MK6V8Av3q5gq83+pWof+Kha7qRxoPzuAQD4xaXAaCtDD+OjJkSVrrJkhSMdLHilIo
	18Q33OxlwKSQsMJ2i59AwqMzbPqX63ZAP6XwnmUIppdiTotlBDP9uWnSUKaLM5MN7
X-Gm-Gg: ASbGncsZUpqX2wZpGIGaZMqTvYePeCBW6oakOx4Y+yXGT75TUL3VtCOJOJcfQUrPNnE
	PGptwPibdBGHkbbLLcyrCNRUQFmwYoe41TowlbpuyhdoneG17A94HyZuOnA0MYe1O+mb7q5GHZR
	88nv5f1FrsFqJvvXKvWFSewN7kKMQ+WgQpeudUHY5n6rBJkxy19ddl8ImmokPHRiFmqWt9ZK9/W
	mx0E4xwMKz5O2//zh2pelqwphockTEeBZUu3llSaDL9KzOPkOhJDSY/gd1fi2iiLGB1lmZ2SYb4
	6fRBK/Ijol3FWm0+c/Fd90DmbKZMh393GT13oUx/tLneZjhyIQbL+DUy1PXdBQCqoqtpscWLrma
	vILpO3dSxVsw1kUMhPyYrqpBuGhwGXk8Ts/ifWKHHEPOKTJg2amshZFo=
X-Received: by 2002:a05:6a20:2587:b0:2e5:c9ee:96ed with SMTP id adf61e73a8af0-2e7d0ad23efmr792546637.43.1758739092172;
        Wed, 24 Sep 2025 11:38:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWHNu98C5qMUkkEF8Wz0kUHwZ/TobJChUZfOqfDNQhuDyK9wb0zE0W+cDeaQIS/hn4PG2+wg==
X-Received: by 2002:a05:6a20:2587:b0:2e5:c9ee:96ed with SMTP id adf61e73a8af0-2e7d0ad23efmr792496637.43.1758739091597;
        Wed, 24 Sep 2025 11:38:11 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:38:11 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 5/5] dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur CDSP
Date: Thu, 25 Sep 2025 00:07:26 +0530
Message-Id: <20250924183726.509202-6-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: SzMEBLpU5ku7Us2u92GMPB2iGGrzjUzG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX6u1wYuQfbU90
 RG3kzvAMrCC2a91RkZUe7zcJfIi1ibKpaqaroYoHVw445TKiCnz0jArPn5l3MBCsYkpDqm4yqNu
 hwo26MJTnU+9NmdwYfikgOmwBcBiBxwJxFwf7zeHjPCjnonkg/s8S1Mx/iQEz7x8qLw6xjmPtcn
 lQnt2F8JhAHhUMCe+xDoCsRNnfoen4K+YC41UlQj2owODtxFOuHyhnPR/ZMAz6kNyNLUoKQHWze
 fUTYIT0go9Q51X/7gvTCUOyVVL0kb7UZFBpJH95PiDwjzMbfVCsaF3hFYNQpfaYhu3OKFTl4p6O
 QMHxHKOuQvTSt2Ka1NApRTTfmqgZH0zhg0Xm271GWzG5hyt8l0J/pjhOeaFhUoigNSbtPzPHgm4
 jFSejqP1
X-Proofpoint-GUID: SzMEBLpU5ku7Us2u92GMPB2iGGrzjUzG
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d43a95 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_X9-DzOTpKYA3bgxq-AA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Document compatible for Qualcomm Glymur SoC CDSP which is fully compatible
with SM8550 CDSP. Also with the Linux Host running on EL2, the remoteprocs
need to be hypervisor independent, the iommu property is mandatory to
ensure proper functionality.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

Dependencies:
Peripheral Image Loader support for Qualcomm SoCs running Linux host at EL2:
https://patchwork.kernel.org/project/linux-arm-msm/cover/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
This patch has a dependency on the iommu binding added in ^^ series.

 .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index cba45ce2865e..8a15e0c47a78 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,9 @@ properties:
       - items:
           - const: qcom,sm8750-cdsp-pas
           - const: qcom,sm8650-cdsp-pas
+      - items:
+          - const: qcom,glymur-cdsp-pas
+          - const: qcom,sm8550-cdsp-pas
 
   reg:
     maxItems: 1
@@ -98,6 +101,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-adsp-pas
+              - qcom,glymur-cdsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:
@@ -227,6 +231,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-cdsp-pas
               - qcom,sm8550-cdsp-pas
               - qcom,sm8650-cdsp-pas
               - qcom,x1e80100-cdsp-pas
@@ -247,6 +252,7 @@ allOf:
         compatible:
           enum:
             - qcom,glymur-adsp-pas
+            - qcom,glymur-cdsp-pas
     then:
       properties:
         iommus:
-- 
2.34.1


