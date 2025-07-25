Return-Path: <devicetree+bounces-199711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A58B11BDE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64D4F5A487C
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B1E2EA14D;
	Fri, 25 Jul 2025 10:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bBzw9wCZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24ED2E9ED2
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438121; cv=none; b=F9nxoADYHwBAqNILUfaAli/AXICX0leODrBrCWOEozOA6CfhuYJ07YYh0rNPftq5gyU3l3qhTAbyzQaj/jlfhTSNAMfFyBe06s1xPXFL2LridYBpI+FbGS0GSD1yh1qmbIg8IqGCLxAtU32xnhWJhdcEcTluxUUzU5QEUrplXFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438121; c=relaxed/simple;
	bh=ab+Uam6+qCgeeyzW1mLzRBfg/DFM2tOzmX2HD9EDM74=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SGtcYUONCZrQ42UXTVJo+l8ezMXr28Oo4gnU/mhZK1AyoUjFknguQPWccmN2kb7gruf1Ahk+8Zf7TrAg5yDZ+99aziOnDy70n4Nf3HZwZPKX8NFiG3Qxt77tr9FEXNIF2HEiNFSrX2Zl3f5fy5NFVikQATTeqf6aF7EY3+gIXC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bBzw9wCZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P94LiO018117
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Jk8rhw+3ezl
	HXU/LdBbPr3lAiametlPEc9i/J7FBJU8=; b=bBzw9wCZ5NqJoAECm4nP3vriVoh
	FhHVfkiVdp59Bve/WNVOQmffD86zONT7Ce7u2k+aiBhxYjRYwnT3pgTpPIGzEYRN
	t9GJ0TcOxyp7T1VXHpOKrRZLJ0IoFBAcCy4tQLIfqgBt5wTR+lWH1mhmDGO11vaz
	2i7f4kbeccqykw7XWA+903UQ6eWyYmHwVWWlMWgE9PjMNwUryCJvpX6lVTIhMfuJ
	BvX4F3Y7G7hYWPO+Qd3+zF/xjOzROcilHxK1xtAw4qrkQ/EySJVCVXcJ3yUaApZl
	YzEFAkJFLsTPVX+IJ21wkOmVA6DYCaYG5Kd1uLSs686CYJrOskd29TVnwIg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2s1nnb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235c897d378so21887525ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438116; x=1754042916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jk8rhw+3ezlHXU/LdBbPr3lAiametlPEc9i/J7FBJU8=;
        b=Xc438V0gHUEzBujYjqG4yD7qS0EDkFuaIOXeiHRUa3+0AbH/CBjfw8BMRzQMYlzCYX
         xP1PNTt5iP0ZqGjiEHdB2BhandQCkXW1h1UBot6PQg6M03Xiu7JXGQVFSORhJI0TBWpP
         d0poikxs8ZSx6SUH8C/qj3q5Tuf+Xeju1ojPYXiGrqfSLIGgPCGtVOgwmySTmxj/LLSO
         KjQ8s84LXRXEmsZpraA93IMXdtvT24dCQiwgORH/dykjQ6oIhphbvJD9/zzjE18TJ+sQ
         kwS0Y3R7467DPNpdEWVdyRX+xPCTU3YUuOz+e28A+sS4b6GxZF8JMEeyVq+z3GIUpXbz
         gnKw==
X-Forwarded-Encrypted: i=1; AJvYcCXKlVrvy+z/2RtJqtGk+HqyBfv7mqkOJoRQGdGeAevPAwQdYAgnz7XkrqHRZAfb8IZGv0yZpgViFCqp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ao7HQZG53uOkPNc95rVUBdQHLdCt4vE1JERCB45kT48XOVY+
	Aq3zXeMX6mFqPXo3iWipHFYJunf+D1SQwr3gSlb/C4zT3YHODyUJkmkPDE21ni5Ig+z9S7WjqmM
	qr1tISUQiF9hIh9E02mbhcmVX2F3WaGnfZaAfVA72fPMmVfY4hNvKR1bNOPjqUR4o
X-Gm-Gg: ASbGncuFicmjac0TXLWT5LRgCVdJkv7/M2OWX5nxfDiXN6wtRJoSBXnBe/E65vGBJ6x
	x/3r6x557ZhbHaFXZ0PY0THMHki4V6acNlAAkRBNf3GOHAN9KAopCteeFQu1dDLmCqJLlPU7afv
	mnfmAvuPSX9o836HXJHU7k9xrfc2jCIccGOnrFS8xdFPPZXTz9uuafvLM7qT+GXXWjCEeygdxLv
	29S6Y9GmGTuCEzKJAVuvVVw7t7GdeoCa8grszwVuZfCtCz0m/Njss9/3e7+ucErpHxF6KPpylvO
	WfqidzZuf7hoXNLytc7i7dALbUWInuxAne8lRQhRadWRtxBZqlDYM8El+ogV6iXTPKst4qoE/s5
	+Ya2l//Lx1jvCBFMNUeY=
X-Received: by 2002:a17:903:181:b0:234:d679:72e3 with SMTP id d9443c01a7336-23fb3100766mr20201515ad.42.1753438116158;
        Fri, 25 Jul 2025 03:08:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGs0H0KGXgka7RDhfyUl5zCfbbvzjg0Kqg2pI0R60Jp3ieS0GcT2u8RGVpplg5Z8ydKHN+mw==
X-Received: by 2002:a17:903:181:b0:234:d679:72e3 with SMTP id d9443c01a7336-23fb3100766mr20200975ad.42.1753438115670;
        Fri, 25 Jul 2025 03:08:35 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:35 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>
Subject: [PATCH v4 05/10] coresight: tmc: Introduce tmc_read_ops to wrap read operations
Date: Fri, 25 Jul 2025 18:08:01 +0800
Message-Id: <20250725100806.1157-6-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gtA9Qm2P6HVMd0PHLIuMqLyVJ05OsWIg
X-Authority-Analysis: v=2.4 cv=IZyHWXqa c=1 sm=1 tr=0 ts=688357a5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=1hiE41pZ4Zj50arX-_gA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: gtA9Qm2P6HVMd0PHLIuMqLyVJ05OsWIg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NSBTYWx0ZWRfXyleQ/8CgxEls
 QBc2mk+P0j2wNm+uUi2l9wPd/3/ULfLf4cj7ZeZNqQ2W347Xb7sR2Ncwzt70iZaUa7pvnDNu5Wx
 IxG9Bf8OlIenW0lJl9jJqPGP2aVgUgaUL6K/bcAGXUzbqHDR0v0rCi6m0gDLn2fZnpIGwM70cfu
 BuvL/T2+hpf1U25Rt0efBybI0Go07Vip2i+JU5pytBWkg4dOxqx3a/QGF6JDZUkSS5W9t9+l/5w
 bDSkiiItnq/uVkKI6e2AzPpo7AStWeBx1sHW+F/zKYMprvNFuYptFa5ce80N0gYFA6j3gCc2gH3
 SjxWTxCuEHHwpTsbqRBD02KswgVN+GHEyU+LNoKoQ/skSh0+cBcRllKahNtbgNz/MYSRmjnhjv5
 +6Q9N0o+E/JuR9M1kCnk2/DOAJGbA3GHI/XGEOjSwcD4eZI4bmWBPsMLOp1VDVbI8Yxv/El4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250085

Introduce tmc_read_ops as a wrapper, wrap read operations, for reading
trace data from the TMC buffer.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  | 50 +++++++++----------
 drivers/hwtracing/coresight/coresight-tmc.h   | 17 +++++++
 2 files changed, 40 insertions(+), 27 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 4d249af93097..f668047c5df4 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -232,17 +232,10 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
 
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		ret = tmc_read_prepare_etb(drvdata);
-		break;
-	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_prepare_etr(drvdata);
-		break;
-	default:
+	if (drvdata->read_ops)
+		ret = drvdata->read_ops->read_prepare(drvdata);
+	else
 		ret = -EINVAL;
-	}
 
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
@@ -254,17 +247,10 @@ static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
 
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		ret = tmc_read_unprepare_etb(drvdata);
-		break;
-	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_unprepare_etr(drvdata);
-		break;
-	default:
+	if (drvdata->read_ops)
+		ret = drvdata->read_ops->read_unprepare(drvdata);
+	else
 		ret = -EINVAL;
-	}
 
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
@@ -291,13 +277,8 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
-	switch (drvdata->config_type) {
-	case TMC_CONFIG_TYPE_ETB:
-	case TMC_CONFIG_TYPE_ETF:
-		return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
-	case TMC_CONFIG_TYPE_ETR:
-		return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
-	}
+	if (drvdata->read_ops)
+		return drvdata->read_ops->get_trace_data(drvdata, pos, len, bufpp);
 
 	return -EINVAL;
 }
@@ -769,6 +750,18 @@ static void register_crash_dev_interface(struct tmc_drvdata *drvdata,
 			"Valid crash tracedata found\n");
 }
 
+static const struct tmc_read_ops tmc_etb_read_ops = {
+	.read_prepare	= tmc_read_prepare_etb,
+	.read_unprepare	= tmc_read_unprepare_etb,
+	.get_trace_data	= tmc_etb_get_sysfs_trace,
+};
+
+static const struct tmc_read_ops tmc_etr_read_ops = {
+	.read_prepare	= tmc_read_prepare_etr,
+	.read_unprepare	= tmc_read_unprepare_etr,
+	.get_trace_data	= tmc_etr_get_sysfs_trace,
+};
+
 static int __tmc_probe(struct device *dev, struct resource *res)
 {
 	int ret = 0;
@@ -818,6 +811,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.ops = &tmc_etb_cs_ops;
 		dev_list = &etb_devs;
+		drvdata->read_ops = &tmc_etb_read_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETR:
 		desc.groups = coresight_etr_groups;
@@ -831,6 +825,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
 		INIT_LIST_HEAD(&drvdata->etr_buf_list);
+		drvdata->read_ops = &tmc_etr_read_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
@@ -839,6 +834,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
 		desc.ops = &tmc_etf_cs_ops;
 		dev_list = &etf_devs;
+		drvdata->read_ops = &tmc_etb_read_ops;
 		break;
 	default:
 		pr_err("%s: Unsupported TMC config\n", desc.name);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 3cb8ba9f88f5..2ad8e288c94b 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -223,6 +223,8 @@ struct etr_buf_node {
 	struct list_head	node;
 };
 
+struct tmc_read_ops;
+
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @pclk:	APB clock if present, otherwise NULL
@@ -259,6 +261,7 @@ struct etr_buf_node {
  *		 Used by ETR/ETF.
  * @etr_buf_list: List that is used to manage allocated etr_buf.
  * @reading_node: Available buffer for byte-cntr reading.
+ * @tmc_read_ops: Read operations for TMC device.
  */
 struct tmc_drvdata {
 	struct clk		*pclk;
@@ -290,6 +293,20 @@ struct tmc_drvdata {
 	struct tmc_resrv_buf	crash_mdata;
 	struct list_head        etr_buf_list;
 	struct etr_buf_node     *reading_node;
+	const struct tmc_read_ops	*read_ops;
+};
+
+/**
+ * struct tmc_read_ops - read operations for TMC and its helper devices
+ * @read_prepare:	prepare operation.
+ * @read_unprepare:	unprepare operation.
+ * @get_trace_data:	read operation.
+ */
+struct tmc_read_ops {
+	int (*read_prepare)(struct tmc_drvdata *drvdata);
+	int (*read_unprepare)(struct tmc_drvdata *drvdata);
+	ssize_t (*get_trace_data)(struct tmc_drvdata *drvdata, loff_t pos,
+				  size_t len, char **bufpp);
 };
 
 struct etr_buf_operations {
-- 
2.34.1


