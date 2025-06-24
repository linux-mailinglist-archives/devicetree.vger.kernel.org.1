Return-Path: <devicetree+bounces-188833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD45AE5C7D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E47227B2617
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B5624293F;
	Tue, 24 Jun 2025 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ejweXddL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D0122FF37
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745123; cv=none; b=HNLdCZDFz0FpEmJpVm8oU8lLdpKkOmcOlJgaWuJ7SsQhFUi/+34Fo6NovFkb8P0lzrfzo86I3cv5zB/zu/SvmzJbI3N6MPLe7gpXMXQMUUje9KG1bLvRMAMnMnhBWCw3p1h+S7VGg8Ham6LawMApjSWTlmLPSrPPj9Az6s60QZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745123; c=relaxed/simple;
	bh=gbGSvUxtrQfj4wK9v01MzbTUWNeRHpvRuORydIUDJO8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pmONDg5pGRwRymBHJds6AMLo54d/Zkad6R9ZeoWQyuznhUC97LQ0qzdP7TQBTF+na2PhPooMLaXt5e3btJfSB1NDUkoLSF0/ChWD04W03nl584EPr7EKo2Kn5jtuxtD3+ulZaBlJetjU9o5WaNg/6d+8WaweC/plhDVk88s1Fbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ejweXddL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NK5t0q027443
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ViTNhJOtGjt
	6lfMBtp1FlF2uEsyGJpyKBN1SPAXTMJ4=; b=ejweXddLN4cdGC90vxtxRWcRdLx
	RMM4f7qzZoQeV/H0MekdTNVpiYLf5SGw91kKougV3ZclEhoJ/gBJd8a8MssJINSN
	XbnSn8Xb+eR7OmOa4JHrv8hcoZfxKo+CqkAKYc/v2IPe4FutOPFHkjtQn/fbptUT
	1GhyjgUf830Bsyvelj+dw3K5/z+fe8M7VI2drwGZS928OdUbeZZWSvvaoGVu+lAG
	H2Q4yvvKWtbaLvt9YwdsO9Wot6yTOED0mZUpS5nopIFpwpcWj+a/AoSJWj5niwsK
	1f24fhNecJ6FIOUdMLF0/jRoXlOeIpMOhb968JBO9owi1cIWXwDYlrLq6Vw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4mabe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235089528a0so38743525ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745116; x=1751349916;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ViTNhJOtGjt6lfMBtp1FlF2uEsyGJpyKBN1SPAXTMJ4=;
        b=C7K8ctIZ2dWCNmxRUfDnMvbm0CNIQCOqsyxQ5qnUL2QeLheiMIDAhdoI0uYQhpxF6n
         JM0hAK0Xbucir1xsTIzc3eXhpCm9ov4in7ILVQsmHMZ8e5IO6+oCsz/+DBfsXi/RxukO
         KFVWtF8/q4pH7RjpbmU3LO8VDszZvzx6qeIoAD/o/VgD2uV1jxteNCG7WcfSFLXkFMXS
         Mi2zxMOzarFmIcFhn0ugEn74CFopuVK5g++T8q5xIoIDgZ7SeNhorLMMWmsICnDSID0f
         wQCx9yMobwTSzk9lCO/WErU+SBjM54jvobxuRm3AHPryAJw6gVwSLmhpTPIR4EiNFuQz
         u0UA==
X-Forwarded-Encrypted: i=1; AJvYcCVo7NPAPr4fPcyVCoacCt3aGHC4X8ADI6Z4j1RinlZoNzbYAbb6+dK8UyYeyjkt5ircD7BfUDoTqnK8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3d4StofcEXpAV6Qq51aCnH7SyjgpPhC7MpMVRUQxlEeno/kxD
	aqA1Lo6XB6k++p3jtqVh6/W8PdF8Cmu4Sgw0LyFjG9eziTRQV2EqH8eUvGxRusx/2eFmqtuyZ1k
	++BcVbKiiC0nUwKW8PNDc2AkTXqDp5Jp9lOlz1mvY5ILNbxbJvh6Ggj8rPEcSD4g8
X-Gm-Gg: ASbGnctRrRwMGLF877IxhmP9Vtr0g4dsxbhNKJ1s22BABdtCmQ+fT4eqEl+YoO9VfE5
	PAZBwIKltUmAGhOsI6QsqmYJSwLUaT/avFET5qTKbpM0sJI3ClPkemCMifora/VojWfX+kG4wnq
	NIPYZyA5ks46FP6c3dCBx8gKrVpRRhCZn6OO0wahjw8siza6Ww1Xef1zNkh/l2HTtGIFswm3hKH
	T0taHIAX87Nu1UbKXVFlDsps1P2+y9cyUou5MedG0DWVJTJKr3ouvFm3IGviqShIlWyrlvhOBWJ
	0yvJzTKgJDCaMAX9SUGxJi1zlbRCuLA9RBKGgYclIIZ9tR1lkon7jxtMymPu0561L8nrESVBDAm
	Csg==
X-Received: by 2002:a17:902:da8d:b0:231:e413:986c with SMTP id d9443c01a7336-2380245eabbmr32408695ad.11.1750745115988;
        Mon, 23 Jun 2025 23:05:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqWPFCk1vGIK6OC6QmCXLMh+OHz10tmlUnDaYKRcbgjljEq4H6EvG36i6gTOPY5fL0FezOsw==
X-Received: by 2002:a17:902:da8d:b0:231:e413:986c with SMTP id d9443c01a7336-2380245eabbmr32408275ad.11.1750745115520;
        Mon, 23 Jun 2025 23:05:15 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:05:14 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v3 07/10] coresight: tmc: add prepare/unprepare functions for byte-cntr
Date: Tue, 24 Jun 2025 14:04:35 +0800
Message-Id: <20250624060438.7469-8-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
References: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685a4020 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=xC7plfDI9GgKYcT3xssA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: HbK7ji86QGQsYQV1VFYlV9kEumfKx1sz
X-Proofpoint-ORIG-GUID: HbK7ji86QGQsYQV1VFYlV9kEumfKx1sz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MSBTYWx0ZWRfXwWOWH/nAVc+N
 IbWZl6XleteGX0Drpt/OHz3Vc8SN8PQwy8K5PBUekO0zZn6EMVOVbHwyDspu8g7gH4ytvzoJgEH
 OSIx9VsZrr6tvFdS2OtzIaI0iFrBo5IN1/PpTGLtbUSRsaXGKFNhObBQHtCRzE1LTmujhD0ueFL
 7cpYGDGnc/ji6/epo5Tk9t0BzjU7AAIP8ab4M1rqztqEiXBB4rt3rn3qhbSN/v+pyjdA/asXfnJ
 9R48P89ao49TM2hQQ6J6s0IUfzNWUZBg+Ts+h04k7VUWKq5IEdK6HmJZos7qmVtvWY7gASbKw86
 fqZWD7Z8XgOcEvUCLaUTreZDByqD74BaSojSAXnKolAsAMQQVo7h8ciDvbyPC1+h9UajDnjRnzw
 UlGM9gF1mLtvx+WRHjDO7BimNTORGvuofMGS+yARI676ys0PXD1MBBG1658ZLcoBHbdQFw2/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=773
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240051

Prepare for byte-cntr reading. An additional sysfs_buf is required to
receive trace data, as byte-cntr always reads from the deactivated
and filled sysfs_buf.

The unprepare function releases the additional deactivated sysfs_buf
allocated during the prepare phase.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  | 38 ++++++++-
 .../hwtracing/coresight/coresight-tmc-etr.c   | 79 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  8 ++
 3 files changed, 121 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 8531bac79211..40605310240d 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -229,7 +229,11 @@ static int tmc_prepare_crashdata(struct tmc_drvdata *drvdata)
 
 static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 {
-	int ret = 0;
+	struct coresight_device *helper = coresight_get_helper(drvdata->csdev,
+						CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	struct ctcu_byte_cntr *byte_cntr_data = NULL;
+	struct ctcu_drvdata *ctcu_drvdata = NULL;
+	int port, ret = 0;
 
 	switch (drvdata->config_type) {
 	case TMC_CONFIG_TYPE_ETB:
@@ -237,7 +241,18 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 		ret = tmc_read_prepare_etb(drvdata);
 		break;
 	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_prepare_etr(drvdata);
+		if (helper) {
+			port = coresight_get_port_helper(drvdata->csdev, helper);
+			if (port >= 0) {
+				ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
+				byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
+			}
+		}
+
+		if (byte_cntr_data && byte_cntr_data->thresh_val)
+			ret = tmc_read_prepare_byte_cntr(drvdata, byte_cntr_data);
+		else
+			ret = tmc_read_prepare_etr(drvdata);
 		break;
 	default:
 		ret = -EINVAL;
@@ -251,7 +266,11 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 
 static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 {
-	int ret = 0;
+	struct coresight_device *helper = coresight_get_helper(drvdata->csdev,
+						CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
+	struct ctcu_byte_cntr *byte_cntr_data = NULL;
+	struct ctcu_drvdata *ctcu_drvdata = NULL;
+	int port, ret = 0;
 
 	switch (drvdata->config_type) {
 	case TMC_CONFIG_TYPE_ETB:
@@ -259,7 +278,18 @@ static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 		ret = tmc_read_unprepare_etb(drvdata);
 		break;
 	case TMC_CONFIG_TYPE_ETR:
-		ret = tmc_read_unprepare_etr(drvdata);
+		if (helper) {
+			port = coresight_get_port_helper(drvdata->csdev, helper);
+			if (port >= 0) {
+				ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
+				byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
+			}
+		}
+
+		if (byte_cntr_data && byte_cntr_data->thresh_val)
+			ret = tmc_read_unprepare_byte_cntr(drvdata, byte_cntr_data);
+		else
+			ret = tmc_read_unprepare_etr(drvdata);
 		break;
 	default:
 		ret = -EINVAL;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 4609df80ae38..2b73bd8074bb 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -2032,6 +2032,85 @@ int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
+int tmc_read_prepare_byte_cntr(struct tmc_drvdata *drvdata,
+			       struct ctcu_byte_cntr *byte_cntr_data)
+{
+	unsigned long flags;
+	int ret = 0;
+
+	/* config types are set a boot time and never change */
+	if (WARN_ON_ONCE(drvdata->config_type != TMC_CONFIG_TYPE_ETR))
+		return -EINVAL;
+
+	if (coresight_get_mode(drvdata->csdev) != CS_MODE_SYSFS)
+		return -EINVAL;
+
+	/*
+	 * The threshold value must not exceed the buffer size.
+	 * A margin should be maintained between the two values to account
+	 * for the time gap between the interrupt and buffer switching.
+	 */
+	if (byte_cntr_data->thresh_val + SZ_16K >= drvdata->size) {
+		dev_err(&drvdata->csdev->dev, "The threshold value is too large\n");
+		return -EINVAL;
+	}
+
+	raw_spin_lock_irqsave(&drvdata->spinlock, flags);
+	if (byte_cntr_data->reading) {
+		ret = -EBUSY;
+		goto out_unlock;
+	}
+
+	byte_cntr_data->reading = true;
+	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
+	/* Insert current sysfs_buf into the list */
+	ret = tmc_create_etr_buf_node(drvdata, drvdata->sysfs_buf);
+	if (!ret) {
+		/*
+		 * Add one more sysfs_buf for byte-cntr function, byte-cntr always reads
+		 * the data from the buffer which has been synced. Switch the buffer when
+		 * the used buffer is nearly full. The used buffer will be synced and made
+		 * available for reading before switch.
+		 */
+		ret = tmc_create_etr_buf_node(drvdata, NULL);
+		if (ret) {
+			dev_err(&drvdata->csdev->dev, "Failed to create etr_buf_node\n");
+			tmc_delete_etr_buf_node(drvdata);
+			byte_cntr_data->reading = false;
+			goto out;
+		}
+	}
+
+	raw_spin_lock_irqsave(&drvdata->spinlock, flags);
+	atomic_set(&byte_cntr_data->irq_cnt, 0);
+	enable_irq(byte_cntr_data->byte_cntr_irq);
+	enable_irq_wake(byte_cntr_data->byte_cntr_irq);
+	byte_cntr_data->total_size = 0;
+	byte_cntr_data->irq_num = 0;
+
+out_unlock:
+	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
+
+out:
+	return ret;
+}
+
+int tmc_read_unprepare_byte_cntr(struct tmc_drvdata *drvdata,
+				 struct ctcu_byte_cntr *byte_cntr_data)
+{
+	struct device *dev = &drvdata->csdev->dev;
+
+	guard(raw_spinlock_irqsave)(&byte_cntr_data->spin_lock);
+	disable_irq_wake(byte_cntr_data->byte_cntr_irq);
+	disable_irq(byte_cntr_data->byte_cntr_irq);
+	byte_cntr_data->reading = false;
+	tmc_delete_etr_buf_node(drvdata);
+	dev_dbg(dev, "send data total size:%llu bytes, irq_cnt:%d\n",
+		byte_cntr_data->total_size, byte_cntr_data->irq_num);
+
+	return 0;
+}
+
 static const char *const buf_modes_str[] = {
 	[ETR_MODE_FLAT]		= "flat",
 	[ETR_MODE_ETR_SG]	= "tmc-sg",
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index f6b05639aeca..f95df0a34ad6 100644
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
@@ -357,6 +359,12 @@ extern const struct coresight_ops tmc_etr_cs_ops;
 ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
 				loff_t pos, size_t len, char **bufpp);
 
+/* Byte-cntr functions */
+int tmc_read_prepare_byte_cntr(struct tmc_drvdata *drvdata,
+			       struct ctcu_byte_cntr *byte_cntr_data);
+int tmc_read_unprepare_byte_cntr(struct tmc_drvdata *drvdata,
+				 struct ctcu_byte_cntr *byte_cntr_data);
+
 
 #define TMC_REG_PAIR(name, lo_off, hi_off)				\
 static inline u64							\
-- 
2.34.1


