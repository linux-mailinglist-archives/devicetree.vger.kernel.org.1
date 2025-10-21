Return-Path: <devicetree+bounces-229139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCF0BF46EA
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22C21421F52
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 03:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799DE2D4811;
	Tue, 21 Oct 2025 02:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QiLjxPJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0493F2877ED
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761015581; cv=none; b=JnwyKDxnFx5N0J7XJWIubYftQDZYhaLKp5YQeUP4h04vx4GPIVUt8iqY3diQAfqWUkr8yBVqptvAW0NhD5OzDCoGHvQwuAFDeEbQQH17852Nwnls8buTcrt9MOaoni7u1cLC3We316SjTFf4FWqXypxieTB7G8imuA4CMtUvNFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761015581; c=relaxed/simple;
	bh=quum6UVFk6+uCwe7YeJUKBMuthF+CAFd3f+Z2kGXoHw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jt01dcmdOnVE/UHERJOvYwmmNjjfrBLMH4GkYF4VEy8UlnNvQxmlIjtSs2Iyf1FyCTpJZOoMN/jo5k+bIe7BC7jakFi2TVrbmKEarTBukdmSWNO7Qkh7IuhrG1xmgFgNh2LgkvoAusmkkXwpxkGJczpKBkpsl31Y3HGiWqqLMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QiLjxPJf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KL1UnO027828
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+BsYdHpVgM8
	GPZA2Bn8dGJtle9CSvXR9gvJLl4g2H3o=; b=QiLjxPJfxk3/0dS/nF2t64bNQB4
	EG+t7MCxZYCE58pexRBWljhBvdB3Ojj6Tp1LNoI9KDhUNZROHHUAVLKAFWHhItFg
	roGkRnf/HAiuyD1oy8kWSFwVrZf9Zu4RMQot9EeeClyAMNRx2nq1cZuIuPvQgLyC
	VrDb8MINQiMIb2pBFDVlHjevA31jf01N9NHNvaof0qf7YGxPQ7Y/Fvs1RWFfDFc3
	31gE+H99ZpHtUy6I2Go3+7XSXDX7PVwUxd2gR+1LDhOAt+ZEj7To4yYoyD5LMAaS
	/xtrUEqLhhtJRE9u+MbIhHB4michYeRyZJ3BfyqYTwnjq4eIovWd9avd3iA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27hxxec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5533921eb2so3223213a12.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761015576; x=1761620376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+BsYdHpVgM8GPZA2Bn8dGJtle9CSvXR9gvJLl4g2H3o=;
        b=T/i7l0xTrg50hVqSk3ID86z6VklK4lkDnMHPzQF0PPJE6HRnfTGB/46QlaY5uNZ1YX
         OI9DckpUT+bjipKRyXfOU1SbR+kAnkOjMx8BAiyKoqGFjQCeOrFA6uL/nhJH+Mi8vYem
         4SVYJVqkOMVx7M99IQnuMPG+43kMBmRA8jdTUMv7Bv8GsD/DZf5FleUtgUfUP5MvZ/gu
         +k5wQLpOWtcje4o5+7/y16cbyjoy0Hi0QikqME3OOHq85vMgT1rrlofvPJydBO93exw+
         4kP0QQmzXSRZwBthxCGwtPGX4ZWlNIgj/Ge4H7VkFCm67U7wNnYIjkKtlUiSesD2mf+f
         O2Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXg++ieGd7Lr5An0Gq9gg9iS9Qmbt9xFXF1lqc4VlqcwwPEgQtNHAPQaUbwSSRTsPCeFL9us5ZmC3ma@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6Qam9sqdkFN5TTg3sHeCANZd4QERMyo6/uBhsPXfyanK7bhjX
	pJqXYUdDC/W6WL/YkCU2fyUN6guHVubte0Qqq6WYL2rv8xGbsPlvAh3ZFYANnQU2AKBFKCGgC6j
	8VbA9iLRsR8NM2FPPjjgC/fHkw65AekwyFfEelHKCFpiyKwxpuleUp/Q7V2VPP41Q
X-Gm-Gg: ASbGncui5QE00IEb939gHaX/J8DVmebHOK5qn0BjGpqfeoKyRwC9CRtmWHod1hzsm4G
	q2lHGJGTtleYyzddPcL0FWBvht4P2tWKsb9a1vVKX1V9TIwMqxk3LTAIaajHRj1+wIhiNQxrTNW
	SNX2s/fuF+kHnHhluh+2AIkxWkM2tBDgNaAyb4Ja/aqX3gMFPEpe0Ux99ogMJJvHiAFHqbuhAv0
	vosnwH8qhhAFRHLVeqzX4bo7jjz/IDW1kH7Tfp1MbvEWRhSaooNbSW0OFMe9aZGewA+I77hPvNQ
	cMkCmhU5qfXsJ0L9/seVRLodO8+SdlGVwO/t0kKU/sWZ2uNRliVfRYCUsMicrznxOCpPm05H485
	YWrRvunkfCxOPHKVRmnmSznmjTYrxC0HcGkoDQ6p5+SjJYGQZMqHkbA==
X-Received: by 2002:a05:6a20:1611:b0:334:96ed:7a6e with SMTP id adf61e73a8af0-334a85680f5mr19718248637.27.1761015576176;
        Mon, 20 Oct 2025 19:59:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtlPkwm7v3LTs1cQa2a+sIr+icU0gPAag0Pa/grNF/rNPgTb1710AIQM3NhuNl5Il2un8vLg==
X-Received: by 2002:a05:6a20:1611:b0:334:96ed:7a6e with SMTP id adf61e73a8af0-334a85680f5mr19718212637.27.1761015575625;
        Mon, 20 Oct 2025 19:59:35 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76673a86sm8855787a12.10.2025.10.20.19.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 19:59:35 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [RESEND RFC PATCH 4/7] qcom-tgu: Add TGU decode support
Date: Mon, 20 Oct 2025 19:59:06 -0700
Message-Id: <20251021025909.3627254-5-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251021025909.3627254-1-songwei.chai@oss.qualcomm.com>
References: <20251021025909.3627254-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX/CnnLrdJe9fX
 N6VJjbJ5WKgtvL9SreovkLGIyr0JqwaS/6hs7kk0PyRbYdvpX45LAyhPeC6735bWmepD2+Vr63+
 789ZSzt6IwpI11ssLQUDle3+nhA8TxXt3QZlocQQrL60pqoXFJtdMaXmpi+tUGHZt99LELF1Q9D
 PaAQOQQl1UzV68C0/XcF1Nt+veDdG6G/PS6knUrqFIBhtXo/NeOLJD4M4r2TA2JRMKxDghuEDhw
 scCQE1SNY6I2f8UoHpmyPys5eg13/MkuBI4rDfGjib0EJWuuvfgAB8bGuGtb5UUC8PNCZHTiwS5
 xgTeWymKnDO9w/uE+V66GD45aRawKhmtN5VwCLHqUDMjWPkXFyUjScTTc8FOJivCy0paR21DOBD
 slWCIKaLhuNWVdSTSCZzE+au8aqK6Q==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f6f719 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=DXd_79bSlwW_W-LZS_AA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: xxTGalLRgRv3vVouQzKLD5LN0LF26Bm0
X-Proofpoint-ORIG-GUID: xxTGalLRgRv3vVouQzKLD5LN0LF26Bm0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1011
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

Decoding is when all the potential pieces for creating a trigger
are brought together for a given step. Example - there may be a
counter keeping track of some occurrences and a priority-group that
is being used to detect a pattern on the sense inputs. These 2
inputs to condition_decode must be programmed, for a given step,
to establish the condition for the trigger, or movement to another
steps.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |   7 +
 drivers/hwtracing/qcom/tgu.c                  | 153 ++++++++++++++++--
 drivers/hwtracing/qcom/tgu.h                  |  27 ++++
 3 files changed, 173 insertions(+), 14 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index 960c1de90fb6..5034df7d52a4 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -14,3 +14,10 @@ KernelVersion	6.18
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the sensed signal with specific step and priority for TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/step[0:7]_condition_decode/reg[0:3]
+Date:		October 2025
+KernelVersion	6.18
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the decode mode with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 3e40bb2fde57..70675e19176b 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -21,8 +21,36 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
 				   int step_index, int operation_index,
 				   int reg_index)
 {
-	return operation_index * (drvdata->max_step) * (drvdata->max_reg) +
-		step_index * (drvdata->max_reg) + reg_index;
+	int ret = -EINVAL;
+
+	switch (operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		ret = operation_index * (drvdata->max_step) *
+			(drvdata->max_reg) +
+			step_index * (drvdata->max_reg) + reg_index;
+		break;
+	case TGU_CONDITION_DECODE:
+		ret = step_index * (drvdata->max_condition_decode) +
+			reg_index;
+		break;
+	default:
+		break;
+	}
+	return ret;
+}
+
+static int check_array_location(struct tgu_drvdata *drvdata, int step,
+				int ops, int reg)
+{
+	int result = calculate_array_location(drvdata, step, ops, reg);
+
+	if (result == -EINVAL)
+		dev_err(&drvdata->csdev->dev, "%s - Fail\n", __func__);
+
+	return result;
 }
 
 static ssize_t tgu_dataset_show(struct device *dev,
@@ -37,8 +65,26 @@ static ssize_t tgu_dataset_show(struct device *dev,
 					 tgu_attr->operation_index,
 					 tgu_attr->reg_num);
 
-	return sysfs_emit(buf, "0x%x\n",
-			  drvdata->value_table->priority[index]);
+	index = check_array_location(drvdata, tgu_attr->step_index,
+			     tgu_attr->operation_index, tgu_attr->reg_num);
+
+	if (index == -EINVAL)
+		return -EINVAL;
+
+	switch (tgu_attr->operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->priority[index]);
+	case TGU_CONDITION_DECODE:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->condition_decode[index]);
+	default:
+		break;
+	}
+	return -EINVAL;
 }
 
 static ssize_t tgu_dataset_store(struct device *dev,
@@ -46,6 +92,7 @@ static ssize_t tgu_dataset_store(struct device *dev,
 				 const char *buf, size_t size)
 {
 	int index;
+	int ret = -EINVAL;
 	unsigned long val;
 
 	struct tgu_drvdata *tgu_drvdata = dev_get_drvdata(dev->parent);
@@ -53,15 +100,32 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		container_of(attr, struct tgu_attribute, attr);
 
 	if (kstrtoul(buf, 0, &val))
-		return -EINVAL;
+		return ret;
 
 	guard(spinlock)(&tgu_drvdata->spinlock);
-	index = calculate_array_location(tgu_drvdata, tgu_attr->step_index,
+	index = check_array_location(tgu_drvdata, tgu_attr->step_index,
 					 tgu_attr->operation_index,
 					 tgu_attr->reg_num);
 
-	tgu_drvdata->value_table->priority[index] = val;
-	return size;
+	if (index == -EINVAL)
+		return ret;
+
+	switch (tgu_attr->operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		tgu_drvdata->value_table->priority[index] = val;
+		ret = size;
+		break;
+	case TGU_CONDITION_DECODE:
+		tgu_drvdata->value_table->condition_decode[index] = val;
+		ret = size;
+		break;
+	default:
+		break;
+	}
+	return ret;
 }
 
 static umode_t tgu_node_visible(struct kobject *kobject,
@@ -78,13 +142,27 @@ static umode_t tgu_node_visible(struct kobject *kobject,
 		container_of(dev_attr, struct tgu_attribute, attr);
 
 	if (tgu_attr->step_index < drvdata->max_step) {
-		ret = (tgu_attr->reg_num < drvdata->max_reg) ?
-			attr->mode : 0;
+		switch (tgu_attr->operation_index) {
+		case TGU_PRIORITY0:
+		case TGU_PRIORITY1:
+		case TGU_PRIORITY2:
+		case TGU_PRIORITY3:
+			ret = (tgu_attr->reg_num < drvdata->max_reg) ?
+				attr->mode : 0;
+			break;
+		case TGU_CONDITION_DECODE:
+			ret = (tgu_attr->reg_num <
+				drvdata->max_condition_decode) ?
+				attr->mode : 0;
+			break;
+		default:
+			break;
+		}
 	}
 	return ret;
 }
 
-static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
+static ssize_t tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 {
 	int i, j, k, index;
 
@@ -92,8 +170,10 @@ static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 	for (i = 0; i < drvdata->max_step; i++) {
 		for (j = 0; j < MAX_PRIORITY; j++) {
 			for (k = 0; k < drvdata->max_reg; k++) {
-				index = calculate_array_location(
+				index = check_array_location(
 							drvdata, i, j, k);
+				if (index == -EINVAL)
+					goto exit;
 
 				writel(drvdata->value_table->priority[index],
 					drvdata->base +
@@ -101,9 +181,23 @@ static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 			}
 		}
 	}
+
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_condition_decode; j++) {
+			index = check_array_location(drvdata, i,
+						TGU_CONDITION_DECODE, j);
+			if (index == -EINVAL)
+				goto exit;
+
+			writel(drvdata->value_table->condition_decode[index],
+				drvdata->base + CONDITION_DECODE_STEP(i, j));
+		}
+	}
 	/* Enable TGU to program the triggers */
 	writel(1, drvdata->base + TGU_CONTROL);
+exit:
 	CS_LOCK(drvdata->base);
+	return index >= 0 ? 0 : -EINVAL;
 }
 
 static void tgu_set_reg_number(struct tgu_drvdata *drvdata)
@@ -131,19 +225,32 @@ static void tgu_set_steps(struct tgu_drvdata *drvdata)
 	drvdata->max_step = TGU_DEVID_STEPS(devid);
 }
 
+static void tgu_set_conditions(struct tgu_drvdata *drvdata)
+{
+	u32 devid;
+
+	devid = readl(drvdata->base + CORESIGHT_DEVID);
+	drvdata->max_condition_decode = TGU_DEVID_CONDITIONS(devid);
+}
+
 static int tgu_enable(struct coresight_device *csdev, enum cs_mode mode,
 		      void *data)
 {
+	int ret = 0;
 	struct tgu_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
 	guard(spinlock)(&drvdata->spinlock);
 	if (drvdata->enable)
 		return -EBUSY;
 
-	tgu_write_all_hw_regs(drvdata);
+	ret = tgu_write_all_hw_regs(drvdata);
+
+	if (ret == -EINVAL)
+		goto exit;
 	drvdata->enable = true;
 
-	return 0;
+exit:
+	return ret;
 }
 
 static int tgu_disable(struct coresight_device *csdev, void *data)
@@ -260,6 +367,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 1),
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 2),
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 3),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(0),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(1),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(2),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(3),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(4),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(5),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(6),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(7),
 	NULL,
 };
 
@@ -296,6 +411,7 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 
 	tgu_set_reg_number(drvdata);
 	tgu_set_steps(drvdata);
+	tgu_set_conditions(drvdata);
 
 	drvdata->value_table =
 		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);
@@ -311,6 +427,15 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata->value_table->priority)
 		return -ENOMEM;
 
+	drvdata->value_table->condition_decode = devm_kzalloc(
+		dev,
+		drvdata->max_condition_decode * drvdata->max_step *
+			sizeof(*(drvdata->value_table->condition_decode)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->condition_decode)
+		return -ENOMEM;
+
 	drvdata->enable = false;
 	desc.type = CORESIGHT_DEV_TYPE_HELPER;
 	desc.pdata = adev->dev.platform_data;
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 9c2326a3a261..3974d8e6ab04 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -11,6 +11,7 @@
 
 #define TGU_DEVID_SENSE_INPUT(devid_val) ((int) BMVAL(devid_val, 10, 17))
 #define TGU_DEVID_STEPS(devid_val) ((int)BMVAL(devid_val, 3, 6))
+#define TGU_DEVID_CONDITIONS(devid_val) ((int)BMVAL(devid_val, 0, 2))
 #define NUMBER_BITS_EACH_SIGNAL 4
 #define LENGTH_REGISTER 32
 
@@ -44,6 +45,7 @@
  */
 #define STEP_OFFSET 0x1D8
 #define PRIORITY_START_OFFSET 0x0074
+#define CONDITION_DECODE_OFFSET 0x0050
 #define PRIORITY_OFFSET 0x60
 #define REG_OFFSET 0x4
 
@@ -52,6 +54,9 @@
 	(PRIORITY_START_OFFSET + PRIORITY_OFFSET * priority +\
 	 REG_OFFSET * reg + STEP_OFFSET * step)
 
+#define CONDITION_DECODE_STEP(step, decode) \
+	(CONDITION_DECODE_OFFSET + REG_OFFSET * decode + STEP_OFFSET * step)
+
 #define tgu_dataset_rw(name, step_index, type, reg_num)                  \
 	(&((struct tgu_attribute[]){ {                                   \
 		__ATTR(name, 0644, tgu_dataset_show, tgu_dataset_store), \
@@ -64,6 +69,9 @@
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_PRIORITY##priority, \
 			reg_num)
 
+#define STEP_DECODE(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_DECODE, reg_num)
+
 #define STEP_PRIORITY_LIST(step_index, priority)  \
 	{STEP_PRIORITY(step_index, 0, priority),  \
 	 STEP_PRIORITY(step_index, 1, priority),  \
@@ -86,6 +94,14 @@
 	 NULL                   \
 	}
 
+#define STEP_DECODE_LIST(n) \
+	{STEP_DECODE(n, 0), \
+	 STEP_DECODE(n, 1), \
+	 STEP_DECODE(n, 2), \
+	 STEP_DECODE(n, 3), \
+	 NULL		    \
+	}
+
 #define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
 	(&(const struct attribute_group){\
 		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
@@ -93,11 +109,19 @@
 		.name = "step" #step "_priority" #priority \
 	})
 
+#define CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_DECODE_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_condition_decode" \
+	})
+
 enum operation_index {
 	TGU_PRIORITY0,
 	TGU_PRIORITY1,
 	TGU_PRIORITY2,
 	TGU_PRIORITY3,
+	TGU_CONDITION_DECODE,
 };
 
 /* Maximum priority that TGU supports */
@@ -112,6 +136,7 @@ struct tgu_attribute {
 
 struct value_table {
 	unsigned int *priority;
+	unsigned int *condition_decode;
 };
 
 /**
@@ -124,6 +149,7 @@ struct value_table {
  * @value_table: Store given value based on relevant parameters.
  * @max_reg: Maximum number of registers
  * @max_step: Maximum step size
+ * @max_condition_decode: Maximum number of condition_decode
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -139,6 +165,7 @@ struct tgu_drvdata {
 	struct value_table *value_table;
 	int max_reg;
 	int max_step;
+	int max_condition_decode;
 };
 
 #endif


