Return-Path: <devicetree+bounces-224259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 912B4BC22C4
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 946334F7FF7
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066F62E8B95;
	Tue,  7 Oct 2025 16:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D6elETUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BDA2EA154
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855786; cv=none; b=UkrKmefDbuXAF/0s5OILngEd228nZFegY1YcV0XANgqeYOUm3AHv3vBhr8R+awVTf/+F9TAsDOU6TcqrtZO3U8vNRR7ZTJ0VgsHbW4Nh0C4vg/kwMZ2Ej57W2Vl/U4T/zi/PRsb3ABNEuXKtb+1yS8AnQJZVYLW/9S4PlSkPLU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855786; c=relaxed/simple;
	bh=9xHPgyydOeXweGUGYLP/L8fGDVmLTdkNMJ4AMabbVsM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cqa7rbwnGpaRePJfdq7nFZpa95tKpJNqg8hgoer5c/4juo0qwQ9iX5mjK03ywwGEAhKdPkDGi0YZ8neseesmT4b81PDdWCaMhvQ17UGV7zutZdhxcXR/AbuP1G6uCZbEG8bsoBfVHI5OFx275TX3P0WgIPpL4ZaRrJ/W9iXgcIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D6elETUG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597ETGK4031485
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 16:49:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QxNeeJEXNpPeJTacph3hwU9D6rTjPEzDWfJFAW/Pno0=; b=D6elETUGB4FEA2ve
	v9V8DudIneufWVfS3frJkzM98R1AoAUzuGk4jK0GzFp7xqwrQKiSwWzCvB7AI42p
	IcesIE8Jfhd35pK93rjlXmIpJE2dsGitL7GaJ7GtPdNluth0Tz1bTt7DFqbFvPqs
	fV8SriVgyhakGxzUsZDZ3c3kbqfHr70080eck9S8fXxBvkjxNMKarZOyuEzK67yv
	X0KkZx2/9tUtIaKNuGQWo2DcrRs6UGfpv6Tuz/Oz7d+cr34qsPKOTne21uB+arkF
	7oa4vQlbZ3au0l3Vf933sXMz1i32/rrtyWd0kFLaptU5O5XRr3Uv+vOHKjDxLWgR
	uMDsag==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6yx1r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 16:49:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27ee41e062cso79676885ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:49:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759855782; x=1760460582;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QxNeeJEXNpPeJTacph3hwU9D6rTjPEzDWfJFAW/Pno0=;
        b=LFaWX3xRbbGXZZ+9YmQev7KsqjekI+QF0GP+LHJ+QN9U0MLAWUv0jNVEJ9vu9Nz55P
         NVbS7Tx5OW3snWNiz48eXnl0hSC6la1+rqRFHhlqOsq56SB3cH6j+vqFaaHJaq60pDkZ
         IVk1Of0UWkulbbylH8TuSUBw739aIvgZ8GhcTLEhild00zqEKe3f1S82YfbCm3nbdqD6
         bSxdj4IFNM/sc9r5HPLvv+p34Vg5gb4QsKgaEx063RYQ5OdAFyg9jml0OdhT9Y2Wa06U
         JXR+VAdzpQAe+GZ9fQvDD9PiaGFYv5wmwEZMuhzt/iBRPIcLwwdMDdG9mPdueJUHvOjA
         HV9w==
X-Forwarded-Encrypted: i=1; AJvYcCVj6vX1KtAITOxNx8QO3xzWeFXDnwLDDukpiwFsCfcv5ry7jIyJSv3DlDFEiX3QnWGi3I9cb20oUClQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi6D/YCGrvFuiCxoeAFhvh7a1y3HlOx9FxWMo46+UtF1RiZiYX
	wuRBoneAlZk6TxQMehFZhMM0kuJBHZ3P5cPIETN2Pt5F5aU156nOplzSVfiIntw5S6LiQZXwkvl
	zq37ur/I6e7HG6SmndeRM5TNH6G9uzQCymWXgwVk+mgP70M57xkLzlRUBattF/dd7
X-Gm-Gg: ASbGncsUMoh5NNfkinDB3Cyz9OZY74dRzZwfKCBmdbud0ce74yPvzaD1FNPnMyuZsBq
	sXa0k7bawoSZmkNXePsVAz5CXaxcUnqW70yFEonmKs6APVx3q9Y1TFW3xYOwxGLsoo125aLdQo3
	2FfpclhaMVZh52PjYaXV0w60S3w96ro+h4jVW/QYxcBiuiBLKfiUTuAb3v0dGzELIzbOu09nehx
	kxJhOLoQwc5ha9EpO1AZ5NRinc/5dNmd6bgUMDl2j3QUkUHI+xKjyTZe9+cUzBh3nlQstGDlClg
	Gi4MUJyM4aYS1ZG3kUYZpuQ2c/+koSjZEW9mtIo7cxQm2XDVg77ToprnZAJ6Fe1KJP1P1jK+
X-Received: by 2002:a17:903:2c0d:b0:24b:164d:4e61 with SMTP id d9443c01a7336-290272b27b2mr4396705ad.13.1759855781547;
        Tue, 07 Oct 2025 09:49:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4ojBOTf4hVzlcnJUwx3Xx5342YcDt22x1MRR6j2P8Ub0QP6gMv4na8Kc9xIoK/FL1oCbYuQ==
X-Received: by 2002:a17:903:2c0d:b0:24b:164d:4e61 with SMTP id d9443c01a7336-290272b27b2mr4396425ad.13.1759855780958;
        Tue, 07 Oct 2025 09:49:40 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1261e2sm171990825ad.38.2025.10.07.09.49.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:49:40 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 07 Oct 2025 22:18:52 +0530
Subject: [PATCH v4 07/12] firmware: qcom_scm: Simplify
 qcom_scm_pas_init_image()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-kvm_rprocv4_next-20251007-v4-7-de841623af3c@oss.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759855751; l=2863;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=9xHPgyydOeXweGUGYLP/L8fGDVmLTdkNMJ4AMabbVsM=;
 b=VrZ32SCvIJGeIMMpBJYfzH1o5GGbYqNyMoNI4YMe/smiKv+k3VJ16nVS2TakCuuqjKkevo5LW
 HI1UfSpKyOpCoaBSor8MRCK151+NSib1r9s3/zsZMHkmxmBJOkOxH4s
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e544a7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=XvkCMQ9jN2oI-PQncDkA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: TQw_N-0bFebqHgLKdTcKrE6VPxMTcgSN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfXwZ+CQI7d2OhI
 Y3Y7YE4Fqa9ANlYZ+pisiKaGYf5wpStWK20ddSPOZoTu2QrlldMEKWGkdnItNNwwHLwE8HWgP+d
 +W8Mx1FUx+kaJAGeFjJL0MFO5cjged3Ljr02d6HLR1HtulorBPK1pirLWO9VGQKDWVdduWJZEll
 7SV5i5zGn29E02zJA5jcgxW9ez63Ani1ERNlCdJpfhRbvra95bPnPWm88wW9fU7+E+aEys9//KV
 F0EaMVNOJC+PCF19wu7J/SztSIjpxYjyxhRnqcBGIWhI48AQQhS+a9BaHCcf5B2a2C+Mv/I0Toh
 894a1z09q3jAGE19ht9XrQr/70KIUPN3wS9inPaSL0KmbXfpY88lWrS/Q0kM0Zj9zFYgcXDUcIf
 IB70+Nif7CQ6NoSt0MN+XKOJ7jHJ6Q==
X-Proofpoint-ORIG-GUID: TQw_N-0bFebqHgLKdTcKrE6VPxMTcgSN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

Simplify qcom_scm_pas_init_image() by making the memory allocation,
copy and free operations done in a separate function than the actual
SMC call.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 58 +++++++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index ab2543d44097..b8626897c8a7 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -612,6 +612,37 @@ void qcom_scm_pas_context_destroy(struct qcom_scm_pas_context *ctx)
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_context_destroy);
 
+static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys, void *metadata,
+				     size_t size, struct qcom_scm_res *res)
+{
+	struct qcom_scm_desc desc = {
+		.svc = QCOM_SCM_SVC_PIL,
+		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
+		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
+		.args[0] = pas_id,
+		.owner = ARM_SMCCC_OWNER_SIP,
+	};
+	int ret;
+
+	ret = qcom_scm_clk_enable();
+	if (ret)
+		return ret;
+
+	ret = qcom_scm_bw_enable();
+	if (ret)
+		goto disable_clk;
+
+	desc.args[1] = mdata_phys;
+
+	ret = qcom_scm_call(__scm->dev, &desc, res);
+	qcom_scm_bw_disable();
+
+disable_clk:
+	qcom_scm_clk_disable();
+
+	return ret;
+}
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
@@ -633,17 +664,10 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_context *ctx)
 {
 	struct qcom_scm_pas_metadata *mdt_ctx;
+	struct qcom_scm_res res;
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
 	int ret;
-	struct qcom_scm_desc desc = {
-		.svc = QCOM_SCM_SVC_PIL,
-		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
-		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = pas_id,
-		.owner = ARM_SMCCC_OWNER_SIP,
-	};
-	struct qcom_scm_res res;
 
 	/*
 	 * During the scm call memory protection will be enabled for the meta
@@ -664,23 +688,7 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 
 	memcpy(mdata_buf, metadata, size);
 
-	ret = qcom_scm_clk_enable();
-	if (ret)
-		goto out;
-
-	ret = qcom_scm_bw_enable();
-	if (ret)
-		goto disable_clk;
-
-	desc.args[1] = mdata_phys;
-
-	ret = qcom_scm_call(__scm->dev, &desc, &res);
-	qcom_scm_bw_disable();
-
-disable_clk:
-	qcom_scm_clk_disable();
-
-out:
+	ret = __qcom_scm_pas_init_image(pas_id, mdata_phys, mdata_buf, size, &res);
 	if (ret < 0 || !ctx) {
 		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
 	} else if (ctx && ctx->metadata) {

-- 
2.50.1


