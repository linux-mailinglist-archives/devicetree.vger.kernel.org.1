Return-Path: <devicetree+bounces-168575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C294BA9385D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BE843BB05A
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33B917A311;
	Fri, 18 Apr 2025 14:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GjA9tAUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3136417A2FA
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985523; cv=none; b=pBf3ZvBslkeu0DH1AqSOGNYNNktTi98tpJEUaE+WTeHTEuJ0XjcO9iLZWz9zrZt4xFkQSIwXsxL10vaAJCuEzO/yVTYkau9r95tK40e34iOtuMMrFIVx5yj2wlMioMCIM6SsCJc4UkA/4myCjWqqN90jCs2m+ih0ZlC/iYWZVns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985523; c=relaxed/simple;
	bh=h/8FPdShUxBnyuQhvITfLr1y2fX5Z1y5nBq5BvfsLf0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o5y7/O+UyNro+IZRX6ntTcfBXqDE3rpMfXZmJIE/jR+Qu0Hb5wE0y8pEVq+BXcdzkH/eb2gyAenxT+btzqFxWa3w4zplPuzD7Zbd/lcJ0/p2JkDJqiH3RJpvvUxI8rKbl1k+WN0Q+3jDKqNQn96SpqacDdknlv3YvbIcqNVMgEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GjA9tAUk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I351Rf001959
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XMfhAIPniYR
	1TcTJelU2tu6NImHbu10iJmHmG8d9+Tw=; b=GjA9tAUkw41aghYbtgiUZYOeiex
	8KSIPCle2WQQw8tP0TqB6hVEGg9snD5SOZTnh3I7PMukvBhvOxglgVmTuEJjJw+S
	rcAsVdY8mB4APAdc6ghAPvRFKI0WUOb6Nhv5qoVsiREDQwThTPfvQMV3c388aH9S
	VxW4REVacvyREdZy8OkbgBK7wH9Vy8nLZj6vkp14O/4NGEy14mgm3FwzqE13O9SE
	3Hh8FLvtvxGoyCrhYzbYSyBTkNl7ko+nsyFGiqC3VitT96wyhXfKSSDu3eQmUT3S
	8ROIM89HZ+pjmzhB5CtyMr84avcRSO+yTXAMVqicVK1j/d6i3TSI+uXbIzQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvjjd9s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b94827so270172885a.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:12:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744985520; x=1745590320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMfhAIPniYR1TcTJelU2tu6NImHbu10iJmHmG8d9+Tw=;
        b=eWlRVw3/famuiY7FcWs7HoWCh79Tg+ASv2S0uWwYuIWGrIsblKsoUFHICRiWH0wYuX
         ojfjVYFL3PnxG0nFZkBJOPZP5VPrxp3yIPBElHB8QI51HpddG1uzCVh7XbrXfBxqo+hM
         jz9MDzoSKpaxbP7XqyZVYoLCvJYGRMoeadFuX429OIiQTZhc23Bel6BABf44gix6YvvF
         tmUKgSACzGh4UJxLgLyXO5b8P7Eg3fXNdiT1GSDHKTa094yQwVeiun7G1AFmDDLdc0zv
         yhSEfNdK1u1DoDLP7RMpi0NNzZAsneyRI2CsbcwPWkaEQnY5dUk5dHpFVYHfvjmTApUx
         2Jxg==
X-Forwarded-Encrypted: i=1; AJvYcCXoiukgu5C7D+ICcpxV0emVMzLOlAL8FbCVuRstT6S9samE8x7IzCWZyN1mqOrvm+8Z8VD/n0237wL3@vger.kernel.org
X-Gm-Message-State: AOJu0YzpdA3dFtBtCUDwJHg1CDtQRyaw8U2pJs6WZdw2Ud8A77e4eKI6
	ICfS9mtqeFefxH7G/8VSWE3OExAOnkwGTvYmL4aapnYXenNNilxUhrKCbzrtiEw52GoafRnQbDh
	7ylpACu7+mj6Gwr3ZEXKknyavVjGobVB8ndM+3DiPpU+Ad2ip8x93AtHeVvMk
X-Gm-Gg: ASbGncuaaxobOImRxNG/Th20U85DVvW0oeDzU/9Fa80goENXWVxPxGxDeYlZJP4xoM+
	FoYxDRz5kDhmx5t0QzYZwXWSX2J+/dJMxbtpMaPGvHsp5F1EgpF31lZ+3Kqj4cTzNWyKXcGXURb
	mNuVQa59cvD3Nr50GI/mpjrzBsqUWg7JcOKUcxE1NvHBhEoE0QUrLH6kEUuEm9DAbgV3POyoOUv
	Mqa8hL+6JMTe8MOpknq9reBn7reZX4w0DSJ+0RF5bBefVwMs05151fDWTWjHfTySl74MwL+bt2T
	Kv6l1SNIk6pFXExVCH1rEHMFTFazOMSdLX5r9jEoAg8tmyc=
X-Received: by 2002:a05:620a:1aa6:b0:7c5:4949:23f9 with SMTP id af79cd13be357-7c927f9230bmr449074885a.18.1744985519981;
        Fri, 18 Apr 2025 07:11:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy39xiAA7ZVsjUYcrI7RV0aO8qhRCVTsw4rOmXChxVsMcDVvCfeuqFIGL31kuH1zl+hRCLZw==
X-Received: by 2002:a05:620a:1aa6:b0:7c5:4949:23f9 with SMTP id af79cd13be357-7c927f9230bmr449072085a.18.1744985519642;
        Fri, 18 Apr 2025 07:11:59 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:2dd5:219d:5008:1bec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4404352a5f0sm81172835e9.1.2025.04.18.07.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:11:58 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 3/6] media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph DPHY v2.0.1 init sequence
Date: Fri, 18 Apr 2025 16:11:44 +0200
Message-Id: <20250418141147.205179-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
References: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=68025db1 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=j5mQdKQlijobKnpfenYA:9 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: DyEaVkXPoRTyA4-W0II2-sesiaKg45s2
X-Proofpoint-ORIG-GUID: DyEaVkXPoRTyA4-W0II2-sesiaKg45s2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180105

This is the CSI PHY version found in QCS2290/QCM2290 SoCs.
The table is extracted from downstream camera driver.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 89 +++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h     |  1 +
 2 files changed, 90 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index f732a76de93e..91cd697083ff 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -319,6 +319,90 @@ csiphy_lane_regs lane_regs_sm8250[] = {
 	{0x0884, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
 };
 
+/* 14nm 2PH v 2.0.1 2p5Gbps 4 lane DPHY mode */
+static const struct
+csiphy_lane_regs lane_regs_qcm2290[] = {
+	{0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x002c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0034, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0028, 0x04, 0x00, CSIPHY_DNP_PARAMS},
+	{0x003c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x001c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0000, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0004, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0008, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x000c, 0xff, 0x00, CSIPHY_DNP_PARAMS},
+	{0x0010, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0038, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0060, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0064, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0730, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x072c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0734, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0728, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x073c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x071c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0700, 0xc0, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0704, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0720, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0708, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x070c, 0xff, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0710, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0738, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0760, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0764, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0230, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x022c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0234, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0228, 0x04, 0x00, CSIPHY_DNP_PARAMS},
+	{0x023c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x021c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0200, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0204, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0220, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0208, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x020c, 0xff, 0x00, CSIPHY_DNP_PARAMS},
+	{0x0210, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0238, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0260, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0264, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0430, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x042c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0434, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0428, 0x04, 0x00, CSIPHY_DNP_PARAMS},
+	{0x043c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x041c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0400, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0404, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0408, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x040C, 0xff, 0x00, CSIPHY_DNP_PARAMS},
+	{0x0410, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0438, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0460, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0464, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
+
+	{0x0630, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x062c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0634, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0628, 0x04, 0x00, CSIPHY_DNP_PARAMS},
+	{0x063c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x061c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0600, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0604, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0620, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0608, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x060C, 0xff, 0x00, CSIPHY_DNP_PARAMS},
+	{0x0610, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0638, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0660, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0664, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
+};
+
 /* GEN2 2.1.2 2PH DPHY mode */
 static const struct
 csiphy_lane_regs lane_regs_sm8550[] = {
@@ -744,6 +828,7 @@ static bool csiphy_is_gen2(u32 version)
 	bool ret = false;
 
 	switch (version) {
+	case CAMSS_2290:
 	case CAMSS_7280:
 	case CAMSS_8250:
 	case CAMSS_8280XP:
@@ -829,6 +914,10 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		regs->lane_regs = &lane_regs_sdm845[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sdm845);
 		break;
+	case CAMSS_2290:
+		regs->lane_regs = &lane_regs_qcm2290[0];
+		regs->lane_array_size = ARRAY_SIZE(lane_regs_qcm2290);
+		break;
 	case CAMSS_7280:
 	case CAMSS_8250:
 		regs->lane_regs = &lane_regs_sm8250[0];
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 63c0afee154a..377707d91ff2 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -78,6 +78,7 @@ enum pm_domain {
 
 enum camss_version {
 	CAMSS_660,
+	CAMSS_2290,
 	CAMSS_7280,
 	CAMSS_8x16,
 	CAMSS_8x53,
-- 
2.34.1


