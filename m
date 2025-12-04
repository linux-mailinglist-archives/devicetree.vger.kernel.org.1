Return-Path: <devicetree+bounces-244195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB945CA258C
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00ED8307979C
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C33272801;
	Thu,  4 Dec 2025 04:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fBfmc1fu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JyXgNxyG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762AB2D321B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823632; cv=none; b=cWAKUFHb2MtV4esqJxHeSgwIlYnBEn+oOAHFk/C3VbLmTkCfWB2Sbd1iy3DRhAmvMxii5iCygVt91xBZ/MSgz0oCXyUkAnCAydi3sekf5L1yvZjsd42U94kcZSwtw17307FJX7PbCyetS1YXEGsbkBh1iJ9z7AxyELWfFIXRneI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823632; c=relaxed/simple;
	bh=3ikvbKMf7PUmo3visIuMMZQDsdq+i0/nZLMttFmv2Xg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ao3rW+SctExpGyTSKRclEJz3VUkpY0Itydz7ECknqD11r0Cgf2ROYBeakOQtxi2TCTRM8m4Kr/N4xp4m+ZQIA/lcV1NKTzunI7K3YXWaS8R8Aa8O88DK/4UnqT1JJZtB/O/CkdyBla5F27nOdHJfaqe+rw0ABCdU0+RzUEHG/mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fBfmc1fu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JyXgNxyG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3Lpo9h1374513
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 04:47:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+HoP4zgJI2H
	QvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=; b=fBfmc1fuO8EfWwxbseSep7cOqiQ
	pq4+cMNJllkiUBN/oxbYqyRYAJOH84sv7YTff9iKa4jMwt6FfTJjuCuzqzdsPK8W
	xoYsKkn/p5/uwkvf+4hv4VGP3s0laQExLTfU96d6M5JacGCQcMcA7rU1Zl113Q+4
	JQJJjyDFIjT+p8B/lbVIv+TrXdbmo7ZoHIDJ/t4E7q35NXMwyFIZTfOrTRzKmtzN
	eZnRO+/W0q2alBa69wDZNIPiLcPnORU3rv2/wK8VKTNUf+N0Z/hjXHSNqS6g49rB
	OPibajkR+4zdtRFy0zkXTheYXvhezysEmYI7cTMTbRY4lgRZeuu6u5qfuYQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm0bauer-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 04:47:09 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297dfae179bso11451085ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764823629; x=1765428429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=JyXgNxyGWIxXuiqaT5F5HV2iGgmRJDQG17Xr7KCRwN32bY1PPWYE69T9h54VtqvlVM
         3+KJ1L2BMD0AEYELPE3mmlNJsZVHd1dqy3Dd23q4Pwv/zrrvpXWJZIC2YEPKsCW/XkR6
         cQ2D/hPTbqZE8eHxaqcRCx83KgT8qC6vcp2sfZxSQ3xqKZJDDAaiQ9l2snKNOO8xAUox
         6hszK1Det6Qqar1Z7D60Ac6jKbTcHpVB7BgxklvV08G7ZNJywW9CFnOWDkmCOCoQkdQL
         f2QAmOEyf1afRoKMma81R+JrymQFSgN4+7k1+31U6Kb/EwzWip7a8DwqrBLRFNq6rb8/
         /V3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764823629; x=1765428429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=YpEcWtbpT4VH22eV899C2vc9dnT7unNLWTnmRf2en0YjxAVjsEhV0/l7tkEa6vEICl
         5JxKPMFeOEOCEfEH/ccohMsxSQsvSEf4lzyN+148wQ6PRWFstOY6r5Ptb7fiZ0bAhtmg
         gkqK47vvKjlURewrLm2jIEVTKb/5UtCFdM8iSi0LO4eZ9J1SmwZqvyXHK4I4lMiOr/Jk
         bC53hwxne+84KNvkpurJVMPZNBdOXDfk5MxwK1wZhWrbw+SRF/8fMfiNWM4+BksffU1o
         5qtCkAXpVBfmRrSpQx/LRR30HMq9Gf5lMSUc6OysCoTOu4t5uMI3Szo7eCcpRzaB+L3j
         c4Hw==
X-Forwarded-Encrypted: i=1; AJvYcCW46JoYPvMgaBYVawsAHl12kjdRM1eRcZdudvUSsS6XAMZyRAPAoBLEylR3yP1CrzVOPlu+BPb9upi9@vger.kernel.org
X-Gm-Message-State: AOJu0Yweqnvo0fZ6JoL1BKWdL7U7qnzXk7A/MWKGgKvgYQbc0PAJBDAc
	yZpdGSpLIRkUPSeedm+SNXWZa4PID7d+qU0TxqNxCGTd2LsfdarzPxAKuUYBqV9PsXg6YaaG4k0
	Ovfnnggf4h0KBqht9u/7BBIZlGn9wOXb0Y7d/3pp7lONN0MhHREjkQY673ljuZe9F
X-Gm-Gg: ASbGncs3DaPBjN2Ty9McTX/AP6Efce7Twrbx8JnSWii+CTnSuoI0L5rIIM4VYMCsMw5
	+iebdykRLisOC7nLcwkHjRXQ8gV+W9VlZm62RYrWGelJ/DGQQCkFmI6aoHY6Zt6jahhj58+sZxl
	1V7fsJbfe98cuYvloKVsyelP0UsZChQsDO09IGa1rTQJakD/qeSx7VdWHMTi9yMjB3DTyAlQSl8
	pPKPNQd4tHMKl6ObJ+PGY5dIInXofDC/vo0daKwTwqcNjtNaE2JuvW/HhFc4Q62dVT5IDEAff7D
	hhivd71jdLN4RiPN9KixLYfNoUMA5JPwrVoyrbaG3enb/sNpGqZV8hghlgC8603gyVDFI3Z21BW
	Vj1YmEPuPuvgpOH9Rje8bmo69gxTOgpsLj9nUw1F8MoOYJoU=
X-Received: by 2002:a17:903:124d:b0:295:2cb6:f498 with SMTP id d9443c01a7336-29d6833a7fbmr55257605ad.7.1764823628667;
        Wed, 03 Dec 2025 20:47:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETGLnb1iDQCbTM6tMEhFnqWAxsg6IO/V1mPZJ0Exekg2zjCbhMpVfCa29EcI7JRiOtCkVhkQ==
X-Received: by 2002:a17:903:124d:b0:295:2cb6:f498 with SMTP id d9443c01a7336-29d6833a7fbmr55257285ad.7.1764823628201;
        Wed, 03 Dec 2025 20:47:08 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf97fsm5217995ad.25.2025.12.03.20.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:47:07 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Thu,  4 Dec 2025 10:16:43 +0530
Message-Id: <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GMMF0+NK c=1 sm=1 tr=0 ts=6931124d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: ev_KfN3P7LpH2PROmscfaGeWimD8nhfB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAzNiBTYWx0ZWRfXzO793O+Rj1Ie
 3Xj8qzwta6kaMpUfYfoIJi1i8QHtjTZ5Zbb9sE899QpH6K6Y5InkDskjx8HN1rF0et8iqV905kI
 1/Eal68/NpCWPtQAD47GTIoW4In7oAHKKgz14clbfY4cPYjjNHk2tNN8iLYHl+cycNXHAIuE6y7
 XaQGZs13YfJxgGWHtOgMxEatzCX1gZTIZRei23R9grWdhHMf4FRgo+IUy6bXRPJddxcC8Tk1+Jf
 qzgLz5DgBUEtRaQIumqs/LjZ/ya/RMPd0wjOE3/JSimDRaQElKCQ8EFKpI7OlzbV301F5EK66Mr
 qDqLS9U4k88lxMhhafuWVNK9K84LvCcinPC9gBRVdvPMpUe7lbEchCSOyZVXb6LdKpsW9Ol2tDv
 QCRqzd5Ej5/gryHb0INcbviSFMj1kw==
X-Proofpoint-GUID: ev_KfN3P7LpH2PROmscfaGeWimD8nhfB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040036

Add support for overriding Squelch Detect parameter.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..a75b37d4e16d 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,6 +37,17 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
+static const int squelch_detector[] = {
+	[0] = -6000,
+	[1] = -5000,
+	[2] = -4000,
+	[3] = -3000,
+	[4] = -2000,
+	[5] = -1000,
+	[6] = 0,
+	[7] = 1000,
+};
+
 struct eusb2_repeater_init_tbl_reg {
 	unsigned int reg;
 	unsigned int value;
@@ -120,7 +131,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct regmap *regmap = rptr->regmap;
 	u32 base = rptr->base;
 	u32 poll_val;
+	s32 dt_val;
 	int ret;
+	int i;
 	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
@@ -147,6 +160,15 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
 
+	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
+		for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
+			if (squelch_detector[i] == dt_val) {
+				regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, i);
+				break;
+			}
+		}
+	}
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
-- 
2.34.1


