Return-Path: <devicetree+bounces-220839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B1AB9AF5C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 19:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3A7F2A2083
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E658D3191DC;
	Wed, 24 Sep 2025 17:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AV8ih3+5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEE031771B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733290; cv=none; b=E2OkB60Sthme9/28wYruR64rbAMqNuKCmy2sfXI67OZHpJFIn9EP8bb7jsOpXLddA/U+X8j5djCYTurOJIRAybcO2qLZdZhIwn7UUSzGJKMnxWrLLitcSnHr9imUpah10Wh/JqR0vFOlhBev4NGjp+xss5c4xRQ9iZg+Sf8LBw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733290; c=relaxed/simple;
	bh=/aCT6AMn+DEBAszM+FafwAQnaRRZOfmB16zLDUBpxGk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=INUtSIgRPmCiXGm9Mt95BCI8OdO5Ro7MlfvEB01yCuEuCJjECxzrODCB5IG+ZYAEaKCqptRiEFS4Zs+yIumjr+DTjCFomyUeShg9OOCO0w3dykwnry4Xy/PezovSV6wGYddh1kqu5g39pi/bKPm1dXshA8m/qKUjmPGFhmkrF+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AV8ih3+5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCV1nf027919
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K94gZNJCyxLLjXcq/8C3d4M0HAtuU0U9u9rzRHmSpBg=; b=AV8ih3+5L5ShgFEc
	jUQGbPgQa+3ZTHZZxtWe6quQixGcAFzPPFavPQMm3mlsCARdaDH67ZZqlYX/oMwL
	G5lnvzOyXrG68n1IB1RKWqkwY1yW+k8hv0eEzLRW0MdMbF5osbGmeqhbAAS6B03R
	vrD4+3VqRTbaKZE+cumWdYZ50GyAXTVay0QHazHCRzVFOrvPER8QEofSXiEO+cOe
	0yq1uaKmEXM3JZkwY+Ctv5PtGvDUDmz6L7o4oH4GwNZ1xWjQJceLKvMJA7WUIkmF
	MqNMt0RcFoungbnUt2IQwXOa3+c1ufWWWG/ZGD++TdNu9oaRVRdv7Zo7z1cmep5+
	X7Jjzw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnwfdd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:01:28 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b55153c5ef2so18604a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758733287; x=1759338087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K94gZNJCyxLLjXcq/8C3d4M0HAtuU0U9u9rzRHmSpBg=;
        b=MujCLU+TaHPgMguPJ5iLjCMvgfZdS1ClIO8FRuy0alazlwj/u5A7b6cO4jmas+yEgu
         qP4rxbtexHSh7EciUtB/9pGP7+4yEuhNpdWpl3qa1VXEtw6JZhwoNx6+nFAs95SqOzKV
         f4pjjudqLN2aLACLfBb+B5W0DlfL6SB+JNY8Nnan+uh4jEv7MY6udBz/ws49PvCB0XNm
         VRSKTptQL75OKbaTjFQDHVCmEE9MjUVVlPhIZdumPI6IEdeYjlPfpypAGgXd3xcjMziY
         nUM1nQtkM5BxF/i91wwed7+snfo3y/IdVc7/09Nlk+GtGQn2XMN0ySYX6J91/7aseOh8
         s78Q==
X-Forwarded-Encrypted: i=1; AJvYcCUFzHVLcd5qGX42H+v5Tv8PV+KxJU/QXl1oyQneQRR4fLv2dh+Rh4Folv3MzWNjgbtz+WjWp2U49QnU@vger.kernel.org
X-Gm-Message-State: AOJu0YyGSZSAez1W2BTaBjW3Vj6FmMz59olB0qWuSUHvffxzOz2POuZC
	b+fzmmv2i33uH5a2uYyR3euJYnkEjAfBuRcXvmU78UYLIgO7e2ZmNugtHymIrNeJx9TZN/HWKAV
	VOoU5yrHO3j7KLdyHZM9zlz0qWOpaS+YYKf1h/IBh/S2svvkaUJNM8Vo9MA85lsij
X-Gm-Gg: ASbGncvetuIDP4OhXkTz83gbxyBT5Ndqo6xNAnsbnzTyH4zu+HdSk3L/7AZ/Os0VAM/
	ahILNduxR0cIIerQomuHazB8IJxuORQJXjHJP2iBk/6aED2lwt0t5ttr28RPmAVVcE4395r8WkS
	fBRWoqkAim5Sb/WVOQ1f/N6rNzPSIs6pTMkcJHWm4Z2W2iZ2OaHe5rV8sQGhts6AjEYIuX8eE/2
	g1rJSD+K0VXqSUKUW5Ue63Y1MyFhkTOo3SxBPoscR0+4jsF5LAbR2QiM8DRTByTkia2bT3RgGLv
	6Oqe4nvtjzC5Iqh351r1MWSGaAVkyIqz+5IDgblLRu73Tv0dajfOss08sTMKItkm0bXHtiuy53I
	kCq85vmEcFkBz/lMKUMA6f8Ntqw==
X-Received: by 2002:a17:90a:e710:b0:32e:ae12:9d32 with SMTP id 98e67ed59e1d1-3342a22beffmr419196a91.11.1758733286235;
        Wed, 24 Sep 2025 10:01:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAPpvCtd2d4vHGdIUOkRx6YtnUHb9m7wAZMK8a3e7Ta2Wt0f3XAL5MqaTZbYyUtxqvTDCxvA==
X-Received: by 2002:a17:90a:e710:b0:32e:ae12:9d32 with SMTP id 98e67ed59e1d1-3342a22beffmr419079a91.11.1758733285177;
        Wed, 24 Sep 2025 10:01:25 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341bda09a0sm2931299a91.9.2025.09.24.10.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 10:01:24 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 22:31:04 +0530
Subject: [PATCH v2 3/3] pinctrl: qcom: spmi-gpio: add support for {LV_VIN2,
 MV_VIN3}_CLK subtypes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-glymur-pinctrl-driver-v2-3-11bef014a778@oss.qualcomm.com>
References: <20250924-glymur-pinctrl-driver-v2-0-11bef014a778@oss.qualcomm.com>
In-Reply-To: <20250924-glymur-pinctrl-driver-v2-0-11bef014a778@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758733268; l=1502;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=CiPyfA3fDFL/yWTIk0JCWKj4mCCnWYx7OMCyiFzL4yM=;
 b=yJgfH64tWhhT/hfvUAVVym082LRueDGJbwARlk+JMQ/+MvtcmVuU3ceW9zhTTlBdRjWihOkjk
 Zkg/C8RHR2sBI20u8IGUaN2S8Wlxpsmcl9tgbhTfgYtEl17X30J6CgV
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d423e8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_LkKalIgBaL7gH2Y5XQA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: 1nUKnOHVC866q0p55gaTPOZLiVOytaCc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX1p+m5jGIljwW
 ahFl6Un8qOp1mjVFFuuwccoxpr9g993LiHOnFcomNQ6ZIJC+kADg5PDr4w6Kr+KRfqDdjCfX+js
 5QJGoBuTRQsp/UtJs+38IMo6JVZrGogw4z32/uCITImnTK+pzg9kX8bjSjUKURZdYheO29radaq
 njNXS61ciZigbtq7eHu9ZRQVH7i6v4zw2A9+F747thfzKfSDUiHbq39nh7OWQVPMX2A68G5yopr
 ph8tdTLKfmoRCUfTvv2lVjk5dkKKcxMOj2geAr5WJvvSJ8aH5ylCANOXomfAfz57L6k24N/OpIv
 USZ+GvrJiMMTrZPytQ3waCItZMm3zMYk9HiU9fa8Tb6KhqxWOmBoqIOBJsrrNF7NRkqosu2bp6N
 VpWUXhb/
X-Proofpoint-GUID: 1nUKnOHVC866q0p55gaTPOZLiVOytaCc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

From: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>

Add support for SPMI PMIC GPIO subtypes GPIO_LV_VIN2_CLK and
GPIO_MV_VIN3_CLK.

Signed-off-by: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
index c4f7d2d7a017684cd9c0d0850cb8d998668b543e..83f940fe30b26ae06373860616c54955c3b2253e 100644
--- a/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
+++ b/drivers/pinctrl/qcom/pinctrl-spmi-gpio.c
@@ -42,6 +42,8 @@
 #define PMIC_GPIO_SUBTYPE_GPIO_MV		0x11
 #define PMIC_GPIO_SUBTYPE_GPIO_LV_VIN2		0x12
 #define PMIC_GPIO_SUBTYPE_GPIO_MV_VIN3		0x13
+#define PMIC_GPIO_SUBTYPE_GPIO_LV_VIN2_CLK	0x14
+#define PMIC_GPIO_SUBTYPE_GPIO_MV_VIN3_CLK	0x15
 
 #define PMIC_MPP_REG_RT_STS			0x10
 #define PMIC_MPP_REG_RT_STS_VAL_MASK		0x1
@@ -852,11 +854,13 @@ static int pmic_gpio_populate(struct pmic_gpio_state *state,
 		pad->lv_mv_type = true;
 		break;
 	case PMIC_GPIO_SUBTYPE_GPIO_LV_VIN2:
+	case PMIC_GPIO_SUBTYPE_GPIO_LV_VIN2_CLK:
 		pad->num_sources = 2;
 		pad->have_buffer = true;
 		pad->lv_mv_type = true;
 		break;
 	case PMIC_GPIO_SUBTYPE_GPIO_MV_VIN3:
+	case PMIC_GPIO_SUBTYPE_GPIO_MV_VIN3_CLK:
 		pad->num_sources = 3;
 		pad->have_buffer = true;
 		pad->lv_mv_type = true;

-- 
2.25.1


