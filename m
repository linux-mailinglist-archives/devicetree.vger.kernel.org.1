Return-Path: <devicetree+bounces-258178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCQhLuiHcWk1IAAAu9opvQ
	(envelope-from <devicetree+bounces-258178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:14:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 635F960C79
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 50DAB448D9A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF2F36E498;
	Thu, 22 Jan 2026 02:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GNSVCC1G";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ifFT5dac"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842E9364056
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769047744; cv=none; b=OZcx8nDzw6is3wdL43ud7t/AzvX5yMZvIJ5qqAz16GpRBOjTTFCW/rWiCFqafvBAwPIMPRNhiu1iL7WbowmyaPtU4A7MT+k7rK63ElrhcYXDQvUeeZYD8Ytctmq2zM+EshHh5o9V4Rhyo2ysr9I5S+/NitwEgvnCvTJNgIsNHbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769047744; c=relaxed/simple;
	bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bulND4Iyw1utNvhxlRzUx/c1CZjxyC8j3D+C+fFEDJ5g4LFLNsOi8ImtEbjzMDIzjiWlyHFuOxmMgPiwUYek3CcgPJ4rN6x6RX9ay21bgfVGsn+NLJg4QgqxkfuWxC9UGtf/T2EaNRHFUVYduZFbojBi68X25UMinGThShiuP4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GNSVCC1G; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ifFT5dac; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LMt5P12727099
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:08:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=; b=GNSVCC1Ga7J8TSot
	zNDR0RW+ICcJAGgI9B9Ri99awN6nVDURWz1RpPbNTcLaTUnn3JYPU1e4ZjW5DPuJ
	Qe2E6c8Rqb0ECwElqOW53gLg0NHSn2Y48NIAsVO4R0D4ZFSSZvAFjjNPbGQMs3UH
	I9xQVI3CLR7648IqVHZt2+RJHxYCB/fz/rIxQsiKnAusRbApB7l/ltjD0AQsySG+
	CEJQFTFyKhXrC33C0m0iv2VxlAdAT+cOuwK8xts6t3530jl0oPRzeWD+gM5Dr1em
	+bx3E0cYlhzgEvdTNg7CmGbqhIWX1DGxg8DfQRrvWdhJG+yi+3oltUN9r6kd9sL2
	49s1aw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btysft6tx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 02:08:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ab459c051so1070540a91.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 18:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769047737; x=1769652537; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=ifFT5dac3lD3t/D7cywhR8Zeiv69diTRLIN5aMvcEJUT8DVR/UvWBqaIuYoR9Fa07M
         RIMHNXyXlSpEAKC858QDYdOEa4UdfJgmmer5Qaz9/S2KR3lAnD6BB8XTW5tYNySUovkG
         KdkUEu/ug6zGDFFQ4p1puZxmNIZqm/h4rIDi4W1UERAIIWNHPg27KCuRYMAvd2Q/feBe
         46mjbS6HwQeqM5MgFvjaP4B5pIsUnpgZRQMBqHH/mJT/Wr80n15QsqVnxYQRZYjxTzoK
         h5XTXSplx4Sumk3vogVoL6j+W33GgZhOspBFVKzWZE31kNuUghT+KdhPQQqxUqL662uY
         cLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769047737; x=1769652537;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lrMZyOpw/ZRelpfuA7qROurtddaj0sg5lOXpksKz24E=;
        b=aQ1bS/1qcsUx473tyV+37MZLWnyEBej5xpJbWUQ57jHgtn1FGNxv5rm0BwCOmksplF
         EJplOySkFEuabJkS8bTFaW8R3ndUvlU9lvnyoeIZnjdECiGXKfzDJ2fkvDjXGzYr/SWX
         rq0n3qmwQQMDeJ8Ld6BniU39rAP7RFXQgzdaTVU+WCNlfQql6ycAuNGE9ahQl9l/n54t
         PqnmUJ9Qm0bHCBlZcwjTVKHLPu5f0VJ75xppZ9OUZshNChAwEQzT80g8gr5D4z+MOYcU
         wP4iYPU2YhWr9LOJvucHCV3zL9agYtAGkV+Z4vNDnnC8EycpJZayj+V2dzMt05Cw9GYR
         /y4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUfWEdMX7FdYdj7B8N8xCdC1Krr8K2wuoe/8CL3tMPA999OslbvzA7wQk66ZbrO5KM3XzgGbJtWO1+3@vger.kernel.org
X-Gm-Message-State: AOJu0YwNWqTq1lBXrxpDB260cjXAOAdDM6u2ajP5xFJ2T2AwDomGq0aN
	nn19Zrew0CChlPMCoDJXWiN9481oQS1g0g2kfPVQbDMS4ut5IDo4JY4FA55c0CZqxcotyjUSXXk
	/+4hUWJrHAlOkh3m0n+1NBh1AlwAYyFSHzmft7As0uXOOnz39MFaAFqW+zYuPOXrZ
X-Gm-Gg: AZuq6aJBm1AAJXz3w1TP8aTV05ugHpR+PxNaghk0Pd6nEQlmB0U7M79zuVd89ePyYFx
	xwOs+ucgci91FLxRFuKxhLJ0CUx8diRjCybW/vh3QIWGQ0SvnWeSeV7gIWk9sqz4AhkG6p1aZt/
	PN0t8xK+ogJgIkjzYS74XuCmWLIIn0+v/P2PjNjGbp7oywWxCR9s7ck2JgwD/J2lMsfgv86CDAc
	U/wEhUqzM6XuqFnwLO8vfF3KvxJ0z8ZA0yu9/OnaXWlDOW+D3mYe4JjABdO9kly1123zdwhjj13
	PfVCCanzJIBkRrcAgJZEFb/yXu9r1Nn0Uz9pztWCBZQcNGF00PbMBieCJcz4ECNayAb8x4a53rc
	xFR43sR5dePZteNavxohE9kofgOL8SU6tRI/kxtryAiGYFF3aquvnuEx6Pg03nU7skZYlVbmE
X-Received: by 2002:a17:902:e74c:b0:2a0:97d2:a25d with SMTP id d9443c01a7336-2a717516415mr181775505ad.15.1769047737423;
        Wed, 21 Jan 2026 18:08:57 -0800 (PST)
X-Received: by 2002:a17:902:e74c:b0:2a0:97d2:a25d with SMTP id d9443c01a7336-2a717516415mr181775235ad.15.1769047736896;
        Wed, 21 Jan 2026 18:08:56 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a780a4631csm49710305ad.18.2026.01.21.18.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 18:08:56 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 10:08:16 +0800
Subject: [PATCH v10 3/8] coresight: tmc: Introduce sysfs_read_ops to wrap
 sysfs read operations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-enable-byte-cntr-for-ctcu-v10-3-22978e3c169f@oss.qualcomm.com>
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
In-Reply-To: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769047715; l=5450;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=adb+NstK0OrGdQHboby6lmZs7rWs2zBc775hVSg6Ay8=;
 b=rf8eEkX6xeEuQxudEYmOmXgRoN92u1XmNwp5u00r7XMrpm6LzyuxgLLZ8Lo+mYOuaJZKZBuJH
 /WrVbjKjsbFClTLEWHl+Ay3vgW9n4BYJjwh4rGYY6dPKEpVTDE58045
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=N8Ik1m9B c=1 sm=1 tr=0 ts=697186ba cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=JzqEjpkVlBH90HjAhVoA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: S4k2TnlGZsk9umIALyQJEq9g_rT5bxl8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDAxNSBTYWx0ZWRfX3O7R2Rn4RxcB
 sYe+tkLz+G2UOsfGhanE1Lmaas08+BXEuHEzL0XBQSsS8u60OZBDCz/PpFrW8mUPBr2QRdZQ6+i
 +Zm8NPpEg/7D3jFB0nx5v1abKhpZWjzlIPdJkhbXrSF50DPV3/OY24TQYOWKipdylN8fu4VmpJe
 IHzH/ibRU945hble8j+f3gPVeNEsG4l90c5mpXnz0+NCcXgk+GubLcfL2opx1dNvjpskMlNHigL
 ZDg75/kqDIwB5By4QSPZ2BbIfA246d3JbOC6T9qe24L/xhJ4WR49D4Jq3P3k/jUc5fE6m61BOaO
 HvNkBaiiTo4tUNII/D8AoLIS29whl2VbPjlqAUQomk6T1Bf/p5RGONcBab6BKnt5ebWZZCZN2AB
 WSJx/Qcmz6cR4bmZODg3i8x/COveVJdDkz+umWmNi9g1yBEThNR6DATFe8k1oluZhcyGWcSQ9Bo
 pu08VsBzjerFSapZ2AA==
X-Proofpoint-ORIG-GUID: S4k2TnlGZsk9umIALyQJEq9g_rT5bxl8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258178-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,desc.name:url,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 635F960C79
X-Rspamd-Action: no action

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


