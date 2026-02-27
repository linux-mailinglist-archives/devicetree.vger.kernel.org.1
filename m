Return-Path: <devicetree+bounces-269277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHgMA+SpoWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:27:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A27981B8EA4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AAD6B3128F66
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7222421A02;
	Fri, 27 Feb 2026 14:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q65pcQVl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O8hcnguv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9399B368971
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772201531; cv=none; b=Rwobg1RM/YE6W+gb9u6QsSpbXfQtTfPl+q08vw8Dy+HAToTf3pGz7nCZAlXLvuY+Z7rflcrFTevkezU87OrRwAksoG7cZNQLsAAeG5Nr1tJTRE4nN6a3OFnbRtnQEPBxT29oPwYBF2OL1p0ga834Ajpyhd84YJiym4d920ob0w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772201531; c=relaxed/simple;
	bh=U92x4HK8ifTfTc7KDp1LdFqO8zaCFAO9kJosDhnhP6c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b0QOorTK/yP5yLWVykAMWCOl1opFXCrtctBbudZtFu7GcXlcQvRvXdB+aHm9r537SaPjHFBS3Qt7/TwQ/8McJDKdadsZ6ISG0CAFtCDLXouJBXfTxwXopzzEphGcHYI34Br2T9QlKIQr9WSwFGUzam5Sz4rUDypWEJa1EiMRQyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q65pcQVl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O8hcnguv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9WDka236041
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7evXDkp68Lk/Qex060cCqT9IdjlmfPgNN/jVLkSNYnk=; b=Q65pcQVljEviw5uM
	NE6OLn/BzQCgI4QfPM7Mg5EPISxiLeb7yIl8ZUmsF/BN9DXQhbk1VELYG+YEX/Z6
	ZE6vjX5J0zeWfr8Awf7vNv92LhBMImpNx64/jlOQFbZJEZMgXLs6VoJ10R3RUM5/
	W0TRYQdjh4LvgRwNOOnuA9tkuR992Ap9qhbh2R2WvPaxc1yFae6FqSlEynO3zrE1
	Hzw84cmAqsxvpPL5ipY8P6cWlbF6gqXaP3FbGH+ZXN51IxvU9CiBrr3JtlL5hHbM
	+VdxmKOEiw0chqw0tz+FOV6IW2p7xjh2tH+j7CjKdKfL1C8iMdlEnUJViIkx7Qy7
	qFrcww==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjx1xttws-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:12:09 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae04f58b19so110892725ad.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772201527; x=1772806327; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7evXDkp68Lk/Qex060cCqT9IdjlmfPgNN/jVLkSNYnk=;
        b=O8hcnguv5l91eor5z3gVSa5vfCEqJTzWJJRwkNIeqOQNYAKLqcXXTUy1dqOfywtq7v
         5uZNxl19lHZITzhUD72TirNJnj3FBWjByU4dXxrloyq4A8magll/1xs9NYDDFlBt7A9d
         U4aA1b5pc8eEjPhyMhifoXybm7VmhLtqqxcciEaOvNTI9zHuG6J5JAkKXEXKXyGUsr5t
         6irMe6tIKY/Suvzt4IlQMcavj9ofTWLzVrnYNvCcBm/boIXSfnr/YjA949bnxAYb/QND
         ru2JEj3NcaDRCnBGPGkNNJnsd3hLKkDLMDx53jVIXduid4shReyBLLoyZ8SGu0v3lMPG
         ghBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772201527; x=1772806327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7evXDkp68Lk/Qex060cCqT9IdjlmfPgNN/jVLkSNYnk=;
        b=sScCHr+CLDmwH1Zj2RUGcMHaM1gttbvMYCmqoBGRwds856T/qqqHDExkjhTWC7llPw
         mxBYM/sM7srsFRdBkiTfVXQWmEadBfANsKOUf5rdC5vMro/dr1V0zyu5BECmM1bAiv+m
         7Q90EhKsXxH5dRgGmvDLdTRAo5pO73aKIT3hNZiZvF9X+5M1Apjf/+2OaQTDxCw1anBH
         PKenxeJUrl08E60vQA2seCUUh4eug9ib6KjXIUOFrMDxbOLyJQNHZ3EdA0kfCGU2jvK3
         VLeVIvKUMUVgPiAWn2w6Zz/uqtaJgB3oxUVM0gQtV+HY6c2gV2/nCD/sbwCQW4NqZKu/
         8vZw==
X-Forwarded-Encrypted: i=1; AJvYcCVIpjoyiFSzvqzaWtJSgkslOLBtVquhF6tzgl5CTfmgUkfDwVpJgx8l62KtdfzH86GeJFr2BvKgqnJO@vger.kernel.org
X-Gm-Message-State: AOJu0YyCFj2zKPnX2ehKAnUkFiQhbMqXM2G85/QaSG8i0r3BdAEwmV+0
	/JUSMt+SL8korGst6fV3TDa22caji4AHNB2NE9wFdtNFrLqrTRF8d3yQ6QlgSBU/l6J25LGey20
	8mUPjSCYW3ltCIjKh6OVCe48r6ftcRDF+Mv11zxZpPzEqg3TTwJFocjhQ3cVrLlhu
X-Gm-Gg: ATEYQzyts1ry9ckMIdHY+nehXQFCkVtbtuLmEO+0cNpidvYTjY0Cw2zqBbvzu9I8usT
	+6ZgEKyi0/4w25fKPTO2NfocLeQWogu7bOSozeLIt3vvKjqykL+e7SXB8sVLBUtixg2oHPJdstZ
	pSsm6Xv3ViJvt3TJkHcxtvzth1W+ka82X0qivo0QOoGO4JRwYHbCXqS63VwNrVGHegSLWxnXLL6
	ntsyHm4nMLewSb15FXhaXcm0KgCAsKcGN55O0/Gpe+lNKXYnlYOvlnWTjX8XEvEFTLhR1Yq/22o
	JT6PdVWVp3UWRAfoTJFiJTjC+Zp8elqfHlWA6csfh7fd4Qt+fWwCSdmrAt/h28Dot9aKNaMHoBg
	uAoKJtjEgDaPGtr7qFieqFi4vtz51HxyQIr5RpBP9MdRzBvF3sHs6iDwH
X-Received: by 2002:a17:903:234e:b0:2aa:dbd6:605 with SMTP id d9443c01a7336-2ae2e4a6614mr29882155ad.28.1772201527056;
        Fri, 27 Feb 2026 06:12:07 -0800 (PST)
X-Received: by 2002:a17:903:234e:b0:2aa:dbd6:605 with SMTP id d9443c01a7336-2ae2e4a6614mr29881645ad.28.1772201526422;
        Fri, 27 Feb 2026 06:12:06 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c183bsm60960865ad.24.2026.02.27.06.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:12:05 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:41:19 +0530
Subject: [PATCH v2 3/7] media: iris: add iris vpu bus support and register
 it with iommu_buses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-kaanapali-iris-v2-3-850043ac3933@oss.qualcomm.com>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
In-Reply-To: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772201499; l=3490;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=U92x4HK8ifTfTc7KDp1LdFqO8zaCFAO9kJosDhnhP6c=;
 b=jdoVUXk3ET+htylIX0X1XEbkBToNTf2jOc9KKhrCWMXdPhu3YPQv2BmUon/kkqdBROBOyEM7o
 qizaR1+CEbLA0+aQDi9/0NKs4UrPVKujei++EHWVa4ezUq5HPmKMb7t
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-ORIG-GUID: kYYhJX7q8v_jxt6TBQG8aD3apNJsiXQ3
X-Authority-Analysis: v=2.4 cv=Vtouwu2n c=1 sm=1 tr=0 ts=69a1a63a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=kPm8v14ksbA5Et2Ge3oA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEyNSBTYWx0ZWRfXxmuCnTXPY5OU
 tXo2mxklYbdeLHMh20pv/VgawIjyI7b4n52SOkmYMV7gBewDW+j7wUaKrzP1X4ybeK5LvtEhlnu
 42fFisS/WF3OL78Suuda2ZNRxk3cQmREiDLZF8IVUI2kIXH+yc7MGPlNRitzTEh3fAYAt+kH/fF
 FLfv9j5BfqdyotPn7+9lIWM4k9VsNpH3lZfwxRSH4uOIJkqk6KCGyNqPJEcU0HkpFEwKuTJCK4Q
 kbv2ID1prWtE9Il4+07cJihsSOvio2mGX8y/ApAc1XBjIgzdL8KoeTc8xijx51j7ylu4WcH2wdb
 ZA8Mp9JTEf+kVSMcOzxMoWfh04Kd5aHaLrGhhQo0aeAnpk06dQUtBlGOhUOrqDG6gBuRwXUZ1H/
 S8PZErAuwBt4cIevNXOK1m31pPGcoQzs+Ona0NAbBqZk/dQ0is/zgetj/5sKguKHWupIveFqbKa
 Cx0cGAcexoMRRqnYd5w==
X-Proofpoint-GUID: kYYhJX7q8v_jxt6TBQG8aD3apNJsiXQ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 spamscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269277-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A27981B8EA4
X-Rspamd-Action: no action

Add iris vpu bus support and hooks the new bus into the iommu_buses
list. Iris devices need their own bus so that each iris device can run
its own dma_configure() logic.

Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/iommu/iommu.c                           |  4 ++++
 drivers/media/platform/qcom/iris/Makefile       |  4 ++++
 drivers/media/platform/qcom/iris/iris_vpu_bus.c | 32 +++++++++++++++++++++++++
 include/linux/iris_vpu_bus.h                    | 13 ++++++++++
 4 files changed, 53 insertions(+)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 35db5178095404fec87cd0f18e44ea97cf354e78..fd5fb7c10da22ab548d359ca1f44504acc3d646c 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -13,6 +13,7 @@
 #include <linux/bug.h>
 #include <linux/types.h>
 #include <linux/init.h>
+#include <linux/iris_vpu_bus.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/errno.h>
@@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
 #ifdef CONFIG_CDX_BUS
 	&cdx_bus_type,
 #endif
+#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
+	&iris_vpu_bus_type,
+#endif
 };
 
 /*
diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 2abbd3aeb4af07e52bf372a4b2f352463529c92c..6f4052b98491aeddc299669334d4c93e9a3420e4 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -31,3 +31,7 @@ qcom-iris-objs += iris_platform_gen1.o
 endif
 
 obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o
+
+ifdef CONFIG_VIDEO_QCOM_IRIS
+obj-y += iris_vpu_bus.o
+endif
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_bus.c b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
new file mode 100644
index 0000000000000000000000000000000000000000..34ce78d9b0ff1feda15ba4f060a56d02749a0858
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/device.h>
+#include <linux/of_device.h>
+
+#include "iris_platform_common.h"
+
+static int iris_vpu_bus_dma_configure(struct device *dev)
+{
+	struct iris_context_bank *cb = dev_get_drvdata(dev);
+
+	if (!cb)
+		return -ENODEV;
+
+	return of_dma_configure_id(dev, dev->parent->of_node, true, &cb->f_id);
+}
+
+const struct bus_type iris_vpu_bus_type = {
+	.name = "iris-bus",
+	.dma_configure = iris_vpu_bus_dma_configure,
+};
+EXPORT_SYMBOL_GPL(iris_vpu_bus_type);
+
+static int __init iris_vpu_bus_init(void)
+{
+	return bus_register(&iris_vpu_bus_type);
+}
+
+postcore_initcall(iris_vpu_bus_init);
diff --git a/include/linux/iris_vpu_bus.h b/include/linux/iris_vpu_bus.h
new file mode 100644
index 0000000000000000000000000000000000000000..8aba472fcadd269e196b7243da5660deaff31abb
--- /dev/null
+++ b/include/linux/iris_vpu_bus.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_VPU_BUS_H__
+#define __IRIS_VPU_BUS_H__
+
+#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
+extern const struct bus_type iris_vpu_bus_type;
+#endif
+
+#endif /* __IRIS_VPU_BUS_H__ */

-- 
2.34.1


