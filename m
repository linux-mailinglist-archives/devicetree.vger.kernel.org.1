Return-Path: <devicetree+bounces-234480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E0086C2DA47
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 19:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5829734493B
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 18:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C827288CA3;
	Mon,  3 Nov 2025 18:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pXJ3DqHI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IBrMzvDN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C81288510
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 18:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762194020; cv=none; b=LLXzpGaMzUz0k6s9ja/7ss9C7sX4f2blY14EwuzuYZgSuY75+USWUU13h8L033uu89KLHjfqRIjkHsfeVNtYADegZM2cQoNsSvBXdT4epzCnPhsRv51cVU46dmYfjmrL9DJFMnvUKKAcT2QZjKfkfv8ziKUSu0zenZ6yqxaqhd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762194020; c=relaxed/simple;
	bh=Q6bHgr1oqrBnoYvPGNlD5xwgEH7qcJBuNaL/oeVsRJg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bsjF8ttNXol7TryEvpQxzK82MBXG6pFS14tOHEbLzk5u5lHhLYpO5MVtQoGz9HqxeSd755hxYC3mPP0HWWy4ozQZ4Cjw1UWIQF01yfAJ8Fh/UEI6WZixkdhX6TwAz8F8SMP7jzexc4JBL0KD4ZFtDJR1EX5GjbInVB43zu+HEyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pXJ3DqHI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IBrMzvDN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H64GN3658870
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 18:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8tRAlNWUh1T
	DOg1qx9b2GlE5CtgGaW52tx1QaEy3eJ0=; b=pXJ3DqHIdtjVmn9uoiKese2ZzIn
	WtnwCm9yQzYmydIbk7up1bmSWFRK3oMQ2/oLyrNKQrtcXsb6LC9vCGf26PyoM8I7
	JbZtsFuUPpFQfknm15cAiNiIfKkJOOj+2NLHThQNAmQQbAKh7vS6OqTgGc27A+7r
	5SpwOIQyRIknnP3IAxHfW68++2Pyg/MkqCaGfIg3abMtSPTttwvyh+4ikEhvHI51
	fkPeUj3x8+SAJDMMWJUssNG7oZIYWarA2Wn4L7xNvGdYtfBJ9AdZsp8wzewJkUJC
	7C+Xvz/ZtQkifsTpKdqEAh7/IMEhERQpoKn7QmA8pcrNjSZaZo6apiqeWiA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70ge879f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:20:18 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eb7853480dso138510941cf.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762194018; x=1762798818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8tRAlNWUh1TDOg1qx9b2GlE5CtgGaW52tx1QaEy3eJ0=;
        b=IBrMzvDN/T/zF4CG627hQTakjeGEZSBz9UwqwmvoIt5gBN3FPhwT/oncMf+tlovUcW
         ECvELNeIiRdrkt1zA13iRmmwoR9qosy5CB54UX+UqgELTKE02q0FFrrhG3SmSF2LCt9N
         NMrt80PyPVY3yY9cbd/2PA1F6BGioF/aIJ3C7uniHYlAbueybx+I8lj6JKbglZyPu1of
         o0mIv44EBpueQ51Qho/D5KemQnILyCvEaa6vQCYGxdeltvGMuB6XYN9wNO6Zr02mAXjW
         cW1Ynd/c+EIXd47/h5wk03OCE9whRDdFFSQfNX/tJKG/IKOIengA4z0VC/IAB3fLWe0q
         Ns1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762194018; x=1762798818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tRAlNWUh1TDOg1qx9b2GlE5CtgGaW52tx1QaEy3eJ0=;
        b=WuUjxegc6Ichd7kRN7wESibPO/sQT1TuTfr9CbPw95Nzh1q1Gysm7xXJlPlfmiV/YR
         VA8qlW67mvkw079NCZDBCGKHQN7yESHd3DJv0l0LCNTi9Pd4wJmEEgmH6tAmwV3cEefv
         vSry0lumnBqA9MsGHd5knU6V4Jgkpxx7mjvulSP7BTlPA0+HNhp45ehVKTDGysZNagmw
         3Lt6zkSdZ3rNHqeDxYOQ1Z1HwlQfXxXDAdaxkn/JRaoBsUSBxHmL/lG8zo4Mx+FvZINZ
         tbBqn06h1mj8gK2aiZE6ZQ05v6MoTFBzVC8gxlOKz6mszxp6Lj5bGVY8+rxGq5xASoOp
         EF4g==
X-Forwarded-Encrypted: i=1; AJvYcCXF4jmx9V86nH7QGGqovZm9k+ld1tFcms042ailnAqJ8b/0iQcPtpPO5t8wgHywHcqpSnG22s4/RsZp@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ6xdvqXtw27Z3JYkRTjZrdyZgQF/DFJgSx8q1X9XMFhr6Wd1j
	Sya2p7YapD1aRkzLdflhW8t9H3LNPlozYtkF6aDldfZORp0Uc2FKuyQ9gx+ymtaGZt9klDIdAjj
	pHYwW6mEFLnRICpOoyYQFjS7RANDKrQVloa3HoIJoWjYjIdIpGwCgC6bBKqfGzfc7
X-Gm-Gg: ASbGncsmTx599YvYr+0adA/glQiGOvVExUHLF+ynyIVkaRW6UIbx5Pannuu50Szl62R
	/fozplth1E0Z3LAQVHQDCwvnUrpJgw03TI03AdwX/tQdFHazpVnfLdPxkNkpVJ81SNzlYNP9YPb
	yTjx97y8on/FpRZJK7d6Fxuy8om4hou+y+cXd3vYmNOMj5NPrE2/fkxLQeOlN1RKmi7iHZCmFOZ
	9zOG5z307kYNyo/dfA0PzBQxzaGAST9X4ONaEleJb9asDBwik8jjeREfhKcGleI345yvh3EfYs6
	B43rYk6Q8ccQSAif4JegKxdV/O2dKB5NP3YKzw1/ex9dq/A0YGVoUswaycUaloHlx2/z2Md9vtt
	ebHx8mQZ2Cxa9d7+jseMsfKJ8/mw+xLBpgLBzGyAVdsIuxPfMW5qXoT8rUMcmMx2eEw==
X-Received: by 2002:ac8:5c82:0:b0:4b7:9f68:52d6 with SMTP id d75a77b69052e-4ed30d84740mr199283551cf.9.1762194017602;
        Mon, 03 Nov 2025 10:20:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2qfi+M04ye33cTnZO0lu9yM7vkU12Xr2q2GEjdvMB7mCD27JrucNB+izaWmXtzykpET0+bg==
X-Received: by 2002:ac8:5c82:0:b0:4b7:9f68:52d6 with SMTP id d75a77b69052e-4ed30d84740mr199283101cf.9.1762194017193;
        Mon, 03 Nov 2025 10:20:17 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:8842:5746:daeb:a8f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec2csm169096545e9.11.2025.11.03.10.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 10:20:16 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 2/5] power: reset: qcom-pon: Add support for WARM reset
Date: Mon,  3 Nov 2025 19:20:03 +0100
Message-Id: <20251103182006.1158383-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: GWyE54Ab4ajhaEDDQ_2e37MrwDae8VwV
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=6908f262 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=SLKSYyjenuDOKbfwxIIA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDE2NCBTYWx0ZWRfXwehAab73v+kV
 8LsnN8nzr/5ud+in16oQRc57jfzhwyymJOa8eaO7+JGcMrvjy+1gAD+pBUVJ8JPoe24EBJccSUc
 Kb2XH78pFV82RnGh6I/EyWf14usSTe8Zp1kh7oO4i74tjdCAYNE8Ly+b2CF5A58+2RXQO7c+ftq
 07+/cfVePjmb+9EBmrXQF4h+hs+Pp/X6NXU1YkdE91FAkuLaNcfrMXFwE7Fc9ZECH0RL6BpI1rU
 KYp7s8SpiD12WAp1SQUtzzvX9Ue3CUv+5KckL5k3D8Pty810TSZbNYuzsyQlHTFe/KSlj1j0yjc
 9+O3G6/ZxB5yp0l07g14tMNVUMYCMnzpZvbDFzBdgByLE6JqJYG7fm8f5r9LwC7ERIiqW8hViJx
 wZsjXZmwOUd90scoxIY0X8k3Y+tWuA==
X-Proofpoint-GUID: GWyE54Ab4ajhaEDDQ_2e37MrwDae8VwV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030164

This mechanism can be used when firmware lacks proper warm-reset handling,
for example, when the PSCI SYSTEM_RESET2 function is not implemented.
It enables the warm reset functionality via the PMIC.

This fallback is only enabled if qcom,warm-reset property is present.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/power/reset/qcom-pon.c | 47 ++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset/qcom-pon.c
index 7e108982a582..684e9fe9987d 100644
--- a/drivers/power/reset/qcom-pon.c
+++ b/drivers/power/reset/qcom-pon.c
@@ -19,12 +19,20 @@
 
 #define NO_REASON_SHIFT			0
 
+#define PON_SW_RESET_S2_CTL				0x62
+#define		PON_SW_RESET_S2_CTL_WARM_RST	0x01
+#define PON_SW_RESET_S2_CTL2				0x63
+#define		PON_SW_RESET_S2_CTL2_RST_EN	BIT(7)
+#define PON_SW_RESET_GO					0x64
+#define		PON_SW_RESET_GO_MAGIC		0xa5
+
 struct qcom_pon {
 	struct device *dev;
 	struct regmap *regmap;
 	u32 baseaddr;
 	struct reboot_mode_driver reboot_mode;
 	long reason_shift;
+	bool warm_reset;
 };
 
 static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
@@ -44,6 +52,37 @@ static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
 	return ret;
 }
 
+static int pm8916_pon_reset(struct sys_off_data *data)
+{
+	struct qcom_pon *pon = data->cb_data;
+	int ret;
+
+	if (!pon->warm_reset || data->mode != REBOOT_WARM)
+		return NOTIFY_DONE;
+
+	ret = regmap_write(pon->regmap,
+			   pon->baseaddr + PON_SW_RESET_S2_CTL,
+			   PON_SW_RESET_S2_CTL_WARM_RST);
+	if (ret)
+		return NOTIFY_BAD;
+
+	ret = regmap_update_bits(pon->regmap,
+				 pon->baseaddr + PON_SW_RESET_S2_CTL2,
+				 PON_SW_RESET_S2_CTL2_RST_EN,
+				 PON_SW_RESET_S2_CTL2_RST_EN);
+	if (ret)
+		return NOTIFY_BAD;
+
+	ret = regmap_write(pon->regmap, pon->baseaddr + PON_SW_RESET_GO,
+			   PON_SW_RESET_GO_MAGIC);
+	if (ret)
+		return NOTIFY_BAD;
+
+	mdelay(100);
+
+	return NOTIFY_DONE;
+}
+
 static int qcom_pon_probe(struct platform_device *pdev)
 {
 	struct qcom_pon *pon;
@@ -80,8 +119,16 @@ static int qcom_pon_probe(struct platform_device *pdev)
 		}
 	}
 
+	pon->warm_reset = of_property_read_bool(pdev->dev.of_node, "qcom,warm-reset");
+
 	platform_set_drvdata(pdev, pon);
 
+	/* Higher priority than psci to handle warm-reset properly */
+	error = devm_register_sys_off_handler(&pdev->dev, SYS_OFF_MODE_RESTART, SYS_OFF_PRIO_HIGH,
+					      pm8916_pon_reset, pon);
+	if (error)
+		return dev_err_probe(&pdev->dev, error, "reboot registration fail\n");
+
 	return devm_of_platform_populate(&pdev->dev);
 }
 
-- 
2.34.1


