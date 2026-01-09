Return-Path: <devicetree+bounces-253058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5213D06D0F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 03:13:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBF77303E416
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 02:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2439F279DC9;
	Fri,  9 Jan 2026 02:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MX2oC+At";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gEfwbz9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA72277035
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 02:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767924740; cv=none; b=kgJM4e9N+6jMb4yjTc6DcDGYIG1cbq05ev/h76NdmEyGdo1NmULctWGMdfyTQ2FiWFFtt2sEJ5LGo68HB9B7RN+HDcIaO8sCqdPFnzD3i3t/6BmZ6SDvkXXnM/rEYKKCAEnoz36710zT+CPJKTbFlY3jHsB2T++LFHb9tpj+aFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767924740; c=relaxed/simple;
	bh=2W0HlvZ4Kc5fyudXSSocWCz1uUDaBFXgLVleyOVI8do=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=P0ck8xBL2hCpzbVR04h1cJvrQbU3KYVrpiNArmdOV3FPHJs40GSVsqVYuVb689bMfalLP9QTwLqPdSQGzvfjD94Xz978mDfP1oiDQDGPEy2Dy4aCEWTfpwLXObd4plUhSmLY+UBUCXWd0rB4usN+k1SLLK3HYKrOCXY8XnidkxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MX2oC+At; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gEfwbz9Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608HkhOr3167579
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 02:12:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=N+myu6Q3Uz3
	7abbv2+ZhB/G75uimUCatGO2AyT4TJwg=; b=MX2oC+AtAfwgmCPJG5xQWDNJ91i
	DIiDusEJrCumSG7XTZ83lSU9WwMbmX+dg2fawscZnIODTNVzdvoL5S3uupicvnph
	va1Bm7AshKUxaCmtRpjg3vc/NBI5A3coEouzILYh8MiEF73Fbdd0ya9DBbzXlxea
	aDbaQo1pBPhZ2g5QuOiVGQX2ijinuK/tELSGMvYPFW/HADyqsdcY0vdyk9tovaml
	bnx6iLk4nNIp20wPQwmY/TbqR2p9Omt2AQBIO/sfjUcxF8qXowA76NI0JdJk4Q0j
	c2YuSMbxSMMbLC8PkEwN9yiIj/RhFQnYfZNLM6PjJegnvHgu68Il7puh1tg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj892360e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 02:12:16 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ae6ef97ac5so10626274eec.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 18:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767924736; x=1768529536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+myu6Q3Uz37abbv2+ZhB/G75uimUCatGO2AyT4TJwg=;
        b=gEfwbz9ZFdjckW9r9UUCly3YonK3vdrsLzhDpHFPTXXG9fW8DEB8DaEVBDyKpFXUF5
         5X+Jffr8uM8Ci4mE4CeFMTmq1BLBHQ7EjFjqr2OV5wF5bv5ma3c9BhYI9cIH4D0j/xYq
         BRwFF40X70UhF1I5tMo2jke0kJZknsT4kuFRAk498LjQ6KvesMHBEzWPlECidGUfnlaE
         qFJCi4/Ygk7q7aNJFQ6Q3KWhluPjGW+GDSmEeDtJ5KSYrZM7JQIf+tg85ngJseSLK2IY
         Nnf3U3hjXe49L2+J2FHpdvrhxcWXILxQTTHsDl3w3GC4WIoupSycRtKnuKi/3Ip72ocA
         srow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767924736; x=1768529536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N+myu6Q3Uz37abbv2+ZhB/G75uimUCatGO2AyT4TJwg=;
        b=HXD988kBGPji3JoplqoS7lhOl977mTjJBStND6UjDsXOXb2rdgJQnVXj6/RKZrNJ1o
         y6I2cftar94xQIGioSEpF++5I7+Vl8uV+UDrpoew860oYZtlWiGj9Yq9XpYX+2cE1n/r
         suQ3kSs0PX8Kws6w7O3LF/LY2HX/r64ErR0HWuylCkg3dGquth9jSiJzXmYlgFCqTIYP
         MDKAvh/37ZMe0EMOUMvqGUTPYMpyYpwSc4MejNCHL2bhTu7rbWrIX/sUi5Ba7Ejvst4D
         JcM9vjpun1lulOtOpoz2GHsPoWTzkkglSftqu+VWOSLogahwpKJIMslowshJY7Y4F/Lo
         tDmw==
X-Forwarded-Encrypted: i=1; AJvYcCXujrLKB7NRoxEk3Y1q8uLwmini9c06kbImhZuMv4vVku7Hcp/coL9eCxC7XucbX48ceT/wyqLiN7Yu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzis9f/M34o7SmtBd9vfVWbC8hJxnX5W5LrNNPQFuRVJXjbzZO+
	ZmE28XmX4dU6Xf6ANzx2Dj+B96mBIItaT5or9TpllLYJ3UzxovLe3NPCofnsx9o98LvONAQYobZ
	Hxw9vDrFafpbOrkjqT3+QUNFzp202JBn3y2nycb4njN5/MnY824p7WLwi0ckb8cRV
X-Gm-Gg: AY/fxX4VGIvRkVK3CnVGruMMW+HrdjRzV/ryS/nVWK5WFmCDr11wlpzoHxgaYV3RoJF
	Ya405ww6GkN+iou43NStSkb4xVWiGjAMiurhXAyU2N3IdOQGT/7rqQcrZZq4TsigURFittDhWPD
	c0fzeLJ9FspKLdk4BNRl2+vf7igwo2/AMPopum2fHDEWXDZlTdn3pnJ0y8Xx4YdasIoX1ePA4dB
	7KAzxWWcUrAKOjLouoZmenFrAecDqe0k0KwcGvRJo1nNHrNASB/rlbvlZNBesLnSAH5NeGhKktn
	I5UiwMROL7EH5YTDlR3OtpkgdBQ6ks5pFB27a4Su9tNodmQG53Pq0a/lnu4Iz2K7wfciUSS/bwR
	uv+7aEugdRHbigcBaDEMRY+wB3WScYU5aAuUx1iqznvxt0NCJ56kO2Wq2HRS3TRMH
X-Received: by 2002:a05:7301:3c0d:b0:2ae:53da:9787 with SMTP id 5a478bee46e88-2b17d341ae8mr6720522eec.40.1767924735552;
        Thu, 08 Jan 2026 18:12:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKFgWsIT72dZ/Xuo5XHw8dLQ7t1LZ0LXIEV72FJw3uERtVeUXXDTK+zXUN1oaEW4j99yYURA==
X-Received: by 2002:a05:7301:3c0d:b0:2ae:53da:9787 with SMTP id 5a478bee46e88-2b17d341ae8mr6720498eec.40.1767924734978;
        Thu, 08 Jan 2026 18:12:14 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d76aasm9459111eec.33.2026.01.08.18.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 18:12:14 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v10 5/7] qcom-tgu: Add support to configure next action
Date: Thu,  8 Jan 2026 18:11:39 -0800
Message-Id: <20260109021141.3778421-6-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=69606400 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Q9DP89o4N5N1XlnrPa8A:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: J0ikcSMzqGm-MBIuiPnpvQoX5ag23_qb
X-Proofpoint-GUID: J0ikcSMzqGm-MBIuiPnpvQoX5ag23_qb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDAxMiBTYWx0ZWRfX4FE5ytksYxVO
 rIk0GstvuUfDgZxXtJcSaMTbBYx2RjwI9t/Ejiu9gbz7NwCohk0Yrdlm7bShGzuF1KLyMG0kspD
 3uBce146znUNu4Z+WHCYAml45B7Nd6n9y+WeTl5yL2nh/iS+daPCucfHgoT2SQaqra3OfI4Z1G6
 6sUbB2JNmG9xhr1NOZHV460dzX520XsrW9DuG+QeHVmawIor/C8RWGGBSeKkDWB0Z2V2OCUBByS
 rkfs1iV3iwX8rw7jN81JGYwTF+DFvETkLsz7EeDdUXDHJuFBetpt46lMlNHkwVyKZIBdg5bxypg
 IlNkI45m+eaCU0xc4PhCdLq/qDtHHQDpA9uqHbBchWK2Q9bv+XXqPilc5YGLDw7TtYOEEzcr0WD
 DvWWCTkaxj79gUxElErMtqUzMxF84foiLSJr/79tlET3XmG5mQHwvbYR60C9VBIOCYrwBMIg515
 U32CwS/BffYTX1xDL9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_01,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090012

Add "select" node for each step to determine if another step is taken,
trigger(s) are generated, counters/timers incremented/decremented, etc.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 +++
 drivers/hwtracing/qcom/tgu.c                  | 57 ++++++++++++++++++-
 drivers/hwtracing/qcom/tgu.h                  | 27 +++++++++
 3 files changed, 89 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index 4efa36a11d8e..fffe65d3c0db 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -21,3 +21,10 @@ KernelVersion	6.19
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the decode mode with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_condition_select/reg[0:3]
+Date:		January 2026
+KernelVersion	6.19
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the next action with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 39301d35ee9d..e1a1f0f423ba 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -33,6 +33,10 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
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
@@ -74,6 +78,9 @@ static ssize_t tgu_dataset_show(struct device *dev,
 	case TGU_CONDITION_DECODE:
 		return sysfs_emit(buf, "0x%x\n",
 				drvdata->value_table->condition_decode[index]);
+	case TGU_CONDITION_SELECT:
+		return sysfs_emit(buf, "0x%x\n",
+				drvdata->value_table->condition_select[index]);
 	default:
 		break;
 	}
@@ -115,6 +122,10 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		tgu_drvdata->value_table->condition_decode[index] = val;
 		ret = size;
 		break;
+	case TGU_CONDITION_SELECT:
+		tgu_drvdata->value_table->condition_select[index] = val;
+		ret = size;
+		break;
 	default:
 		ret = -EINVAL;
 		break;
@@ -148,6 +159,15 @@ static umode_t tgu_node_visible(struct kobject *kobject,
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
@@ -186,6 +206,19 @@ static ssize_t tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
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
@@ -225,6 +258,8 @@ static void tgu_set_conditions(struct tgu_drvdata *drvdata)
 
 	devid = readl(drvdata->base + TGU_DEVID);
 	drvdata->max_condition_decode = TGU_DEVID_CONDITIONS(devid);
+	/* select region has an additional 'default' register */
+	drvdata->max_condition_select = TGU_DEVID_CONDITIONS(devid) + 1;
 }
 
 static int tgu_enable(struct device *dev)
@@ -356,6 +391,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
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
 
@@ -363,8 +406,8 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 {
 	struct device *dev = &adev->dev;
 	struct tgu_drvdata *drvdata;
-	size_t priority_size, condition_size;
-	unsigned int *priority, *condition;
+	size_t priority_size, condition_size, select_size;
+	unsigned int *priority, *condition, *select;
 	int ret;
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
@@ -417,6 +460,16 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 
 	drvdata->value_table->condition_decode = condition;
 
+	select_size = drvdata->max_condition_select * drvdata->max_step *
+		      sizeof(*(drvdata->value_table->condition_select));
+
+	select = devm_kzalloc(dev, select_size, GFP_KERNEL);
+
+	if (!select)
+		return -ENOMEM;
+
+	drvdata->value_table->condition_select = select;
+
 	drvdata->enable = false;
 
 	pm_runtime_put(&adev->dev);
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 0d058663aca5..8c92e88d7e2c 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -50,6 +50,7 @@
 #define STEP_OFFSET 0x1D8
 #define PRIORITY_START_OFFSET 0x0074
 #define CONDITION_DECODE_OFFSET 0x0050
+#define CONDITION_SELECT_OFFSET 0x0060
 #define PRIORITY_OFFSET 0x60
 #define REG_OFFSET 0x4
 
@@ -61,6 +62,9 @@
 #define CONDITION_DECODE_STEP(step, decode) \
 	(CONDITION_DECODE_OFFSET + REG_OFFSET * decode + STEP_OFFSET * step)
 
+#define CONDITION_SELECT_STEP(step, select) \
+	(CONDITION_SELECT_OFFSET + REG_OFFSET * select + STEP_OFFSET * step)
+
 #define tgu_dataset_rw(name, step_index, type, reg_num)                  \
 	(&((struct tgu_attribute[]){ {                                   \
 		__ATTR(name, 0644, tgu_dataset_show, tgu_dataset_store), \
@@ -76,6 +80,9 @@
 #define STEP_DECODE(step_index, reg_num) \
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_DECODE, reg_num)
 
+#define STEP_SELECT(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_SELECT, reg_num)
+
 #define STEP_PRIORITY_LIST(step_index, priority)  \
 	{STEP_PRIORITY(step_index, 0, priority),  \
 	 STEP_PRIORITY(step_index, 1, priority),  \
@@ -106,6 +113,15 @@
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
@@ -120,12 +136,20 @@
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
@@ -141,6 +165,7 @@ struct tgu_attribute {
 struct value_table {
 	unsigned int *priority;
 	unsigned int *condition_decode;
+	unsigned int *condition_select;
 };
 
 static inline void TGU_LOCK(void __iomem *addr)
@@ -171,6 +196,7 @@ static inline void TGU_UNLOCK(void __iomem *addr)
  * @max_reg: Maximum number of registers
  * @max_step: Maximum step size
  * @max_condition_decode: Maximum number of condition_decode
+ * @max_condition_select: Maximum number of condition_select
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -186,6 +212,7 @@ struct tgu_drvdata {
 	int max_reg;
 	int max_step;
 	int max_condition_decode;
+	int max_condition_select;
 };
 
 #endif
-- 
2.34.1


