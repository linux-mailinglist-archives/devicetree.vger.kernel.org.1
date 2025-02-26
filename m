Return-Path: <devicetree+bounces-151286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C9A45468
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 05:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B84FF3AA9D5
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 04:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F7C267B71;
	Wed, 26 Feb 2025 04:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="bgEvjRWp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CE425D537;
	Wed, 26 Feb 2025 04:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740543285; cv=none; b=A4BI3K6Drz+b7NpqTGrM8IZxzoRg/BQGbZV2fgqwDZfVJDvuqhbmV8vMbFnG+NlbVA0Ytd8J0y5wsWXEf/au0J40C8qMiUEh6hEEOWTUImGL9/F4bWnu7k4WM5OBNIk2cUOQJbrs2RbfaycM+P8ngq4yfZSfzCxdr2vi29w22K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740543285; c=relaxed/simple;
	bh=Yi6uJB/X0TPkspG5zboHUjDTtvWR8kZKlDe4whglfHM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NyZEH+7MX2ejvCPF61ZNmr9bQLz9qcUHH2/1+Z+MF8xtmjPNCyhaLWicu0pntvg+YYdkcdgqWzMHOsuVfz3EAdocUh7gRCrZAzrtPuSSph4rq9xZmldlmcEYQZMBrSZHo1jhLa9w3y1rcbf7+Bqk1jAYyfwCoBr97Ma9lmEYWLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=bgEvjRWp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51PMj9gf019515;
	Wed, 26 Feb 2025 04:14:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	axKp4o1jJc/Pq6RiX+tIoTVzrpQ00apZ1RLBzcZ/kW0=; b=bgEvjRWpL6JGHJZy
	jg9wgVeODq9UeWFl+b6JRNJxkfiowM+nuzMNlpXKsH1U6ZWWK9+rGUXyiU8h6BJS
	rS7wm0+U/aRg6M07Nv/qBtPSQI/d8rMLzQ+8OCCmqJvIfhaxsDfcO7rpJZri1Xwm
	KPI+Rg7KeE1PyXnhaj4o5CVHAKgYAOG++Yj/j2Yr9u8c3MK8+w8gNsV4RuQbNpit
	jO+6lswUJr2/qCuRcrjdHrIed0/bqe4cFTPCnn2CKnlHJ2IDvU5WfGGn67BRsIyf
	CQDWyiJeVN9rzyj6PGCd4u9qRIegTxgvC0fEhFsL1Z8kuvVRS8s80T/KIp5h4Lt+
	7obHgA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451px40n82-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 04:14:16 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51Q4EF43006463
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Feb 2025 04:14:15 GMT
Received: from jiegan-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 25 Feb 2025 20:14:10 -0800
From: Jie Gan <quic_jiegan@quicinc.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
	<mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        "Alexander
 Shishkin" <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao
	<quic_jinlmao@quicinc.com>, <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH v14 02/10] Coresight: Add trace_id function to retrieving the trace ID
Date: Wed, 26 Feb 2025 12:13:34 +0800
Message-ID: <20250226041342.53933-3-quic_jiegan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250226041342.53933-1-quic_jiegan@quicinc.com>
References: <20250226041342.53933-1-quic_jiegan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: oK3UpeH-sn1Lomu7zs6kP7jOHpLyw1vS
X-Proofpoint-ORIG-GUID: oK3UpeH-sn1Lomu7zs6kP7jOHpLyw1vS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_08,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=999 adultscore=0 spamscore=0
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502260030

Add 'trace_id' function pointer in coresight_ops. It's responsible for retrieving
the device's trace ID.

Co-developed-by: James Clark <james.clark@linaro.org>
Signed-off-by: James Clark <james.clark@linaro.org>
Reviewed-by: James Clark <james.clark@linaro.org>
Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
---
 drivers/hwtracing/coresight/coresight-core.c  | 27 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-dummy.c | 13 ++++++++-
 .../coresight/coresight-etm3x-core.c          |  1 +
 .../coresight/coresight-etm4x-core.c          |  1 +
 drivers/hwtracing/coresight/coresight-stm.c   | 11 ++++++++
 drivers/hwtracing/coresight/coresight-tpda.c  | 11 ++++++++
 include/linux/coresight.h                     |  5 ++++
 7 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 0a9380350fb5..6cad777757f3 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -23,6 +23,7 @@
 #include "coresight-etm-perf.h"
 #include "coresight-priv.h"
 #include "coresight-syscfg.h"
+#include "coresight-trace-id.h"
 
 /*
  * Mutex used to lock all sysfs enable and disable actions and loading and
@@ -1515,6 +1516,32 @@ void coresight_remove_driver(struct amba_driver *amba_drv,
 }
 EXPORT_SYMBOL_GPL(coresight_remove_driver);
 
+int coresight_etm_get_trace_id(struct coresight_device *csdev, enum cs_mode mode,
+			       struct coresight_device *sink)
+{
+	int trace_id;
+	int cpu = source_ops(csdev)->cpu_id(csdev);
+
+	switch (mode) {
+	case CS_MODE_SYSFS:
+		trace_id = coresight_trace_id_get_cpu_id(cpu);
+		break;
+	case CS_MODE_PERF:
+		trace_id = coresight_trace_id_get_cpu_id_map(cpu, &sink->perf_sink_id_map);
+		break;
+	default:
+		trace_id = -EINVAL;
+		break;
+	}
+
+	if (!IS_VALID_CS_TRACE_ID(trace_id))
+		dev_err(&csdev->dev,
+			"Failed to allocate trace ID on CPU%d\n", cpu);
+
+	return trace_id;
+}
+EXPORT_SYMBOL_GPL(coresight_etm_get_trace_id);
+
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Pratik Patel <pratikp@codeaurora.org>");
 MODULE_AUTHOR("Mathieu Poirier <mathieu.poirier@linaro.org>");
diff --git a/drivers/hwtracing/coresight/coresight-dummy.c b/drivers/hwtracing/coresight/coresight-dummy.c
index 9be53be8964b..b5692ba358c1 100644
--- a/drivers/hwtracing/coresight/coresight-dummy.c
+++ b/drivers/hwtracing/coresight/coresight-dummy.c
@@ -41,6 +41,16 @@ static void dummy_source_disable(struct coresight_device *csdev,
 	dev_dbg(csdev->dev.parent, "Dummy source disabled\n");
 }
 
+static int dummy_source_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
+				 __maybe_unused struct coresight_device *sink)
+{
+	struct dummy_drvdata *drvdata;
+
+	drvdata = dev_get_drvdata(csdev->dev.parent);
+
+	return drvdata->traceid;
+}
+
 static int dummy_sink_enable(struct coresight_device *csdev, enum cs_mode mode,
 				void *data)
 {
@@ -62,7 +72,8 @@ static const struct coresight_ops_source dummy_source_ops = {
 };
 
 static const struct coresight_ops dummy_source_cs_ops = {
-	.source_ops = &dummy_source_ops,
+	.trace_id	= dummy_source_trace_id,
+	.source_ops	= &dummy_source_ops,
 };
 
 static const struct coresight_ops_sink dummy_sink_ops = {
diff --git a/drivers/hwtracing/coresight/coresight-etm3x-core.c b/drivers/hwtracing/coresight/coresight-etm3x-core.c
index c103f4c70f5d..c1dda4bc4a2f 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x-core.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x-core.c
@@ -704,6 +704,7 @@ static const struct coresight_ops_source etm_source_ops = {
 };
 
 static const struct coresight_ops etm_cs_ops = {
+	.trace_id	= coresight_etm_get_trace_id,
 	.source_ops	= &etm_source_ops,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-etm4x-core.c b/drivers/hwtracing/coresight/coresight-etm4x-core.c
index 2c1a60577728..cfd116b87460 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
@@ -1067,6 +1067,7 @@ static const struct coresight_ops_source etm4_source_ops = {
 };
 
 static const struct coresight_ops etm4_cs_ops = {
+	.trace_id	= coresight_etm_get_trace_id,
 	.source_ops	= &etm4_source_ops,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index b581a30a1cd9..aca25b5e3be2 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -281,12 +281,23 @@ static void stm_disable(struct coresight_device *csdev,
 	}
 }
 
+static int stm_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
+			__maybe_unused struct coresight_device *sink)
+{
+	struct stm_drvdata *drvdata;
+
+	drvdata = dev_get_drvdata(csdev->dev.parent);
+
+	return drvdata->traceid;
+}
+
 static const struct coresight_ops_source stm_source_ops = {
 	.enable		= stm_enable,
 	.disable	= stm_disable,
 };
 
 static const struct coresight_ops stm_cs_ops = {
+	.trace_id	= stm_trace_id,
 	.source_ops	= &stm_source_ops,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
index 189a4abc2561..68079169b11b 100644
--- a/drivers/hwtracing/coresight/coresight-tpda.c
+++ b/drivers/hwtracing/coresight/coresight-tpda.c
@@ -241,12 +241,23 @@ static void tpda_disable(struct coresight_device *csdev,
 	dev_dbg(drvdata->dev, "TPDA inport %d disabled\n", in->dest_port);
 }
 
+static int tpda_trace_id(struct coresight_device *csdev, __maybe_unused enum cs_mode mode,
+			 __maybe_unused struct coresight_device *sink)
+{
+	struct tpda_drvdata *drvdata;
+
+	drvdata = dev_get_drvdata(csdev->dev.parent);
+
+	return drvdata->atid;
+}
+
 static const struct coresight_ops_link tpda_link_ops = {
 	.enable		= tpda_enable,
 	.disable	= tpda_disable,
 };
 
 static const struct coresight_ops tpda_cs_ops = {
+	.trace_id	= tpda_trace_id,
 	.link_ops	= &tpda_link_ops,
 };
 
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 157c4bd009a1..ce89ad24c2a2 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -335,6 +335,7 @@ enum cs_mode {
 	CS_MODE_PERF,
 };
 
+#define coresight_ops(csdev)	csdev->ops
 #define source_ops(csdev)	csdev->ops->source_ops
 #define sink_ops(csdev)		csdev->ops->sink_ops
 #define link_ops(csdev)		csdev->ops->link_ops
@@ -410,6 +411,8 @@ struct coresight_ops_helper {
 };
 
 struct coresight_ops {
+	int (*trace_id)(struct coresight_device *csdev, enum cs_mode mode,
+			struct coresight_device *sink);
 	const struct coresight_ops_sink *sink_ops;
 	const struct coresight_ops_link *link_ops;
 	const struct coresight_ops_source *source_ops;
@@ -697,4 +700,6 @@ int coresight_init_driver(const char *drv, struct amba_driver *amba_drv,
 
 void coresight_remove_driver(struct amba_driver *amba_drv,
 			     struct platform_driver *pdev_drv);
+int coresight_etm_get_trace_id(struct coresight_device *csdev, enum cs_mode mode,
+			       struct coresight_device *sink);
 #endif		/* _LINUX_COREISGHT_H */
-- 
2.34.1


