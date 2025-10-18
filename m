Return-Path: <devicetree+bounces-228338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 943B0BEC3BF
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 03:34:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 832734E4F0E
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 01:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4223218845;
	Sat, 18 Oct 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="It2rF1oX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EF31F3B9E
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751233; cv=none; b=P1yk5UYYhCn0FMDezadyFT+D0gNbjgAbu551gwaeCtANoBng8bkliuqTCAxL8TJ33qcKgOJ3OAmMBAfDXfoo7hxW1o2aZCfVQNYD7YL2pKHZzWzgUmyq56gwT0RodOJrTlVQrtxeiifkA3lRQU4RFAdvKA+SA98MFAhNk/IHXjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751233; c=relaxed/simple;
	bh=dRqJWz7OIwNnKTzn33y4BQaTa8oSs2p8RyOoVIfWlw8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YsINkx8T1c6ui1QzVrlvBN77VM3QiqoAXssM0S3G0rWYovvCcG9s358TnWfiJUm9Zd4tRKDDgWzU99zRoza4OBwLIM1aha8jKblWmGPPTNJYWYQnxrJBdwo4F4wI9oDtGB96RzP/ncR+hqMaenTPd5SRJ8Gf/1zAXXmsWiqSM4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=It2rF1oX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJG5dQ006732
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=; b=It2rF1oX3BLd+TU8
	kyLXZGWIHND7ASt9uuxNpKpZ8T1giFdsKSRKC8aurqKTNe7rwKvPZsKYi4RXVJCg
	LscNR5QKdkAq5lzGhXmy+rrKfPexXmdwuSbIIBJJwq0+0L7J+BuI53MOrsgv/+vF
	y3zHJukGY2LaAwRUxd2fBofswTT0Q+6bi4rxWqfExG0DbjoWDiJZZiD0dNWS9fhK
	pBII8wo4S4wrc4ECnmJyobe109ARn4sWQDX/927a0RXQebgzvB2ceTzDQDb+HLXl
	C+Jmff8EO/Rms7QUv5uLQv+fM2WMnDxzE2RZnnCmvMl00WG4CIW9UL3Jktgn+mpG
	TPl6ZA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff164a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 01:33:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55735710f0so3562528a12.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 18:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751230; x=1761356030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LnqwEheiYw4eMqGgagIbYYTEmFr59FG4+mnaf+XhjEI=;
        b=ubjFl+YaSDvec0gzgx4HeufqD2YJYJiXs72mrJQrA1NExhoy5SWZhX5eQT6CuHzm6K
         2liU3B3qZG9qXp6ihoZqQH0LEDNtRmm47B/DYP1J6VLPODWKo3xz12mFlQTRGJvRA+Z/
         uSc5bZZ6tskMeEH9myQAqzHkS/oQkIp6U2ZlTWXpKZ01YZ38TMboirDDdV2DBjmcmmKs
         zRBNTl28NSP+zuzKgI8DUkTWgeF68yAFmWoDpzJrxtraC8/cDV9sfLj7eYfulzxsSHnQ
         uNRkSd5DTHXpjE9Nca7mSyC1OPBt7WF05UYVztHquGiilFQuz5gIKLk9fo4ikGxPxM/J
         7FZw==
X-Forwarded-Encrypted: i=1; AJvYcCVOjHb3S1ZAnbK9Nk2SgbXKurqUC97C50xheyCOJE7fy8y+2p6vt883tN3Eci8YpSavMyjNI8CWA46+@vger.kernel.org
X-Gm-Message-State: AOJu0YzcCi2flOXP0zuODoW1hlMonME/KW8Y/svBhwhJ9IqgwpElpdPu
	6jNDUkU31pLnq9MXba3o9zr/z/4gnYFFbfbQwPN4ZB2B6QvNznAH3Fm5lWTQOiSXIdeDl5NJLFC
	8pV2ILyBZEKLipO2xMaa/Qmn+9yhJT3GQdWklmzaJ0gnCd7csEOjKCXoXsjTnK38mLKaDj09Ghn
	8SKQ==
X-Gm-Gg: ASbGncvLQ9uKqbvyVZOG5tZgagr/fPEucg3+M4lNZGcjAWhv4Hsaosc3bYu94KheMJw
	fWk/d6HfqI940Y8ASS7M3X+uPiPg8IzpOoW/OrTnUDBlfMP4M+yA925b29VoepQ/WaIM4aPHiGo
	9143rnH9DW2cxYU+W4UOTzuL0c5VCcee6+2C7wKNr4LcW4qRNiat8PXecgb8A2jNjiAzx6VUMww
	1DOMSfPOZvD2Ks5d0Y9HDyS99yHBylM9tYZvV8HEzMc/x/u9qxRR6j8jsNOq6mu7JD7q1fqrsAT
	LSix7sXbI3nMPv+n5B/yzOvnMN0eOiolPqP2hUiBOpHKwRNYas6wQyUsA/pUHpxlbJ69OIuaUUD
	bDyOI0dE1xt3elB3zDt1pgC9rEQBtSbhH7QLa7zQUcQYO8w==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr72784705ad.13.1760751230572;
        Fri, 17 Oct 2025 18:33:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyqTnRrVLfri2rPa2KLlfbixfUhrUK3J0pAbGviBCAqZVoD1KHQxtnhlTVe79JwMAh+DNsIQ==
X-Received: by 2002:a17:902:ce12:b0:26b:da03:60db with SMTP id d9443c01a7336-290c9ca6b1cmr72784485ad.13.1760751230159;
        Fri, 17 Oct 2025 18:33:50 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:48 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:41 -0700
Subject: [PATCH v5 4/6] phy: qcom-qmp: pcs: Add v8.50 register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-glymur_pcie-v5-4-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1673;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=229Z+uA9EBUjxLvNJs5f/sN8K/iZsIa19KeM+KZknsc=;
 b=FMk3XJnpt5L5oYFyTSeIgwj4netRzGwWjSHT7VYRPORe2EsVKTIv45z1fdtp+YHxJZXiYEfIt
 o7Izq7Q8MQVA3O4tO25fm5D025He4SOrT2R0UiSf7mQ4ss04x+4OsSF
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXyC8/LEzdt4Wi
 vS+CJ2OHFbTkdVApF2DiHhM/VGCHOyMvs8jxFL1SPLvF9u4S+u8xrMhP7l36jEkssZ93EVlakct
 hrs3XYnjR0A/rljqx0X7os3hWjErCX6XVQa4tzDVpD1m1dt0zOsRHpmC2pmzm3lRBOMIf66Q/Dr
 eplwk3hetXjiQj9MEfnB1M+ONAsL46zYlcXPdhmqUqy0pP6IohdjKpFlqA+2iv34COitYFfdZ/k
 M6t6qSBu6HLv+fBsDgq1WZjY048Uv/m2ibsT10/2pmV7SGZB0/Y55W7+YAtT90GuDkxVovYDSUZ
 xHkUyCCeY+YWHGCTHteMrOz5oJ6OrgfXvM4TPdxbA==
X-Proofpoint-GUID: pLsf1kW1yVCwUKlDf4ziVYSj8T1vlLhH
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f2ee7f cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=MyfKwbsdfMS_-thd9JUA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: pLsf1kW1yVCwUKlDf4ziVYSj8T1vlLhH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The new Glymur SoC bumps up the HW version of QMP phy to v8.50 for PCIE
g5x4. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
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


