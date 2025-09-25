Return-Path: <devicetree+bounces-221042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 377EAB9CE1E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:23:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D4654E1F21
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99851A256B;
	Thu, 25 Sep 2025 00:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ScMDx0NO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0E114B96E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759643; cv=none; b=su09x6IwPTn+YhRnSISJQKyuoYzaYeKsinwgxXJN8FJWX9t8Pj1rt02AajYERx1pSI28+py+IbD/9eawUVCMgs3C5N8s4FdyGtWPH3/lgKB/s5uReP2KxloZu7SUK+fmyFFypRXR9e6632NcO6OdAbZPrn1OX+1k/ZHhWtVy99A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759643; c=relaxed/simple;
	bh=Vzfs1LFFHiEdWORr77vIh2SKYYdoMh/m5AROS8rGlOs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YRVs3T/ZHZcpqQWMZFXzw+YImd9GnDq2dWyoNRpFgrrC7rl57cs1CS/VYkw19lx5nCDaZxTfpumnBD3GdjKr5qN8YFaIdUFkA24g3smEcICPjtgLLKAH5/Ttr9kmDdlUHoWUDSmmzEdjtc4lwsiTm2cH0qj02+rCEBBqL1+ultg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ScMDx0NO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD2k7P017420
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:20:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=SRwI25fTueoRl7qygb8baE/cMAE47EtTbSA
	vuT0E+/g=; b=ScMDx0NOAQFKWHw2nHLMv3URVQ/y8V03PU1enZD+vdz1oIAdot9
	Qf41y+YQWug4hnJgyF4NuyRlNCl5JwQvRiZMvqVRHAfRzaLWCSauMamVXMayd/do
	1n3vfKDU6SaYOdBGOeKudzQ6Ubcc6NKhXQnqFCGE/lH79YEnmFguAYPlz9DVjQAD
	cdNYYiBu4+/G3kxX6fW3whgFiJxWZsgxQ5N2b2kF2mesQwbi8k7oc9Bu2D+VfH25
	2azjRWQO8koO85WJBmTHLXrl4myTrdg6K/3QsZkr4n2hhqAQibq+S/4PK7Wy2Mlr
	QDm230Rgfny3tBDV1hWajJsFlV8Zp8iPgdg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyg20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:20:41 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4c72281674so230141a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759641; x=1759364441;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SRwI25fTueoRl7qygb8baE/cMAE47EtTbSAvuT0E+/g=;
        b=SqBl5wKYXSphKnRGTaotBHdRZPKmx+nQWdm1reqGBBKBjuQMDID7amc/So5pAqklE+
         MKveAuFaxnryzFGe974N/AuEw7Q71AZ+Vv12GLYcCgHKqjFKXkenirXWpExFKNUZBP9D
         /FVEXBCCBDsMbF8c1Vjz1QeNr9opXD/HbNNj7e88omRHV+Qz9L9CNPmMzRoatLZAXPIq
         4DKen59x7QxvD81U30BdhwsPvZLIL6G5FduRIZATMFbHGvsdBhTfYCZaxzJL9bJvyRB2
         ouKF4rhUhCwiMqSHE3G+F4IGgyniEjl7AGq5qUvILcdz0KeeFbVu2V0+zNbhsVnHli0Z
         Wlkg==
X-Forwarded-Encrypted: i=1; AJvYcCU/J1JWzVY0QIRLpEc8lH+aYJ9D//A13tMpujbAWYje8Ydh0ClV9hWcHozQrhFWV4v+48NoQUMP6aBl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9f3+SNBCHtZ6nljk3lEPsCVE8fxj1f1zIjH0TLdNWSZ0y76IQ
	3RK94Q9+Y5WveGvNIQ8Y1bl0LGf8MK8qO/5E3BCHxTCv55tPyPHJilYV2lryRgAy8XnyV5BXdq8
	Z6RC0q9SYX04TkTR0PT7emm8ujcP/G9l714UC5gxAqB08HPFqsieVODnrCnw5G5pj
X-Gm-Gg: ASbGnctr1+kS6QcwCZjMCGvnpO81kWjmimcsxFBsL+PiCcXnFP88ELljEQ7Mvs9rKR0
	SScJ0jeIKu4Uu1Lt9emmDOST9VoA5b8gf3c8yUbdeOvce+Oe5HaQ9wlHJ7TWjChIUfhzwctBsfW
	DQVcYQHUPmJl3KBYGzeh5KB+koIkBW3Qi43E5Hb+e80iMW1na2xJFYWUmHgjRqH/BWOptrQoOYy
	MP+OPzqaDZePNTdbmxk+tzUsZPK3+Xb918D07XmOzlDyxhS/LKy/jZDs8GoRg/7A8au5E/ph9ED
	+yK4A/qaOVbqAl06mqPUqAKqz2Ch/bV7f2AukTNFERPsimN7qI4Xg3uArK0VziXK1QWPzxmgGyx
	e+NYaEwNSw+Qav8g4vGnviee+LY4uU6GZP7bEly9jD1IDz/yeexxfrds=
X-Received: by 2002:a17:902:da89:b0:267:f7bc:673c with SMTP id d9443c01a7336-27ed4ab0972mr14591565ad.44.1758759640790;
        Wed, 24 Sep 2025 17:20:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEogoEQohZMX5Lzntajc5fLs0ei/8RmKQ+VYDghSleW2B2SrVgQJCo7h3MdCRBt+jNzWkvEIQ==
X-Received: by 2002:a17:902:da89:b0:267:f7bc:673c with SMTP id d9443c01a7336-27ed4ab0972mr14591355ad.44.1758759640309;
        Wed, 24 Sep 2025 17:20:40 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69a9668sm4740155ad.112.2025.09.24.17.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:20:39 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jingyi.wang@oss.qualcomm.com, andersson@kernel.org,
        mathieu.poirier@linaro.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: remoteproc: qcom,pas: Document SoCCP PAS for Glymur
Date: Thu, 25 Sep 2025 05:50:34 +0530
Message-Id: <20250925002034.856692-1-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kXNSqHhl6a6fbMWaq1Mq1x5UqHKY2M7c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX72lMxPCd+EMv
 TUco7qHkD1QjErzt7UYd6YcZdW9+M1WK852DxTFL1dI9CKuGy4aU0R0dCYVBxMe/Z9NicuFQLV7
 MDkMb+jp9bk11JNT6dM11urvhImEnHCjq8rl2PJCSM+a95WBeS1mFWPlWA49PAMhTHHQsm9AczA
 RCAMN71Dnd+5K61fmoxUd9xDazMwkl0z41oTyYqZdvoHCo8Snt3lOi8IvvVNvik4otaGrIoPO7H
 6m5lrhv/qvPtqpT/qEF3Ehj4grQ29zYovjWrfciQjpFidLITz86e9WvGDeCN3OwEJvFY/294nq8
 0L+dCWigtfGtbVAbbkzY5yH5c7gQe9tRo1xS/6zpP1D0x2WfzClv7BfXeNotiiNjzx9NvtEKeQE
 ZQ7ySmdh
X-Proofpoint-GUID: kXNSqHhl6a6fbMWaq1Mq1x5UqHKY2M7c
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d48ad9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=y6Zk4y2S2ODVn_eFbNIA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

Document compatible for Qualcomm Glymur SoC SoCCP (SoC Control Processor)
PAS which is fully compatible with Kaanapali.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

Dependencies:
[1] Add initial remoteproc support for Kaanapali SoC
https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t

This patch depends on patch 4/5 of ^^ series

[2] Add support for remoteproc early attach
https://lore.kernel.org/linux-arm-msm/20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com/T/#t

 .../bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml    | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
index 79f678f5f7d9..8089e0869ed2 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,kaanapali-soccp-pas.yaml
@@ -17,8 +17,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,kaanapali-soccp-pas
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-soccp-pas
+          - const: qcom,kaanapali-soccp-pas
+      - enum:
+          - qcom,kaanapali-soccp-pas
 
   reg:
     maxItems: 1
-- 
2.34.1


