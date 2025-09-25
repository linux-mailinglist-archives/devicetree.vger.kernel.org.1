Return-Path: <devicetree+bounces-221058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B02B9CF4B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:55:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F3A9328529
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 573FD2E040D;
	Thu, 25 Sep 2025 00:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fH8h3Y8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B7F2DF3E7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761571; cv=none; b=h5K33Ex94h0Be/mzDPTTWpBrRGiFQLH3Jd12h6BYEZ5xijs/QEAYW2u8x9v3z5jpjugVMeYvLz9hml8P9CyrluJg+qub0fmZRsBaQzyzYED0TLyBfnwWv8MBVvOlujiisbDXDsQWGKhqx1Lhhm46ldPq+hZXYU0DVF+hussDjJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761571; c=relaxed/simple;
	bh=JenK+/zJgrkEgu7BAw2m2ucWcDL0lFzE6vWEQjcaBxU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k1EAEf/rZ1YInZKp2Y2nYHH1ch+j/n0mebquf52R7m2s9+WyfbdsGWf0WUYXYVapBO2/1qWREOpVRXaovFQsKC/S4v+bOpqFiytDlz1YmIOD7Q/eGRQPtd642rP2O9/u07ZP6o7iANdpSYtMCFJj11x5ENm2mYkVpQu4bUdfl9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fH8h3Y8w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0A3rg018025
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oQ1clu+8ZKT
	yXqEd3c9pCyX/LD2tCG76qdlEPx0yVao=; b=fH8h3Y8w9C9p0PcQYFv5koeBng2
	PxN8cGE5WWbq9wSiB1d2S50AR6cwRU/kSXUOOjWGxBrK61pf46cXcM8VZqsFRNew
	5/WCNAY8plUHvBJA8Mhh5Z3FE7TWjqrfwj7O3Nnh2yDuhsVCD7rhrq6W5CitSjYg
	ETOHaamsQKeQY/cHC7kYo2OZQnaD5HGLvC9FVxaGZ1aoHBSS72vBXRdHwAI9Bixy
	GBjAWtsOdNAzmPK18lZNg0cTPGxbqdFJI0PLbBwBxsci5HzgCZ1dtXQDUVz3kn/7
	KhVUIAl14CILLJhjPG83yUGLbztQF3UgQEeTy5ZCluxNaazXx7EsJRwQCiA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka6an-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-272ed8c106eso2565765ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761567; x=1759366367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQ1clu+8ZKTyXqEd3c9pCyX/LD2tCG76qdlEPx0yVao=;
        b=Zcy7WlsSetSIdrlYxPcJVvx0qYkiIw1NmelLmQBjMuGTYsFhFzv1wIj9ow6uWpfVJX
         4QenESLOGcKCKz8lU8yPv6GcaRXW09ZEdfHTEdS31N24VoI2QrcslqBXzhGX8oVlSeBX
         YhDS9aDHZS+ygPSgyjw+A2zjo5CM6OV6OS9FvHK0+g6Gtsqiqcxva1bwj4ah+S31MPVl
         M9R29e3cd9DSunqpf6JWbTDxY190Uf9S2AdEJBS4dmYmKHWh8Bw+FYfcPikzRZ02H7oy
         cModVd5gnq0DBb0T0HlbEI8fuWNLehXwS9qy02HG+OccgWladl5AP41iN7I4IBlEWk7q
         VvHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQpFTJueWR8wv5LBNGGrdj797LtgVV1VmiHnCzWz67cPCyxXw3M2AcGsTh/vbSdyS/8QN2ou/d2VY9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3rFPkFMn3XAqfUAWQ3zWjFlI5PK9xdkihmn38cL8xsB5AzUQa
	wmcf2lU0cDhgFyI5kCEJzVgux4cIp0zBQPmNE9niUzQlvvr5cpCn331B75R4+Lr8Zb6mROuHIuz
	YUOffu9+UdWQwtBZWlVbDHYWnn0UfMr4qb/yPt7Jobc2fh3Pfq3unXbWm7OTE5NSL
X-Gm-Gg: ASbGncvfsoUVGn0efeDqi6XqpjMb9NqfBbIZTZmVd2+TdsaASQ+vn5/245NfC0ajPjf
	milyQu1wHoCu5YPmy1DDQ5yL5dCQKNc0On0RcCgDBMjMIVEMGrJf06XWcnNHBUXu3Fi6WuSSr0M
	DLG2e3FaNqsHpQO9PBTOZpj35v6m1JCkOV/bbaJbMSD5XAHx6k4XC+nKfS8Boflizpiq5cdiW/+
	kPFKod4fOA7UMCCXkpnvnek5722ZdS1IYI6uSL0qAxrGO2Mog1IGftNMPtFAFQMsRYK/OvQ43Tk
	pLM14DguSR0h1LH8VZ/BVaUyHFWIMTUMSAzZHE/fGwc/Oa9beONn9l0Zb+twt/UA65wkJw9uz9V
	fjG15lrJFliqBmBJ+
X-Received: by 2002:a17:903:41cb:b0:267:ba53:8bd3 with SMTP id d9443c01a7336-27ed4a7f36fmr18185195ad.28.1758761567015;
        Wed, 24 Sep 2025 17:52:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+WVAjn6nkapon6wWWzR245K/fiIlGiNBXHDyjGbThoY6v94l2NAtZ+A3xiLpl9py7sDEIGA==
X-Received: by 2002:a17:903:41cb:b0:267:ba53:8bd3 with SMTP id d9443c01a7336-27ed4a7f36fmr18184925ad.28.1758761566547;
        Wed, 24 Sep 2025 17:52:46 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed, 24 Sep 2025 17:52:28 -0700
Message-Id: <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CfGUTD7hWNufOvZsC1raNFhPFZosjohA
X-Proofpoint-ORIG-GUID: CfGUTD7hWNufOvZsC1raNFhPFZosjohA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX7nrMkna6tZWX
 pUAvAgH/2/kzHKADkSr1rVEWgh7JyvWhuwFDTPhh0vjVzADt+3SGiXwHOKZZb3G98+7soOM2JwP
 6j29TbQLSA54opFDk886otJINTTLVYEXTP66UrtMEOz2aHFDIhtSo+cO+PWmSpMZ2lROW42RX01
 /PJUJ23urE24pMdgjZYtGlz79NXpdXkmLJ6rIUJ8ZZ0dN/xFhxY5nPQd3lJLDKVQGXqtxJ9FCli
 VYm97BYaPQfKllRnEF4zUuzP2tF3vOuooTb6FGr+XcNd2EqgAJlowHsRjBnlLPiM7Otjs1idl0W
 yNNZW9H1pwi5n/JTLIPKRT7+ruWjbI++VDPjj5hy5ZfFoIIOpMCfiDRRGgLlrFHrszOF6izT+hP
 eJNUyG9G
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d49260 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PEmB9FCP7AcuBCYBmm8A:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

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

