Return-Path: <devicetree+bounces-245745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1688BCB4D8E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:13:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 487EC30358D0
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B4B2882DB;
	Thu, 11 Dec 2025 06:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KurbiStB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gEQeU9yA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BEA22A4CC
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433514; cv=none; b=I2DwwAJmwf3qj9Iib8NVL6lkJy2cYD+80wmxNM0g/dgTRIOEPGy+31Q5P1T9AifxLV1AJOM5cvezcu7va1kkXBQC24Sk3+Sf02OssKLk2zatSfybMeHYwqFuwN7iVik0wMLh4JsPiLQTkVm0hYOu4EUiv+q2JcjFaxOSCTG4cTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433514; c=relaxed/simple;
	bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FmS92hTpelZ5f3gXGceHlVCTCQMCWuy0w0BCHmP0u8dzzt7WMNOiYum1VBuzNGpaJ94YjyO41UaN3NxlSq05fTmgVIdDLYoU+2KXamLpLNRiF/EmOIkNxLBCWjIx2DaoQ7vpOihnPK1/5UOk3iMWPs30R34HrJAAcgR75XXDWeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KurbiStB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gEQeU9yA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALRR533701309
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=; b=KurbiStBBVL8b/jP
	OukJyoI+qoID3RDab0vbpy1BDR815qU2UERO7MBo8ddJwMgQLKJ3eiufYlmgQ6/B
	4mzTKSQdfLBRkPE4klWvtTHx2DCx9zV3zSEHlfv9IjUiKc8gMmGoAyTwp3kBBjxD
	5dmG/FH+wnIhblUZSKnFU2EUXfxJJxNGe/sg8m/hIHNCBKDINUxNIXXwIZLWFf2o
	guswoNOu71t3H1hKzwYUEsVLoEWu09AG1aLFdUTkIW2M7QGLZef99KwXTEDJyUTk
	Ef60pnlKg3QrZNKpeIJjkQfLg3VjAPhBsU+U4y0hkRTQplGfNX5ndndVwlF3f7oG
	ZIsB2Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx17vq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:51 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29e921af9easo12324965ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 22:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765433511; x=1766038311; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=gEQeU9yArVad5Z/KQnFwnROP2eMlkpSfW5RZFjOvpoZC3VdF07mnqK3uesB02DeqHN
         MtJ4N20k70GJPAaDeKBTQBwi3nrBs7h86EoekmsjAQiIAkn7lHWcMEtRqImvLIIXD/A0
         4adYegR17iTr5l+GiHr7jps3CRDKnZ06gH6P0zVn1CfW7fLi2q+tKmSBc7d8fyfP+Wzi
         K9kRJ9ZK2T4snOhM0xHZJX4CjjFh9zHgeRXkHxOUgAd54WjOo/NSV/Q5ztnV9Ke3za34
         yDVGgq87mF5ihK01uISvPLpWENCxtMwp5nLEUm1MPcZJ9d/Q92pWTbgPMi/cxuD+Trz7
         Pvog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765433511; x=1766038311;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=sTGm/wPiWpj1hN5W1UKsvdaYUI21xUBatDM0hlMsWoopO3T3c/2vNSJ0h4k2sT0f6z
         pCh7ILdPkn1as5EXiIsbg4VnF6avsQe19tpLinhlQAoTqZGwwdYoanfp10OEDVE7vDw2
         mtDw1s2zFBOtH1MxhAEBUcmtE9qagZoRdPlz3ZGOgPGYgAwVxbvaSwHDi1w32BY5EZhp
         BbcV+SH+KSolXVYHiLjDIauaj1lu/Kn5QPOtfpms63Bru9CAUqJNqjL1uNXvWHeYR21p
         z88u27/dbLDMZc/GyK/hUbYngrrNnuWKIKvYlzkJGkqfBxb3gEjVzTRH4v+a/JCkwLys
         LGqw==
X-Forwarded-Encrypted: i=1; AJvYcCV324SddIgBmTFmuBIJ7b643fC3N0bWtn3rPe+DpGAlL1gt+yd0RdlrrwoNI5vXm/pARdgWelbzFrOj@vger.kernel.org
X-Gm-Message-State: AOJu0YwHvmmdhu98DZMYXwjoTe2Bai7txLB5KZHtkLHaJlglXT045f0F
	SG4No2iPFEYT9AloI/0iD1dWRLYM+w4biG3venbJjAyIXnTGwpVlBWjZUt856Ic8p8QxtHzJYwZ
	P2HjWkidDMc00CnHsjUFwg4PYzQ4Y7wHjko2lUAPYRU5cFrlEZJSKdR7phBInu3K+
X-Gm-Gg: AY/fxX7S2z8O38hwVf7JJDs0rVq2TkexRlK+SNdN4Eoy+Q3NainmgpbvQ9noUtWb6Pm
	egoNTe0B1cGFyIiy0u/JH6n2+xyRBg08NxRHgXe/p+G+Kidm9VEEtyBiasaccFmPWlZ8NzcTdK1
	9uX+f/9rnx9kDgltHPbxjUN5l73X9j6Oo0YS+IB29sL+qAvd14Td3wykTzAX+7nYOxNMGEC+JSa
	zyB9O63F3lbx1dHl4ElpPt/9XokjG/Kr4D/Bb9y/dETKUUkEXlzAKKwLjajrVAGH9uabXCyhZuh
	EODfWBKX6r9TYnEHojGoECNfdddLEhwBBZKWZ7FtgXofPZ0YFTyCDTZvHLY6eLnw6mnmQZI/Jyl
	026vsyV/XR7P7c6iRlNgoEcBm9M0ZeSvTuzIA3e7Qvt70IiT2DkSWM9DIsX9Fil6/A9ESeicY
X-Received: by 2002:a17:902:ef46:b0:29e:e925:1abb with SMTP id d9443c01a7336-29ee9251c57mr20447135ad.27.1765433510597;
        Wed, 10 Dec 2025 22:11:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlea653ROQml/NDqmt5Qi7x7FLFp59TsrT6XIC7awP3CpQ6dicUKXcpTFHchhmY95IxLT6Mw==
X-Received: by 2002:a17:902:ef46:b0:29e:e925:1abb with SMTP id d9443c01a7336-29ee9251c57mr20446935ad.27.1765433510148;
        Wed, 10 Dec 2025 22:11:50 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea065186sm11725945ad.89.2025.12.10.22.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 22:11:49 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:10:43 +0800
Subject: [PATCH v8 4/8] coresight: tmc: Introduce sysfs_read_ops to wrap
 sysfs read operations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-enable-byte-cntr-for-ctcu-v8-4-3e12ff313191@oss.qualcomm.com>
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
In-Reply-To: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765433484; l=5450;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
 b=pNNGCo2sKcw17OfdCXYJbjXP6WA9w9ppuOEMl8czhsU9OnxyxSNPtIoM96fqchgeR8rCnn2Sz
 +lIREvdb64qDQogHnx7wEYF3nw4ZAiIaDryE1VaKklJFSn+qzXyQfwC
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: rN9VuUIWjrko1s2GFnLEakorMEtoCkOK
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693a60a7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=JzqEjpkVlBH90HjAhVoA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA0MiBTYWx0ZWRfX0TwiTS8auR8V
 D1PT40cdmJZh9Kj+Lb86cAZsoRJlX2UQQUDTUa9KXp53zV9PBpgNru5SdkxAC9/O9Zd6O6W5udt
 1ArxyWK3xJ2BNf/NIQ892MVleOcZKpjLuV+mhsGsF2vYlEjCA1mb42cLIhOhlq/3N2qsloahA/P
 M3gRCxZ2jDdyh4l23j4kWhbsY9CpRU2si8uxA2XYCSG7vGBjZkSuNAzkhy0TxZANtUnfWmSNrY9
 w/OsXp6xVwRSE4lUa5fMA0UD2YvBHaloB7X455/y/O0DX97YNAEXPF3dkzmwedKqvEybxkx2RNJ
 9q/Rjj5AGayjiFNaRFrt3NJ6qbK+0tFlP+SYItxAfOco2jqT9WD0h87hCHRni/ZLyNz/0XqlHnQ
 w3jyj37bWCZ4WDUQ47qWYiwaXDRmog==
X-Proofpoint-ORIG-GUID: rN9VuUIWjrko1s2GFnLEakorMEtoCkOK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110042

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
index 9b3c4e6f0a5e..c9a82ff6cd00 100644
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


