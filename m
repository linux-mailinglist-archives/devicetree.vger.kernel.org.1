Return-Path: <devicetree+bounces-249430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBC0CDBC32
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4394830B2B64
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267E9330318;
	Wed, 24 Dec 2025 09:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xc3zRpH8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g0sb08ch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F04280033
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567259; cv=none; b=IjweCf0F9eLWQLNSY8gHHcUliKj/mWvWlbSRmm14mCDSUXC7LEJkfPbjecdxgNOyFaj8c0Z4XIQ8DZatJGGWsYCkDgpfZ5q1Xv/JdMsfHL7rjpWBduvUSuTmBadvE86v/rxNb6Kj4vs64RvSbNz1MdGR7Tj++qrpl7UUF9OREkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567259; c=relaxed/simple;
	bh=Oy7z+jq/TjNetJ2Zgz+w8FIQKCJz069QL66/p8AMAm8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=obCVjlS26M5yF+6syouDKwd8xIm0TAsJlFVvLCT/F1bffFYKmt4LSp0r4IHq+LZ6GsP1WPCioJj4LEwV4c78HtlsBV5S5l/DBdX/rU22Nsq7SpfOEOb1Di1w1g6P2SOtw5umqDNrUaeZ5U2BKGeuLbHuSFxAQkViFi9a5pMFHDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xc3zRpH8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g0sb08ch; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO91KC3700446
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=; b=Xc3zRpH8LgHJ/XHO
	XQ6wcSyKWOHzllg2/iBJ4sR5z6j10AvQc1VrWD7co8MuLS470yXRfYOJbPEURAig
	vHGn7wabZ6XwZky8aBUY1xO++ZULXeazWZnNF1cu1O6ASXcKHeSCS/JfL11m8JgI
	VwMHgFasds2JQgfOa6eKNSNzZ37DcZrEjxPqnVizD5xFKb4h9NKFXupTv+t920tP
	zLYE+h8MTcXTKE001iO0NXO68TNGa9h/GYtG883Sc4JakZkIQA9TERtrKMOivJtx
	+EAn5njYZjZWcCQVUYiVjTtPCEltZ1YBcNa/Qr+fdlL+jPB0/yB07Se99DE8iDiQ
	441LvQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7ju8bv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:35 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f8e6a5de4so79708365ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766567255; x=1767172055; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=;
        b=g0sb08chdF6JaWNBsvUk3ysD9Zl/kM8i/K4JvrFqpJZbVScpjIYwBbYkdCbfrwAlJ8
         rn2jhnds/N+jZa4bnDZP0TQ2uWPJkci/abqahNIQBcqZ5sNbPJvh1rZxvwqXUOGDkdv8
         1eI6emAlbEUObHP2TtHsxGpzYgLQDU9q3baQ/qQSIRtiTSce0dgQUFFZTnRlhtMKQT+Z
         tdggcj6fAg0+fWz968OwAVhIcPIrdJAdnsPzhY75GXRF05lNpghVBKIWYqWIygqPfjK7
         C2DEHgJoTx/ZQOJmAO57Vl5iYxB6ng7MT9ubXoWVL/GFsmlIOaZro/0JNj6sl5AgUoaL
         eTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766567255; x=1767172055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vt0RRfM8pFKfBxD6jKeqJVSWMlwtbL7pwYs+oCiP02U=;
        b=psgHz7yX7b1upu2Mu6acCnebLzf/SL7H/2WGyR+doVycZ0Odlecr1WsuX9ZvlGmqaQ
         xnBZG6dVZooi2HfAhP16cz627X/TmHyKnXmcXhd8EiPwScOCYLFDaI5yB6mgkCrcwlBE
         Bj2FbJ32l1wL9fgjXq1pMuZglzfmYpnX58OmBZ5Jnywk+Ej0MhlB7PPQW7TthCQ87Dtt
         MUOew5OfSPJVjyZsqqKW3cwjaQ14Zvqm2s89LNNVtUUlWX1NAnTOHB9xGD54q6BetKhs
         59kUGw79z/QIvTDwJgYgx0w9B1/HsVjvsHwLEQqLcM9naAj1vUCAeXqV/dLXPKLeXINd
         wTAA==
X-Forwarded-Encrypted: i=1; AJvYcCVGgYDePduHllZuwO5EeQquSfSrnADcYKou+JwiOtxDvShyzTITf4NFeGsMjqSOba+Amzp/baW1lgup@vger.kernel.org
X-Gm-Message-State: AOJu0YyPbJ3R7T6UOik8Ww32JxFE8nFrbBec5vFJxXTQp+C6S/BQqk1V
	wFwdIcp+GjfVtF7VpJdpbfbdNf+AJAjDTxhYLrhpfRxNdB8TCF5v0/yNLbWOBOkXaEmMwCa4OF3
	5LfxsZoqgCneJdtoBt8mz7M+IRkLRWZFJ1o3ofe6AXIWi2cqroCnp/Dg/n8zdPyEY
X-Gm-Gg: AY/fxX7Dn92fRFnOf/KqTYt2Mt6HrVmP32h8JbcDKv6oTGDnj1bgEe0VlBGimufGvdm
	z8px34k4nnuVdIVPT3nPpNOtjH9yUzJ+jz4XKNHBKt+GGAX9O6ceChkZ0OGLRBwrNCIv4CRT1C+
	qdB3S6H1JBmH6Clg0xG4e7SgT9LMupvxCJnuHc1U3F0lkIBKDvSESgktMt+Iqv7JlynuJ+6xruy
	FfHCajCi/ghak+Hro0aODsQcQbi7d1JpSQ7fwH9FFnLGNy4/8yxCaqE1kuSIGQMoIw9rEfwIEQv
	TLUIH6Fv9+DTaUForS5vVvICeciTgbNdcU0Ru9knQrN4SUXsyocvLwPLrN29z48taIP5LFRrjAG
	p6JlWHZJ0unf4xMErDQSYuv9VQxK1fgOeXBuI4u+Xk+TIRzwRcNz6PLaqc34fY45//elCeUPi
X-Received: by 2002:a17:903:249:b0:2a0:fb1c:143d with SMTP id d9443c01a7336-2a2f220d70bmr166139365ad.1.1766567254854;
        Wed, 24 Dec 2025 01:07:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtlDjLrg85QpNs/nDXqL9KQlAfHLs/TEb14kZhD7bfB8JqUkFh5EDf0SN5JVIgyqLXbuFdZw==
X-Received: by 2002:a17:903:249:b0:2a0:fb1c:143d with SMTP id d9443c01a7336-2a2f220d70bmr166139015ad.1.1766567254297;
        Wed, 24 Dec 2025 01:07:34 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm148418095ad.21.2025.12.24.01.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:07:34 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 17:06:17 +0800
Subject: [PATCH v9 7/8] coresight: tmc: integrate byte-cntr's read_ops with
 sysfs file_ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-enable-byte-cntr-for-ctcu-v9-7-886c4496fed4@oss.qualcomm.com>
References: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
In-Reply-To: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766567216; l=3605;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=Oy7z+jq/TjNetJ2Zgz+w8FIQKCJz069QL66/p8AMAm8=;
 b=uSaM/v/6IGPwFdUgM27elSIz+7592+G9joqAqMykPDiujN0xGFIL3I8ImHLoA3zeBynz6jEHP
 S7phaA0hB1fDJ0se5c+j5hyfyFqHefa53uPF5zL3nq8KKJlDnROnRz8
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3OCBTYWx0ZWRfX8IfJl7PeSCbG
 vMU/1+/W2quAVnQpIITS2vKp5Pk8MecSSvdMltpG41qnZt9mOD7VRz9yyNHr2aj+m7/eW99ERNS
 +z0X/hlDP2IbqSecBPyrDOqlIq1up6UxpsJiI9CDgt+VE+/AZxHECOkwayWck3tscTbYikiqNCa
 EqQqv0TmpNl2T4YzA0s6PsKcyu/C541WyOKljmsoar779oH/SK+t4b2T4K5ARI7poc7YhGiptHR
 E0O7R2Vlcee8VbVhlyvjn9c0Emhh9H1WxZNVM1BMcte7AuYnogNA0nQO46wObWPvKcpQp5oH+ed
 INHsOp9r6ceKGNNQgoFFRfadPPguXR+iUQyhOc+COlxSoC5cOqc5cb37Vt+LevHgRHwzsxXxtfm
 Tot67ec6mLfWsfbT8zbt0v+Ru2YetIhSLTPdKXWxCLT2rVG/ZKhk/8GpSkuzXfPvVgOaz8NI3SN
 9FkUahU5oAJzI1vR8ng==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694bad57 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i2GxayCjj04of9N-vEoA:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: ZcjRjxzKjIxy48keqSc4MUSDVbrWfvRw
X-Proofpoint-ORIG-GUID: ZcjRjxzKjIxy48keqSc4MUSDVbrWfvRw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240078

Add code logic to invoke byte-cntr's sysfs_read_ops if the byte-cntr
is enabled.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 53 +++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 8b0397a77e57..5e74f33f6a23 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -31,6 +31,7 @@
 
 #include "coresight-priv.h"
 #include "coresight-tmc.h"
+#include "coresight-ctcu.h"
 
 DEFINE_CORESIGHT_DEVLIST(etb_devs, "tmc_etb");
 DEFINE_CORESIGHT_DEVLIST(etf_devs, "tmc_etf");
@@ -228,15 +229,47 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
+/* Return the byte-cntr's sysfs_read_ops if in use */
+static const struct sysfs_read_ops *tmc_get_byte_cntr_sysfs_ops(struct tmc_drvdata *drvdata)
+{
+	struct ctcu_byte_cntr *byte_cntr_data;
+	struct ctcu_drvdata *ctcu_drvdata;
+	struct coresight_device *helper;
+	int port;
+
+	helper = tmc_etr_get_helper_device(drvdata, CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	if (!helper)
+		return NULL;
+
+	port = coresight_get_in_port(drvdata->csdev, helper);
+	if (port < 0)
+		return NULL;
+
+	ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
+	byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
+	if (byte_cntr_data && byte_cntr_data->thresh_val)
+		return ctcu_drvdata->byte_cntr_sysfs_read_ops;
+
+	return NULL;
+}
+
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops) {
+		ret = byte_cntr_sysfs_read_ops->read_prepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_prepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
 
@@ -245,13 +278,21 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
 	int ret = 0;
 
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops) {
+		ret = byte_cntr_sysfs_read_ops->read_unprepare(drvdata);
+		goto out;
+	}
+
 	if (drvdata->sysfs_ops)
 		ret = drvdata->sysfs_ops->read_unprepare(drvdata);
 	else
 		ret = -EINVAL;
 
+out:
 	if (!ret)
 		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
 
@@ -277,6 +318,12 @@ static int tmc_open(struct inode *inode, struct file *file)
 static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, loff_t pos, size_t len,
 				   char **bufpp)
 {
+	const struct sysfs_read_ops *byte_cntr_sysfs_read_ops;
+
+	byte_cntr_sysfs_read_ops = tmc_get_byte_cntr_sysfs_ops(drvdata);
+	if (byte_cntr_sysfs_read_ops)
+		return byte_cntr_sysfs_read_ops->get_trace_data(drvdata, pos, len, bufpp);
+
 	if (drvdata->sysfs_ops)
 		return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, bufpp);
 
@@ -300,7 +347,11 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return -EFAULT;
 	}
 
-	*ppos += actual;
+	if (drvdata->reading_node)
+		drvdata->reading_node->pos += actual;
+	else
+		*ppos += actual;
+
 	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;

-- 
2.34.1


