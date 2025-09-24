Return-Path: <devicetree+bounces-220784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF11CB9A55C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DA571B26BAB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D685F30AAAE;
	Wed, 24 Sep 2025 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dqGiO3+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D46305976
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758725332; cv=none; b=WGc8Hw+fhgRfbelis1nK6eopt54YNch3ZhZnXGUs0ZVAGDEnoRJBwFDEzTIByMSRzT330nhMq5wT4Sn7ghftq/aCvay4iLHtKfU/9mk7xXOGZZkZx1kL6KhmYiTnF2nnxYYDmHTtYodQvBUb4/xG3vbh0kzE0sWWGPWahkBvGJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758725332; c=relaxed/simple;
	bh=h/srBE3WtprL7mFhf76UFwoR5LDPsTSkmWauWPUtJrM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MD0c6fqew/gT26+AizDwllKUngndO2qRA+DpSFl1qjuUM4TCZECkePlzS1h4ExBXhxsPv43L0EvEBhMsIUa5YqkKtiWEVIct6opsNgCQ2RUTHbhMj5ez87l7k11T7s+J4EdfNna+emFOcU+dNCk6wwPghZfjMn4xQW5RElCRCCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dqGiO3+R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCgSPE027848
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:48:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=XPG+9O8dDPmoroQEsDtHD7YgbTrYDM8HGg+
	bzuFokcU=; b=dqGiO3+RhQc0b6FLZI3QlciPHNr20AN/9ydO4sgK6X425s981wN
	SMTqdp3eqToi1AJWbqBw90PAQpRZf4e3vX1xy1v/RpRYhsSIpGeJDejU56YFis0e
	I3WKRlz3KyjGL53f1Lc/nRg4rhriw9kY4na7EjsqNUrZZF7+qg2IBq67WFtRNN0D
	6KJFKgyPypuQEnlJ1xLv8HAbXZdKuCyQmmsvJAbWo9o3itWjAejqxH4LESjVZ49O
	RgFR7xyUn+V58l0FKpxH5wlJDQ7UWOh8qjnoEDVnYDVvgnl22QlUuDIprk6MIJl1
	ipn10HEZaooWgQ3WAL+nkqS5pGP5PowmCxw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnw1n4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 14:48:42 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b54df707c1cso4474575a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758725322; x=1759330122;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XPG+9O8dDPmoroQEsDtHD7YgbTrYDM8HGg+bzuFokcU=;
        b=A6CgqLqWUrnL8Zhr5ds9ABoCwF8pSSo7T7hVcz8K3u0L/Ng/ptrRWP6tzGtCrzD5BD
         RlfDoMYuCX4xMJ/LDsYzT9XtLaXPwtRbAOppQg+jXtIgJyRN6Uk9ptxepsL8eQzdHqpZ
         oFvTOsxENWIJbTC8NYKVrba4mWTWAQwu7ZSxdImpSsVrmSNGshs5x9Eb2hrruP423PYd
         eIUOKlgYrlCHV9kq+jp5XQZ1WSKVvnO0oqnluwhXztkYw4J4FTH0qbjQhSOz8g6eW3TA
         YfZtCKsQrhfhGPLc8agH2cLeuNu/hA0U/qGT8+vF8lQmjfF0qq5LF17lwZB5s/bhfV2q
         efSA==
X-Forwarded-Encrypted: i=1; AJvYcCUhfg7bMerBtdskQIqg8kND9INmoRTK9TruBAZ7vJRD2WWxD5COFa+bcOoI8wNO9j1DhWJVhqimWntV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd7H4C2yOlZ8EEIKH2raVjwJqgmofOAjo0D72ABWRTnZoLy0GR
	/3IuuNiJ+GunCMXGOUUwBTJK8R7vxpndfaMa3LX6QimOmA8tZE7uvCMRJlqCVFiZl/t4erbZCs0
	sbjguPmsurDhDiEL8P4XV4Mu9LNjaV4YnnsiEPGpb5VdZ6NJU0N7ymaTbeDiELoy8v6hixYRM
X-Gm-Gg: ASbGnctSJAyJMCSf4j67BUOphmaVtNB2KwX4JEltXEP3UHRDo+7tXS7tNl8W2J/Gw9q
	Q+/VgdnvzzdTRMFChZMbFpkyJVDIR6bGIcPw/oba3T69d583Sdyy1MrZ455OMkdUnqkYV9Kb+l8
	BwwYFv2KkRzYXC/E5Qzz5DmmpXIGAX4Z517vY1cn8fs3Q3zOGv2R4w0mpyVaTFJGZ/QQWGBYuQm
	tzTrSAjMOyLGXs4IosBjAWLMZweFfpErWwRce6/6lvftmTf2h3ycjgv6uzWzJu596GXsk4Rna2H
	gKOFFhe2llbBBpaFbL0KsKrjXYuqDGNQFLjyCZrNim8ky9MCaytmD9pcEoIScOEZEDF69r8VAWt
	xHMq15l6+dc6OdIt3T7kATX51erIvE4o1demnABKQ3eDqROKGZnpW8i0=
X-Received: by 2002:a17:903:2450:b0:24c:d0b3:3b20 with SMTP id d9443c01a7336-27cc7bb3d6cmr81106575ad.37.1758725321482;
        Wed, 24 Sep 2025 07:48:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuRoilg2iyqRWH5zKfaKKeY1QWhKYWC2phGHEAbOmFsU4CdT2HU6aysnxHeuV/PIGhylHnbQ==
X-Received: by 2002:a17:903:2450:b0:24c:d0b3:3b20 with SMTP id d9443c01a7336-27cc7bb3d6cmr81106245ad.37.1758725320890;
        Wed, 24 Sep 2025 07:48:40 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269800530c2sm195106345ad.3.2025.09.24.07.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 07:48:40 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mailbox: qcom: Document Glymur CPUCP mailbox controller binding
Date: Wed, 24 Sep 2025 20:18:31 +0530
Message-Id: <20250924144831.336367-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d404ca cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=FaBG7U5ITfglTqoGHWwA:9
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: BIaKr8yuN_6h5JubHQOLIgZhh1vSlNn2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX5Yz9mzZI+hid
 9JcIWPnNWoXQDAW5sQPrdVq4AbNl44Gp+oXzaGG6ULVSmS/MgE4j/EcmDyHWYcH6NlhUpHjMV5T
 DWJpNepc6Me2CBgPRnsPo0HyP/X+sNwkdQDAJXUCAyl1wPi/EuqZCq4Jg826996iBH4q66PgwJz
 WyXaOpwPAksrv8C5Ut8tsvLe+/3a27p3yhY5a+umw+N5aXlT3TlSWi562ebvvwq2/1q0EVcgtUI
 epb3hAn4AtnEpb6Rs8AgKyKY8dWMo4bIQc4DWhH8O/SFrD7nprJrkIUwRKAniMT0k4zoPQmGYuq
 +xamrcAfXN4vTkgrgWxRALT6g091WqaXc+CJ6m45MzXQYYmblp4isOQFqe1TxP5TpkrfDIyUqIA
 rc4P8iCx
X-Proofpoint-GUID: BIaKr8yuN_6h5JubHQOLIgZhh1vSlNn2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1011 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Document CPU Control Processor (CPUCP) mailbox controller for Qualcomm
Glymur SoCs. It is software compatible with X1E80100 CPUCP mailbox
controller hence fallback to it.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---
 .../devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
index f7342d04beec..9122c3d2dc30 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
@@ -15,8 +15,13 @@ description:
 
 properties:
   compatible:
-    items:
-      - const: qcom,x1e80100-cpucp-mbox
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-cpucp-mbox
+          - const: qcom,x1e80100-cpucp-mbox
+      - enum:
+          - qcom,x1e80100-cpucp-mbox
 
   reg:
     items:
-- 
2.34.1


