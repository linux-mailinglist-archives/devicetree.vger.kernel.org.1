Return-Path: <devicetree+bounces-195878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A77E3B0371B
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 26D9E7AB775
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81AC8227EA4;
	Mon, 14 Jul 2025 06:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EydcAQoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48EE226D00
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474686; cv=none; b=tSNNq2ouA1+XLl7aTmk3keCbNSMyM3wqy6uA8FHsrS1flw3b6jppJ7fciiQDBoMFErUZp978ibTQDz9S9r8F9XQoxVQw37wBjOOldmpQ15MDZ5ZgaZkqTNf0irouazK+LaSsgIk+vcapwooZbPcv22/1hkzRaC9q5jq5tyZw1EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474686; c=relaxed/simple;
	bh=WgNB8JtNu/qnxzLII17QZyIYVM1aQeVHuPJM2eBUR+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o2yXw9QzScARkbbEYds3foyXCu09eG/kL78E40c6oCQQQ4BnbQi5WzyoA8aoleNYNEs6g6WB4liOCvQp2Ov/UzwRYCv6cukleAQAB/FEKddno12FLrX11CR/e2cQfEyiSOeFKAjHx1kP9Lz1cz/8Vs9QWqYec4UjbMpP7vnfzwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EydcAQoW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E0dMkp032088
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=TlagnvE3DvQ
	Djl8NoW2g4NISDOA+5IeFliGdXmFMGmQ=; b=EydcAQoWsQEBxP6FdYgKjseL38I
	fxMHjTEaQ2QfOtVpm/IyxhqDcIc7M3kfeWf3o63w4PQMqOo01PDV4WgOjdkk4MZa
	wRHQCP7o+opE9Cb+C5F2N8huhmJ7Hr64aNO2aucATCjbFp5Ir2GyYlV2SSchm56w
	vgy/cC9NYtp+F3rvX2NY4AtzDGpLmxHkt//IQvlLDtB3x4bJ4v9pHnPJorQvMndr
	f5gVfftXQzhtZN6FhoUtyBKPmVlyXsop+Dlh/7b+gS0QusBlfnqH/I3wli+Exk6P
	Iofqsy74fdXKTl1HkeP0TzZoZaRjTjV5mVDc8pfCEuvThvgntr33iRhAkow==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut3etx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:23 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b115fb801bcso4355535a12.3
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474682; x=1753079482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlagnvE3DvQDjl8NoW2g4NISDOA+5IeFliGdXmFMGmQ=;
        b=oKtuxtgWLMz/Hy2SCYAOmQ9xsDWxVIdEjdi3elbHF3qkcbAcF4ipqXPuJxh6zHmYHR
         1QoYNgcjjoNxL+yE+72Vppj07SUdSZVR3KJIQo6G5T5/bIORIvAIJ7SfnE7kM3YAOmiq
         3vHFHKloPAAcMnS3s/giyeiVaFEFW7Mxd9g5P9GVfUAHmhZ5cWXSm1Ov77cPNQm8Bq3B
         xgyfNKmASLDJrbxrPLr6LXeHQYkRSD2cSc3MYpMiysKiENib0BJ94JPczpoxjLOBbM5X
         PY/I2d26/+QGXgNy7OXFLjBpxXIshedaHEPVyE/edVQpysrkft7nzUCs25IizNTQz+Wj
         KiaA==
X-Forwarded-Encrypted: i=1; AJvYcCVQFlT/Na4a3ifkXi9SwY9Ts8zjfmTtSAdSzpwcMPvJhQNwUDz9s2ySUvVJCANkTxUpw1TI1Fub8a8J@vger.kernel.org
X-Gm-Message-State: AOJu0YzAOz8gA6o5OtrwtkDkum5AzUYs/vtUaoMzdMR1G5R/BSP0uVKl
	yrmyyvbyjQOqUBRLk5zFCFSTSi+lgnKNKy/M1FN6Lx/IKe53g5OsXuPLClvXAb0hlW8kf8xSAfB
	Nd50x/KI8jv0FV+uVPMW52f9EjDmKmUhlr6u1bc58oCAzSuvMelftZoWqD/ZAvejT
X-Gm-Gg: ASbGncuMw6KanLwW+x5PNq5Cz6fZFZdOfy/q/oA0WUAiKt/BukXft18yYXQXenKNOwu
	P3+CfhbL6+x/NWUgz/7qGLbGiS1rCS3gR+lHS2Ku27ifZvinYjkyU5JGxHLhVtm4HYCZE/sjk8p
	IKZEkeA2Tc+xeLr6dR3iaGZ0rw/tVvFQP1qPQFpVAn8brIWk6J+LjJyw26wyKapath+2GypZ5X/
	3WIKzmkA8EkcSsRI58hNeeRtoWRWZ1OvdOt7CDWci38UUeTYLzW0cU4Ax4EdgcPgZBbP0w4wNlc
	7J0npIx/0i5uefgHgpmR2fROLpJzr3vsc3c3bKgdql253eoXX9GU4ySsu9u2kg0nY/ml6YSht6W
	V7hAzjUBXwuVEqd9QqAar
X-Received: by 2002:a17:903:1b63:b0:235:caa8:1a72 with SMTP id d9443c01a7336-23dede81dc8mr190362665ad.30.1752474682362;
        Sun, 13 Jul 2025 23:31:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbnMsrBl15IDIkz0WDEDjeP9KCLJo7QcXtqpG3cv+ngO9fyVjCXyOrc3bIj9AbDNVdOY9SoA==
X-Received: by 2002:a17:903:1b63:b0:235:caa8:1a72 with SMTP id d9443c01a7336-23dede81dc8mr190362215ad.30.1752474681967;
        Sun, 13 Jul 2025 23:31:21 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:21 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 RESEND 01/10] coresight: core: Refactoring ctcu_get_active_port and make it generic
Date: Mon, 14 Jul 2025 14:31:00 +0800
Message-Id: <20250714063109.591-2-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=6874a43b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=UMME_An3wchvczm7DuYA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: e7c3dGQ8okKEggOJpktiYbuPbbDL1LNJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfX6jmDwo8i/St8
 /ri78bQbdtVqyM/wcv3cbGNKmFGcfPrPwIRO1gbKZ1R3Qd/sqMubNBLowubnx4sfhWVNRwva/lm
 Hy5nTXaIWN0FkI1u3vIl3Ots0+c3Qf96PMNRpGBtgqicUkxiDQ8fHRmWwhAt7Kv+yv6CyQzNfJZ
 4KvVZczFN0y/jlCiyUDFbgqF+cfsk0P7WaYvWH8+U5YXGQLfWaW4mgiExET0ojMZpkozVUIlFMt
 3hxK3viyXRMBRhgdAv6fMdanH0zoBr26ExA9SGtatuSKZ3LJzP/jXwK9bX69WzyyI42cPWbHl3i
 2YTwcF2LGhQQzsQXt3A/IL2nvSBBiKDI6kRy0a08U4YrTLxSW1SkGaSqXr6Sc48l+tiw1QrPmpd
 WTvcKL06274G1c43VJWxm4G9JJ9ivwC6iMzpi95nQ1DbD0EHpr9B1FTcJnfWrLWve5WtyZ1J
X-Proofpoint-ORIG-GUID: e7c3dGQ8okKEggOJpktiYbuPbbDL1LNJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140037

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c  | 24 +++++++++++++++++++
 .../hwtracing/coresight/coresight-ctcu-core.c | 19 +--------------
 drivers/hwtracing/coresight/coresight-priv.h  |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 1accd7cbd54b..5297a5ff7921 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -580,6 +580,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_port_helper: get the in-port number of the helper device
+ * that is connected to the csdev.
+ *
+ * @csdev: csdev of the device that is connected to helper.
+ * @helper: csdev of the helper device.
+ *
+ * Return: port number upson success or -EINVAL for fail.
+ */
+int coresight_get_port_helper(struct coresight_device *csdev,
+			      struct coresight_device *helper)
+{
+	struct coresight_platform_data *pdata = helper->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_port_helper);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index c6bafc96db96..28ea4a216345 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_port_helper(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 33e22b1ba043..07a5f03de81d 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -156,6 +156,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_port_helper(struct coresight_device *csdev,
+			      struct coresight_device *helper);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);
-- 
2.34.1


