Return-Path: <devicetree+bounces-234642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB13C2F79A
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 07:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 73B2934CF2E
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 06:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 400752E973A;
	Tue,  4 Nov 2025 06:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QPYBGqmS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IyD1d8ZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F81828000F
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 06:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762238546; cv=none; b=Kmlh7+sbKxGbbOEoKavv/Kdha+1hP27mPQMZfQV+JgcslGM1JLrzRyhtatnMDeYCcqFSNIzXZG0LhKt8pSFtoTxHMq0X+0yBQZW+m9gkClXyVDdQt7kK8C4r3Tq3xWXJVtuevfK4EesnUDsAj3FDdCroFiMCc7PvCjjUUGhVJBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762238546; c=relaxed/simple;
	bh=96bzWkhDWYDuDp2Jyyn7AquZSwKLo7DiVJ0OPkKZJq0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=do14iQqDqKSSdeLF/IluO4affAYmNOIIeCk2ar/aKJZmBJcOhVFQogYJbN156kK21JrFKv+PATcUx49S+fqiCXjuopK1l4T3vemluowC3W3SYDZYYPS9CZOks81TZog+AsDuOz2BYbxHmM5Uu5FblQnzFlNY/A5Q1SZvz2bK5lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QPYBGqmS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IyD1d8ZV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A432jZ63616973
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 06:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AIIj+Fyqu1b
	kdRDQGwzdP+sEfwmSD5ldhQd6xBymW1Y=; b=QPYBGqmS32NqHt7XxG+1GvtE6eP
	kyMVngKMr33mu2z/H6AjsWeGv5T+A7pzZGaGk8K/tf+lG2LyhLEPN29I+lWR7gLg
	d3lYTeQ+al7etaKGCi9hDioBMjDUysl6t2jMMsCFBfNbJcj5pBpjD018fWhR/6pm
	v7PF83i5P7dgnOGVebaHGsJNDLuzmO3T2oh0wvcxrpwitGnSQPeCjjPqqInPL6d4
	CChRvWGZNif1/wY0Ptl0F2OYbZ8plnUIR9GT/QR0B5qY69e7JAXAm4PTst+uWK61
	NfV1WMpdYYL2y7c1srKkFUYBMogH9qq7XQ+KQwUNzWvZU7LeRLRJnxPNX2w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhsx37-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:42:23 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-295952a4dd6so25643515ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 22:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762238543; x=1762843343; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AIIj+Fyqu1bkdRDQGwzdP+sEfwmSD5ldhQd6xBymW1Y=;
        b=IyD1d8ZVjNgs5XtzjR8GF6gUUqETpVl0qP0tf1bHt4z1sks6iGu5YOaHb0Y4m96znK
         QOS0iiCeV2OkGuFugachYu3YBqXNm0Mqk+yLQAanupC0gLONVh12I96/O5qXvlPITkwQ
         Bis2DGlQSJ8j6nSM4UukT/+5ak2mNoE0knFkRJNh6sDYWlslB5wpjahmpLlwycJ2jd66
         ckfQsgyqtP8BSEu4Rpku9vqrPoUQaTLV9K19VMAQm23afBkvQBykGNxfDFNqRnHoU4BC
         FzSZcktKZB3n8Gkp/j8rhmMQxWvMIhQ1iD86mDu/6+MloprzbkH18WkS2Ur28xyQ2fU7
         GIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762238543; x=1762843343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AIIj+Fyqu1bkdRDQGwzdP+sEfwmSD5ldhQd6xBymW1Y=;
        b=V43DLm3V2usZ+xIQg+SQYYxAnlgSBn3ZLZ+aVpVKkENOE9VJuKBC1mC95xObPYrCYt
         bfmMXp5TNZzWkbGtwscODuUIZYwRGIXL281Wp7x0u1bnmtZibyPLpa/g03v1shlhdFsM
         v096v6Za87ZiPD44syL5GqbkJBTpBtgwgr2JGmRoydWXggVVCUKwOU6dDlFqIMXR7A5Q
         MkDfwhcjpyOnf/XNhiC9GvqY+EX+qjv2oV+JPhiLC9r9MmMLE1CQIEzbIiAa9aDTZxPC
         AgNmQq1h2qR+CV1phvXlXB2lmIkqIeeHhcjuAMn2LqTSfEt2/tMIa7vH1KwB/xPUmRnN
         YBJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOZcNaAo92fNc92a1Hb3ectnPubmjZZPyd3f8AU9zVaOWFyyi+7wh+2bJcLvekWpTMChi+wsQpMG5j@vger.kernel.org
X-Gm-Message-State: AOJu0Yz46UT1VPMQPC/GMHq6P1XxTxnqB+t9j/uRP+hW9gR4f52FLj+P
	oYscQT0foY8c4xMpym8DcE5sjrQANdUtpfnn9Q2iq2HYdZpHqogP5297GBXIUMLtE8GA+0pbvxc
	YpC4+xZ1BG3fgAcN5c7H/S+hqqDuCxttbdfIwSddsdsPEvTA0/I5AAK4Fw9J+oJHX9MX03R++
X-Gm-Gg: ASbGnctJfFhTshDHVJQQZMiYj68sxl1Exrq5x45iMdebLpFzJ9C9qVuwQ5k2QBDu7ro
	Q1kG1KeaHXljwZrURiKUaYSS79s3oK8atxgn5W9HGqejN7a2DJI1nmN9Miotx389llRPeNAy6qW
	HHhgo5EInJQ8I055kSInjmXjI+s2/jnwwgBu4Bofq2MqKJObKWYpaYDEu4ZAjOYd0fALjBBfLBK
	Y8L1zCqdr20hQ5gbrVTFEnqcBf1suvRWsv4TBW7wtz1SD4aYpNgKfYRxEdQGiZrhTeNuk5fKwGf
	6neWr47Jtekc4MReh06fRu6r22Kz6o+XPB2WSJReJKCPgBOwArFT96cMzYnY7eFBTUbSxQH1TTJ
	YfhCRkEAaKS3ZLhCtDKS3IzkmLyaxbXyKvAkSkc/cvDiPX909fKDhEw==
X-Received: by 2002:a17:902:e5cb:b0:273:ef4c:60f3 with SMTP id d9443c01a7336-295f937c8a7mr29839275ad.4.1762238542609;
        Mon, 03 Nov 2025 22:42:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJMvyn7jgT+PxdsfFbbVRQ5B7QXJ0K1qxCUO7+4vhXbZ4XTwYzEH8ZwclKzQweZGQdlpbyWA==
X-Received: by 2002:a17:902:e5cb:b0:273:ef4c:60f3 with SMTP id d9443c01a7336-295f937c8a7mr29838995ad.4.1762238542085;
        Mon, 03 Nov 2025 22:42:22 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a0780dsm3294791a91.16.2025.11.03.22.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 22:42:21 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v7 7/7] qcom-tgu: Add reset node to initialize
Date: Mon,  3 Nov 2025 22:40:43 -0800
Message-Id: <20251104064043.88972-8-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251104064043.88972-1-songwei.chai@oss.qualcomm.com>
References: <20251104064043.88972-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA1MyBTYWx0ZWRfX9ZCLCErZZdx2
 TK3L85tq5AMQwr1IuaKbSweZxPbySAuY3y404n6zo8NpzfE6rReYtEbrMHT2cnjfCze61RVdTXw
 bA0S4k4KWs34OP7al3HoHWFvajNo3O1X7KdPo+IPk0EDIf6VLHIYSbj8DAQ7t7ATC+6mRxxjonX
 GgsdO8EngOhAgbzOkMhjnUf6HLVaG8rJB/tA4iq8U0W0iggTOGM0bl5SyBHslPBfZ45G1daJPzp
 QC8W8IJw3DbYci5kFcrHZVZhxszcMZMjVnXstEgaGodNWwT/TH+vwlbKOx7KY359uxMhw1+A9su
 iUzM0DcR08GG/nr7Lj0LhbBl1ESrWuaSbodl40Ylv8jEyGrw16rauPfxkd2WTueoEph7PMT4vPZ
 YTFY+DbMzuFWGdTTAWQVFIYaS0+Uvg==
X-Proofpoint-ORIG-GUID: t0EGh70aAfUAfwda96kfhaI7jnJfNGPM
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=6909a04f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IgPCHI2mAnvcCQI4J_AA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: t0EGh70aAfUAfwda96kfhaI7jnJfNGPM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040053

Add reset node to initialize the value of
priority/condition_decode/condition_select/timer/counter nodes.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |  7 ++
 drivers/hwtracing/qcom/tgu.c                  | 75 +++++++++++++++++++
 2 files changed, 82 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index 11b4d34153ce..9d20b48fba3a 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -42,3 +42,10 @@ KernelVersion	6.18
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the counter value with specific step for TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/reset_tgu
+Date:		November 2025
+KernelVersion	6.18
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(Write) Write 1 to reset the dataset for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 5db876c31a63..a164867c6b66 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -434,6 +434,80 @@ static ssize_t enable_tgu_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(enable_tgu);
 
+/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
+static ssize_t reset_tgu_store(struct device *dev,
+			       struct device_attribute *attr, const char *buf,
+			       size_t size)
+{
+	unsigned long value;
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	int i, j, ret;
+
+	if (kstrtoul(buf, 0, &value) || value == 0)
+		return -EINVAL;
+
+	if (!drvdata->enable) {
+		ret = pm_runtime_get_sync(drvdata->dev);
+		if (ret < 0) {
+			pm_runtime_put(drvdata->dev);
+			return ret;
+		}
+	}
+
+	spin_lock(&drvdata->lock);
+	CS_UNLOCK(drvdata->base);
+
+	writel(0, drvdata->base + TGU_CONTROL);
+
+	if (drvdata->value_table->priority)
+		memset(drvdata->value_table->priority, 0,
+			    MAX_PRIORITY * drvdata->max_step *
+				drvdata->max_reg * sizeof(unsigned int));
+
+	if (drvdata->value_table->condition_decode)
+		memset(drvdata->value_table->condition_decode, 0,
+			    drvdata->max_condition_decode * drvdata->max_step *
+				sizeof(unsigned int));
+
+		/* Initialize all condition registers to NOT(value=0x1000000) */
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_condition_decode; j++) {
+			drvdata->value_table
+			->condition_decode[calculate_array_location(
+			drvdata, i, TGU_CONDITION_DECODE, j)] =
+			0x1000000;
+		}
+	}
+
+	if (drvdata->value_table->condition_select)
+		memset(drvdata->value_table->condition_select, 0,
+				drvdata->max_condition_select * drvdata->max_step *
+				sizeof(unsigned int));
+
+	if (drvdata->value_table->timer)
+		memset(drvdata->value_table->timer, 0,
+			    (drvdata->max_step) *
+				(drvdata->max_timer) *
+				sizeof(unsigned int));
+
+	if (drvdata->value_table->counter)
+		memset(drvdata->value_table->counter, 0,
+			    (drvdata->max_step) *
+				(drvdata->max_counter) *
+				sizeof(unsigned int));
+
+	dev_dbg(dev, "Coresight-TGU reset complete\n");
+
+	CS_LOCK(drvdata->base);
+
+	drvdata->enable = false;
+	spin_unlock(&drvdata->lock);
+	pm_runtime_put(drvdata->dev);
+
+	return size;
+}
+static DEVICE_ATTR_WO(reset_tgu);
+
 static const struct coresight_ops_helper tgu_helper_ops = {
 	.enable = tgu_enable,
 	.disable = tgu_disable,
@@ -445,6 +519,7 @@ static const struct coresight_ops tgu_ops = {
 
 static struct attribute *tgu_common_attrs[] = {
 	&dev_attr_enable_tgu.attr,
+	&dev_attr_reset_tgu.attr,
 	NULL,
 };
 
-- 
2.34.1


