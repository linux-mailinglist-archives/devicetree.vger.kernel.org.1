Return-Path: <devicetree+bounces-234640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E04EC2F788
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 07:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BC86189CC37
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 06:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C047A2DECAA;
	Tue,  4 Nov 2025 06:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGSQHLI2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K9lTHiKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D332DC333
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 06:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762238539; cv=none; b=EpCroXELv40Tfeal+quCXAbZRluoQfD2jkJKebV8vOP+tciabuXmOScKk/fqRXIpdWQEV7edWZ38q8Tbt97NjsJB/QLjfGe13VQWD9R7Lb9T3bNgSh7BCITW57vpTAJUlT4raJmxcsISCfLOE+rh/Pc59JcmWmvacMCWAf7yBqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762238539; c=relaxed/simple;
	bh=8MECySq9f2yYRo/KHR/AYSi/cE92xfhMQrQQpM9o+N4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D/5bXIN6MVptrGhQKsNLutzFTCyJB6q800b+fJ2USkwk5ZPrbTU/lQc3dIGN/Yw7+JqNjRlPR2nizD77DJ0GNeulU7MPt53P6TX53RBOQ8prtveUx9PFbqoTllbKbfsoZn4NYytSr6h68M8/b9UtXLiCmWMNgsbMtOpKAwUEstc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGSQHLI2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K9lTHiKF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42o1oh3616996
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 06:42:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6C+1a3faEq3
	osYqqD/ZZ/4ihi2dgZCB7lp1aXLGvTjA=; b=kGSQHLI2RCSvkzD437aCsDIyb6E
	D5ZlBYQggQsULBtnCiS1DGAm/jHoLovuJrzfA7pOXZXAVxxx2/a9cSSlPZn5Nq7W
	SWPY8y9m1AfexUtrkkb7N+KoUDROG9jdSiGhSTB1nLEWP6dxxmzLjeJF3p+Nsd5R
	YNAHpTjox0YkS5H/Tbuk0+8Hx763xdCpLH0IfyWMs4qmotd7lyGMZWR2SWySw9Uk
	TjOzIvPxSFfh7V7xUowgJpIRWw96DZDwMaoDG+xzY+l5VlHq3ZTncXR+kKAebFJT
	nQYJrlH6EC3WNF5gBf+02iIyyxkDE/VVZ6/GR8c7hWeaXONV3W2M42tcALw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhsx2e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:42:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b99d6bd6cc9so2127160a12.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 22:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762238536; x=1762843336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6C+1a3faEq3osYqqD/ZZ/4ihi2dgZCB7lp1aXLGvTjA=;
        b=K9lTHiKFSFx1UlQDD01KqRnT3KNu7XUdBEONUbb6uyR5v4m8HqVGG+8ltZ8vJGC5n2
         6mtbUehMET7MM1a6zIWJFmP1hbGt5QL9On89jzZoNp+Ph6Pi4eqoJjXDM8Ew/5+dfaAj
         KX0qVhN5IWoVy5kHMcQpQIf+MVbZNJNGpZQxyVYKeeWQ/LNljSFShg4TuBib696yGgiy
         8P/FfYM6h3Wg/Rz4DE6S4EJX8aDzJhK3RL/nEfkxEerN5vrg5FHsIgRbLdDahNnsGoMY
         KC9feZ75qxfXNfKFxvsHFY/bmwkOgOt6qJFoaLM6i1GCY1mqI8Ijg+nCgx5q7EpX6Oam
         P+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762238536; x=1762843336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6C+1a3faEq3osYqqD/ZZ/4ihi2dgZCB7lp1aXLGvTjA=;
        b=a4DBfCYS8BA+EAiOx78YTObqQmhrMA1pRBaJQ5Hg3WGguGdLljCbb7wzL5WMrY5ffi
         WTVt5/pXG3KvY97D7eBlqVpnZRIvotS7m7Jt4PPp3moiOexOZvvSZ/iLUzQRx+nWi2kz
         MoThz4P23GNt7jFJqut2rDMeNwWRRy/hzSolh+pcGP9ZKUdjmJ8P6IvST6LQ7ZvpPPLW
         lh9rNu1YhmK94csPyykc8wgcnQG9z1zmNAqnXvuiqPbhtFVs+Z3rKWaCxUWLhDVoqVkZ
         EBgdchcHVgCA/tUKLYFtOQs/HJl1QJw4ZQxXnh0ihJKRrJ4pB+tHwvVJOUQx9bajg0bj
         PMJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYiqE7GCnSfrBxJWqMzi3/aeY0yBzjU9LRtS2pvJvMuWDZbbv5YvvPYaRXdtbg7B/BbTqt0V9SIM+V@vger.kernel.org
X-Gm-Message-State: AOJu0YwXg7kEGYD4ULl6C9ODA73cFoMdczQz9lHsVLmoqsG3eDNrJd3E
	d6vPBVCo6DUff10Bp1Nii5+cP4sC1lAnOH757OnaYge0ozC3Ncl0r3YiteyvGkcpqeVitDXfEYB
	xdnEaT17//N9xvzQkiW08UVk++kkHFlznDnx1v43wYFH7P8FwvwIHknsH1sLXtDhf
X-Gm-Gg: ASbGncutB4h7TbF+vOwu8FDSGuD6QxRQQwKE8tued0sfXssbLyZ4RvxK/S8Df95FImX
	qA0A8hCnZDxmSyzrljnhm6drw44i6NJePjaXwQHFDq35sEWfw/53LemfNkWwYNPutxxpVeYMNw1
	A2aMrGwkWDr1HUIcfsEBbwZRWqgmo01ielhuK6+4OHBoiBS3g7LpfRso4qWR7SXiwKxSLWq6VlS
	V94TMbNC5uqBis1hiL2cq6PV+w+LS4pbm2YTkpPdt3givRPB5iCa4w2rBab99rnQjXIDqJ6vAfg
	TqHSaWwxE95Zp+l/0BXbeSF4ZMlzFXxCDAzLrBKswbDvnOM037oWvWXDHFdLSCzN0cu1lj1MN7z
	K0olZXE1ffH+vx/ZiOCFqZSRq13rVRd0lsD+Q+DfuSD5x24UWl6rdoA==
X-Received: by 2002:a17:90b:4e88:b0:340:e521:bc73 with SMTP id 98e67ed59e1d1-340e521be37mr11422574a91.5.1762238536156;
        Mon, 03 Nov 2025 22:42:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+yTs2IjF434SBO3J45O3ZS9RHFoYqC8TMkPeVf99bWdNxFdWwJ/Uq7razsOVym9oFtwPUow==
X-Received: by 2002:a17:90b:4e88:b0:340:e521:bc73 with SMTP id 98e67ed59e1d1-340e521be37mr11422545a91.5.1762238535597;
        Mon, 03 Nov 2025 22:42:15 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a0780dsm3294791a91.16.2025.11.03.22.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 22:42:14 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v7 5/7] qcom-tgu: Add support to configure next action
Date: Mon,  3 Nov 2025 22:40:41 -0800
Message-Id: <20251104064043.88972-6-songwei.chai@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA1MyBTYWx0ZWRfXz9oTUZuegGeN
 LNBPq2fxJkngdVLCGtBm47P/ivBVvXUr0GCyNXemq1GN4i4ukghYdfR6QjHNB7q3vfj0AHJcKeG
 YRYm0FsXdBsvN6vsl/qy7IZtmeagOCBdhvF+qfy9IHpYO61k6EaVDp+2SrvtpWCF374ZXIXk+fd
 9zs9dPLcAZr3Xo78HQHfcCxQQbsxyGE6RFxOY2Xk3oWQO24muR2ZZLYPL1b6q1HBMcFgAWotmG5
 8lLkipCfvwDKFJvwD+cOPfvU9cvpbry3QQjBpSVYu0x6hudA8YI/wdMe5ATzU8y58h+E04wfpna
 myiyORhoAH3IyNhJEfoUzUp1D1L30AeEKRKMBmLkt+jQYz/wzOeu3jIklWSVG6rKb31PURLWm2W
 r/wOmCMTOXQZGA4auZEaExYsjYcNGw==
X-Proofpoint-ORIG-GUID: YA8Uy3dwDvuupJFQlg7kPUZI9erCGjla
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=6909a049 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=xi9iTe-FYOb_EUe3slkA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: YA8Uy3dwDvuupJFQlg7kPUZI9erCGjla
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040053

Add "select" node for each step to determine if another step is taken,
trigger(s) are generated, counters/timers incremented/decremented, etc.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |  7 +++
 drivers/hwtracing/qcom/tgu.c                  | 52 +++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  | 27 ++++++++++
 3 files changed, 86 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index e4058b950a9c..00615a7c66c5 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -21,3 +21,10 @@ KernelVersion	6.18
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the decode mode with specific step for TGU.
+
+What:		/sys/bus/coresight/devices/<tgu-name>/step[0:7]_condition_select/reg[0:3]
+Date:		November 2025
+KernelVersion	6.18
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the next action with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index b4ff41cf0a11..98721891251a 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -36,6 +36,10 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
 		ret = step_index * (drvdata->max_condition_decode) +
 			reg_index;
 		break;
+	case TGU_CONDITION_SELECT:
+		ret = step_index * (drvdata->max_condition_select) +
+			reg_index;
+		break;
 	default:
 		break;
 	}
@@ -81,6 +85,9 @@ static ssize_t tgu_dataset_show(struct device *dev,
 	case TGU_CONDITION_DECODE:
 		return sysfs_emit(buf, "0x%x\n",
 				  drvdata->value_table->condition_decode[index]);
+	case TGU_CONDITION_SELECT:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->condition_select[index]);
 	default:
 		break;
 	}
@@ -122,6 +129,10 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		tgu_drvdata->value_table->condition_decode[index] = val;
 		ret = size;
 		break;
+	case TGU_CONDITION_SELECT:
+		tgu_drvdata->value_table->condition_select[index] = val;
+		ret = size;
+		break;
 	default:
 		break;
 	}
@@ -155,6 +166,15 @@ static umode_t tgu_node_visible(struct kobject *kobject,
 				drvdata->max_condition_decode) ?
 				attr->mode : 0;
 			break;
+		case TGU_CONDITION_SELECT:
+		/* 'default' register is at the end of 'select' region */
+			if (tgu_attr->reg_num ==
+			    drvdata->max_condition_select - 1)
+				attr->name = "default";
+			ret = (tgu_attr->reg_num <
+				drvdata->max_condition_select) ?
+				attr->mode : 0;
+			break;
 		default:
 			break;
 		}
@@ -193,6 +213,19 @@ static ssize_t tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 				drvdata->base + CONDITION_DECODE_STEP(i, j));
 		}
 	}
+
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_condition_select; j++) {
+			index = check_array_location(drvdata, i,
+						TGU_CONDITION_SELECT, j);
+
+			if (index == -EINVAL)
+				goto exit;
+
+			writel(drvdata->value_table->condition_select[index],
+				drvdata->base + CONDITION_SELECT_STEP(i, j));
+		}
+	}
 	/* Enable TGU to program the triggers */
 	writel(1, drvdata->base + TGU_CONTROL);
 exit:
@@ -231,6 +264,8 @@ static void tgu_set_conditions(struct tgu_drvdata *drvdata)
 
 	devid = readl(drvdata->base + CORESIGHT_DEVID);
 	drvdata->max_condition_decode = TGU_DEVID_CONDITIONS(devid);
+	/* select region has an additional 'default' register */
+	drvdata->max_condition_select = TGU_DEVID_CONDITIONS(devid) + 1;
 }
 
 static int tgu_enable(struct coresight_device *csdev, enum cs_mode mode,
@@ -375,6 +410,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(5),
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(6),
 	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(7),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(0),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(1),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(2),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(3),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(4),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(5),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(6),
+	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(7),
 	NULL,
 };
 
@@ -436,6 +479,15 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata->value_table->condition_decode)
 		return -ENOMEM;
 
+	drvdata->value_table->condition_select = devm_kzalloc(
+		dev,
+		drvdata->max_condition_select * drvdata->max_step *
+			sizeof(*(drvdata->value_table->condition_select)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->condition_select)
+		return -ENOMEM;
+
 	drvdata->enable = false;
 	desc.type = CORESIGHT_DEV_TYPE_HELPER;
 	desc.pdata = adev->dev.platform_data;
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index cac5efeee1e9..5056ec81fdae 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -46,6 +46,7 @@
 #define STEP_OFFSET 0x1D8
 #define PRIORITY_START_OFFSET 0x0074
 #define CONDITION_DECODE_OFFSET 0x0050
+#define CONDITION_SELECT_OFFSET 0x0060
 #define PRIORITY_OFFSET 0x60
 #define REG_OFFSET 0x4
 
@@ -57,6 +58,9 @@
 #define CONDITION_DECODE_STEP(step, decode) \
 	(CONDITION_DECODE_OFFSET + REG_OFFSET * decode + STEP_OFFSET * step)
 
+#define CONDITION_SELECT_STEP(step, select) \
+	(CONDITION_SELECT_OFFSET + REG_OFFSET * select + STEP_OFFSET * step)
+
 #define tgu_dataset_rw(name, step_index, type, reg_num)                  \
 	(&((struct tgu_attribute[]){ {                                   \
 		__ATTR(name, 0644, tgu_dataset_show, tgu_dataset_store), \
@@ -72,6 +76,9 @@
 #define STEP_DECODE(step_index, reg_num) \
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_DECODE, reg_num)
 
+#define STEP_SELECT(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_SELECT, reg_num)
+
 #define STEP_PRIORITY_LIST(step_index, priority)  \
 	{STEP_PRIORITY(step_index, 0, priority),  \
 	 STEP_PRIORITY(step_index, 1, priority),  \
@@ -102,6 +109,15 @@
 	 NULL		    \
 	}
 
+#define STEP_SELECT_LIST(n) \
+	{STEP_SELECT(n, 0), \
+	 STEP_SELECT(n, 1), \
+	 STEP_SELECT(n, 2), \
+	 STEP_SELECT(n, 3), \
+	 STEP_SELECT(n, 4), \
+	 NULL		    \
+	}
+
 #define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
 	(&(const struct attribute_group){\
 		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
@@ -116,12 +132,20 @@
 		.name = "step" #step "_condition_decode" \
 	})
 
+#define CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_SELECT_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_condition_select" \
+	})
+
 enum operation_index {
 	TGU_PRIORITY0,
 	TGU_PRIORITY1,
 	TGU_PRIORITY2,
 	TGU_PRIORITY3,
 	TGU_CONDITION_DECODE,
+	TGU_CONDITION_SELECT,
 };
 
 /* Maximum priority that TGU supports */
@@ -137,6 +161,7 @@ struct tgu_attribute {
 struct value_table {
 	unsigned int *priority;
 	unsigned int *condition_decode;
+	unsigned int *condition_select;
 };
 
 /**
@@ -150,6 +175,7 @@ struct value_table {
  * @max_reg: Maximum number of registers
  * @max_step: Maximum step size
  * @max_condition_decode: Maximum number of condition_decode
+ * @max_condition_select: Maximum number of condition_select
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -166,6 +192,7 @@ struct tgu_drvdata {
 	int max_reg;
 	int max_step;
 	int max_condition_decode;
+	int max_condition_select;
 };
 
 #endif
-- 
2.34.1


