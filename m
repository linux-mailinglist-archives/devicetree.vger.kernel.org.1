Return-Path: <devicetree+bounces-207354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF58B2F45E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77A8C7B02C0
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863202F5492;
	Thu, 21 Aug 2025 09:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LsUHAyw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DE12F5311
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769499; cv=none; b=k/B5KG8csk5K/iePRtuGzalS1vhXXwX4VM0Zf2EII4EijVBjlj6jehKMmaUeuN9VYytfGY0p/ltYqaP3b46PhzOJ0eF73ZJ210eawp7tikhf9H3E3uDit0K8tcxmCinNuxKgYlxYsQ0IaJLkPUkzShJdX6kAXpR8hlXC6d6sG8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769499; c=relaxed/simple;
	bh=lBG66nnuOJFNmGnwQUg3oad4X8eRl166WJOjEf0Foug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r7ZtaUrJb/0G4O34IS/4zAHzcb1TE3+9nDP/khIhMMPV0fo8u2m7wbJDzY10qCYP2NRQrORy5zklMgPvUDAfxCRSj5Es6AyFQJNqBqfxwXXgHD8Se4SVkKQSlvH1L+K9tAlD4hYlXCeFBizbVqGvaoCQKi8G/ppWnKK+LHUAoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LsUHAyw6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b6nv026964
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=; b=LsUHAyw663VDyvgw
	6hU+Tfxa4w6s9fRIRKweCr4GiXH80eBBJ9Bf+tkcdcbZMNMuQw0ffT9zL/rg5oPc
	oPXlICfVkoH5gmWNI7g4AYE0ebqFiWW9yj29eXEiHObvkR/VCMQG2OmlZ69Odu+s
	KBOYOhs8FO0ek3yCQn/8Zp8//pT7O0/WcC4gi9Xf7mrTUMRU1S13SsaDfrXhX7on
	XyXj8nsJQGghhHtUWbzz1bSiwVYGJA6/JWMgo75dbLYNwUm3y/9P+bkW22VmD4J2
	j+xJo/GA28SpFZXvtNKn9XIAvLvu3XFoECmYeh1Us/CaXBWwhWLqN23mfs7qakX/
	giZ/ew==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528vxb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-324e349ef5fso960917a91.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769495; x=1756374295;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9i1vfAm82rgoZ9V2Oilt0uKHn0wjU3RD+NnjEoXSuk=;
        b=DCGQ/aN62L1fkpiR5OqDWEnNw7vnAykXyWXmfoQsfUDmiN+4rXCdIIXx0k6DksrLJj
         SpK6PJHexVf+yM/tdMj1P6aRBPRNYdiDAL8Yjt7+A4wsWeyUdFP5rfkf3Ca5iUL5RqCm
         6NhEB9cXoKQIQWDusZbpykt29NO85uMohhc2QEtXFv7Jju6JGIfxkJwN+z9f+JJXfvq2
         kpf/4FhjK6MuDGz56ebdecHU0eIa4OR8teU0taGTOT+BQFxf/uyZxznJxXNA0SBorwLx
         YgxOeMbH5eapm34elwZI15EnLQXCVShVIciGF93Ogh0ZA2jbB0U1I2evKWvUl/W1k866
         hpcg==
X-Forwarded-Encrypted: i=1; AJvYcCX4vw47I8j7ecJSFvPLGXg1QHK/srqnJuMIm+7W0zQ3ZJ11ZJ2wmy2J12f6mB/OaTNKAcNiEQW6m8Pw@vger.kernel.org
X-Gm-Message-State: AOJu0YzffOz93Mei9KdrtOb9A6bUrVXaZ9irO4+ZsAppTLMz9LB3ot8f
	Su5aebBbA+WNzXWjp/K+tCn9EnfB0JB/MoQ3NNYaegLbBSzsfHha55CIdh+IJ9Ds90y5kTq8uPz
	owysBi/5HsNj6rs6MAtFmaYrAc3zHODaun9U4Zv1TQYgRM3lL4DvnXG2f/inv9OLZ
X-Gm-Gg: ASbGncs15FRewy9+UyDQOnKMi9f+lhPvVkxKTUnbl92RjJSQW+RdTZn6atlLckwvgLw
	OnSS1NU8haJ9iMBXU4jSWlEwXWyXQ+4M0+fv3q/8m1X6lkwvpY9altyF2QYZK/0E9CjSghiosaa
	GkZ8HIzQvJO6aVTHUt6xulwwo42Ri+dxlgelRdaASM1r2OjO1CxaEXUSkPrB0PEDpWmyxy2w8B5
	hcKhlCHLQ9guElHFQ209ga96ypTYz/ar5IHVm34aD+9ZAhlLgAceRZblezs1q53rA+ScOugPX/0
	XKD6798zWWsToMQDc2beT0hE/qi03IcSkB/65JxTqJKQOZl4eR8fP/QEuWBw4SHyyoSBn4r4h7w
	r7W/Lf5BSz5wuzDY=
X-Received: by 2002:a17:90b:3d0b:b0:31f:150:e045 with SMTP id 98e67ed59e1d1-324ed14d319mr2542948a91.32.1755769495234;
        Thu, 21 Aug 2025 02:44:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRoJdDy4f53/5MRAxjQmWCtc8r3H6iQcImfkai5Qm5nFjXBy+NCdaiygW2u5ZN218HxKSEuA==
X-Received: by 2002:a17:90b:3d0b:b0:31f:150:e045 with SMTP id 98e67ed59e1d1-324ed14d319mr2542919a91.32.1755769494740;
        Thu, 21 Aug 2025 02:44:54 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:54 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:30 -0700
Subject: [PATCH v2 3/4] phy: qcom-qmp: pcs: Add v8.50 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-glymur_pcie5-v2-3-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1553;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=CEsoc9Uw7D+NpayVYJqV9+VSyLeR0jKm+hdfLxCWqno=;
 b=lso13Snwiz7sIs/lgG1JBsAqGdMPm1uxTQ11YbFaIz1M2jjvuN3ug9TxxYUmyJv+ppEAylVzI
 qGK9YQgB4TYAcZlnXvdVLQYefqGYL4BKPwypMegWWuRYwoCYkBoHeIh
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a6ea98 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AvYPodYr7lBoSOW2FowD4ky9DIcflezZ
X-Proofpoint-ORIG-GUID: AvYPodYr7lBoSOW2FowD4ky9DIcflezZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX4UwnOLh9iQFv
 Bt/XQvxWO1vCcYIRymUD833By5UL5QZWl4zLLKXdHOPZwYfiKQBBLnjLhllGdxjXyIB80q4Ep7R
 eEdGY7hVgexrx8Iki3JzQiR9GQvjBu3FNSrSG8QJGwhR+5bplo2tTR8OUWcq8Ww2vd3npRAkEZz
 tIIby1bFC3XpNyMtgnY9pDUiBosXQ8Lw/I/saGo3glipV1ZvHblJZxw0hGieSIDVpxfvqz6CRxX
 LA/UDLOBQdvuAJ6sFTA9Nc75f1eDPn8GEgUQlICw2kIiyAdvhcTtDcx6cz4t334KqRemKt/D3mZ
 UkVevrXhAz/AxTYxgQ8a4zJKjmluHVKlWlvgUkuc6uWexvxqSAtyGuNzkHfds+iKpCnI8s5b2K5
 rjsXi3Ziu/qsYiinCCg48PekdwEChA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
g5x4. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 13 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
new file mode 100644
index 0000000000000000000000000000000000000000..325c127e8eb7ad842018dce51d09a6ee54ed86ff
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V8_50_H_
+#define QCOM_PHY_QMP_PCS_V8_50_H_
+
+#define QPHY_V8_50_PCS_STATUS1			0x010
+#define QPHY_V8_50_PCS_START_CONTROL			0x05c
+#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL			0x64
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f58c82b2dd23e1bda616d67ab7993794b997063b..da2a7ad2cdccef1308a2b7aa71a2e5cf8bd7c1d7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -58,6 +58,8 @@
 
 #include "phy-qcom-qmp-pcs-v8.h"
 
+#include "phy-qcom-qmp-pcs-v8_50.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */

-- 
2.34.1


