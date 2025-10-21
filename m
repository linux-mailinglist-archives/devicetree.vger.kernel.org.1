Return-Path: <devicetree+bounces-229142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7923BBF4711
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:01:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32DD5421E06
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 03:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C718C2ECE8C;
	Tue, 21 Oct 2025 02:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b7vRCAm6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5442E7BA5
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761015586; cv=none; b=XcPrpxmcW+W6fqfWBq1KCNR3/bVNtoXaM4GfHoH1EQs3gob+f/NoeXEt+2GoZFw6/EG4diUCC7jshBE6Qjd8UeavBSrbB+zlAdYr74o14qG+ir/4UEDXir/hOZMm9gpXKbhmYKfoEZW+DXooF8tV5KgAN97xgsBWmj/PsdVD7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761015586; c=relaxed/simple;
	bh=8dkpLhswVLviTgeKqNG+UrFnp73bVBkDxmQj4X+Bnkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BRxFzQa0CG+P4ykMil0MsHgVi13NxeHDVf/Wt8kNOFU7GQ6YCUD8RKnKBSuH853XUFFufc4PgpiEOrOF0rKmI3sy+7VMhOzoauGHpS0T7+UAsDmx/V2PzcSHfsOUdi5VT7nZ8T7J1/xLIGd9Nj0r1xLlRAcQn5Sdxl6jV8RzLQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b7vRCAm6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KL0tb9029841
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Q2KZUH63v1Z
	8gu1t2jNlUjejQ4cQ+t1iEooXe+pEjmg=; b=b7vRCAm6vc+JZHzuyHA37icbPxN
	octSjv9TS4jn/91ehA8YQPIkZ4Udi8jFapcPHWcJpY6mzsocg4r+PXRBqBAP2abf
	gTv5JFUg8Olv4kGt/JdhQaIzd0ap0PY9arR5FmUUHJ98blhvlUsCkLRoUH82S6i+
	3oB9nIsKFQIAyIqxux2MhiJmO5ylneRRQBWZ7cTzjx/d0IOUw6T0pQ2ft+xg0HVb
	0NDV1zw8Dqrzr9MAtmIiFqSfrktpCatxDtAgFnQmgYYy/Zj6ZvD1/O9d/945OJ8n
	ztNmoDiKQCrKZsXJaJeSp0Klad9SLqs8xiUsKR/CfOb8Re6TztHYHwtGhzg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdxwj0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:43 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b57cf8dba28so4225691a12.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761015582; x=1761620382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q2KZUH63v1Z8gu1t2jNlUjejQ4cQ+t1iEooXe+pEjmg=;
        b=QldXkp5ceDvAEyWXdMaYYxydXDLgyy5QVav68roA9OCbTGHkx6jN14KPtqy4RIGQGF
         57SOWX9K3RIKcakfmziHi2nnXa2/p26vv+RD8lBacgpHSYDYTYx3DLAdZqgiSNRPj4b3
         4v21US0DiNaKUiEVZByYqaPOjjXhXMA/UNUeIEtMrqSqG6Vj0yucFRKxiib6ue3aN0O1
         N/l+qIwO/ohqfYPYWdKTLj/lAo27wf/ZyFp1KUyrZ1UWtIHFgFZvKruemrwBCTBEXV3t
         d9wKNNURjpJRBOPE9SkbDW8b8kCjMjm+Ne4A50GctZ34BiyGusbJpn9clQczzyw09tBO
         jlYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWPydzVkTCme4Icf9s3ExTKvJZoLx1d9sH03Px+ipGrfxZ+rmHqJKmtRLnOWi9xA/QQMfXG71ky+NM@vger.kernel.org
X-Gm-Message-State: AOJu0YyOAgiTkCXtJZsGK4F2nj4s8GApVa7m606FOpj40O6YXLZAjdip
	pZGQBYu6orOdsx0h/tpjYP+YT+Dh5ab3XlT50RemNVtevlCHQf8CavgjEeN1V4EmUsp3L3Xnl+O
	b7pqSqBrAJA0cO3xWtUmpX5L9DKl4W8urULM92qDf1JbnSVnXLSthMMkM48gvhb/v
X-Gm-Gg: ASbGncvWrNG2AGK5sa0He5XgkpmOaloQXHW3sSYAJetuKbkg4eFu1H6n6pp82UJiuuI
	JcxvPBBGK+831F7yK281IQzlgF7o6NX4DoH2SE9tbpNvBjPZqsmoBDCTm3oRmSojLbkmulT38tX
	8dpWwadow7bSv3coL9v599c2eaE0sQZVyFd4RsE0Ffv3Kra7Vj/xBJydpYusEPTJO3qHVZJA3cg
	YbW+i/uH24t6rnBCTDAFh/kVj1QvBqSNvilI38ffU88mSsS/soRoQ2DE5/ISaDorO4KE5ee7yCu
	2oG0qf9mSSembHjMCncdT+8xkM8ubPbqX7Z2ta06fUjRds4JpgG2Pn24gpjKYvlen3YAOi3cxzc
	xtWtH0jjjMsX7/slTP/GHAZKkIqqSHUZ7QudlSmAkkmqgCjWDxeZFTQ==
X-Received: by 2002:a05:6300:497:20b0:334:b29e:f446 with SMTP id adf61e73a8af0-334b29ef982mr12607077637.0.1761015581825;
        Mon, 20 Oct 2025 19:59:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0jcVn0s+dyUWucjh1b0Aarnd0rcpt32mcd9fvHDrPCKI2EP2xhQcn0BCYnp6dEz622/jaig==
X-Received: by 2002:a05:6300:497:20b0:334:b29e:f446 with SMTP id adf61e73a8af0-334b29ef982mr12607054637.0.1761015581397;
        Mon, 20 Oct 2025 19:59:41 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76673a86sm8855787a12.10.2025.10.20.19.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 19:59:41 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [RESEND RFC PATCH 7/7] qcom-tgu: Add reset node to initialize
Date: Mon, 20 Oct 2025 19:59:09 -0700
Message-Id: <20251021025909.3627254-8-songwei.chai@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX2L6sFBSu/QeS
 767aYfwhm6H9ymo+KkwywtORmPYYppTd44eAw0k1E94sLbJIf5vH8V7B/nFq5bK36HKQqA5ZZGP
 cEYnBneYKc94wku0cWunD5FxN+w40T9FfXqG569BPsvsUWcPXnXdpqdpxGt0dgrTS2YzqLnavSc
 52WszRCeKdnSwHDTVHSpabGieuXty2GaZuTqOZbGKrsJvawFzlxUeCnFgGY87qkTMfwqB6ACylt
 hmD9emVAftIL7Bm9mKlej5e0OFk0qhbZ6WoYnAHNGNTmd2Rz3sAWMDP56S2q4v4gudVhH1U9Bbd
 LDkmOBThK5YR06wtgtAv3Gy50SOT/mpYkHx5GDjQKcctdvGVkhwFlJ6F38worD0gi44oZZE++4u
 dOvEXVzXcRdovnTZN35K6awKbd7yqQ==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f6f71f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=IgPCHI2mAnvcCQI4J_AA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 4zcPsQoPWDAQqAWhXJ2j5h_8ZH4xb5ny
X-Proofpoint-ORIG-GUID: 4zcPsQoPWDAQqAWhXJ2j5h_8ZH4xb5ny
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

Add reset node to initialize the value of
priority/condition_decode/condition_select/timer/counter nodes.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |  7 ++
 drivers/hwtracing/qcom/tgu.c                  | 75 +++++++++++++++++++
 2 files changed, 82 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index a57bf9783641..c9e12b298b23 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -42,3 +42,10 @@ KernelVersion	6.18
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the counter value with specific step for TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/reset_tgu
+Date:		October 2025
+KernelVersion	6.18
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(Write) Write 1 to reset the dataset for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index c4ae1f27d9ff..9bef9d8b4690 100644
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
+	spin_lock(&drvdata->spinlock);
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
+	spin_unlock(&drvdata->spinlock);
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
 


