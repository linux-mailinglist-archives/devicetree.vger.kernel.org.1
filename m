Return-Path: <devicetree+bounces-221095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 123EEB9D2F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:32:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC3FE4A1358
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E062EAB81;
	Thu, 25 Sep 2025 02:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OCaEVAPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6432EA732
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767352; cv=none; b=q7Q+QtdSLcpBCOPBgTzQ8ZARF3bOxIxGnAG8O/TxxLWeQefNnTpRepV8OI+isxWso5h23U/bszQmmbukdigfcZjXh8w7mGP5WttMhpr+XIVzO3qTPvcYIgX6Y/IJ++kEpBdgLclRFJj4c9MXQ8RKS2sU7P8v6zqoUJAUy/z3oNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767352; c=relaxed/simple;
	bh=KRfbO68RqNXGYUxEscJ9pAB4g2zVH9KTs2sCuSCOkhg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fX41K+4lDIc1nNu7oVtH2giASGuIOknMLB3ZE6cjZnqipl9evsBge6wnusL+o8bfOmXpLFGGyUk3H87pHwoCxs4nXOL3W9qtRdscRCkhrnwD1v1qT0RCOIWBhBTttQvxPHkRykM74YMYjAH4ZnYLctlejsyPJfbvJyFWvejV7KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OCaEVAPv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0oZok025366
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=OCaEVAPvjxbkklv9I1axjPJpqwY
	ntg5/hTbvGbrGrrgMTERYh1AwxwWOjdIIG9XYAapcHT+TZsvEpr8cbgRu7bSsf/r
	LCbvSfAfZ0cKUyO42gkdOirH1ppfbnH0POCE6oUL65JGEn1vDNy0O7uD5h/zeLTw
	yPYLroGiKlxamAWZ8Ifvsl81/XaBQTzUHFBiF9fCWZ04RTn8IIkcY6v6iigZwjuV
	VfteZF6PqT80rX2VALY6574YKTmX7ftyu3OHzXbL4w+pulc9Xw1TAvCEF3gFTpIr
	VHqzZNu1whzZ2giqQcMcZrPTWfYOkrCBFumugIGz+g+mbcbjoL3fjnVuG2w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexrp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:10 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3234811cab3so453974a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767349; x=1759372149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=uBKJZWRYS1bN3x8/efKIFkfdBjccj0ukWkPDLSdtYUaai3zRvF/CO2BRYqtiAoCN84
         YLCPaBZOkezqn0rMVDy45qnOAT3j6QAQ1JRLzuqi4u/uJphl99sQu1WPIB3xFt7QYM/r
         3Y3WSj+y7QtbXV/Ak7/7JJ3/LWa3InShgufj7Ad5qUFllUSXZXNBsvngiHOJwS9KmTSN
         Zw0Mm0Jif2wVcaJ3b7qy4IHIze7pkwV6x2/xLcr4OAJ5CcE1HYzrnlO+UFTUiSsuCR3z
         2legree4f7Jnavc/2PF4uq8sIICgT7L8djBXrztLmaQTWpNTwoUY40rWqMAp42ktYVGn
         uUYA==
X-Forwarded-Encrypted: i=1; AJvYcCW0CjVTjkmadJVKbtq/ki9+5ZLqL20E8z8lTJGNf8CKs0UxSwuhRvDSo9SubMHi2zgeqQqCi3EuZc7B@vger.kernel.org
X-Gm-Message-State: AOJu0YwJtGSCJva3Qnfd4VDP2ewjXqno98Zb2Pkv6wzRxd4YoHCWd6vL
	dlidh51z4MKuJUd9WwiGkv5csOGwSYj14IJV3EdvPjfW9+TI9GGfVvehSEUkh4uDsl329fUC/kL
	zO7Y6BYCDESFUW/CU2oH3cIc3ES66ynrjz0UcjybazeAGRUpZQJHp4SQ8RJNqUDhwC70HcDpP
X-Gm-Gg: ASbGncsDDI+PuQgtUfaIDaStXSWPDx0HUjaiepcOnJhE8raDp28Xh9D3UUmLCoCkgzO
	5jBGe5/r21fpCwOuIpBMnKI1cYawcNCH+Plrb5noZA65rObCobo5MB9jNgj88+1d+OffhZbzSop
	GagDyQWtbnaEjxwAYlAw6yBxdp62G4RZ8fdASlhJdBmunk742anoVWxSU9jM+pJFMMGtAVCDLrH
	VWYvPUjOyYUv5jTOER1V3BYaegw1exOIDNMWGkeSeZJGdz1uzGP6adOvOJV+HJHm1D27fV37QJ+
	5gNMirHifs6G2coafz+spe6oMnt5Va3ThxjXBSS+fWfDhlZeeuknkA5ONAAhIxabMT3QY3UCX/d
	iqHROOPMYuiUI/NZa
X-Received: by 2002:a17:90b:4f47:b0:32e:9daa:7347 with SMTP id 98e67ed59e1d1-3342a242c87mr1559891a91.7.1758767349149;
        Wed, 24 Sep 2025 19:29:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECLCA3QwbkNEpn1Y33npnCoVwb/JYm/tQthSgy9u+tUbbw0LDLNGOOwLt4aOYfh2ilmfQULA==
X-Received: by 2002:a17:90b:4f47:b0:32e:9daa:7347 with SMTP id 98e67ed59e1d1-3342a242c87mr1559869a91.7.1758767348709;
        Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed, 24 Sep 2025 19:28:50 -0700
Message-Id: <20250925022850.4133013-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 81OIOYh8MQ9R_XC09GWcxEpkzbqxO8O7
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4a8f6 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX/p0lAh042FCG
 94aFOkzlsGU/ujpGQWZR00lazALdEfBOPWQjCGPUhVVLx3W0CrW31YfNoAsn9Gm+sXWmD16Cems
 aBi6OrWGeirQUKXuTnwalYdqhSHqTycgfEd/Cle3++bbZZVLXWT5JxIzs89E2rns5Ehyw0hA/+d
 HwNqkjGccM5WyD7w8JV4uTOh0hmtuqCmDpD30u97RJX9sdO9EVhDiPeTtYZMt7kr1OfBa2chiNi
 CTiqJwyixzWZHHpk/2chItKl226iE8JwFbWsjO/9i3eMujsnDvX04OPv4EPhOtmv43n3t91bNon
 Jk7+Fxbjsg4dSklCYUsOLJKDDkULDw8U4In+opFvTxf4LUf5MDXl20urYTJ92hES5urGxBL0P6x
 jFVb+1+Y
X-Proofpoint-ORIG-GUID: 81OIOYh8MQ9R_XC09GWcxEpkzbqxO8O7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

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

