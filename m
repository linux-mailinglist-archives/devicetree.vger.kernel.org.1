Return-Path: <devicetree+bounces-219558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1502CB8C924
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 15:33:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 600CF7B93E5
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 13:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5501DDC2C;
	Sat, 20 Sep 2025 13:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PFag8S1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A96E1F5858
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 13:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758375211; cv=none; b=bA5VOakgfIHfh8HDjXU+O1EUY+UTUC1Ah0PYk8nauNpdo/Ov9AmbHrognTqxBjiCDG89lELYwpMKhoWuGZ84IxH1yF/L4Luh3HQ4EMc1znQ6RD1ON1K6JOt61oohIMSHMheR9YyhgUGbiWI4tNj8F7pNVUM5S87ZqkSxIoQFlW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758375211; c=relaxed/simple;
	bh=F9TNTcJ72Xy2VjV6mYwy+LXLtuaD1jREw8ipqjoUmO0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RCcVKLXaLNiZwhuDjAZqaGtj0SlJvgIoGgS9Qvu+HL2txV49ROL/dgkGi6V4BCcpUBOOTLLnB82CGs6AxkxrpsRJ2cmITRVbrwJfm/Q/HGG9Ox1mbXg12gvlftBvtrJYVyAa+L2cc9YwlvGQTHIk6/XaFW9T4MELti7XUxTrN3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PFag8S1d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FYWh006150
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 13:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=wQKOe8P2vr8uFWPix5zvIsvn3idrR/hD0KQ
	7uhrpj7c=; b=PFag8S1dtcbglqAqrkRrP2bzkibX+1yi0racELwU338xbW54JmB
	7J2aR93BTbKfFwm45AihfH0RSd/h7AYy0O4YTIHGjRxHMdwxO26dkqllIL/SSrKq
	H9+rvLV9IJBsw/yrAYLX9SQVrqTvsMNMcJBsRk/WIIEsPdPBFYQSVh7YNNAyf0im
	8mPvSa0iEkOmie7v01cLklRAO3VgJ5RtBRb/73K7i5haLl7FYbl0B815QpwE+2AN
	QO0VNUQ1gPt2cUp+4S9vLZuxo23cvjRM1o5qdtATUK/Q8Uf5MiwANb2/k6d5xOCx
	5q3p/ygq7Qt3S3Fdop0Z93KaEK8LXrxorrA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhgttg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 13:33:28 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25bdf8126ceso59242845ad.3
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758375207; x=1758980007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQKOe8P2vr8uFWPix5zvIsvn3idrR/hD0KQ7uhrpj7c=;
        b=vgq1LDZpmPY+eI2BvB8yoY+pGsdE9lgVrX5l83h7PZEtFsUB9/TLbY6+EyBCPG1+az
         noG31rygSTRQGREZrVGjm7WNnoMGm55cMHBCXBf+Ecssfj5NG154rOaoKNFs6VWgvq+7
         PW6+2xkD+J19dterhonRFmnAp/eLllapIFrBfR0To0u1qmonnNX+gvldlNY3T/dJDZsY
         5mZh6lE7A6PISWg3ENwnyfNzbFTaLrXaW8DMgORtdTrA4zwxQtnTdplRAyBhTy+sjmtM
         1hcaqo2BpPQpFa00Ma7HW95RA9rG5w7XyJPjeP6sEdXY3XXQ0MsSCqRhZU0wpwyKjFfc
         XFLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqaRDXsTxq2fu5UGd9c0tEV1cQ/v5PWr6HR2M9s04IKXYgn2AcVjrIQiUeL4W9vRDVWNlGWpCMWTH0@vger.kernel.org
X-Gm-Message-State: AOJu0YzY39hlatfZvDjRSzi2GvOh/5cN8S/47g253ENs+qpjQtyFlqJ5
	E+Fz8g52kJ2tNF09En/BTpyxNtqJeLLlE5Wa+A3mb7rwTQ23QLBURrBM9K68u98085UaRpnzh41
	LBtBYmPBfOqCgbEdvPUKxZzlQJIuSM4ernjj8TR8LioWENIiDGbN7BF15WnNmAIbS
X-Gm-Gg: ASbGncsOq/UhQy+oTKASCEcOTBS+2s7/kAd4ocr3po+tuW9De6LEkbcAMPDoAe51Kw7
	v54XGv10PsiRXB9fQ2b8mMmyG5oIp2g1OhSLYtn+MmGXlNhkeTmy5NPpGdffIEncaNXUZWgppAQ
	sxSkPTp3D8uQ41jcCze0Cj+naMsq/k1WfVgRD54Ak8SmGaoDnuLYb5MzJxFC73xOr3TLDDxgrPh
	0GlEs2UfUN6QzBeGlVezfoJ643K5DENFeixAW4StXS7n+nr0ypeuKLRRhHW4VKdGfEv4mPFLlRO
	rU1bt/tKRw3+TkTiq7Adr6PL2eQZV942+YAaWZeNoeowJFnPBgwxEsmYQqys4rjJ9IXyZSgwU7I
	KK4jEYU8rz8p7yIre20DLWEEli9eN1+FdPb/vefW15Zp7njZtFqYoiklOmacP
X-Received: by 2002:a17:903:f86:b0:267:16ec:390 with SMTP id d9443c01a7336-269ba447e48mr101206565ad.17.1758375206978;
        Sat, 20 Sep 2025 06:33:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESKYfIbIXZygaF2oDpOFzQL0vr9vZbzkA5zah17knkO7iUUouvAhI2R+Ga4XBlOwc7OXlIyA==
X-Received: by 2002:a17:903:f86:b0:267:16ec:390 with SMTP id d9443c01a7336-269ba447e48mr101206145ad.17.1758375206492;
        Sat, 20 Sep 2025 06:33:26 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32fbb96f3afsm5375009a91.3.2025.09.20.06.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 06:33:25 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: dma: qcom,gpi: Document the glymur GPI DMA engine
Date: Sat, 20 Sep 2025 19:03:05 +0530
Message-Id: <20250920133305.412974-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 3hi4xFU782IRsvnuhNk-ub0O93AJA6cd
X-Proofpoint-GUID: 3hi4xFU782IRsvnuhNk-ub0O93AJA6cd
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68cead28 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=HaAzngDW_a_fOyBJVOMA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX44xiQpKGuUt5
 drcZJxcpl+q5tVX8UxVleqgv31giVXUb+xwJnBhWKVEY3/o4WNZhDymlaHNG2XJh1b3hPUYaCUA
 1BjOFMT5i9X66A4dxOtPpTyauf4O2jvmuml6vIFCig+CBX8IA98kOI12OA8hcQYstdrE+UEYX6L
 PlRXE8cSDSq7IMoBN69PyxtDKuQJUvL5JnWW3XIaKW1CsopdZVpomuE0bxGJPqQEuQkf9VEN9xq
 ncAhJLP4EReKddswC7P8te80ukGtN0gLTW+IIZXvLEAb7KgkRRI9KGjFdqLB2upiauGZMHVRypN
 9dqqjsqK0CHMEIvqrhIRLf+oZ/df+dPpoFrExiwTdTyYySbcAWpTYnQM6zLU31J33vQbUDAM4v3
 GYPi+Ets
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_05,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>

Document the GPI DMA engine on the Glymur.

Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
index bbe4da2a1105..d595edae4f44 100644
--- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sm6350-gpi-dma
       - items:
           - enum:
+              - qcom,glymur-gpi-dma
               - qcom,milos-gpi-dma
               - qcom,qcm2290-gpi-dma
               - qcom,qcs8300-gpi-dma
-- 
2.34.1


