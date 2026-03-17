Return-Path: <devicetree+bounces-276435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNrLKxzKuGmcjQEAu9opvQ
	(envelope-from <devicetree+bounces-276435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:27:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB492A3309
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C59A1301DD55
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2DD2E1746;
	Tue, 17 Mar 2026 03:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aPO0w6Tg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sohum5mL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DE62DECDF
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773718024; cv=none; b=gjG1KMyrj1wM3EKRLLs3x4NWbPzhayhhrmES0GK3LxU99o8NnZ/GuScOoK1M5T+qVn9sYMKrPV00eM8bh7GjOpJLmuhSwUw6B6bUS4RCIGvKg5/ADlZ47j0fL/GCiJkrnuESZtftlHUyAoTSxmctnaR/QCgeBQdXmeAk3XHfMSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773718024; c=relaxed/simple;
	bh=6OxTIth3XLaCQJK5ocPj3o3D7d/7hhTYuzmIGv6d7Yk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LhemgSZbcu+TKC89ojJvs5tz/pfgx3cKCDJoeM7AClOXmm7mi9rdA8lwGMdjRJImKc6Vbxxz4Loe1uRMSmjO517o3P8wnr5i/F47rM4FRrGw/Ia+RPTQfaMRdJTGutmn7UiGHc/kjXZ1jAIdhMyiutR3CaCUBwkFqvG+2SfiDyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aPO0w6Tg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sohum5mL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H0u64t796131
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UWTjUnOEy98
	pmy4x0tkR2J5JPcNFw5eKf+O7f0LuM9A=; b=aPO0w6TgGjYeVktFxVVaiTNR6+U
	dzeVwueX4io/S9K0bNHM2PAv4mbgaACi4zMDSikIoUoi86+51d7/SqarevExYWP0
	P1So0JdSxP2L0va2NeIIKsHkajDq13WuDiIHkr2/nWomDx+INK0XKI6ZNWGYz92c
	MMlL+XoiPyJzW23O5rTu+z5Wf9usBKtwiJWGtiUYQiCYnk+ZiAzlQbE2YmyDnx/4
	23x7ZJtxeJWbYuU6uPfJS6y5WdFtUkH0IXXzRDKqTCpw5dHa4L98ErmSug365Rz9
	+t82dnO86nAGA00WZOAuNztQ1+VfqqaaEa5RIPhZ7HKMtI+MoOfPXExQ5FQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxm6d25kc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:27:00 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-12711ec96fbso101021483c88.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773718019; x=1774322819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UWTjUnOEy98pmy4x0tkR2J5JPcNFw5eKf+O7f0LuM9A=;
        b=Sohum5mLqk7AfWKuZIDX0UIBCzsQLwqOMosdsfvnCipue+13Z43HyhIy/rHJw6Nhmb
         Tb+Cckgnj0kDB2GYnzz6YfQZbRrOqHc6YbMiJWK6M2MBUkgF7AL27NrLdD7aJuYW29X5
         IAFb7qZ8oYfbalDGFj/mc88lJVKBHaRBXVBJ4tI/9fuSZTKZA/9bO9IF2OUXjgY7xhXF
         hl5i3NzU1iPi0B4A3Zr9lHKzr9yTj/dP/MgGhzUW/Scv3TNXSzjO/emm6kdyf6fdS6L4
         vDk3bHWmay6BFJvgwNJ5rHErRQShWzh3VS6HS+zFP8TkTIonCAGsYfdS/j4dST/vTECF
         B1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773718019; x=1774322819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UWTjUnOEy98pmy4x0tkR2J5JPcNFw5eKf+O7f0LuM9A=;
        b=fil4hb4SQpVGITqHzeh9WZ7sYP4s+unUQqP6W4ZPrGMIGhDsbeh2Tc8HTJHDndrPE+
         2KCY4qDzSYePv68lSvDfXTrKy9xxdwwF/D6nAKsQjVBzyt4hM8bfPsrQUBZqXv3Dy9lA
         TZVhUFIwXserFax1H8XNV6bv0Vu2TF85NKhpAzxzYQxIV5/Kgoz0lNCnvyhEZMpPnfgc
         YY2lT+Joso5PCDeXft+e3hCuweK/dnyM5uwkcxoFcotvHTBOZN92cO1YdLikwnBaK9t3
         kMtO4R6RsQUtFiw9cbBj+YieznaOba1X83i3uoAvmLrdaTFOjTYvLyDCd9DsqdFpTyZb
         itAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsKJ9IDTeHAFrNVkX/GSETmqOYqx7tsLVnRC1l3q9fTJXDv23k/TRaEkrZND4VD9fetm/YsfyHS9X5@vger.kernel.org
X-Gm-Message-State: AOJu0YxdFkNYHCqWwUhTkRD5A1O2YbP3bDWz0WMZb2mC3L+ivE1RzJP1
	dnyy5TudT4PU8k67c/b+qQ8HOp5mZBmmXhLDy7fMlRFemZxGyv1xFzbJXYELwFNkAT53exqubtJ
	I4TI4mh8xEDWa1YTxhsztT4hmFbDJr6fwoBUb10LUQDPbnprHXia21jnRciGmXNHm
X-Gm-Gg: ATEYQzw2homCYg5sbIzB9tyZ3McI3xSQgTFZOwauGif1kTv1Kk7ro2jrldb0bRUMcjZ
	WXtmC3Aid+p7FzkGFQGNg9tHJVZFRMyV5ZnD0qmOZaQPgxS2M7Lmwt5BWRMEJJnd7skhWIorH/X
	hmJFSgB0F2hPpw5xxhHjx8J1/7WoNHCBo+aZbWLoLrhj3G8xVFRM5UCTxJQmYrVXgSqOStMWOlE
	IyLbJweCbKWMxVGj4MwGA1+ny/wEqvtVLZA5elW/L1vGweohB8vnB4gd+NXEPLBAzpgGLJjVouj
	tOns4fzI/FXa/bmkyY94JCFCeZDX6CE1dbNJXOor83P8vL24Zfr9QSLWQqSKiHRi8RfF4gyABRF
	tg3J9j1dMrRwea/T+zXWkotS/lHt7mzABh3YamaJhBwj5mDmbv/vGT0rpMtlrNfsQjqm0DITehv
	4k
X-Received: by 2002:a05:693c:3104:b0:2be:126c:e335 with SMTP id 5a478bee46e88-2bea54504e4mr6969072eec.10.1773718019289;
        Mon, 16 Mar 2026 20:26:59 -0700 (PDT)
X-Received: by 2002:a05:693c:3104:b0:2be:126c:e335 with SMTP id 5a478bee46e88-2bea54504e4mr6969050eec.10.1773718018436;
        Mon, 16 Mar 2026 20:26:58 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3ef844sm17445895eec.15.2026.03.16.20.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 20:26:57 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, konrad.dybcio@oss.qualcomm.com,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v12 3/7] qcom-tgu: Add signal priority support
Date: Mon, 16 Mar 2026 20:26:35 -0700
Message-Id: <20260317032639.2393221-4-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
References: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=c7+mgB9l c=1 sm=1 tr=0 ts=69b8ca04 cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=aHbVEu0FunmFpxPyS6YA:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-ORIG-GUID: rGJFLOxGjuzbrX7ZrSbbGIgpVrVrhAni
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDAyNyBTYWx0ZWRfXzEg38LuZSgcl
 9DhQPwaBamQWC2KGduv+GxQy4vdkEuiufrWaFYA84HDEleGvfqk32LkvDCRX/8xBDlEstgAOu/P
 +E9zKmU8KZLGNc07JzIwyUdraKd9lrTGpKcFohGyw2ktQB9OjyDvFqsI6ftqN8MCY7nXMbeofXW
 yJNRIDeUsoAIWPoQ63hFSbMARwzIQNT5yykjRx44TGvHndHYHK+LL+Ywcbp8uhy/noO6p80dfrO
 359HgDUdrEaVHLvE8uqRnj5UbO6DmNZDAHeWdZmQ0vqGvZwzzF3iAb8Du8nFGxosmzwO2O5/HRo
 mQBWIghfxxfnzH+rA/yatGFxqp2CqeZucArT657KAB7o4TBkw63bejM8ryR6gkXQoQ2TOP2GFUj
 OwO0Y03sK3xdeitIDmCZNJpiw1XU52mkB853muqiha/U6Xg4amYhfekLdIP8abl+hAIFtq6Eds/
 cLU9G3mCo3TO/akjOiA==
X-Proofpoint-GUID: rGJFLOxGjuzbrX7ZrSbbGIgpVrVrhAni
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170027
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276435-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8FB492A3309
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Like circuit of a Logic analyzer, in TGU, the requirement could be
configured in each step and the trigger will be created once the
requirements are met. Add priority functionality here to sort the
signals into different priorities. The signal which is wanted could
be configured in each step's priority node, the larger number means
the higher priority and the signal with higher priority will be sensed
more preferentially.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |   7 +
 drivers/hwtracing/qcom/tgu.c                  | 161 ++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  | 114 +++++++++++++
 3 files changed, 282 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index ead237bb7d89..a1dfcd366d92 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -7,3 +7,10 @@ Description:
 		Accepts only one of the 2 values -  0 or 1.
 		0 : disable TGU.
 		1 : enable TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_priority[0:3]/reg[0:17]
+Date:		March 2026
+KernelVersion	7.1
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the sensed signal with specific step and priority for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 58c19f12f3d7..14d6ad410d89 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -14,14 +14,123 @@
 
 #include "tgu.h"
 
+static int calculate_array_location(struct tgu_drvdata *drvdata,
+				    int step_index, int operation_index,
+				    int reg_index)
+{
+	return operation_index * (drvdata->num_step) * (drvdata->num_reg) +
+		step_index * (drvdata->num_reg) + reg_index;
+}
+
+static ssize_t tgu_dataset_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+	struct tgu_attribute *tgu_attr =
+			container_of(attr, struct tgu_attribute, attr);
+	int index;
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
+	struct tgu_drvdata *tgu_drvdata = dev_get_drvdata(dev);
+	struct tgu_attribute *tgu_attr =
+		container_of(attr, struct tgu_attribute, attr);
+	unsigned long val;
+	int index;
+	int ret;
+
+	ret = kstrtoul(buf, 0, &val);
+	if (ret)
+		return ret;
+
+	guard(spinlock)(&tgu_drvdata->lock);
+	index = calculate_array_location(tgu_drvdata, tgu_attr->step_index,
+					 tgu_attr->operation_index,
+					 tgu_attr->reg_num);
+
+	tgu_drvdata->value_table->priority[index] = val;
+
+	return size;
+}
+
+static umode_t tgu_node_visible(struct kobject *kobject,
+				struct attribute *attr,
+				int n)
+{
+	struct device *dev = kobj_to_dev(kobject);
+	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
+	struct device_attribute *dev_attr =
+		container_of(attr, struct device_attribute, attr);
+	struct tgu_attribute *tgu_attr =
+		container_of(dev_attr, struct tgu_attribute, attr);
+
+	if (tgu_attr->step_index >= drvdata->num_step)
+		return SYSFS_GROUP_INVISIBLE;
+
+	if (tgu_attr->reg_num >= drvdata->num_reg)
+		return 0;
+
+	return attr->mode;
+}
+
 static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 {
+	int i, j, k, index;
+
 	TGU_UNLOCK(drvdata->base);
+	for (i = 0; i < drvdata->num_step; i++) {
+		for (j = 0; j < MAX_PRIORITY; j++) {
+			for (k = 0; k < drvdata->num_reg; k++) {
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
 	TGU_LOCK(drvdata->base);
 }
 
+static void tgu_set_reg_number(struct tgu_drvdata *drvdata)
+{
+	int num_sense_input;
+	int num_reg;
+	u32 devid;
+
+	devid = readl(drvdata->base + TGU_DEVID);
+
+	num_sense_input = TGU_DEVID_SENSE_INPUT(devid);
+	num_reg = (num_sense_input * TGU_BITS_PER_SIGNAL) / LENGTH_REGISTER;
+
+	if ((num_sense_input * TGU_BITS_PER_SIGNAL) % LENGTH_REGISTER)
+		num_reg++;
+
+	drvdata->num_reg = num_reg;
+}
+
+static void tgu_set_steps(struct tgu_drvdata *drvdata)
+{
+	u32 devid;
+
+	devid = readl(drvdata->base + TGU_DEVID);
+
+	drvdata->num_step = TGU_DEVID_STEPS(devid);
+}
+
 static int tgu_enable(struct device *dev)
 {
 	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
@@ -111,6 +220,38 @@ static const struct attribute_group tgu_common_grp = {
 
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
 
@@ -118,6 +259,8 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 {
 	struct device *dev = &adev->dev;
 	struct tgu_drvdata *drvdata;
+	unsigned int *priority;
+	size_t priority_size;
 	int ret;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
@@ -133,12 +276,30 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 
 	spin_lock_init(&drvdata->lock);
 
+	tgu_set_reg_number(drvdata);
+	tgu_set_steps(drvdata);
+
 	ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
 	if (ret) {
 		dev_err(dev, "failed to create sysfs groups: %d\n", ret);
 		return ret;
 	}
 
+	drvdata->value_table =
+		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);
+	if (!drvdata->value_table)
+		return -ENOMEM;
+
+	priority_size = MAX_PRIORITY * drvdata->num_reg * drvdata->num_step;
+
+	priority = devm_kcalloc(dev, priority_size,
+				sizeof(*drvdata->value_table->priority),
+				GFP_KERNEL);
+	if (!priority)
+		return -ENOMEM;
+
+	drvdata->value_table->priority = priority;
+
 	drvdata->enabled = false;
 
 	pm_runtime_put(&adev->dev);
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index dd7533b9d735..df570c89ffd7 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -10,6 +10,114 @@
 #define TGU_CONTROL		0x0000
 #define TGU_LAR		0xfb0
 #define TGU_UNLOCK_OFFSET	0xc5acce55
+#define TGU_DEVID		0xfc8
+
+#define TGU_DEVID_SENSE_INPUT(devid_val) \
+	((int)FIELD_GET(GENMASK(17, 10), devid_val))
+#define TGU_DEVID_STEPS(devid_val) \
+	((int)FIELD_GET(GENMASK(6, 3), devid_val))
+#define TGU_BITS_PER_SIGNAL 4
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
+#define STEP_PRIORITY_LIST(step_index, priority) \
+	{STEP_PRIORITY(step_index, 0, priority), \
+	 STEP_PRIORITY(step_index, 1, priority),  \
+	 STEP_PRIORITY(step_index, 2, priority),	 \
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
 
 static inline void TGU_LOCK(void __iomem *addr)
 {
@@ -35,6 +143,9 @@ static inline void TGU_UNLOCK(void __iomem *addr)
  * @dev: Pointer to the associated device structure
  * @lock: Spinlock for handling concurrent access to private data
  * @enabled: Flag indicating whether the TGU device is enabled
+ * @value_table: Store given value based on relevant parameters
+ * @num_reg: Maximum number of registers
+ * @num_step: Maximum step size
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -46,6 +157,9 @@ struct tgu_drvdata {
 	struct device *dev;
 	spinlock_t lock;
 	bool enabled;
+	struct value_table *value_table;
+	int num_reg;
+	int num_step;
 };
 
 #endif
-- 
2.34.1


