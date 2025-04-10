Return-Path: <devicetree+bounces-165107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 112C0A835CA
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8200B7ABCF4
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 01:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9BDF1CD215;
	Thu, 10 Apr 2025 01:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ehx+PJAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC101B0F20
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248847; cv=none; b=aY63KV1SoAlUUKDdMK7lM2s9hJhXFud4RzOEqGiLzWClytKXVJxb1BNwZPEvkQ+D5GJ1QQqmu723FzevALgDhYpXmSovTi/xXwdRAqcu4pmnjHKNkRjr03ldUGeZ1uyn3SWnngJWJqE7OwQNOMD3FtfwbVty6Y7kFGqf9vnJnGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248847; c=relaxed/simple;
	bh=p9++WxvXfpQW2KakJduCOQLTPMpP/pdeSdKn6M3rDWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qpl/J/zDmbFXTnGZxhV5y3QWo+bmPSSbxVIv8ZWO8XaIbUwHWhznwV08bS7uiyD1d14SKIW3IXhC6ZNR4JKe9zNc9sBNvMK01f8gGX2eGWjLeyJVVk2/KIlKw050Djdd6EVTqzsE2Sls4MYizYYTFedmYByXMGqe+H9X4lhXuqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ehx+PJAS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539NwTw0003964
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Wi4lXP9W3EG
	bwQoH1fNQoNj4KY8C57elQ6SQxXyrbGE=; b=ehx+PJASkfjQjW1jy0pGt6lr+ml
	MjAgpwND1hPznp/TsmS4pNTXt6M4tx1VNZ5bVw0TzkhPaOBYyIJn9rWU7Asry0Br
	YhFa6C1ULZNjj7ggb55L3dxkZWOr1SbkSofGL3prtxOEDovY0YZhY/inmv5xR4sY
	kaB4XJ43hsIItLMJFecsrvTdaHTinzlcTwU99F+og6b3kCvBUFVQ8mE9FTdCthEX
	qTiwB3hwIlwOI9SV82kykI2imRUHGC2ygDthDefn4EOE+4tcm/KShL6+ERb4/dzu
	WZRV+aui9uDRWByTsMgxraw5MQZk0CVweGBoOrGIdD0ngbpiY57TWi/91MQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twftn2du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:05 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-af8c34d03a1so321251a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:34:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744248844; x=1744853644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wi4lXP9W3EGbwQoH1fNQoNj4KY8C57elQ6SQxXyrbGE=;
        b=Yapd5j4TDsUsQD77pQUxCOwHFkmYFgDhaA59RLLQ7kcfDZbFKQ4NU6133mqyDI53x1
         KeE8YOK0jJuijqVihvm4py2JXFZQ+RDLqaN4TlTz/8a2JBYSaVIwUEWlAstkNB8oJdsx
         vL9ZGnVk+13JQRSZSd4lEGh/ClyK75S6zd1omKFC0CrVWfYpZdFl7ZeeqU68q63MirEz
         uF5ITHUs95OUIj7jTsLCsIZfMXxHk4IbDdS5BW3etiYA79aExJRJiN/zBCUdEWh+x6pZ
         hFvwA3vHuUEd6iDRu+e46vZp5B3vHwXeBZvfMNzBGLGBzCWuVqm60IJwF6SZgaKhJgux
         BDoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2YuxCvcUzhti+Awg/qv91SetTaFsD1r7MXrgkP+x52E86PSJwPY5/SyYBSFPXdLV0wP+zwck8Z9IR@vger.kernel.org
X-Gm-Message-State: AOJu0Yym6XB8AjpSZI8K57aQfjzFGisUtY8WsPUvYgmK3xur9S5VIi47
	od3ETvD9zS+YM3BNss7+jUfrcFz0uFcn3jIp+iDrLA4pMmb5dvt0dV0WSu5IEJT4/2/gPb5gZuH
	znJumcSxwqfo/vndPF39ll0bkgBUJnsIy4WFvZKjTmyeH00EFelIMegAkGl5R
X-Gm-Gg: ASbGncu8Fr5pOYKedxCJQZRLfldBNxlrZ/mh4/TDa2KLKjuCiU6KxVW1jmI7moRPkaH
	XjZnbe3kZR2Oj/NIOJcth0AEs7TncJtVxIHhnFxhYAH7sSWKBrvOyTPSdpDMgaYmI6mtUgAicOx
	msJs+x27F1pOqtAIKeViM9YK2xSwKfnFZW9XRu6E7Jdd24ZqNdxx6uJ/irAjEOGUwYrZNoNTwNl
	f56qBdHZ3UNWEFpZ4bwOVrSfb4j/MuApajgfjDfuh1vAMe20dpnIk7G6PdCafKTRN7d0JzydS+a
	tb0cA2qMEPNTxJnubFbM+Fugk93FEbkgFk7ND3D4qpnBkNEzZYOFE4+swkrRyMMrpyTrPBk=
X-Received: by 2002:a17:902:f681:b0:223:6180:1bf7 with SMTP id d9443c01a7336-22b42c43a5bmr12196885ad.42.1744248844079;
        Wed, 09 Apr 2025 18:34:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM5MLSaC5h0z0Nma92y/73HYdOvdIe7fjt5Tz++qKzvrLB+EeEnAMPV6E6WyIx8TKR//F42g==
X-Received: by 2002:a17:902:f681:b0:223:6180:1bf7 with SMTP id d9443c01a7336-22b42c43a5bmr12196485ad.42.1744248843598;
        Wed, 09 Apr 2025 18:34:03 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb596sm18801815ad.220.2025.04.09.18.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 18:34:02 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 4/5] coresight: tmc: add functions for byte-cntr operation
Date: Thu, 10 Apr 2025 09:33:29 +0800
Message-Id: <20250410013330.3609482-5-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
References: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=B5+50PtM c=1 sm=1 tr=0 ts=67f7200d cx=c_pps a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=vnqp29LrZxOKxJPgRI8A:9 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: N12K0UGv8E0Ggp7rePbSRkTCokKFJhFW
X-Proofpoint-ORIG-GUID: N12K0UGv8E0Ggp7rePbSRkTCokKFJhFW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100010

The byte-cntr function only copy trace data from etr_buf based on the
IRQ count number. The system will call byte-cntr realted functions when
the BYTECNTRVAL register has configured.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  |  29 ++++-
 .../hwtracing/coresight/coresight-tmc-etr.c   | 113 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |   8 +-
 3 files changed, 146 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index a7814e8e657b..42707b5b6349 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -229,6 +229,7 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
 	int ret = 0;
 
 	switch (drvdata->config_type) {
@@ -237,7 +238,10 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 		ret = tmc_read_prepare_etb(drvdata);
 		break;
 	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_prepare_etr(drvdata);
+		if (byte_cntr_data && byte_cntr_data->thresh_val)
+			ret = tmc_read_byte_cntr_prepare(drvdata);
+		else
+			ret = tmc_read_prepare_etr(drvdata);
 		break;
 	default:
 		ret = -EINVAL;
@@ -251,6 +255,7 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
 	int ret = 0;
 
 	switch (drvdata->config_type) {
@@ -259,7 +264,10 @@ static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 		ret = tmc_read_unprepare_etb(drvdata);
 		break;
 	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_unprepare_etr(drvdata);
+		if (byte_cntr_data && byte_cntr_data->thresh_val)
+			ret = tmc_read_byte_cntr_unprepare(drvdata);
+		else
+			ret = tmc_read_unprepare_etr(drvdata);
 		break;
 	default:
 		ret = -EINVAL;
@@ -290,11 +298,16 @@ static int tmc_open(struct inode *inode, struct file *file)
 static inline ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata,
 					  loff_t pos, size_t len, char **bufpp)
 {
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+
 	switch (drvdata->config_type) {
 	case TMC_CONFIG_TYPE_ETB:
 	case TMC_CONFIG_TYPE_ETF:
 		return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
 	case TMC_CONFIG_TYPE_ETR:
+		if (byte_cntr_data && byte_cntr_data->thresh_val)
+			return tmc_byte_cntr_get_data(drvdata, &len, bufpp);
+
 		return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
 	}
 
@@ -308,6 +321,8 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 	ssize_t actual;
 	struct tmc_drvdata *drvdata = container_of(file->private_data,
 						   struct tmc_drvdata, miscdev);
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+
 	actual = tmc_get_sysfs_trace(drvdata, *ppos, len, &bufp);
 	if (actual <= 0)
 		return 0;
@@ -318,7 +333,15 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return -EFAULT;
 	}
 
-	*ppos += actual;
+	if (byte_cntr_data && byte_cntr_data->thresh_val) {
+		byte_cntr_data->total_size += actual;
+		if (byte_cntr_data->r_offset + actual >= drvdata->size)
+			byte_cntr_data->r_offset = 0;
+		else
+			byte_cntr_data->r_offset += actual;
+	} else
+		*ppos += actual;
+
 	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index ed8a89fcd3fc..dd9c6b541b60 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -18,6 +18,7 @@
 #include "coresight-etm-perf.h"
 #include "coresight-priv.h"
 #include "coresight-tmc.h"
+#include "coresight-ctcu.h"
 
 struct etr_flat_buf {
 	struct device	*dev;
@@ -1148,6 +1149,77 @@ static int tmc_etr_enable_hw(struct tmc_drvdata *drvdata,
 	return rc;
 }
 
+/* Read the data from ETR's DDR buffer. */
+static ssize_t __tmc_byte_cntr_get_data(struct tmc_drvdata *drvdata, size_t *len,
+					char **bufpp)
+{
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+	size_t actual, bytes = byte_cntr_data->thresh_val;
+	struct etr_buf *etr_buf = drvdata->sysfs_buf;
+	long r_offset = byte_cntr_data->r_offset;
+
+	if (*len >= bytes)
+		*len = bytes;
+	else if ((r_offset % bytes) + *len > bytes)
+		*len = bytes - (r_offset % bytes);
+
+	actual = tmc_etr_buf_get_data(etr_buf, r_offset, *len, bufpp);
+	if (actual == bytes || (actual + r_offset) % bytes == 0)
+		atomic_dec(&byte_cntr_data->irq_cnt);
+
+	return actual;
+}
+
+/* Flush the remaining data in the ETR buffer after the byte-cntr has stopped. */
+static ssize_t tmc_byte_cntr_flush_buffer(struct tmc_drvdata *drvdata, size_t len,
+					  char **bufpp)
+{
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+	struct etr_buf *etr_buf = drvdata->sysfs_buf;
+	long r_offset = byte_cntr_data->r_offset;
+	long w_offset = byte_cntr_data->w_offset;
+	ssize_t read_len = 0, remaining_len;
+
+	if (w_offset < r_offset)
+		remaining_len = drvdata->size + w_offset - r_offset;
+	else
+		remaining_len = w_offset - r_offset;
+
+	if (remaining_len > len)
+		remaining_len = len;
+
+	if (remaining_len > 0)
+		read_len = tmc_etr_buf_get_data(etr_buf, r_offset, remaining_len, bufpp);
+
+	return read_len;
+}
+
+ssize_t tmc_byte_cntr_get_data(struct tmc_drvdata *drvdata, size_t *len, char **bufpp)
+{
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+	ssize_t read_len;
+
+	/*
+	 * Flush the remaining data in the ETR buffer based on the write
+	 * offset of the ETR buffer when the byte cntr function has stopped.
+	 */
+	if (!byte_cntr_data->read_active || !byte_cntr_data->enable) {
+		read_len = tmc_byte_cntr_flush_buffer(drvdata, *len, bufpp);
+		if (read_len > 0)
+			return read_len;
+
+		return -EINVAL;
+	}
+
+	if (!atomic_read(&byte_cntr_data->irq_cnt))
+		if (wait_event_interruptible(byte_cntr_data->wq,
+					     atomic_read(&byte_cntr_data->irq_cnt) > 0 ||
+					     !byte_cntr_data->enable))
+			return -ERESTARTSYS;
+
+	return __tmc_byte_cntr_get_data(drvdata, len, bufpp);
+}
+
 /*
  * Return the available trace data in the buffer (starts at etr_buf->offset,
  * limited by etr_buf->len) from @pos, with a maximum limit of @len,
@@ -1963,6 +2035,32 @@ const struct coresight_ops tmc_etr_cs_ops = {
 	.panic_ops	= &tmc_etr_sync_ops,
 };
 
+int tmc_read_byte_cntr_prepare(struct tmc_drvdata *drvdata)
+{
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+	long r_offset;
+
+	if (byte_cntr_data->read_active)
+		return -EBUSY;
+
+	/*
+	 * The original r_offset is the w_offset of the ETR buffer at the
+	 * start of the byte-cntr.
+	 */
+	r_offset = tmc_etr_get_rwp_offset(drvdata);
+	if (r_offset < 0) {
+		dev_err(&drvdata->csdev->dev, "failed to get r_offset\n");
+		return r_offset;
+	}
+
+	enable_irq_wake(byte_cntr_data->byte_cntr_irq);
+	byte_cntr_data->r_offset = r_offset;
+	byte_cntr_data->total_size = 0;
+	byte_cntr_data->read_active = true;
+
+	return 0;
+}
+
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
@@ -1999,6 +2097,21 @@ int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 	return ret;
 }
 
+int tmc_read_byte_cntr_unprepare(struct tmc_drvdata *drvdata)
+{
+	struct ctcu_byte_cntr *byte_cntr_data = drvdata->byte_cntr_data;
+	struct device *dev = &drvdata->csdev->dev;
+
+	disable_irq_wake(byte_cntr_data->byte_cntr_irq);
+	atomic_set(&byte_cntr_data->irq_cnt, 0);
+	byte_cntr_data->read_active = false;
+	dev_dbg(dev, "send data total size: %llu bytes, r_offset: %ld w_offset: %ld\n",
+		byte_cntr_data->total_size, byte_cntr_data->r_offset,
+		byte_cntr_data->w_offset);
+
+	return 0;
+}
+
 int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata)
 {
 	unsigned long flags;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 015592863352..1b838e4fc9e8 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -14,6 +14,8 @@
 #include <linux/refcount.h>
 #include <linux/crc32.h>
 
+#include "coresight-ctcu.h"
+
 #define TMC_RSZ			0x004
 #define TMC_STS			0x00c
 #define TMC_RRD			0x010
@@ -334,11 +336,15 @@ ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
 /* ETR functions */
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
 int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata);
+int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
+int tmc_read_byte_cntr_prepare(struct tmc_drvdata *drvdata);
+int tmc_read_byte_cntr_unprepare(struct tmc_drvdata *drvdata);
 void tmc_etr_disable_hw(struct tmc_drvdata *drvdata);
 extern const struct coresight_ops tmc_etr_cs_ops;
 ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
 				loff_t pos, size_t len, char **bufpp);
-
+ssize_t tmc_byte_cntr_get_data(struct tmc_drvdata *drvdata, size_t *len,
+			       char **bufpp);
 
 #define TMC_REG_PAIR(name, lo_off, hi_off)				\
 static inline u64							\
-- 
2.34.1


