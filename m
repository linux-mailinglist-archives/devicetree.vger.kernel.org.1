Return-Path: <devicetree+bounces-243916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42187C9E61C
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 382493A6F1B
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 066BB2DEA9E;
	Wed,  3 Dec 2025 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AEAk5hj1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ua25o1DB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B41A2D94B0
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752518; cv=none; b=AViKztZzs61jzIcDDHo9mr+ydfJAmyNRFU0wh5kI8fquGKGMR2MGtaFu6usfPpUd4PUSNCJDRYybwBZUN+eLY1iGzDUw8yn6VWMIrUspGXK62df/fBQ3Mv29ga6wlTd38FM5HU7gNPl5u/Kp7TPkqTbL7nTkvFCcfzo+ppSGthM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752518; c=relaxed/simple;
	bh=1BtOV/SJZWIFW6jxWiw7Sv1iyqhney4xGXyT6EzMMcc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PtfPgkuvC2f9O6IEycyhdUVweXTwtjr4LruiRFUr2BdVBLeDlha6L+3YQkqlWpUagRySSzQqC+I6NeWXEVl+XcqR70vJP3pzq5S/F0fWqJMrv4xnmtqegyyJN8OCJ++u7im8dweUYEfrA0mJBTT7Nouspde50zL4rAglRVohaZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AEAk5hj1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ua25o1DB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B391gLx806006
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 09:01:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=vAnZPRoPnmA
	r0OgnZky4GgITZgZg+aavJ0T05/kKawc=; b=AEAk5hj10MkZ9+sicBhh8B9h4l1
	36lSLGMBnJHcvnVZhw99w/VOQ5JoNZ/cHlCLHJwSQ9+Il7tS7bKRFoAstGRRODzD
	CwVpi0hzf/m0je7iAztt5cIP10MXTX5jWwIAQYATMMIcyEgCe8WIhFNU0jNsPScT
	gzp8mRPF8TiLCnBsy1lD1q6ak+03Jno4GbMGGFt93j45kEJ3wCRzjF+uV8ZL0Vlp
	Z9yibJN7bjPAO35DTzV2VR0PX+hXEd4qjP4Fe3oqA7qi5J/EHejyNl4wK+F/VCer
	IzmhV4DfAb64PtbBeAV3kt3DNRKrKqvt2HeAPsH9/5SaPfH6pCWTAG68yeQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atbmmh8gu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 09:01:56 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-11ddcc9f85eso1120785c88.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764752516; x=1765357316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vAnZPRoPnmAr0OgnZky4GgITZgZg+aavJ0T05/kKawc=;
        b=Ua25o1DBo50rhm5FmYvuQitb4CxxYD/rOtIYQ5TV6guVij2fEibl0bbtrQes0Td7pI
         NkbJ7vKc+gMMWHupM+NDpOzQOik0aU/icf9HInYN9no1EKBefNSesA0M8AhbastZ5vUe
         BPeYI+MPCkHKr/lOHFmVk9OB3SjmA9Umt5aCgQwXep4Z1fkHfxFI3Z6L8IiLcknHAAcz
         4AmiJPmLDSzv8DGR9nztgbl6HTqFZGqSIaQPBTGrGzndx0zAkTTuUXy+4Zrump2hrtrC
         xcAVae4PzVFUWefIApAa/7+mHk2qVS9TXLcZZ4JhCWQ6U4yD9nAGSkLyv5sD9Imh8Cc2
         iPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764752516; x=1765357316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vAnZPRoPnmAr0OgnZky4GgITZgZg+aavJ0T05/kKawc=;
        b=J1V7uDsbZR/5IDSuWatyEv4LXyDNOMZ9cd8lbSFXgLUpYyQYdX8oBqJR0Mh48QMiyT
         0hnyzkpAsEXJVt4GfvS0wCvmfTZhvbgCDVsSHOIx/i2389x9CILhCB+vG17nPNxDBDKE
         oU6vb/uqaAWjBBYP4EAZgwtej6Rru9lmwytartu+JRsLCz1Zz4q7UsRL4qD48CPv3EYM
         9NSr3neTIFGoxOKh9KN4o3d4F7iKD1gvA5xk4gZ5oZ4uCwj4gBZKsAgpmJT2E1r26JuK
         goR1HOVjB9dV7by/f1Fkeo4ejPAKuFiNvtDPF56eL9VqHL/h1OZADo4Iea8P7ICzcpuX
         1ZNA==
X-Forwarded-Encrypted: i=1; AJvYcCX9NO9s4CVUHkxaNLd54OWbIBDV5b5+OrgnZ37MFQSblWWXvKUdnghT5Aa52cB5wQwzjQuUOc671lnl@vger.kernel.org
X-Gm-Message-State: AOJu0YwAlay+sTDmkHQDcS0WaA/7eyBhFsTOlhY9/7bZSh+ql7Vkb2k4
	QcREkqb07FRJ6+HGLdJEKHCcu6VSRLWR0pRs+YCR3NZM2TaHxQV3Xmfg27bTwYdGrlUEk9iqWeZ
	8eDq2j3kLyXqvqF55alGwpGwZklbthxEKS1wEUUUb9Q6O9WvVozbJJZCgB8RyYIoZ
X-Gm-Gg: ASbGncux9RLCD8DX9w22mvoBRZyqflAqL8YLoUJtbS50TyI6cJSlp0r0nxcchFYiGgJ
	y0cU5bJa6R+vofiHrYzWkjCVlDpY6EOLv3m6ChmfLIw+B9+14C70tJ50gDB5iCH+iti82mBAuNl
	bzSpH29xmy5MpaYFtlD1+9CnXuKiyPOHzGw2VpY6aIz6Ilo/fgK17uxkOAD5crSL+LEQ7QmQfpR
	n8prjx+yRxai0PMyaqL59bn9xt+KGt7bWUts7T5S9kV/icSG1FpvAXKJNyjpTyySTuVoMq/4JYw
	yMpNZQfdIvptvTQqpqyT8mvGlNjyUV6gDR+9gNYfX+aqrBU4s+FHRrMVVZHcXpbTOEbwqJ8hrfQ
	HJwKDLcfkx3/1cHrzjkExB9/OgZi0XQUYyPegO0e09VJlDDLPjndM9zVsWZqssnIb
X-Received: by 2002:a05:7022:618f:b0:11b:82b8:40cd with SMTP id a92af1059eb24-11df0c463e5mr1170452c88.14.1764752515485;
        Wed, 03 Dec 2025 01:01:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSNRtAZGBTSJue+Ey8VONMYuwnZj4Kvoe/oRjlVagfklSEUJXSEiWRgsKNGcC6ntzC8e0u3g==
X-Received: by 2002:a05:7022:618f:b0:11b:82b8:40cd with SMTP id a92af1059eb24-11df0c463e5mr1170428c88.14.1764752514936;
        Wed, 03 Dec 2025 01:01:54 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb057cb0sm100001866c88.9.2025.12.03.01.01.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 01:01:54 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com,
        james.clark@arm.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v8 7/7] qcom-tgu: Add reset node to initialize
Date: Wed,  3 Dec 2025 01:00:55 -0800
Message-Id: <20251203090055.2432719-8-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203090055.2432719-1-songwei.chai@oss.qualcomm.com>
References: <20251203090055.2432719-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8YOiNWOW0YDwhylMYKn_HZC2UAVtGuCc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA3MCBTYWx0ZWRfXzu5adC8jVaZI
 9e2HCNCPVL4rkocghaR2A+hJJ0GZmLl60QC5vK2KqUeA7h0VJ4zjDA7se9fNRqEGCKzUeNvkP5V
 rnm1l7Vaw3kZQ2aaIcFgirtJC+JVm7aqaQP5me7CH6kt3N4fInpThCvK8KUQC9h+nh6U4w+fgS8
 aOFX8ywOStV0rel+6V3qwpM7He048CCfHH6HP27+O2krmrRjO5CESiB9ClvAQZJbsZePKp5EoiT
 1IcELg9TVH1GfHYWx4dXAwHhz9N3hYaLSFrSwefPp3f5pb1ShWQzZJPrVqoDa8JlwdMgru0X5BE
 3ukOUML8D4Sq9/vFHSCGb4zw3HI+rOcUK0mHH+SP1g+l65Z+Or4cSHdQ/cj30dSdJ/Qj6PDk27p
 z1uhdBJ4cGooqGeZHy1WEgn07ayGjg==
X-Proofpoint-ORIG-GUID: 8YOiNWOW0YDwhylMYKn_HZC2UAVtGuCc
X-Authority-Analysis: v=2.4 cv=ApjjHe9P c=1 sm=1 tr=0 ts=692ffc84 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IgPCHI2mAnvcCQI4J_AA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 adultscore=0 bulkscore=0 phishscore=0 spamscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030070

Add reset node to initialize the value of
priority/condition_decode/condition_select/timer/counter nodes.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |  7 ++
 drivers/hwtracing/qcom/tgu.c                  | 75 +++++++++++++++++++
 2 files changed, 82 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index 28d1743bd2fc..3029f342fc49 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -42,3 +42,10 @@ KernelVersion	6.18
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the counter value with specific step for TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/reset_tgu
+Date:		December 2025
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


