Return-Path: <devicetree+bounces-225843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E2BBD183A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:50:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3E91F347AC4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F164A2E1C69;
	Mon, 13 Oct 2025 05:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FudBJkQS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CA82E11D2
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334604; cv=none; b=AZv0NWrzB3Mp785oQA4gXuDlcODsLPL+s7gmFwpVqeb4DlboRE96rSVpRK+IjjTBPaC3TgNwBcWM9jaeS0YfXn2zMzmQe54p4wmga+3KaDomZQ+lFfj3gLVDShiOIOquAqix3XGQ4MhkYK5UueaSYOi+7qZkERf0kHYmPmtLsu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334604; c=relaxed/simple;
	bh=2Iksx+VJAK0grFXWR1r4tkJcs3L8pubLtGYi36R5wuQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V3gohrvtZvj/YqIlR9R8RVxzuF1TCYR9lrWvRg3Rc61Vvn6FZbNSyYKm8ZAXzGc9V22pppMbWMtUuKP/mzYtJ6NMYi8BeAHAZvh1Qf4R5d7Wy8V6cqWVi+8fcztOkNFTRuaYlCnBtptOjYGjAZAuFjZRY3nY8pkICcYrcGLF5fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FudBJkQS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n7HT022230
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BVzBF6Ar0+2rX1knV9DX+TZ1riCNKaKsEJNiIKG5MSU=; b=FudBJkQSAwl/wDnm
	58ds7ByxZn8OPPko3o5b+1iUBeA0E6eM3WYST5Yvx8mIOf1gOOcB+wVVd6o2Vv3l
	ZnnX6P2CFO9jZI/RTXCfu9CEPZVW/B1VbUeFRqq0ECtVtQraWSl7vly6brmtmD1f
	xlA+FK0c/imSv30Pg8WPvnUrOYuytIwnwFvff3bwJz+qhNXXtBSeZf9IBumQelMI
	O/7hUYWzFUePIgnp6SrrsquJRyx5HCElOxab7eR3ar9FoTKNwCdycA0FIv/Xnc5a
	2xTw9F6cE1B6KqJFtdi0tszIAgZPVD9DQCzggtpdVSsQlX5b7xQFCyJGbygucehn
	ytkhmQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfu9wv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:50:02 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7810289cd5eso12807158b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334601; x=1760939401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BVzBF6Ar0+2rX1knV9DX+TZ1riCNKaKsEJNiIKG5MSU=;
        b=TMAABwGj1NCf08NmKh5o/mRgPKKsEki8Tw6NG2BOSZiNEp67Bs6vGiQsg+kQRGKFjm
         0u39v4ds/TKug2kVt2rSwCbTL6x5FOnx8UgsPwAZHetpJkawNyyUcU6W0ztsFr2rbjur
         nXj48ekO7VbL5mQ/iD76C2xMX1NDStfyNTbT5FSodnm4e1uIzI2No2DWj8my1H8Olqph
         9xob5s/7duWshRCXv3WCwsnRlzEwfxXkf1fT6AYVe9s5cWXUJyxdV9cI2K7Ezscf58As
         +h8ZqznAytljkYglpsxllhQjn2mv3GVZmuRujUqC/TyLuLQM7cGYpC5gArtalP+4mXuS
         rjcg==
X-Forwarded-Encrypted: i=1; AJvYcCXr9BRHMoODQbRKixm1+UImaTeyZ7Oj5NJuGEFYYM+wXEf7iwGQVhAAeB2c3gDshgDowPWMhSFOOelN@vger.kernel.org
X-Gm-Message-State: AOJu0YxujO62lyJXCNzsyx3iXTMaz5X2DHRuRyjK6ZV5n/DCIIXUDaYU
	DVsiAO9hWHydfCowTDiMp0CmHhTj5S0nGAn95dOYUHL7/Psa21UNw7IGNo51Kasl8GlqTChme1V
	7g1IelhQX4Gea8FDeCjQ5rUiTvQd9TzYeEq/gJ5Z50ycCc+5QCjWVlvNOj4Y3wE/X
X-Gm-Gg: ASbGncva2uSPJwkhjFCTPMzv5tjLhQvJ7E5DOWjsiiQ06EP9DS4YtUjkGZ5A1XyZsjY
	wtGuOWoN+2g4SQY+EfEM/m99xsSIolq0nkOFBEQMi9mXZxU2g+vAiCcYOeFyx1uaLtSO3oZcqEA
	BEnpzjXIXpLjo5ZOarSATBNm+S2UixQfc/M25KrgG6jzwG/wx76YUMIyOHLOcO/CyiEDGDzszwi
	pvFHjvj2Fvb+pu3acrHAcZKcGyenQLqokVaK8e8k6PBed+OSUbC091i+0EsM5skgx+jqg5t2oJI
	VWg9bCSB8lTkj0YJ5QRcz/ThHPTb8e6ntXlN519Ej4yNHG6NXoL74Jrrh/z0HtRAcpfRofuIrSS
	dBjr49biEEcI5iWcrhHI4EphjA7U=
X-Received: by 2002:a05:6a00:812:b0:782:7052:5167 with SMTP id d2e1a72fcca58-79384f489bfmr25812600b3a.6.1760334601145;
        Sun, 12 Oct 2025 22:50:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJDxyaJ/lCoewZqJvVh2+EOl9AS65FhW9zMTBtW2nGB1kAt+Ntqn1h+fXLZNVgi1sb6kaAdA==
X-Received: by 2002:a05:6a00:812:b0:782:7052:5167 with SMTP id d2e1a72fcca58-79384f489bfmr25812576b3a.6.1760334600586;
        Sun, 12 Oct 2025 22:50:00 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm10129898b3a.59.2025.10.12.22.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:50:00 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 13:49:14 +0800
Subject: [PATCH v7 5/9] coresight: tmc: Introduce sysfs_read_ops to wrap
 sysfs read operations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-enable-byte-cntr-for-ctcu-v7-5-e1e8f41e15dd@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760334567; l=5450;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=2Iksx+VJAK0grFXWR1r4tkJcs3L8pubLtGYi36R5wuQ=;
 b=/R5hHHMNv2s+Bx+KBB8uomQ5ZGC09cN8H2/9SCkH/PS84kQ6gyC65LsXJcpVoamk6i1CqdmYi
 SggNpq745MpAUHKXfMdH+YtF2yPOU/EjezFYRz6rAwaNRHaCA3IJEM3
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX26fAcUQCkbYJ
 CHH1syKpOHVXAL5l4y4ih1UZH96KMWiNWQPf54c8HAXWXul+o0GmmZXFvo29ut6+tMtSGjWHwmw
 MEVA6MmAqf1oekAhlDXHfmSBf9/iUx1lW1VFQGF0F5rTVMQqt59ek/zQnpjsMSi4UAB0kMyPqvB
 170Uq7R35YI+DqDZJSKzClvwiAeYygqDmFXxpurJJRCFSuF4s3c94wjY+o3pNM+MZ3qei/otxLf
 tmfUwVzdcai+AGDKejWSHen+poqaH2g7QAJJegc2HRL1Nxl9Vv4hUi1aZ2uoLWrJIZvnAEfrBJR
 kg57XL+j2z+X92UHecMckgq9Ere9qADkiD88Ah8OxDNF/Rgtf0mtszJrYHEWlvgprWk11YXudCf
 6Ssx1Xj8UMM+ETzjvoe4qLXrGxD4AQ==
X-Proofpoint-GUID: Y_B3qV4v6c9MELJ726CPmOdOMEW-qWG9
X-Proofpoint-ORIG-GUID: Y_B3qV4v6c9MELJ726CPmOdOMEW-qWG9
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ec930a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=JzqEjpkVlBH90HjAhVoA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

Introduce sysfs_read_ops as a wrapper, wrap sysfs read operations, for reading
trace data from the TMC buffer.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 50 +++++++++++-------------
 drivers/hwtracing/coresight/coresight-tmc.h      | 17 ++++++++
 2 files changed, 40 insertions(+), 27 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 1ea255ffa67c..8b0397a77e57 100644
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
+	if (drvdata->sysfs_ops)
+		ret = drvdata->sysfs_ops->read_prepare(drvdata);
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
+	if (drvdata->sysfs_ops)
+		ret = drvdata->sysfs_ops->read_unprepare(drvdata);
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
+	if (drvdata->sysfs_ops)
+		return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
 
 	return -EINVAL;
 }
@@ -769,6 +750,18 @@ static void register_crash_dev_interface(struct tmc_drvdata *drvdata,
 			"Valid crash tracedata found\n");
 }
 
+static const struct sysfs_read_ops tmc_etb_sysfs_read_ops = {
+	.read_prepare	= tmc_read_prepare_etb,
+	.read_unprepare	= tmc_read_unprepare_etb,
+	.get_trace_data	= tmc_etb_get_sysfs_trace,
+};
+
+static const struct sysfs_read_ops tmc_etr_sysfs_read_ops = {
+	.read_prepare	= tmc_read_prepare_etr,
+	.read_unprepare	= tmc_read_unprepare_etr,
+	.get_trace_data	= tmc_etr_get_sysfs_trace,
+};
+
 static int __tmc_probe(struct device *dev, struct resource *res)
 {
 	int ret = 0;
@@ -828,6 +821,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.ops = &tmc_etb_cs_ops;
 		dev_list = &etb_devs;
+		drvdata->sysfs_ops = &tmc_etb_sysfs_read_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETR:
 		desc.groups = coresight_etr_groups;
@@ -841,6 +835,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
 		INIT_LIST_HEAD(&drvdata->etr_buf_list);
+		drvdata->sysfs_ops = &tmc_etr_sysfs_read_ops;
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
@@ -849,6 +844,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
 		desc.ops = &tmc_etf_cs_ops;
 		dev_list = &etf_devs;
+		drvdata->sysfs_ops = &tmc_etb_sysfs_read_ops;
 		break;
 	default:
 		pr_err("%s: Unsupported TMC config\n", desc.name);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 4bfb3db44482..0f6c315d7509 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -221,6 +221,8 @@ struct etr_buf_node {
 	struct list_head	node;
 };
 
+struct sysfs_read_ops;
+
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @atclk:	optional clock for the core parts of the TMC.
@@ -258,6 +260,7 @@ struct etr_buf_node {
  *		 Used by ETR/ETF.
  * @etr_buf_list: List that is used to manage allocated etr_buf.
  * @reading_node: Available buffer_node for byte-cntr reading.
+ * @sysfs_ops:	Read operations for sysfs mode.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -290,6 +293,20 @@ struct tmc_drvdata {
 	struct tmc_resrv_buf	crash_mdata;
 	struct list_head        etr_buf_list;
 	struct etr_buf_node     *reading_node;
+	const struct sysfs_read_ops	*sysfs_ops;
+};
+
+/**
+ * struct sysfs_read_ops - read operations for TMC and its helper devices
+ * @read_prepare:	prepare operation.
+ * @read_unprepare:	unprepare operation.
+ * @get_trace_data:	read operation.
+ */
+struct sysfs_read_ops {
+	int (*read_prepare)(struct tmc_drvdata *drvdata);
+	int (*read_unprepare)(struct tmc_drvdata *drvdata);
+	ssize_t (*get_trace_data)(struct tmc_drvdata *drvdata, loff_t pos,
+				  size_t len, char **bufpp);
 };
 
 struct etr_buf_operations {

-- 
2.34.1


