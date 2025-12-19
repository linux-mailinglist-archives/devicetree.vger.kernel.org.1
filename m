Return-Path: <devicetree+bounces-248084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6CECCEB3E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AA573089447
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4562DEA90;
	Fri, 19 Dec 2025 06:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dTt+Cr69";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LTTFgg4D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D979F2D8367
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766127578; cv=none; b=AaD91/hCvS9lly7qwqh85edqGXdqb+MNKMspkz8dQeOWP9JOc7ynsQZu+Y2TgVeoLvO66jPW4FQV28MMNsDtLwWdvkO8YYunLH/NcmasoZFUcmJ2Nh9yA7SgiYUMwGWm2SPTQZ0jUJ5iAM+kBa0LSzW6hn85TzjylMgT1kJ9JWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766127578; c=relaxed/simple;
	bh=xu/dFtqRmQxWY53gD3+YuovArbLVXXsUAoIvtPXwNqs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r6dL1hb0WI7X7i1Xsed5L6jKlqDfLLbZeZnCIGMJ1esK1O7dexjbaOOFFs2YQUyIyC75EK8vEWPjp6nYjGetiGzCCtgwZSPMJK6quszxOdEFtms0LNszOARp+7G7kvyNlfrWLyMmGx8SbCx59kTDEF8/5AlfCEpwDSjrS1IyJV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dTt+Cr69; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LTTFgg4D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cGVG3319233
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LNb3PE7PkFb
	b1OKX7X/dVO7SyYEmsv5UgQIPUG7b+c4=; b=dTt+Cr69q+2OjmahuZQHwxjRpPi
	T4YWUtr0M74vgKWruP6x2deL0IIRYm2pe2h/cDOJHksCnzYLSlIoiTexxaYj4KZo
	h0ik3rEtuMufJR1+w85nc0qoAz4fv3dS3iKXtwtkxePJjw0HPFrmYv7ROL8QWsql
	dKc2IU0TsClBGsseQNCbn1smID+6vpdeKVyb+Jj+44O2XrBOm1v8FkFK6JrIqpK+
	4V+eT/GD07YCk4ZF1yHzDAsHQQpw00Kxk3t0UK7cKZ4qeW83zgSPwGYAgDzuChH2
	L2feyeDHEZgepSqt7GnUX3PVs+GvMtbMMf0M0cQAkkQ7cjfwQ02l4vADALQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2eskdc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:59:34 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bdf47c10220so2472569a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 22:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766127573; x=1766732373; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNb3PE7PkFbb1OKX7X/dVO7SyYEmsv5UgQIPUG7b+c4=;
        b=LTTFgg4DOiDSP+gUyzZ6NUfe+rwZNpAJaKyWp4S0E+Y3aplOJWBHlzLUDYiFOJhGI/
         toPd5BNxDHBP4Izu8uLvfQhfwf2ria6VxxX7NpQHow4SxQjkkjaD7YlgaCq1M4BOQx7R
         dlZvwTsmL+oranb0wxlyNQXbExpoX+cmc/WpcF9iqYuYCdvIh+ZlgKmWEJlUurdJUry2
         X2hOHYogEmFhR4MZ5kqF/KqHnMVsD0/PKQk4R7xFTi4AKTycO9XjB2Hqm/LB9QZI/ByP
         wqU+QRGewzVwhXROKwWqldl7UefwmnRImjtWx01TzuHuvUQ8n6WqauzHryerW8AMvcpc
         KCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766127573; x=1766732373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LNb3PE7PkFbb1OKX7X/dVO7SyYEmsv5UgQIPUG7b+c4=;
        b=EYtaarZw1VpQX8zt5dC5uuJxfhMr68ClNfpzkDvHA0MAq7u87a/z60zl/dSYsfClIJ
         BcE8gl3bi30OIVjlk+/FtW50f2m031BX/1zD8iWfmlFSfc3eUSxOEtvp/dgwfp3DLOfy
         NUIUHvm9KU9y6fCQP0ppAmus1l6TskmkHdbDuRqrNqRaE9vk50oUTJym/l1j6wbkg2cr
         bBC9RqIIiCErorbDxcg1TEboEWoB0vfr7ERI6u1HIdziiFstLYK12q++UJ+lkZwaXyzA
         YHKxzqW8XEF2EjsZyzWmSlDyr+aUbbioRDi2iXD/x1J+4hcHa3vGnVO4WqnWoVWbnD6W
         y12A==
X-Forwarded-Encrypted: i=1; AJvYcCUKd6Wabm0mEps9i5JDOfOnxh415WrOCISventa4TTUxlXzPaPQ9Oc0s/JOD+I36UofjzNngOu/eheC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn7NAfbskTnmkkVYeg6F+R//jEf8Nwq04/SIeXIZCVrUz5ehv4
	yKokRQABp8ZAsJrYKqORtHb9WbHOooXPhc2J7qWNK8WOvxI86C2ba3ew2Rm38PcAkmg06HgnuR1
	2q8McKDQRQpfwFZjlr0NRWrV30Uwukk6Xp4wMT93JoRL2iwBNcO9lvn2FFk1WRK+K
X-Gm-Gg: AY/fxX4q7kAq6/O6z0eyuj1Qy0qS0tuZMUc5pR3O+PGQeues5lvKZX3oybfmG8C468+
	q/WocThQpStOKT+YGBCcRcSKiu8ccGZ/b+7BKSIasgd+AGtDawHM3uJv1MrtmruQLlaqGumpzjx
	pYy9U8kCN2szwGNaWUeimnlZNCGrYuigEzteQZRP6DrGsskGzxZ7BUL8T7dunVQO83gUkyU1k6u
	DgF46B/HbJatWYU/LfnGXdHmMdSBDUZm8rAOMJvMlmDgZAVNzr8/vb+dqXJhELnBJupsWVJsTVy
	cNb1vqM9Tg1ZIw1+Do7FSwwOjyiKj1AHafEQWdXkP/xngwF8U+lzyllCqKl41o18/0SE0IKmyEc
	2ViO2CSGBFv2FvEzjzffjZjt6iyvtHGbXIEnVHlcjmijUZdyrCh7YHT5S7eO5NwRO
X-Received: by 2002:a05:7301:18ab:b0:2ae:2c27:fc0e with SMTP id 5a478bee46e88-2b05ec7454dmr2104005eec.22.1766127573221;
        Thu, 18 Dec 2025 22:59:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHu2mdPZB4X+UtG0W0ArtTRl+v42P20I8dyzAkElasiwIyRyirg+VeMxOThfyPRGEuydEsafw==
X-Received: by 2002:a05:7301:18ab:b0:2ae:2c27:fc0e with SMTP id 5a478bee46e88-2b05ec7454dmr2103973eec.22.1766127572618;
        Thu, 18 Dec 2025 22:59:32 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b05fcfc1b7sm3614954eec.0.2025.12.18.22.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 22:59:32 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org
Subject: [PATCH v9 6/7] qcom-tgu: Add timer/counter functionality for TGU
Date: Thu, 18 Dec 2025 22:59:01 -0800
Message-Id: <20251219065902.2296896-7-songwei.chai@oss.qualcomm.com>
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
X-Proofpoint-GUID: c1R7Fbf-6dKBP5ufJkM15pJ5y_QittlC
X-Proofpoint-ORIG-GUID: c1R7Fbf-6dKBP5ufJkM15pJ5y_QittlC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA1NiBTYWx0ZWRfX/RwVb4eIy1k9
 Ualh3WRrT6+sbSIIzC3Kz/XU/QfCwuOopc3DiKVx1U4lSm99qsNWzu8Zw4XEmRcTHSebFvTCb8Z
 +7KXWWK+Dia1bbvWEUHR7UaaOuSQlmBXR5Z5gKbm9TxggdcR/2HYAV5sd1Ddpl3BbAV+jOM2zxZ
 JcNiflsn9E79t31nhS32QDi4gs778LAMohRwoOkRHGRrYIael2NIkHZ5wglW+WPlXMw4jc5r3SG
 6Dj/PxLq7VsA4TwobAZUuTus4XkKzMG0PDFJfYOdmV1McG95QEx7ErC7/xWQmY2LAgyJupH1lIT
 T3F5+K1VXrSuvSqo0rxKjWimpfYxnmIQaFaMMRHTJ8+IecO56uZ8/sCzrmlu07OttAWeGdmt/j/
 FPFdvwM4bLvVjdkWDPoUHTikOyWt2uDaHiRAOQ6zR0gKDo44namDb8sOJnqNFnC+sKMOa9/Zq3O
 eFuK4PWRKw3xdE55BOg==
X-Authority-Analysis: v=2.4 cv=Tp7rRTXh c=1 sm=1 tr=0 ts=6944f7d6 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eGDQztGCVwpQsGOtWZEA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190056

Add counter and timer node for each step which could be
programed if they are to be utilized in trigger event/sequence.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../ABI/testing/sysfs-bus-amba-devices-tgu    |  14 ++
 drivers/hwtracing/qcom/tgu.c                  | 120 ++++++++++++++++++
 drivers/hwtracing/qcom/tgu.h                  |  54 ++++++++
 3 files changed, 188 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
index 6fbd86592681..010eade0a1c5 100644
--- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
@@ -28,3 +28,17 @@ KernelVersion	6.19
 Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
 Description:
 		(RW) Set/Get the next action with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_timer/reg[0:1]
+Date:		December 2025
+KernelVersion	6.19
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the timer value with specific step for TGU.
+
+What:		/sys/bus/amba/devices/<tgu-name>/step[0:7]_counter/reg[0:1]
+Date:		December 2025
+KernelVersion	6.19
+Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
+Description:
+		(RW) Set/Get the counter value with specific step for TGU.
diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
index 98648ee61a10..d4210869556e 100644
--- a/drivers/hwtracing/qcom/tgu.c
+++ b/drivers/hwtracing/qcom/tgu.c
@@ -37,6 +37,12 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
 		ret = step_index * (drvdata->max_condition_select) +
 			reg_index;
 		break;
+	case TGU_COUNTER:
+		ret = step_index * (drvdata->max_counter) + reg_index;
+		break;
+	case TGU_TIMER:
+		ret = step_index * (drvdata->max_timer) + reg_index;
+		break;
 	default:
 		break;
 	}
@@ -81,6 +87,12 @@ static ssize_t tgu_dataset_show(struct device *dev,
 	case TGU_CONDITION_SELECT:
 		return sysfs_emit(buf, "0x%x\n",
 				  drvdata->value_table->condition_select[index]);
+	case TGU_TIMER:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->timer[index]);
+	case TGU_COUNTER:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->counter[index]);
 	default:
 		break;
 	}
@@ -126,6 +138,14 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		tgu_drvdata->value_table->condition_select[index] = val;
 		ret = size;
 		break;
+	case TGU_TIMER:
+		tgu_drvdata->value_table->timer[index] = val;
+		ret = size;
+		break;
+	case TGU_COUNTER:
+		tgu_drvdata->value_table->counter[index] = val;
+		ret = size;
+		break;
 	default:
 		break;
 	}
@@ -168,6 +188,22 @@ static umode_t tgu_node_visible(struct kobject *kobject,
 				drvdata->max_condition_select) ?
 				attr->mode : 0;
 			break;
+		case TGU_COUNTER:
+			if (drvdata->max_counter == 0)
+				ret = SYSFS_GROUP_INVISIBLE;
+			else
+				ret = (tgu_attr->reg_num <
+					drvdata->max_counter) ?
+					attr->mode : 0;
+			break;
+		case TGU_TIMER:
+			if (drvdata->max_timer == 0)
+				ret = SYSFS_GROUP_INVISIBLE;
+			else
+				ret = (tgu_attr->reg_num <
+					drvdata->max_timer) ?
+					attr->mode : 0;
+			break;
 		default:
 			break;
 		}
@@ -219,6 +255,30 @@ static ssize_t tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 				drvdata->base + CONDITION_SELECT_STEP(i, j));
 		}
 	}
+
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_timer; j++) {
+			index = check_array_location(drvdata, i, TGU_TIMER, j);
+
+			if (index == -EINVAL)
+				goto exit;
+
+			writel(drvdata->value_table->timer[index],
+				drvdata->base + TIMER_COMPARE_STEP(i, j));
+		}
+	}
+
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_counter; j++) {
+			index = check_array_location(drvdata, i, TGU_COUNTER, j);
+
+			if (index == -EINVAL)
+				goto exit;
+
+			writel(drvdata->value_table->counter[index],
+				drvdata->base + COUNTER_COMPARE_STEP(i, j));
+		}
+	}
 	/* Enable TGU to program the triggers */
 	writel(1, drvdata->base + TGU_CONTROL);
 exit:
@@ -262,6 +322,31 @@ static void tgu_set_conditions(struct tgu_drvdata *drvdata)
 	drvdata->max_condition_select = TGU_DEVID_CONDITIONS(devid) + 1;
 }
 
+static void tgu_set_timer_counter(struct tgu_drvdata *drvdata)
+{
+	int num_timers, num_counters;
+	u32 devid2;
+
+	devid2 = readl(drvdata->base + CORESIGHT_DEVID2);
+
+	if (TGU_DEVID2_TIMER0(devid2) && TGU_DEVID2_TIMER1(devid2))
+		num_timers = 2;
+	else if (TGU_DEVID2_TIMER0(devid2) || TGU_DEVID2_TIMER1(devid2))
+		num_timers = 1;
+	else
+		num_timers = 0;
+
+	if (TGU_DEVID2_COUNTER0(devid2) && TGU_DEVID2_COUNTER1(devid2))
+		num_counters = 2;
+	else if (TGU_DEVID2_COUNTER0(devid2) || TGU_DEVID2_COUNTER1(devid2))
+		num_counters = 1;
+	else
+		num_counters = 0;
+
+	drvdata->max_timer = num_timers;
+	drvdata->max_counter = num_counters;
+}
+
 static int tgu_enable(struct device *dev)
 {
 	int ret = 0;
@@ -400,6 +485,22 @@ static const struct attribute_group *tgu_attr_groups[] = {
 	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(5),
 	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(6),
 	CONDITION_SELECT_ATTRIBUTE_GROUP_INIT(7),
+	TIMER_ATTRIBUTE_GROUP_INIT(0),
+	TIMER_ATTRIBUTE_GROUP_INIT(1),
+	TIMER_ATTRIBUTE_GROUP_INIT(2),
+	TIMER_ATTRIBUTE_GROUP_INIT(3),
+	TIMER_ATTRIBUTE_GROUP_INIT(4),
+	TIMER_ATTRIBUTE_GROUP_INIT(5),
+	TIMER_ATTRIBUTE_GROUP_INIT(6),
+	TIMER_ATTRIBUTE_GROUP_INIT(7),
+	COUNTER_ATTRIBUTE_GROUP_INIT(0),
+	COUNTER_ATTRIBUTE_GROUP_INIT(1),
+	COUNTER_ATTRIBUTE_GROUP_INIT(2),
+	COUNTER_ATTRIBUTE_GROUP_INIT(3),
+	COUNTER_ATTRIBUTE_GROUP_INIT(4),
+	COUNTER_ATTRIBUTE_GROUP_INIT(5),
+	COUNTER_ATTRIBUTE_GROUP_INIT(6),
+	COUNTER_ATTRIBUTE_GROUP_INIT(7),
 	NULL,
 };
 
@@ -425,6 +526,7 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	tgu_set_reg_number(drvdata);
 	tgu_set_steps(drvdata);
 	tgu_set_conditions(drvdata);
+	tgu_set_timer_counter(drvdata);
 
 	ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
 	if (ret) {
@@ -464,6 +566,24 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata->value_table->condition_select)
 		return -ENOMEM;
 
+	drvdata->value_table->timer = devm_kzalloc(
+		dev,
+		drvdata->max_step * drvdata->max_timer *
+			sizeof(*(drvdata->value_table->timer)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->timer)
+		return -ENOMEM;
+
+	drvdata->value_table->counter = devm_kzalloc(
+		dev,
+		drvdata->max_step * drvdata->max_counter *
+			sizeof(*(drvdata->value_table->counter)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->counter)
+		return -ENOMEM;
+
 	drvdata->enable = false;
 
 	pm_runtime_put(&adev->dev);
diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
index 1f46da35b40a..46a4cffedd7b 100644
--- a/drivers/hwtracing/qcom/tgu.h
+++ b/drivers/hwtracing/qcom/tgu.h
@@ -11,11 +11,17 @@
 #define TGU_LAR		0xfb0
 #define TGU_UNLOCK_OFFSET	0xc5acce55
 #define TGU_DEVID	0xfc8
+#define CORESIGHT_DEVID2       0xfc0
 
 #define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)
 #define TGU_DEVID_SENSE_INPUT(devid_val) ((int) BMVAL(devid_val, 10, 17))
 #define TGU_DEVID_STEPS(devid_val) ((int)BMVAL(devid_val, 3, 6))
 #define TGU_DEVID_CONDITIONS(devid_val) ((int)BMVAL(devid_val, 0, 2))
+#define TGU_DEVID2_TIMER0(devid_val) ((int)BMVAL(devid_val, 18, 23))
+#define TGU_DEVID2_TIMER1(devid_val) ((int)BMVAL(devid_val, 13, 17))
+#define TGU_DEVID2_COUNTER0(devid_val) ((int)BMVAL(devid_val, 6, 11))
+#define TGU_DEVID2_COUNTER1(devid_val) ((int)BMVAL(devid_val, 0, 5))
+
 #define NUMBER_BITS_EACH_SIGNAL 4
 #define LENGTH_REGISTER 32
 
@@ -51,6 +57,8 @@
 #define PRIORITY_START_OFFSET 0x0074
 #define CONDITION_DECODE_OFFSET 0x0050
 #define CONDITION_SELECT_OFFSET 0x0060
+#define TIMER_START_OFFSET 0x0040
+#define COUNTER_START_OFFSET 0x0048
 #define PRIORITY_OFFSET 0x60
 #define REG_OFFSET 0x4
 
@@ -62,6 +70,12 @@
 #define CONDITION_DECODE_STEP(step, decode) \
 	(CONDITION_DECODE_OFFSET + REG_OFFSET * decode + STEP_OFFSET * step)
 
+#define TIMER_COMPARE_STEP(step, timer) \
+	(TIMER_START_OFFSET + REG_OFFSET * timer + STEP_OFFSET * step)
+
+#define COUNTER_COMPARE_STEP(step, counter) \
+	(COUNTER_START_OFFSET + REG_OFFSET * counter + STEP_OFFSET * step)
+
 #define CONDITION_SELECT_STEP(step, select) \
 	(CONDITION_SELECT_OFFSET + REG_OFFSET * select + STEP_OFFSET * step)
 
@@ -83,6 +97,12 @@
 #define STEP_SELECT(step_index, reg_num) \
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_SELECT, reg_num)
 
+#define STEP_TIMER(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_TIMER, reg_num)
+
+#define STEP_COUNTER(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_COUNTER, reg_num)
+
 #define STEP_PRIORITY_LIST(step_index, priority)  \
 	{STEP_PRIORITY(step_index, 0, priority),  \
 	 STEP_PRIORITY(step_index, 1, priority),  \
@@ -122,6 +142,18 @@
 	 NULL		    \
 	}
 
+#define STEP_TIMER_LIST(n) \
+	{STEP_TIMER(n, 0), \
+	 STEP_TIMER(n, 1), \
+	 NULL              \
+	}
+
+#define STEP_COUNTER_LIST(n) \
+	{STEP_COUNTER(n, 0), \
+	 STEP_COUNTER(n, 1), \
+	 NULL                \
+	}
+
 #define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
 	(&(const struct attribute_group){\
 		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
@@ -143,6 +175,20 @@
 		.name = "step" #step "_condition_select" \
 	})
 
+#define TIMER_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_TIMER_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_timer" \
+	})
+
+#define COUNTER_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_COUNTER_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_counter" \
+	})
+
 enum operation_index {
 	TGU_PRIORITY0,
 	TGU_PRIORITY1,
@@ -150,6 +196,8 @@ enum operation_index {
 	TGU_PRIORITY3,
 	TGU_CONDITION_DECODE,
 	TGU_CONDITION_SELECT,
+	TGU_TIMER,
+	TGU_COUNTER
 };
 
 /* Maximum priority that TGU supports */
@@ -166,6 +214,8 @@ struct value_table {
 	unsigned int *priority;
 	unsigned int *condition_decode;
 	unsigned int *condition_select;
+	unsigned int *timer;
+	unsigned int *counter;
 };
 
 static inline void TGU_LOCK(void __iomem *addr)
@@ -197,6 +247,8 @@ static inline void TGU_UNLOCK(void __iomem *addr)
  * @max_step: Maximum step size
  * @max_condition_decode: Maximum number of condition_decode
  * @max_condition_select: Maximum number of condition_select
+ * @max_timer: Maximum number of timers
+ * @max_counter: Maximum number of counters
  *
  * This structure defines the data associated with a TGU device,
  * including its base address, device pointers, clock, spinlock for
@@ -213,6 +265,8 @@ struct tgu_drvdata {
 	int max_step;
 	int max_condition_decode;
 	int max_condition_select;
+	int max_timer;
+	int max_counter;
 };
 
 #endif
-- 
2.34.1


