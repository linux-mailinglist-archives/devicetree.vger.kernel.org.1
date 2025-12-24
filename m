Return-Path: <devicetree+bounces-249426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CAACDBBFF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDACA305BC68
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9582232ABFB;
	Wed, 24 Dec 2025 09:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YOBUPMmM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IiO/Mw06"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F6332ED42
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567239; cv=none; b=sYYLac9G0GqcfaNandA/qTtmuwf37cyCe/M7BtaLGvLkFyId/CSB4VWyxHaAuS5FP+6jbIpGk1/Zmx25H4z8fwM5y8nMSQiSdkAe4irWUk5NwPWQhzKS9QloCKORUkS3sZifKOSVtt9TyGTmcD3UBnrEQx1kYBF58DdQSKw/Frk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567239; c=relaxed/simple;
	bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UGgSOZNdHnyJmkCrj5i8e1T8zArzLznOyaeseFpImbg9ziNzjDXJzHhBmdHtyT2mroQ1SjDKDI/JO/eGSmwlyvuAvBIiVmgT/DZYy+P8pfNLkeBtKjurQ1G4KIQDprMgGXOaXOEfzFlSTaFR6xhDCvtBdC0D30XJBToELszGQW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YOBUPMmM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IiO/Mw06; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7SeOM1056217
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=; b=YOBUPMmMdrDmeAIx
	Huv1FMsfe4YCuYUYWjRNLI1S7ntZ22ELjQ3MckP4EgYL9z21DlhTwaVHWF014DTu
	4lDLayaKTXKzv1sZMCx+NiQNAHASjD6LlcT5DYgRli6raS29BmBwa/7THC2Sjqdd
	4dNFknNfqrommWeiboRHuQmSAgPPGz2UnxDA3DbxwSs3oG2WBn/XA7naTRkPrTQ6
	LzjihxAA3K+CQOeU0fK+2+Wx/WwjXOQUEEMUILCHNorecrPQ8OrVDBHEv7Z7ChNt
	6lWQaI6TUgplNeU7SsT0w7IPHGDXenPCxqTMbY9mrRv/ui2nxDvdEk2XqOA4QwzP
	ClCVYw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v1xt1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:07:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso113193155ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766567236; x=1767172036; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=IiO/Mw065efPTMCFpu12JhhCjilarF3wGucTrEqW3t/pbzV0fHzjPQZHtwYtZj545p
         xsYW95/jaoGyXO3Qcj3CPwGIQNigQ/B0hKQ66u2INBjSqkGs8gcEVbpa937yrKF1ter4
         xSxpd8wIyaVH+VPVhTh52/sWGGEx8+Ax0cnWFF1VdojCrex+YumVjEqYXpHvDUT3QOUy
         W3zSYhi7g9LoETi+jLhDMyFe4S8gwM1uekENihxzstc7uPxA1z4D0IkSFJ9U8vMZTDyI
         hZr1hpVd/6q+RDzLPhJl0ujowZlkMxkwFGT/Eo5UTwQ6aVjQTCzaKCU0+XPWHit4j6/g
         gB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766567236; x=1767172036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=Dihv7M8pai6EvUKoOt2nbNxPh7xcy9SXhuhmNPqiwoNzEbThcG9o6Acz5z8rwDVGY8
         Yx7mRNQ7B0t9Con7cNJW3Qbh4cAGVtqJs2bPWTLP27v7dk6uBbj/wVNwo2K6c4WJ4br8
         xEdqwsSwEC7thPVlhNt2iwNW8lJ6W0ms3CONYHxCgIWZpjFTdRJtDS5m6gPH/KCyeLZR
         4CQcVHrWehwQAj4ne/yjHclP6RUozh3TPJDmKmhpA9NW36RHLuT3Fcopfr0cDbs4TMLn
         n6jLT86LLc5vwnrRs8nZaYuCSqTodV82QYwvsFwPJzGi0LuDazTNxKa1On1g2FweWYXl
         OWng==
X-Forwarded-Encrypted: i=1; AJvYcCXf6d+Je/2LFaVrEj4jVw60vlAHvmhCa9sskUpdFNxUYg1V8Cm4htP94g3/sO6jLWKG/kjE2Z1933EZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyLcqtBmjxUN4H0H2Q3Magua4z3eo/WDn/+uQHVjTpR9P4aSolV
	MbcxfZLyaUI3UlDt+BfOadw/iZZ+K2pARJkTfs79yvPKgJTXqJ0hpgEvoDBiscA+7RRZX9kbLiJ
	jcMgZSO9Kf9717Jt2Vxj/aHI00tTRGjiAE39seoqt0qleGwfJvDkg+apJuE4EVJK8
X-Gm-Gg: AY/fxX6i988ZX8CSm8aRh3dzfotkZWllhl4dCemt2Z1DvCr9mb0rh4Oxr+87b1RhzFv
	7ztT8WP6dsdo/71ixOvPZpyi4677dNO7LG5hwkbDPaCPn+C4z3Td1HeUdVqCRLLhYOTrfe0aVWH
	cX7xwS/kIAE9BIaPiDNNatAAuw4DFK3AAw49FwYcv2+mWtduzjrCvXO2WMQ2qW0Os/9alyhyA7i
	aONnM2q0qrfffl8u25A9nXYPBfX7G6HFtBp7ktSOyqb9IUwvtgxOK9HPhksd4JgkzBBjYsTxNlc
	BrSONZqLaAURc9gU8XAaAqpvUWBEsxky4gla4zaVFA9l/Auhs4G88/mTip7RzNwDyL43MY1LkGg
	4HYQ6PoqIPzfMskOL2iOFN31LDXY8EGx36MWvnddC4boEfXtWa9zeJjfujaR66SyaTBMwrpvo
X-Received: by 2002:a17:902:c40b:b0:295:7b89:cb8f with SMTP id d9443c01a7336-2a2f1f78d07mr184952205ad.0.1766567236210;
        Wed, 24 Dec 2025 01:07:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9Hm3W3DFtHwdujiHhNesaWsev04lu15VpbBPkpdmQV4QFHQ8NusHUQeuYpvBKkLyYCjutdg==
X-Received: by 2002:a17:902:c40b:b0:295:7b89:cb8f with SMTP id d9443c01a7336-2a2f1f78d07mr184951915ad.0.1766567235667;
        Wed, 24 Dec 2025 01:07:15 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm148418095ad.21.2025.12.24.01.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:07:15 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 17:06:13 +0800
Subject: [PATCH v9 3/8] coresight: tmc: Introduce sysfs_read_ops to wrap
 sysfs read operations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251224-enable-byte-cntr-for-ctcu-v9-3-886c4496fed4@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766567215; l=5450;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
 b=VCt4oiunM/XKuGR5ta/0wbou/1Ac6C8/Ako/ofvneEGNiOTCJzogA5q3kT1UhQ6oYti6pYWxo
 ueKG62Fh/mUDwZNVX1f/tUbvKvhVSVDe3VbYOgM3/0XwxcQQJmxX+1E
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3OCBTYWx0ZWRfX2At+jc6wQNam
 MRdgK4+4+cQxKVAMaGNJfkJ5I4J29+vzn6vE3ul2e/7b5VptvwmAbPkUnge9cWT5HYIt/fc+/Te
 ZGX+J+4A4vQ1fsh4m521W8mCI7gnoCgHIhe5sJPGoybj0sEyWV827fKpDBBAXM3luE8QlqHizJV
 r69OoxH+nBl7yxtpG+8LxDaaqlzccnXwoTFYaMOZxNw+VkhtCmEsN6Qw4qJ2Vyon2Sa6v35IiWp
 Y+rZQn7riS9slvm2CDSk3b99RIShrJPOs8PezEZTXVLgifDL/zZnXIPG4pZhtbMMM3eX2eld1nV
 iu9QVMd+6ff7GiuG1fv/jY1qP344C+pUWrbNfSbN2l2UPNs+K/iuNEaCZGGW5X3scher5YtGDr4
 AvHDuhPQcTOlcshcgoElp9iFqbBiAZBP/+hbQxmeWvVx4st/NlwscDH4zg1dKSV+fyVoSuw0xrq
 iENsYDkTT2lAcnF3H/g==
X-Proofpoint-ORIG-GUID: K7aGCac_DMNGlCehIeTG7VX9TxFzRgaE
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bad44 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=JzqEjpkVlBH90HjAhVoA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: K7aGCac_DMNGlCehIeTG7VX9TxFzRgaE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240078

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


