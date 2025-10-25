Return-Path: <devicetree+bounces-231005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D6CC0878E
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:49:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 061381892B92
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD88521E091;
	Sat, 25 Oct 2025 00:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B5WuUVCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02397205AB6
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353289; cv=none; b=IMhC9bHAHQQmegw7AAq1j8OKL8IiCIxRKyTIE7t3WZWEuK0rpwNN982OilGu7byA1IG3roMA1uzO0pHX67/579nUEPsC/C0SxNFVN8UmS4epMTq87IQpcLOw/uOMAMkp+VBu9fMJCqYyMYPURpDZWmFgCXOli+7O8dzXc0xzO/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353289; c=relaxed/simple;
	bh=jDjMFmVfUDvw4337eIePkyn6RwxTmXHsTxuRAlWWnH4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HQyFh000wY1QM0AIfnUUvwmcBqxR64NuCGN2u0hhkfz3E6Dc2gOKbL17ONE98nHhRpIs0thV1VHGjZC7JCbEHIiKFJM3YLR9n8B6HnLFG5UaCLLKfTLT0EfhaGpdNBVo0fBZMlC94WZEyRWMGdkl8Wg/ud+xrnjn1gac1E9SLdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B5WuUVCR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0m0Hj013376
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=; b=B5WuUVCRQaKApCAo
	zDWt3A/cupH0bjFVVzRzjm9G+ZHHqS/8AJZm3RDJApASLF8ZEKQOdg5uawDHHiLE
	7+WpjFCSzw0LzJMGlYxlnDfDDtBzSD7gfypO391cRQ8OKl5Hfxqcgxrj01YvJ1GT
	P2/p3ne9HT+Zh1xZbKL7iHepg+KDPYn7cz3PGQg+cN8K/OStP80Z5RDvfbwzlggD
	B3zX6/1+8QEP1k5mIKyXvyupeHG8BgJtKW8YvXXF6j4Qd35GkxjhLlfjkrc2UV34
	nWrvlv4A6oPK4P5U86aud/TzMm0PVuq5OlXvalPaFII5Op9fh+x8OIHtKKoQwhHu
	uWgA+A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0uk7n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:07 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33be01bcda8so2633023a91.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353286; x=1761958086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=q0RULR18ywaVj/JdcdUek3TEnJX+hG+FuzIaTmX4efMTmafimALHTay9Am0L/Ni7Wd
         c/mPomWqux7myiITj/Dck2kQDrjvgsOFfpwJMYHurWnRjqyIw3MXNMm0cW7LdA12+inr
         RftgPrP3tbeG8dABBUoWbrvykSI5GmuY5Ui5PS/jAwVZ+lfQ39yGIVJU0IOhHGFUyyrW
         xcNt+y7M6aZXkyPd6FtIv/I4AfNe+Qv94Jme6DINcijh+OFZvzqMcTlkz6TNUaauuzlW
         wJyPFU9ZTijyu7Qj5KiULiaq5REZ43MAwrsHDbjoUXye+vqB9ySUCx8eln8P6692k+Sz
         2B+g==
X-Forwarded-Encrypted: i=1; AJvYcCWJ3K9OpamYcnWU2oKzlOar9jMqiIiV2HJJIOwbPyVsS/csIfci7EUhXlrG95HlfOnko/rqKlYPmZ+3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8+u8FoWl9vb1oK7mI+teteyPqiJf486++N3xq0yLSbYRaMFMD
	AUXPU8QEMaKIm4SLlMltv9CCz0ndK1rPbFK+len1RF07gjvk7fBiwKRbTkdqhh2GsWKa82/23Ry
	6sgt0tiek6FnTxOHDYvlzctyCuuMYqaB+yjWD0xvM/kKeb1MHA1xiP23oUFVOn8M9
X-Gm-Gg: ASbGnct6jlagNgIm5w29PV8xyrE9iMbuP2YGOd7H8f3Ir0i6SW4ylHKWBOQba6HnsTI
	mjY0hNE5/nYr1vbtlHD0Q4MKmZA7fVjQIx1/E2DlZzhSyg+8Rg0beQEe3qnRPV+69SRBv2DCShL
	VHSPsce/ZOIdihaaY3jebvzL6rOLqdGkxXzdTvzQHSrHSqQjlaUUDwtQNDr0pDI6wwEPYbuBuIy
	srhwqkQHIvZ3T6Yridhix35KnERJMvguR+KGDC+EqXsn7JnnngkaY/ppDEXDetctT77FNeSX/kd
	4QlrkO/mUlPtwjSM2aQjDMpqAPr+d+rhg9f3a2FwBIc9lWdJMHb7zSomRARCIHKm8LSmegBYZCl
	1mEM3PxDbZlgjOuk2zwA0WG6Q6IxwC5j4ptlLW5CT1qTASvpWLjQ=
X-Received: by 2002:a17:90b:2411:b0:33e:2d0f:4791 with SMTP id 98e67ed59e1d1-33e2d0f588cmr10040494a91.13.1761353285711;
        Fri, 24 Oct 2025 17:48:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOOLiiW+hINTlO+qwzsPKjtk8LlBIRfcfLCG6jDPzsh1hx2ZaCLo5G36I6nYAwHf9f0snLpg==
X-Received: by 2002:a17:90b:2411:b0:33e:2d0f:4791 with SMTP id 98e67ed59e1d1-33e2d0f588cmr10040474a91.13.1761353285222;
        Fri, 24 Oct 2025 17:48:05 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:48:04 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:46 -0700
Subject: [PATCH v6 8/8] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2
 repeater support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-glymur_usb-v6-8-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX0O59NxFlmiZ3
 XAMQuckNyRd91XAQ8CoH7hpQAu67Gbxz9MtVZtoA91yWt8UVLjwkW4a1giTMF+nxEFLIGUNkNId
 AlNcuko1/qU6i6V8BHPWdr4HY3BjmWPR3d6vMIbVUf281lgVHI0keci9amQYQadeMJQzpgxMzSY
 W1RzMW1g755tRs3lv/aZHEU/e2Zsn7ADpQ3m5CL+n1ZqobBqkGVcJtESHm9U7nTH/RiiK5uXTrV
 HYAZ9el7b3cmQVuVQYd2WTJxZVLR11G7hV2FGhqdKxwVyGrxHQmIvkJ1Hha1bj/Q0gFiOI7WBKY
 VGaxED1kZpoFwV/Wi+gUFNbBEaSavlyGJX5d8T+ND9qRZuUXaGHn0vDC91PcxQrUVvcZupkkJa3
 horPZAHdj/7OnI+i0t9MtEP3+MfDDQ==
X-Proofpoint-ORIG-GUID: 09oIi5bnY9eU0_7T74B3E9sJoCIBzimb
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68fc1e47 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 09oIi5bnY9eU0_7T74B3E9sJoCIBzimb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..441996480a67 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -75,6 +75,13 @@ static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
 	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
+static const struct eusb2_repeater_init_tbl_reg smb2370_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x4 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_SLEW, 0x7 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x0 },
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -97,6 +104,13 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2370_eusb2_cfg = {
+	.init_tbl	= smb2370_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2370_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -278,6 +292,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2370-eusb2-repeater",
+		.data = &smb2370_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
2.34.1


