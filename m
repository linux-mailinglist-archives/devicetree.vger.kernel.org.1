Return-Path: <devicetree+bounces-221776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0F9BA2CF4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57FE83A5A35
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5612877E8;
	Fri, 26 Sep 2025 07:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ow/MCiVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F631EDA02
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758872072; cv=none; b=JS9b5TUo1KJjlirMMyZ/yuj/VJftOVeBmfJo1PMOFjjRQyy2utrx9TRrtJUQQxPpsXE9yCpJN3gcAzUZUGZm+MwNrvGm7GTKn0rvPuG9Iault+gVJb6ePBK3g0+87hXiQ54S5Ac8REEyn2f/T2xOd/5nPi+eWPVqmDL5+UYJ1tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758872072; c=relaxed/simple;
	bh=QzHnA+jkGy7T2Hm/P9Pqt9a+k9vu3Zl/A+nJT8khFXc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FsLISkaZq0EhAHecuenc1OzvvICPODH2Y1Ge+5z9/AahcegIS73nVVUniGs5LFJT31S2xFxGhjzwBY/VMx67HU1FGSXib27dxuacKaoTasEcqD02XTNLv46Omaf9CJbJiXiTxdN2iQtdiL6EWJXtX142VDvlF1CbmHkzIP/WHzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ow/MCiVg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q7AoCU005856
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8g6eofdv0Dp
	+krIbYAADlccRDNujtYVAcBwP9CO6szY=; b=Ow/MCiVgiN04KoTga4tYUM+oCCd
	iRAZe1QKM6Hg88NjDG3fzGQ6YjRnA5beDHObfq8RU1ufOJZmxyoL5A46rtTbivpg
	Nv2Iv/Joym/UurA6Z5thnzq4uX7fmta6w+ObY/y9bnmlNptdPvPFW81m0uK/3vD5
	oY35rmZA9abhVd7vHy8JdQ1eh/gmgNUUCgrNESC6rdsNivn5ewly8aN+2sTlP1AR
	j+JY5t5Zys7s0Qxuq4YdhmgB0TRyOKpVl5wlOL80YLCL/y/uqCG0in4UXr4G0fw+
	kTG58BMJSgevARuH1HS+u9sQpZhVG9N4rBx4ebyW5hT5Rfyrz6M6Aa8sWIA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db321wt4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:34:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6a41b5b66so46073261cf.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:34:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758872068; x=1759476868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8g6eofdv0Dp+krIbYAADlccRDNujtYVAcBwP9CO6szY=;
        b=S3RdmK739uFVKA8a1/7vwCiuJ3z9suQ6+Si8LHB6yeVwFbjgtWPK73pqHbb0bWHM1p
         5/uhB9MHpan2IqCE7fQRCXHPjGCS89B3t9pdFaiMj+srKhf7epK2UT8y1vYQccn9A3R4
         4kLy+zYTgSEc8RgQc/jHuRzZ72ohYjoetuHh4YGSVZrNMphZxE9FSpKL1jb6KvB7g0Bi
         k/D31WqCXpLsolTuHtEmhnp/jB98EpvMblA2Gv97grplKUqTB+WzHCyFiepuCKPixIEI
         MZGARbp2+43uByczEWO8QhFJBOJqLYBbGR13aZ32sJRcg4cYmmpscO9W9Dv01ZfIvP4t
         t2/A==
X-Forwarded-Encrypted: i=1; AJvYcCV2SZPHuF9vkNp51vIiJoHOwnax1Ycz+lkrvdS5GNEJp31ePNbtzn07v6lgrl/QFKo2Nc7hjNwFzf0T@vger.kernel.org
X-Gm-Message-State: AOJu0YzP7F9Zu/A1hOgzJqb/Lq4EZkYSvzJHCHsGic0X5AD5Tu/c+cgC
	t6osRJZazLcgG1+V3d0kyiG2Dt5VuFcwk5J8yQuZI220ibmyfC+LaZ78n4GzYRjM4fo+/+soMgF
	eEbK7FgyO48Me//nDNNpbGm1poSspNJUajmRdv66X+4EMZkhI3xx/5DnaiPQkHzju
X-Gm-Gg: ASbGnctXDmKyzS4JkVNvDF/VRPqFYN5yKJTgjQ0zdL91yhWfYMsjUmiKoy5ghws38ud
	0s8svO/y9xyrSU1XJk9QZYQS8a/AigSOLn+owwQlFq2xYnmHW86GGDDmJICyeecZJLdz335DEf3
	2bDOaFs0ff12rDgkcSHgGgse7ZeAvMXP2838oqc258SqStVgcDX5AdMsbV0i0pF+3cn3eZhCO0v
	64/1SXBIn0YfyZn918MbGqpZXgvHcPO7dOuICmwQbt6oCJXAbr6Op24m8stl7HYKIODhWWVfRHn
	T1Vxnd6GNNq0jMtI83NAcyFPg1OETJDwhGWuDD6ClSJjo+s3SBQN6/B7B6LHEMQbVn4oDBrrb3k
	+yD/lL34nmAjSphotFn+rx3Z20qoq
X-Received: by 2002:ac8:5741:0:b0:4d1:b3c6:83f8 with SMTP id d75a77b69052e-4da4bfbbcc5mr78322701cf.59.1758872068156;
        Fri, 26 Sep 2025 00:34:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHg+iEUU+FfcxqH3JfO86nibzpft35RkBMciIbzfqmknwwxIx7udaPazf3tnGccaB3WDFEnrA==
X-Received: by 2002:ac8:5741:0:b0:4d1:b3c6:83f8 with SMTP id d75a77b69052e-4da4bfbbcc5mr78322501cf.59.1758872067721;
        Fri, 26 Sep 2025 00:34:27 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:5de9:cd6:92fe:bfb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3544fd0a54sm320481666b.86.2025.09.26.00.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:34:27 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 1/3] media: i2c: ov9282: Fix reset-gpio logical state
Date: Fri, 26 Sep 2025 09:34:19 +0200
Message-Id: <20250926073421.17408-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d64205 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=S5KZz0PuJSRxqgQEqnYA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: r3lHFhVmDeayMMyw3_bcABpsgOge26LK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX4JdBQYOkNDHd
 8JdGwKYjIexamzQAPZmZWCHIMvdHOBmE9FO2679+0n6JsvqI3llfuiAIAVm6W+Z5QlY+CzpGagM
 UP/PXSrTjcecqZ6xa1mgVQ7pMEIG2LQf1ZS3Ibd6FutytKAt2WuHreobcEfHwLqo9oqhe3wy2Zt
 xUTeVWkSdbiU62FkBJNjR9O72JtlJm07GrE6v+gSF2fichThwgPJ+zMFsXrCfZygApyWohz9K14
 kl6/5T+B20Dowrg4oA9o7rO8LBaiFOhmlAebEhUNt/ZvkJi2RJOf3FJU8ag2gky6ZtcikhbBuYC
 b/Ul0Mr57/qODwvRMwvgAzCnt6kFfOBjBIUaYbIZV8So4uMKngJ1m+5RL1e+GkS6eaW3siwWZyo
 5defcYqHmCY0WjGXgAJLRVbcJErkTQ==
X-Proofpoint-GUID: r3lHFhVmDeayMMyw3_bcABpsgOge26LK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

Ensure reset state is low in the power-on state and high in the
power-off state (assert reset). Note that the polarity is abstracted
by the GPIO subsystem, so the logic level reflects the intended reset
behavior.

This breaks backward compatibility for any downstream dts using the
wrong polarity.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/media/i2c/ov9282.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/ov9282.c b/drivers/media/i2c/ov9282.c
index c882a021cf18..fb6fcba503c8 100644
--- a/drivers/media/i2c/ov9282.c
+++ b/drivers/media/i2c/ov9282.c
@@ -1127,7 +1127,7 @@ static int ov9282_parse_hw_config(struct ov9282 *ov9282)
 
 	/* Request optional reset pin */
 	ov9282->reset_gpio = devm_gpiod_get_optional(ov9282->dev, "reset",
-						     GPIOD_OUT_LOW);
+						     GPIOD_OUT_HIGH);
 	if (IS_ERR(ov9282->reset_gpio)) {
 		dev_err(ov9282->dev, "failed to get reset gpio %ld",
 			PTR_ERR(ov9282->reset_gpio));
@@ -1238,7 +1238,7 @@ static int ov9282_power_on(struct device *dev)
 
 	usleep_range(400, 600);
 
-	gpiod_set_value_cansleep(ov9282->reset_gpio, 1);
+	gpiod_set_value_cansleep(ov9282->reset_gpio, 0);
 
 	ret = clk_prepare_enable(ov9282->inclk);
 	if (ret) {
@@ -1261,7 +1261,7 @@ static int ov9282_power_on(struct device *dev)
 error_clk:
 	clk_disable_unprepare(ov9282->inclk);
 error_reset:
-	gpiod_set_value_cansleep(ov9282->reset_gpio, 0);
+	gpiod_set_value_cansleep(ov9282->reset_gpio, 1);
 
 	regulator_bulk_disable(OV9282_NUM_SUPPLIES, ov9282->supplies);
 
@@ -1279,7 +1279,7 @@ static int ov9282_power_off(struct device *dev)
 	struct v4l2_subdev *sd = dev_get_drvdata(dev);
 	struct ov9282 *ov9282 = to_ov9282(sd);
 
-	gpiod_set_value_cansleep(ov9282->reset_gpio, 0);
+	gpiod_set_value_cansleep(ov9282->reset_gpio, 1);
 
 	clk_disable_unprepare(ov9282->inclk);
 
-- 
2.34.1


