Return-Path: <devicetree+bounces-248083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B3982CCEB38
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3272F307DC57
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80192DEA80;
	Fri, 19 Dec 2025 06:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JssQsznn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VFd9Adio"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9B42DC33F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766127575; cv=none; b=Tr93hMDv+1aqwTrRAXosHaOcuxwKvReAQBErI7tMVtMOcOC7RUr9u/H1V2q/cVf2QAmLFz7/O5hbYePZnyl//0BBdTpTcCCUPEeExEgax1GC/uV1xaLjB8kaofvmYLuGZ5QvKWX9AN8ny0apXjJinDobmVnkjKLDO2P7r7cCAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766127575; c=relaxed/simple;
	bh=QbLUAZtQgffCMuDnIpR56pfDNg0DDIM30IBn6Au9SSM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lXKBxQ0IFMtB8gG4+bi19QGIsV9kcT1YFxwde+CgSXNj7ady1qPDPlBTZQqZ1+mLww3S1YKrID/Zpmx/fT0IDRdlMo0KCAJzDGuvmqFFKrlBz4Aeu/oo4vjxMPudP7sKl/3fOU28VTvDiYEN6TN8wkPeoT2Y2lDnMu/9/vthnMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JssQsznn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VFd9Adio; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cKDd3976182
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Zh3m6t4hqko
	q12Tk90+CNng+VNifwIyy+mUekxgxB18=; b=JssQsznn4FkbL+nYpIgQ/8Fi25w
	T9MxsuAcfRojvch97i6L3dFhE3wCXmYVGqckIagMIzisud8kdSFDLW0H8jQGVobI
	j1/3NT+5amJ9PRNdlMysSiRlGXjOMmnQwRgJdmLov8v98bkHAjuTFt2jSCXPnQEA
	IC9AZxPZub1JTE/Zy0hSSxAVhTX9mWcy0vw902xu7XvV7VNdqXXBb+iGQdVNMUAU
	QtKepgUPJuHtv6u76tJdBH+EQmr9+Ko5v0ZPojQ/6+5uLuWmo+HXKOF4O4d74m5y
	9OmobmCDFpR9c/IOtIuLea3y5GVtiElOTbHVcp7jueA41CnTG3q19TkGRzg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2fhjc1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:32 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-bddf9ce4931so2425184a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766127572; x=1766732372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zh3m6t4hqkoq12Tk90+CNng+VNifwIyy+mUekxgxB18=;
        b=VFd9AdioC3QcgvSmtvV4853fonS9+TcGvio8l3GJXdR3KyzuRcdvFBcmy4oMAk3vnv
         1rghAPkceVRtG3MrM08gpXbPf51TeE8Pa+svKMWWPRJ/TYSDep+7SmYT+S9Km1yveP8A
         iq5pWGZkxgLPVmtqQG2CQ2dItmgPMiWna2EJv8icYdgeCA5HFGvRc6YIMOCoeC0cRIR8
         Ep41denExx/MW5LTCDaU/CdNybnqbFoau8TfWnEjSxRXP0v7bmxIHmEJqT7CZyOH7I1e
         rYa0xY2z/JewJZ7c5F3SJaSC/i6inFpcvydBIm0aeCZPSa6g4gQVjU/hCtnOd/eQAIN6
         tMdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766127572; x=1766732372;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zh3m6t4hqkoq12Tk90+CNng+VNifwIyy+mUekxgxB18=;
        b=OO15nhMv35TWgIaHEo+Tx2SmT4p9FFDWIW5w8NSz9ifcmfZxWZtv+6D62DIW8/P0th
         ubi4npzYaz9jAsE1Sl2TDziUuN7birYWGL49GSSPLwembZG1h+c6GEEahtgBXUT5W4z1
         ZKDGw1laIpbSab1Yo9i7KX5Xwy7y6F+XRlc1TIZpRGqU7YGGcYfo7OjUmMiFY8lIT0Ib
         Rju6ffqbqv9w9RTmTh8nV3OMgGf9D63Xhq/rjXOb956lS55UGbtl6t1/hWuY6OCtzUPo
         JWalRB5XjZ0dhHK2LCUOatRoI3RejqxKiAsT7+gfx11fS6DTtx6mzerKqAoGVN1ukDWc
         fZSg==
X-Forwarded-Encrypted: i=1; AJvYcCWXPDstSHpt5HeTFJJX9o+PaTbinxjKgtkhdLWf8ytUWTGZWBv/gUZT0J4TEGYfFLwJMKG+ApV6cbL+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2ICWVnG3Uo6sntZPWbeYXf0Rdcsl/Iu5FpzAcHtl6jua+EUi8
	cX597oHvLK9VLJMMiAl2adX2z19bX3LfHN0bK794d2mXlunCDxoJucgbLS8yqCJVWEh1nQoHKRo
	KJF9ibeZyzc6g1J9cjCHqMhOUM2DV+UhM2nGzEvS5Mh9rGnjP77NgCCvygRlMtiFA
X-Gm-Gg: AY/fxX7llD/gzQ1cJ5atn8NOnZX73Mj47rY2vAWO5t7d1YZ0Hs2RLnsim0438eYAGDz
	RHTDjObDYkABtXVY4aPeCKQZts8MLzLP00DBIjS/SVMz2g+wF2hPo5BLEqefePxaUhySrN66oJ2
	Jqb+tXcEDmnjQajGJWzW+3wfG5B9SA5Psatq3FpI5yR9l2VmnFuYBd8diRDrfleXWd1MToAB1e8
	ZBKiTMFc3qVFWvYNXctSsd0qjuj75YpIiDPDHw2MqEfAOtFWiq2xrlI/uu8/jr6wG6mQHdAKKfC
	ElloYT2EFE4qMYeTQnLm+fFjPZQPYMSaQWiBcfUxkZwRvR+jm8kH87R0SJwJhqTopG37PlHObcL
	4zkQKGbSU8VnccyAtuCa6uxbWE03feJOe9SCvxhAXZ/NeCUbhadEb2aDjV5cBAHbf
X-Received: by 2002:a05:7300:ac90:b0:2b0:310c:529 with SMTP id 5a478bee46e88-2b05ec050d0mr1901120eec.14.1766127571431;
        Thu, 18 Dec 2025 22:59:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEk4i3pEXHNK3uc57gFBQrCOQNxRH86YYdtwt9CtiW3CTXTq5Ja4eeOLjPTa8NiffXrLBPoVg==
X-Received: by 2002:a05:7300:ac90:b0:2b0:310c:529 with SMTP id 5a478bee46e88-2b05ec050d0mr1901086eec.14.1766127570835;
        Thu, 18 Dec 2025 22:59:30 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05fcfc1b7sm3614954eec.0.2025.12.18.22.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 22:59:30 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v9 5/7] qcom-tgu: Add support to configure next action
Date: Thu, 18 Dec 2025 22:59:00 -0800
Message-Id: <20251219065902.2296896-6-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NODYOk6g c=1 sm=1 tr=0 ts=6944f7d4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gOWipDUV9lcXNqIIBpoA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: ifIFdzSDyfPPN85vD6mreh1yE1XCNonW
X-Proofpoint-GUID: ifIFdzSDyfPPN85vD6mreh1yE1XCNonW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA1NiBTYWx0ZWRfXxRpq2I7p2YWI
 teY/uUFAG7Ae5D6IsaVMvwpJiLsvV27lh6Lp8G5Q6QrJZkD8bpSTudBdKJbqF5y+zGl8JhuKxaf
 cHE3GQz6tX5d+xUiI+4JMxV+5aJBZPiXDJytaQP+997oTgtewlogMoYxLYECzPK/PKHxOOz7PhC
 4hnAgTSiLCpHKykN7fiA4o6bz4+xosExwR5OAh3tmcEaYyGaDz7CVDxFGSxR1W8Er2hXcDaJE0x
 isWtb4SyaohKZFgsOhEdz5XLFYeAB4fJbkxd9zov/pYLXRXQQuNoO+iPO7NcxXP++Yfo5HGWPwj
 meQx13pGJlSCc67aIJQLkOkDEITg24VnKBQwkbfgwagIw1awFL5g1bQACu1LBB4u+UXUtgirG+b
 lmPw16xPn2XFHiMKl1P/0g2O25S1amMoUmKpNCLAWnwiTAs8+5Kf33cgS2xnafuk2nHnbbD8ghL
 pdi9+DULRh26DqqCJZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190056

Add "select" node for each step to determine if another step is taken,
trigger(s) are generated, counters/timers incremented/decremented, etc.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 +++
 drivers/hwtracing/qcom/tgu.c                  | 52 +++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  | 27 ++++++++++
 3 files changed, 86 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index c0e50ee95839..6fbd86592681 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -21,3 +21,10 @@ KernelVersion	6.19
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the decode mode with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_condition_select/reg[0:3]
+Date:		December 2025
+KernelVersion	6.19
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the next action with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 4140dc544e5e..98648ee61a10 100644
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
+				  drvdata->value_table->condition_select[index]);
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
 		break;
 	}
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
@@ -357,6 +392,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
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
 
@@ -412,6 +455,15 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
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
 
 	pm_runtime_put(&adev->dev);
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 732126b896e1..1f46da35b40a 100644
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


