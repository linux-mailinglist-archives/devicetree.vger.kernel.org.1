Return-Path: <devicetree+bounces-243912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B23EC9E604
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D1AA34AE8C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7802DC350;
	Wed,  3 Dec 2025 09:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k6OkwySk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PO4acagx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E492D8774
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752507; cv=none; b=XGbxtXCqJWUq14k9+A3Rfk1ttdir2qGY7rg4x8ZrdO/Uo9R2em0ikyg+Rq3hh8kBmzDhTeZtvi29ZAhRT2kBQQXkb9pQ46V7W254cymbmRJj6PKOEmQaTWXkkILWfWSdxAcUuQBi7jtckC5T6/ZiWsgfh0estZiUdLnG/Ztmgls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752507; c=relaxed/simple;
	bh=kPA8tkUzzJkkfEhWOHhYfjcTlyPOGKKoZnbgBvnbE4U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DyXKryUlfeWVWpVs14VV9/KlngG55ekJxSH5QwMaXiX9P64Kx/NpnEiiet7osGF+bhPBfIV9vp/Lv9lEsKjGXiGj6qQUm3M62nlccYEDX+mLjXiQq89E2pQLbz5GyGq1rABL/xDAz3NFfp0aWkKoO3NtklljKHxtRVFpTXNX6WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k6OkwySk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PO4acagx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B33aPBF3714601
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 09:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rZb3EW1uNwM
	su2S9dYe6scZ6k0307Gw6CKtkdIY0tC4=; b=k6OkwySk9qOj4EZ3npkn9jT1uGa
	j6PTV7FE3vcYSimVRazqSKF2WetGUsr5GCR3QSxhsMtGOHHU1Crz24HDYXf7S4rQ
	Csj8PljBULMzDcY4N+Nqh0QzzofIXyoZbqjmesePiTd95UHIVpvrX7tWPl4lGpdX
	lv2EovymBuvYAKvL/OQdpxtcSDb+UT4YrQZyN2pH0h0iT9E225ZQVwFY5myxqPFj
	gk0uug+KSXiLHKxghDmqstsLosCNJfcV6MZ75LNDO41FSqWFnUVeQC8WeG5DTqZY
	ljAjkLnoIN6zQOerCObKqaJgfGLCBBY96EBNzezhH8U5oZUrBT2enasf1BQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at3r22kwk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 09:01:44 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-ba4c6ac8406so5230252a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764752504; x=1765357304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZb3EW1uNwMsu2S9dYe6scZ6k0307Gw6CKtkdIY0tC4=;
        b=PO4acagxLn7vUdGt4fsiJ3TcJX/pEWsaTYNN3Kb/+CK7M5o5Oa1jh+afNarxtRa0T6
         cDL20GYIevA4FiYAavqzp2QJniR3UAStB1Myh/nr/kfZZo6RaZA72acgqhZHxnCBGfFQ
         Z5h61UpiD9gZb0gM6ONU/j2tSUJ3/D3njnsySDTrX92mc/crTP29i4LgiZ/OkKE2uOYw
         qy8Tg+hX8zpFM0CH1MtqXj42+Ud4h7GlXQETD7y8kro5rYCBkCacLj6HW5BEZNf/7JGk
         mWD3PYpemVDxVWoBmr9asp39mWjw7KZ+C45W9sUzIzxqh40AVIXHh8MvyziNy+g+CaHo
         uLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764752504; x=1765357304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rZb3EW1uNwMsu2S9dYe6scZ6k0307Gw6CKtkdIY0tC4=;
        b=IPafJhLrjdmjVaNArgRC3IIBAakKrul/iy5U4q1YgOsxUX6pM6/M0KRr4kcNeVhFng
         Jzvy1lIPFP9zgizOJL6a+zZxOhaofz8tOOWDkeU1BgkAJOfJFPfxXlh96sSGukk9pmU4
         esxDw4f+AGuX+cinV0gPghlldEicC2E3JhMrm/Q+UhIVqumhjzkGCq1OHKlI+7SIoN1s
         nlk2Ky/Z6qCIVxh73ACVD3DpTOPG+08cUS/xWDWZkeLvH3o1WLxVkXQ8GyO5rDYR3W8x
         4K2MEI1dXyyFu3RFAdXinmBVFlGntu9YwILg2PXZNPqDT/qhDNaz5jSdsH1dyOaOKSMd
         iKVg==
X-Forwarded-Encrypted: i=1; AJvYcCXbLtizFPt2hM9oMc732pAEhuZkHi06Vjjuu2nJYF7rVh0nRf8Xkz7KhK1T3p9G5XtMCqtSNe+fM6in@vger.kernel.org
X-Gm-Message-State: AOJu0YwSe9+nrinxpir/WlPWyo90nqacUF5CuM9C483gFzrIQCiVriB0
	Vuiwzwp3VsMCN3s+hI9xfq2ErGPTq9h9XfVFjtYB/tzXa8ZWTUEHkCB1nSNFmrv8y1FqqM2/dnl
	q7hVGIdrFMjIJDMT/wwrV8LQO+TxNgOKWIF0t3wAWW/t8c8Ak955Kn387hmMwra/O
X-Gm-Gg: ASbGnctSMwq0fh1ohMYpsCc/39bSmIitpBzYyKmHH4wHytRU/21flauZWdf8k9lTSxF
	tZcMtJtSEFJUndsIPf6tfIQ9OqtryUI0ObO4qMtp7MW8DMRvwyJ0QhqrZXtVVzlj4BX+L5UPDBl
	fd2A47jM9zKvT9YmE15a6dldqiZcT02JRIscW/G7k5R+1EEFb2xKUNzQmGA0GXeW+/LXCEotzOX
	kXKslU6OpKU7H7F0AHRUAKksa5+OCbdXuex+T+gAwVD9b6Sp60t4s5kQuu2po/eY+c2KhgUQIE7
	jNe1LIecewhpBJmrLm/mEd7yhEq+tlGAn2bZNncY0XgBmAiIZDRzQnZJOwlZUM3AcsNgqK6AkQ7
	h4HpWCf3hojcuKE2Zg+XbvQb4vWPF+1fuQ302be2r/D08Omw2sM321zDeGkL3Ydgb
X-Received: by 2002:a05:7022:ec83:b0:11b:a8e3:847d with SMTP id a92af1059eb24-11df0bb9d06mr1217913c88.10.1764752503265;
        Wed, 03 Dec 2025 01:01:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRTVucGI3GGzp21cTOp6QOsgxS3LQHECPyM0SFamlg6Es8lmswhOq1Q4cj+Q0PrZl+gRpSfw==
X-Received: by 2002:a05:7022:ec83:b0:11b:a8e3:847d with SMTP id a92af1059eb24-11df0bb9d06mr1217895c88.10.1764752502653;
        Wed, 03 Dec 2025 01:01:42 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb057cb0sm100001866c88.9.2025.12.03.01.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 01:01:41 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com,
        james.clark@arm.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v8 3/7] qcom-tgu: Add signal priority support
Date: Wed,  3 Dec 2025 01:00:51 -0800
Message-Id: <20251203090055.2432719-4-songwei.chai@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: -Y6Nut4DvZ5Th6ONgTd6X8lzGOnHEXkx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA3MCBTYWx0ZWRfX/UIMBstyV37x
 ccCxf+5t5DeX+vSZ7RtPTMw4BAbw9/B9NQlwJBHjAQnCGRRN76G2ig+JCS4YNm833jWOUxY/zmk
 3VvMdZ0Xq3/7MT51wp2nL3aIJVYPNqHC3sfdcCDeyG0yyFy1kcIM77PEdxEQ+MXZDMV6FYuJazs
 CdTD95qIgI6pVW1KNJcswKgiLZQmsoD1+BTGafNr46u79o3VZLwCVLrnx43TJqAlR5vSIKaYwOF
 40zAKApCX4meTOl8KldZVZjdr11rRjHWyS7TPhlpizQyoOQ0bPbAt3jC1jm+RIlZrquD9xCO1GO
 tcUM7l8A9UWMM1+seoKUoH4ADczapUBEpt1YYFswYjx76bmRUWA66uEBfFwJv7Dnneeu0zrnxfV
 NMn9RXftcJ7xeObc3qpO8jELFwZdQw==
X-Proofpoint-GUID: -Y6Nut4DvZ5Th6ONgTd6X8lzGOnHEXkx
X-Authority-Analysis: v=2.4 cv=c+WmgB9l c=1 sm=1 tr=0 ts=692ffc78 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HMmvC-cB1bDe2h_eLOYA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030070

Like circuit of a Logic analyzer, in TGU, the requirement could be
configured in each step and the trigger will be created once the
requirements are met. Add priority functionality here to sort the
signals into different priorities. The signal which is wanted could
be configured in each step's priority node, the larger number means
the higher priority and the signal with higher priority will be sensed
more preferentially.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |   7 +
 drivers/hwtracing/qcom/tgu.c                  | 155 ++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  | 111 +++++++++++++
 3 files changed, 273 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index ccc2bc92edcd..eafb0e0dd030 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -7,3 +7,10 @@ Description:
 		Accepts only one of the 2 values -  0 or 1.
 		0 : disable TGU.
 		1 : enable TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/step[0:7]_priority[0:3]/reg[0:17]
+Date:		December 2025
+KernelVersion	6.18
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the sensed signal with specific step and priority for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 368bb196b984..a1ad8d97e9d2 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -17,14 +17,120 @@
 
 DEFINE_CORESIGHT_DEVLIST(tgu_devs, "tgu");
 
+static int calculate_array_location(struct tgu_drvdata *drvdata,
+				   int step_index, int operation_index,
+				   int reg_index)
+{
+	return operation_index * (drvdata->max_step) * (drvdata->max_reg) +
+		step_index * (drvdata->max_reg) + reg_index;
+}
+
+static ssize_t tgu_dataset_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	int index;
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct tgu_attribute *tgu_attr =
+			container_of(attr, struct tgu_attribute, attr);
+
+	index = calculate_array_location(drvdata, tgu_attr->step_index,
+					 tgu_attr->operation_index,
+					 tgu_attr->reg_num);
+
+	return sysfs_emit(buf, "0x%x\n",
+			  drvdata->value_table->priority[index]);
+}
+
+static ssize_t tgu_dataset_store(struct device *dev,
+				 struct device_attribute *attr,
+				 const char *buf, size_t size)
+{
+	int index;
+	unsigned long val;
+
+	struct tgu_drvdata *tgu_drvdata = dev_get_drvdata(dev->parent);
+	struct tgu_attribute *tgu_attr =
+		container_of(attr, struct tgu_attribute, attr);
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	guard(spinlock)(&tgu_drvdata->lock);
+	index = calculate_array_location(tgu_drvdata, tgu_attr->step_index,
+					 tgu_attr->operation_index,
+					 tgu_attr->reg_num);
+
+	tgu_drvdata->value_table->priority[index] = val;
+	return size;
+}
+
+static umode_t tgu_node_visible(struct kobject *kobject,
+				struct attribute *attr,
+				int n)
+{
+	struct device *dev = kobj_to_dev(kobject);
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	int ret = SYSFS_GROUP_INVISIBLE;
+
+	struct device_attribute *dev_attr =
+		container_of(attr, struct device_attribute, attr);
+	struct tgu_attribute *tgu_attr =
+		container_of(dev_attr, struct tgu_attribute, attr);
+
+	if (tgu_attr->step_index < drvdata->max_step) {
+		ret = (tgu_attr->reg_num < drvdata->max_reg) ?
+			attr->mode : 0;
+	}
+	return ret;
+}
+
 static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 {
+	int i, j, k, index;
+
 	CS_UNLOCK(drvdata->base);
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < MAX_PRIORITY; j++) {
+			for (k = 0; k < drvdata->max_reg; k++) {
+				index = calculate_array_location(
+							drvdata, i, j, k);
+
+				writel(drvdata->value_table->priority[index],
+					drvdata->base +
+					PRIORITY_REG_STEP(i, j, k));
+			}
+		}
+	}
 	/* Enable TGU to program the triggers */
 	writel(1, drvdata->base + TGU_CONTROL);
 	CS_LOCK(drvdata->base);
 }
 
+static void tgu_set_reg_number(struct tgu_drvdata *drvdata)
+{
+	int num_sense_input;
+	int num_reg;
+	u32 devid;
+
+	devid = readl(drvdata->base + CORESIGHT_DEVID);
+
+	num_sense_input = TGU_DEVID_SENSE_INPUT(devid);
+	if (((num_sense_input * NUMBER_BITS_EACH_SIGNAL) % LENGTH_REGISTER) == 0)
+		num_reg = (num_sense_input * NUMBER_BITS_EACH_SIGNAL) / LENGTH_REGISTER;
+	else
+		num_reg = ((num_sense_input * NUMBER_BITS_EACH_SIGNAL) / LENGTH_REGISTER) + 1;
+	drvdata->max_reg = num_reg;
+}
+
+static void tgu_set_steps(struct tgu_drvdata *drvdata)
+{
+	u32 devid;
+
+	devid = readl(drvdata->base + CORESIGHT_DEVID);
+
+	drvdata->max_step = TGU_DEVID_STEPS(devid);
+}
+
 static int tgu_enable(struct coresight_device *csdev, enum cs_mode mode,
 		      void *data)
 {
@@ -122,6 +228,38 @@ static const struct attribute_group tgu_common_grp = {
 
 static const struct attribute_group *tgu_attr_groups[] = {
 	&tgu_common_grp,
+	PRIORITY_ATTRIBUTE_GROUP_INIT(0, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(0, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(0, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(0, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(1, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(1, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(1, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(1, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(2, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(2, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(2, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(2, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(3, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(3, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(3, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(3, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(4, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(4, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(4, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(4, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(5, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(5, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(5, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(5, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(6, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(6, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(6, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(6, 3),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 0),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 1),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 2),
+	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 3),
 	NULL,
 };
 
@@ -156,6 +294,23 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 
 	spin_lock_init(&drvdata->lock);
 
+	tgu_set_reg_number(drvdata);
+	tgu_set_steps(drvdata);
+
+	drvdata->value_table =
+		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);
+	if (!drvdata->value_table)
+		return -ENOMEM;
+
+	drvdata->value_table->priority = devm_kzalloc(
+		dev,
+		MAX_PRIORITY * drvdata->max_reg * drvdata->max_step *
+			sizeof(*(drvdata->value_table->priority)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->priority)
+		return -ENOMEM;
+
 	drvdata->enable = false;
 	desc.type = CORESIGHT_DEV_TYPE_HELPER;
 	desc.pdata = adev->dev.platform_data;
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 1a55da90f521..444804e52337 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -9,6 +9,111 @@
 /* Register addresses */
 #define TGU_CONTROL 0x0000
 
+#define TGU_DEVID_SENSE_INPUT(devid_val) ((int) BMVAL(devid_val, 10, 17))
+#define TGU_DEVID_STEPS(devid_val) ((int)BMVAL(devid_val, 3, 6))
+#define NUMBER_BITS_EACH_SIGNAL 4
+#define LENGTH_REGISTER 32
+
+/*
+ *  TGU configuration space                              Step configuration
+ *  offset table                                         space layout
+ * x-------------------------x$                          x-------------x$
+ * |                         |$                          |             |$
+ * |                         |                           |   reserve   |$
+ * |                         |                           |             |$
+ * |coresight management     |                           |-------------|base+n*0x1D8+0x1F4$
+ * |     registe             |                     |---> |prioroty[3]  |$
+ * |                         |                     |     |-------------|base+n*0x1D8+0x194$
+ * |                         |                     |     |prioroty[2]  |$
+ * |-------------------------|                     |     |-------------|base+n*0x1D8+0x134$
+ * |                         |                     |     |prioroty[1]  |$
+ * |         step[7]         |                     |     |-------------|base+n*0x1D8+0xD4$
+ * |-------------------------|->base+0x40+7*0x1D8  |     |prioroty[0]  |$
+ * |                         |                     |     |-------------|base+n*0x1D8+0x74$
+ * |         ...             |                     |     |  condition  |$
+ * |                         |                     |     |   select    |$
+ * |-------------------------|->base+0x40+1*0x1D8  |     |-------------|base+n*0x1D8+0x60$
+ * |                         |                     |     |  condition  |$
+ * |         step[0]         |-------------------->      |   decode    |$
+ * |-------------------------|-> base+0x40               |-------------|base+n*0x1D8+0x50$
+ * |                         |                           |             |$
+ * | Control and status space|                           |Timer/Counter|$
+ * |        space            |                           |             |$
+ * x-------------------------x->base                     x-------------x base+n*0x1D8+0x40$
+ *
+ */
+#define STEP_OFFSET 0x1D8
+#define PRIORITY_START_OFFSET 0x0074
+#define PRIORITY_OFFSET 0x60
+#define REG_OFFSET 0x4
+
+/* Calculate compare step addresses */
+#define PRIORITY_REG_STEP(step, priority, reg)\
+	(PRIORITY_START_OFFSET + PRIORITY_OFFSET * priority +\
+	 REG_OFFSET * reg + STEP_OFFSET * step)
+
+#define tgu_dataset_rw(name, step_index, type, reg_num)                  \
+	(&((struct tgu_attribute[]){ {                                   \
+		__ATTR(name, 0644, tgu_dataset_show, tgu_dataset_store), \
+		step_index,                                              \
+		type,                                                    \
+		reg_num,                                                 \
+	} })[0].attr.attr)
+
+#define STEP_PRIORITY(step_index, reg_num, priority)                     \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_PRIORITY##priority, \
+			reg_num)
+
+#define STEP_PRIORITY_LIST(step_index, priority)  \
+	{STEP_PRIORITY(step_index, 0, priority),  \
+	 STEP_PRIORITY(step_index, 1, priority),  \
+	 STEP_PRIORITY(step_index, 2, priority),  \
+	 STEP_PRIORITY(step_index, 3, priority),  \
+	 STEP_PRIORITY(step_index, 4, priority),  \
+	 STEP_PRIORITY(step_index, 5, priority),  \
+	 STEP_PRIORITY(step_index, 6, priority),  \
+	 STEP_PRIORITY(step_index, 7, priority),  \
+	 STEP_PRIORITY(step_index, 8, priority),  \
+	 STEP_PRIORITY(step_index, 9, priority),  \
+	 STEP_PRIORITY(step_index, 10, priority), \
+	 STEP_PRIORITY(step_index, 11, priority), \
+	 STEP_PRIORITY(step_index, 12, priority), \
+	 STEP_PRIORITY(step_index, 13, priority), \
+	 STEP_PRIORITY(step_index, 14, priority), \
+	 STEP_PRIORITY(step_index, 15, priority), \
+	 STEP_PRIORITY(step_index, 16, priority), \
+	 STEP_PRIORITY(step_index, 17, priority), \
+	 NULL                   \
+	}
+
+#define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_priority" #priority \
+	})
+
+enum operation_index {
+	TGU_PRIORITY0,
+	TGU_PRIORITY1,
+	TGU_PRIORITY2,
+	TGU_PRIORITY3,
+};
+
+/* Maximum priority that TGU supports */
+#define MAX_PRIORITY 4
+
+struct tgu_attribute {
+	struct device_attribute attr;
+	u32 step_index;
+	enum operation_index operation_index;
+	u32 reg_num;
+};
+
+struct value_table {
+	unsigned int *priority;
+};
+
 /**
  * struct tgu_drvdata - Data structure for a TGU (Trigger Generator Unit)
  * @base: Memory-mapped base address of the TGU device
@@ -16,6 +121,9 @@
  * @csdev: Pointer to the associated coresight device
  * @lock: Spinlock for handling concurrent access
  * @enable: Flag indicating whether the TGU device is enabled
+ * @value_table: Store given value based on relevant parameters.
+ * @max_reg: Maximum number of registers
+ * @max_step: Maximum step size
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -28,6 +136,9 @@ struct tgu_drvdata {
 	struct coresight_device *csdev;
 	spinlock_t lock;
 	bool enable;
+	struct value_table *value_table;
+	int max_reg;
+	int max_step;
 };
 
 #endif
-- 
2.34.1


