Return-Path: <devicetree+bounces-223188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCA9BB1F06
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8872748126F
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3253148B5;
	Wed,  1 Oct 2025 22:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NcV4KpZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0687B313E14
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356356; cv=none; b=sftIFj1ixEsbCBMs8roXmgpGeiEAfTaVZiGm1wuqp+ocKRWYxndnekoU9mfvgaURvwMKd52poYrd1R9yl9HNHt04N8Hd3ZgnmRCiun5JqwX8Nzql8uRJpg8FvZvyVDBmkWIN4EP2FEvTwOlUuXerHHNeEgrQvI3eCiTfEcdi9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356356; c=relaxed/simple;
	bh=KRfbO68RqNXGYUxEscJ9pAB4g2zVH9KTs2sCuSCOkhg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=drvbtZEAQGS8/sXnJZLyRi0q3YPthZhUGKi9R+JquooM2P0mgfxof/hhUtlXBCbXt2PW+KlBfuUoFSGxXTh8JRf/dCYCiJ6KPxFERiusa3pxqSU6A/g9VxM6c+xrCkPVkmhgNOFZ9z632xk1qyNOgqOxFMWk8alGR8wG0zxLQXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NcV4KpZY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcB68022701
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NVYsIQDhA8R
	ySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=; b=NcV4KpZYz8Xya/lAqkwjI8Lx14D
	feryq2JW3z6hAaS8oD8wcT5f/SPxN0osxdtXPEIPBBnPB8NsFTfQR8bGh4MC66K6
	pzWZ14yvwe5T5aTtlwZKBG0E0J966qKCrqfDvGTgG1XASKrZe1KoxS7mdjHcofb3
	QoV19uLa0TZgpuVBo8j29s7ghiVIFIjxf7I0QWhP2r/Q9n/xEFeRZP850dG7gvd0
	rx+ZD2wV6Nuw9Jn02vfTDEPF6U6mtrvIgECbq1J9G4cnyh7pr8v0ZWW73PBTqg6D
	+41JHmW7wKFSUaWhK9HfSNXhdW/zTWuojaJQm1Ibm5378miKohr2XGeiOvw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n6brc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:53 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27ee41e062cso2946925ad.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356352; x=1759961152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVYsIQDhA8RySLuD9P7ecPi4IEalfEg3vxqe/TJrcfQ=;
        b=LFQPPELtx0V9F8zOsiwtlyODd6hiLl2M6HeLijhVzNezX1QTn9wT4RuxAYqhZ+IBEK
         v7QE/HTGB5PcowFPFpvK3DS9G8KHqc0pj81FdkNn8RzqJop5jHMLwEuQx0SKpCuzKcvZ
         SAoO7kt0AmXyeBIfXvkHE4xBWeavJjhYnORqkLWLV1XBIeRYEvD7HQS3nYCjJXT38siG
         3EWhglyTUnJtf4EViaOTBIXHSCPwgTNMmJmJqAoBn8fDwh0fyZ/CpoF94jKwxyu/MRnV
         YavC4U62382nJZDyauq1cpyFdwcJTiwW+y0Mfp73+zwMzs+s7HugyqdGMdKyd6Ni6I5Z
         SSSA==
X-Forwarded-Encrypted: i=1; AJvYcCWEi7zAJjhRzQqql9vKDA2eG+AJzVI+co5r4y9bg96iCXp6sVv6xERYG7nKmi6oymc4KEjZtqIev6g0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5fO4dVcm1bfRKlviTifG5XDGMQNiAbf4Myq3+YNwAQf67M0dR
	FCbWCWpbZ3KjfMWhpUv7oi8qzxu38yMWqpOEDR7GE61f2QXag1kggcUfN43xvIfjYtlWeo/meIv
	j3JeVoa5vR2N/VyCcr/B70aiIw79KGAUrZKn0zQf/0QRJJJFZR68DdIjSBJR0mMzc
X-Gm-Gg: ASbGncs/5LrklAIUyYd6a/mWMberv1TFFXqnK8X8MrkJdzaajhoDaNsKBW1wL3rTurY
	l3pold8EWTw6GuU8EGY5msVhiEDMGA2qSiQrLhjwiPj0JoQIIOb6NGv9xPctvDJQ9Qe5rdcOdZG
	QUfYYkom1CJAJIdSAItRZfw5138wUP4CU/jlQXAdCrndafSmPSUD2vdRYvskYceMtz3Qt98JluJ
	pz/OB4bHeqpVUDcmkBBvmLGJAPgnJwC6+FuC9r1bxKiccQXC6B1Y3hzEDUc61NkGwRA9TOWyOqv
	IMr48CdgQO6+vUo3bTSndBR4HRbq0GnHuYnPchUtm3BsH0g2ij4OfVXoWyzhRGyKo0pwmG8OILa
	yqaM+f3C5CaILl7RA380Ucw==
X-Received: by 2002:a17:903:22c2:b0:25c:46cd:1dc1 with SMTP id d9443c01a7336-28e7f31092cmr55936055ad.33.1759356352136;
        Wed, 01 Oct 2025 15:05:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqQqqXsWfsPcB2aMVgjy1eDaAlKWRk/y5Tw9L6ueOyV8a1NgF119HAYRfaqcXDXa4fmR6VmA==
X-Received: by 2002:a17:903:22c2:b0:25c:46cd:1dc1 with SMTP id d9443c01a7336-28e7f31092cmr55935695ad.33.1759356351699;
        Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:51 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed,  1 Oct 2025 15:05:34 -0700
Message-Id: <20251001220534.3166401-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bJV_4_BK5FOE1ORDh3oUaAvFeLL8lSTU
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dda5c1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: bJV_4_BK5FOE1ORDh3oUaAvFeLL8lSTU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX6V5Xmu+kbFnS
 mHS2oo4FWwLnpASu/iHiX3pPoLw/8AsiqLce7YfBFkzM9kB/wnnZy3mlXyCmkokmEWa47rcJsY1
 GejFaOn2BWaVtxqnhPz0gre6EHdvRxQq3XBjFuhqhtOJFiU2+/nwDGqNHNxmIa3QikugFrDJsTH
 qwuHZ4W3ftAyE7ur1MJgt4xMwOOdt4mDpm3hhU9X/F4nHgtu4mfghp40n1xPZAN0kzHVprFRDrY
 gnV009LMwmBl1qfj8No8NoWZx0686tmZEeg7ZFmJA9n92qt9Y1d2ryw5n0uo4ABhaIIPD3fxfBk
 zXlEKEdBWgpassG1Xih7an//7p6UudBHeGtL5sO+ci8j4YKu6Ibm5L6srfo+RMkDNp2nmhCoEzK
 coH5Ka4U0vaFqVVe5rZac592gNV4mA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

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

