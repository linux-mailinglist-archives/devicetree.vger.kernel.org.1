Return-Path: <devicetree+bounces-179113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1F4ABEE04
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 10:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45A638C3A5A
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 08:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D36237172;
	Wed, 21 May 2025 08:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kERgPdgW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77472238179
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747816365; cv=none; b=RYaC3nUxYxPiVCFz7yXH5r9F+Fmx7vrzQQ9FMl0pb29Z4l+6kYE6fHEg80Rw+eyU2bXINp6neJzjN792tVFM5O015MdBFMgehM1ZSQqjYuGXbYwkn76tmBR9LciB5z9Obeyt5afVLy7TaFSreWuBqb3n/iyx8ovX25/K1veCOG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747816365; c=relaxed/simple;
	bh=B90rtJaEdLVGrv1h54uOTMtYopEROylXsM2X/zlsPDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=el/2f72e3sPXPNtKthj3ejI+f29fcHeUHVtDl5FwS1yqCpUatlNm+Y8EVOSBA1UFWftLMFtV81tGnBZ3Qsbi63ng1YinjmJgXjQ4eyd20jyghDWxWqvushacQSg/gJ2GW4vy+BJ1R1zSLvZ6wsIlIRrA0eROzwVjUQBITbkSxas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kERgPdgW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L6Veqi027248
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q8WlVCilRvu0R8ZkLwU1bjGX+ll6bjMiuOVM1KThDM0=; b=kERgPdgWw+/NE7D4
	XhLxrLiULjlDATmiINY1fsDA+uFlBlnxUVajj0tI0C8CsHFOOAp2Fb+Cb1jn9BjF
	2/q5xFHo24P5xUyHShMQsjKceFlXwppSWvLLpTo9OuW0jJ3FGQT26xOkuYfOtTvK
	+V8rlO4ZCn+b3z3OpE4mQQVKdVW6mnYtEc9BN9VqMJGk2hEZhZjLvEsct7jsItkB
	ZAaxUI1aRSJ1ygxvD47KJyA03eTCLA4SlFkDOW4wHysOskksEOIxsnhfz2Mf5Gwi
	qorp63aP//niU/4TCqkNXeVWggOMryEaYQVBLKPbQLPkz+f5YXWFTHv18FykkuD3
	b0MDuw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9a6me-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4768f9fea35so160151791cf.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 01:32:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747816361; x=1748421161;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8WlVCilRvu0R8ZkLwU1bjGX+ll6bjMiuOVM1KThDM0=;
        b=ta0/Geh5fhFSn2GpOkVyMvhU+eb0+DMiMRHq6+kMAf4eSK3A5XVCxg8kXJnc7jVnTP
         h3AuQHC8YpqF3Y54vUBQ8VQZx7crHRSeZnavCZGgz+SP15M7+tVQMnH3L1on9c1ZgqKk
         Qknr4G72a0GV2L1y8msjLGh3Y5CW6cO3GQj6RIoMOAX3k+FLaAsRKPhFe6QF3Sm7d0+v
         kVmOB6fbUsa59kouTpmhIz2XgdZzjAub1nL7UcbPH5sUWGLjb/arRwdf7Y5BVbkcpTib
         yu57QVCYWyUV/WswvStJo4+2MSHqDjMpCUL2WMWaspW6aUBiY6oaTCuIuqDStqXPa9iL
         pNww==
X-Forwarded-Encrypted: i=1; AJvYcCV1UieCeGZgdoGwpzaw+p6Lc/eN+BuDvCI/5jghtvYvXcWnbgN01LySSTNj2OMffkl1oziGJ/hhdOAV@vger.kernel.org
X-Gm-Message-State: AOJu0YxJX7HMDSNfFGj0nYAay33LfjyWBmTyv51dNIWqf2gmZ2fVaQ2x
	9sWavZ1XJ3kaghUrc4VyOe6a1RAOhmsSCYFDpIMUx/eeeWTHS3fep2xTzyNXZYLtJPnap07iVIk
	cfXxMVWr4/fRsWyisVjwHruMCFijKnI3H8LI7CvCYMh9J+j8pQMJM9RXIP6Nti33iqMVp5amD
X-Gm-Gg: ASbGnctABU6NWofEe2NiMAtdzOWZvWi4H8sBDNTAAYpI/EyMyZ7L47jHOD4x3xygify
	vTX6F2Hmge0fWqs3YFI5NCeLF2VvWrgzGgWNsEJ1vA+rGZxFRYSEkxQmfVZfBDatkJ7o7xN1XzQ
	pd8inabembnlwwhbIgDUeV0ZO8ShsUME7KRkdXOd19KVR4Xiq6bUm2j2C/VHvK2t9pVcdSAYmE5
	6IFN7eRXhIic4unt0KGEMOBuMMkrou6B9kixTas8LxvJbQbvKuWVVus7tjBZHkZCNcZ+SqyL4XT
	t/PxduQydYk7Lo3Kh+ENztkgjQ==
X-Received: by 2002:ac8:6f06:0:b0:490:8ffd:8f02 with SMTP id d75a77b69052e-494b093678fmr339150191cf.37.1747816361274;
        Wed, 21 May 2025 01:32:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZQqSOAx2Bxa4yRiJZZ0m16zE1B1PlA2lhEyP9p5hl0i+wk6+k2XHsKXXRZEXZW3tGc/2c9w==
X-Received: by 2002:a17:902:ef4e:b0:231:cec7:465a with SMTP id d9443c01a7336-231de36b432mr231781865ad.20.1747816350468;
        Wed, 21 May 2025 01:32:30 -0700 (PDT)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-233abb99a06sm13194265ad.254.2025.05.21.01.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 01:32:30 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 21 May 2025 14:02:11 +0530
Subject: [PATCH v2 2/3] soc: qcom: qcom_stats: Add QMP support for syncing
 ddr stats
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250521-ddr_stats_-v2-2-2c54ea4fc071@oss.qualcomm.com>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
In-Reply-To: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747816340; l=2719;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=B90rtJaEdLVGrv1h54uOTMtYopEROylXsM2X/zlsPDA=;
 b=GBFBCNX5R87eCsqSldgqftv+DUUjDPTkN4YAgA/+62IfTuYkCWkeTptZUqHkB9HJipE5sHsFB
 mrwcZZhfXWEBLGeXrLJl8FhmxzdS0WsiqYAQbGKm6loYxp882042O3+
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-ORIG-GUID: hR0_ooBfBuBqiDaBCZVbr6Vut2rJTZOs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDA4MyBTYWx0ZWRfX+FWAo5TrppyX
 p4CdU+ppHg2opMxjZwELP6hJuCZ+luIXRSMkx8Yp7A0wL0tTvBefxWgeALekLKFTKyKHHK3yv+s
 8hfuVR599BbdqrZFV0XaGApShSqTTbZli1nM3Kr4fnPF4TLu5pojOw13WBq2ZVFFe9398ygAz1W
 BLBfZD1Qs299EJzYmVkCw/v87PnQ6u3nSRWhSYghFgiNIuT7MJZZQfOJmKD1D7wlnKZVRZYi4cf
 t83IA8hcs9NL0ZMFUwCNuJXOQWTiaq2vEWJSOkC9znLZQ1KEUxkCIewCzkk7rjSckTgy7RYfJTP
 Q7kEwaGqlDq86KEPRl3mszvZzV3URbnPj3lRGDEQZHz6y5k2dGHIuI0NoFuufQBYzdk53dM8qoQ
 Q6WbLnFQhkZql3OM9tD02b18Pvf6L5lvnaRd/XyL5eBXAslmtQW9oog3d2nBMq2b1CCAk77V
X-Authority-Analysis: v=2.4 cv=GawXnRXL c=1 sm=1 tr=0 ts=682d8faa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=BT90xxDHZu-g9S-RVkkA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: hR0_ooBfBuBqiDaBCZVbr6Vut2rJTZOs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_02,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210083

Recent SoCs (SM8450 onwards) require QMP command to be sent before reading
ddr stats. The duration field of ddr stats will get populated only if QMP
command is sent.

Add support to send ddr stats freqsync QMP command.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom_stats.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
index 6ee73268db1d4f69deaf4ff1ee8cc8e245b76f07..52b0f909bc4a365af77ca7e7fc7f997ce2c2be9a 100644
--- a/drivers/soc/qcom/qcom_stats.c
+++ b/drivers/soc/qcom/qcom_stats.c
@@ -13,6 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/seq_file.h>
 
+#include <linux/soc/qcom/qcom_aoss.h>
 #include <linux/soc/qcom/smem.h>
 #include <clocksource/arm_arch_timer.h>
 
@@ -37,6 +38,8 @@
 #define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
 #define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
 
+static struct qmp *qcom_stats_qmp;
+
 struct subsystem_data {
 	const char *name;
 	u32 smem_item;
@@ -188,12 +191,28 @@ static int qcom_ddr_stats_show(struct seq_file *s, void *d)
 	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
 	void __iomem *reg = (void __iomem *)s->private;
 	u32 entry_count;
-	int i;
+	int i, ret;
 
 	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
 	if (entry_count > DDR_STATS_MAX_NUM_MODES)
 		return -EINVAL;
 
+	if (qcom_stats_qmp) {
+		/*
+		 * Recent SoCs (SM8450 onwards) do not have duration field
+		 * populated from boot up onwards for both DDR LPM Stats
+		 * and DDR Frequency Stats.
+		 *
+		 * Send QMP message to Always on processor which will
+		 * populate duration field into MSG RAM area.
+		 *
+		 * Sent everytime to read latest data.
+		 */
+		ret = qmp_send(qcom_stats_qmp, "{class: ddr, action: freqsync}");
+		if (ret)
+			return ret;
+	}
+
 	reg += DDR_STATS_ENTRY_START_ADDR;
 	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
 
@@ -310,6 +329,14 @@ static int qcom_stats_probe(struct platform_device *pdev)
 	qcom_create_subsystem_stat_files(root, config);
 	qcom_create_soc_sleep_stat_files(root, reg, d, config);
 	qcom_create_ddr_stat_files(root, reg, config);
+	/*
+	 * QMP is used for DDR stats syncing to MSG RAM for recent SoCs (SM8450 onwards).
+	 * The prior SoCs do not need QMP handle as the required stats are already present
+	 * in MSG RAM, provided the DDR_STATS_MAGIC_KEY matches.
+	 */
+	qcom_stats_qmp = qmp_get(&pdev->dev);
+	if (IS_ERR(qcom_stats_qmp))
+		qcom_stats_qmp = NULL;
 
 	platform_set_drvdata(pdev, root);
 

-- 
2.34.1


