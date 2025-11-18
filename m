Return-Path: <devicetree+bounces-239634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF6C67E06
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 242792A46D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE05C2FF159;
	Tue, 18 Nov 2025 07:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="an6YFbn8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dbg06CS9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C9F2FB966
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450247; cv=none; b=NzIilxpdPMooXmBabnLHcb6/ujqgDojapecqZQS5wDR1TsNHkJQ9TKd8b5mqg6iN2/Yy3zqo0MwXW0tZWa8F8Loj0yJ8oUKKUUh/6npSQT9UiJ0jK5rQg1uS2s8lh0ebKWb+I7BnKJqg6lRAPrLCYA/1iR7gkhDiLdLDHD51/S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450247; c=relaxed/simple;
	bh=zRgKFDJUuTq7V355fIIA7jBxUvBfxYi0ycH28juOmKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U694UIuQFxkwss4XP5XEUjGOLnXew0AqByr41vMEnh4UcONKIhXH5HATuZE/pCIdXqrvvaNeCmaREYm5Ag+nVvAZlVYnLqVV2r7yLGU7h6rICVRbAh3TaUMMMsUd1iSAoyYu+1q1U11+hGfCcJhVw6hnYxIrOtQKi64JYL2PsD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=an6YFbn8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dbg06CS9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI5qNYZ3916357
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8dFsUYpLMT7TsFiX0jB1FyVQ1vobEaNkUNDFlttYliA=; b=an6YFbn8vOUhUhIZ
	hDKFiW9nQ28uzIWm7zVk/Vv5EmKHlP41XNvdqnyTs7NQ3e4Fkg1nqvFihehU6/la
	mmmxs/A1bgxu4orjCRNJn9lG3ZJoQ7q3TKa9lLcqfjl3w7WQijJdBLTVTLupclzk
	SxlHbdsQ4UD/54UUxUEbq0O4gx0DmsXX8qGNZ8dNrDGZYyP47EADqJhar6Td57Al
	3oaCVLIuyebxwUYvXbRgSxiJ+RZrJIT1UQx+5bwEyblgggv3f8cST6HBVNcp9zmI
	MEDFWoKrU3jBgTqg+dIK0hh/EdvQIgGtp3uXPdu/YurMy7zmu13vaY7oWND+8feJ
	OI6Zow==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2fxb426-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2982b47ce35so60136895ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450244; x=1764055044; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8dFsUYpLMT7TsFiX0jB1FyVQ1vobEaNkUNDFlttYliA=;
        b=Dbg06CS9pAPFDWnVXMR+inK15hqLUJgz7sLSi87mrOxWT+RnbIxfApYCnRPOZfNv+g
         7iSWJ9azJLKftidMkx/bpxuU0cDZn24kPZpNo4BbRjHCeJ3WGRnwiS2NxT8laQxp4tqj
         292AIq3QVMMhVK04mzQV0kGH/4gMcuPM9KuM5v+15QlxCOo0V4TnBfO96C6fh+RlUVkJ
         BNY+4nxfTn3ClwcnHGB7y1k+SeCSP7DEJ+Rw0P0Wa2F53ana9UX8zorn2mGgfEHUq8rf
         gC6+t5vJSrOdQoef6NIxEnxK+snbN9mNdt+Ixodlq3tmr6p0lvNNkzCkrYueo2JYRGB2
         wbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450244; x=1764055044;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8dFsUYpLMT7TsFiX0jB1FyVQ1vobEaNkUNDFlttYliA=;
        b=dCimE5oFyUaTZjy9lltf/4PtfTXMbAnbxymDmyuaBtnHInp+0JXLpcjYF1MB4IElmg
         TH4ZHMzjggslUyFZ/ZR0WRnlP0+NWDJ8s+R0VO0yZvbH1uqb4e0xirpn0a6qTzupO8hl
         LyQS9g+PPvjuvjIL0tXK1Vap05XeCHYXQFDU4fT8DiT24y5B5nW4ZnjsCCpmgAXQdFX8
         yTOIG45oLOZPH4GDd1sIn8zrSeBbQTwz8Imju3OEo1XP2s2eSUeDUO7gmHdGyqoRtUxa
         1ZvaJu+2MOD8sLXGZ7K/sAna9GUKQpi4HcENB/3r9GOc6+xWKKoCL+/HOw/4N2ZeBEwo
         Q/4g==
X-Forwarded-Encrypted: i=1; AJvYcCV4PO3eSSWDuZWKT2fJf8X3f7NFnD2WDRinGCqYWFaSKAXpC3GvUmrJSwJDvoFDpda4XbdnkdOzssGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwuxlGL++Plu5Ueuh8OyAU8zH9HSH79e3s/wq92t3ifcldbOpDq
	u7GFyR1Ix7sDJB4t85qnda5WKLZG5IxYleykrZWsbpsGVKPoVgWFAljpRzRWSq7yE8vta6S+Oh2
	nwrmP5n862fUlBwUxDnzhduNz/pyMWNLclwOs1rbVI/+4fuyjqWI0ulCcAW9rJ+EB
X-Gm-Gg: ASbGncvnfasQeWFOZTgGa2d42hpc8Z/s1y7QxzWGcI/qY/TSMyQL6yHJ636RAqZTNyF
	JmbSG33e7a9QTZLbPvwdwpVk2xpOPw6I1rWiMRe4aWy7vAaMU6Ue7KFTK2jdkGIbJsIl6a3b5Np
	LTcvM0dJydqqPeGUFqWq1bcGudDiTwdQMzpvmMf8nBkmKt/imuvFtv3m1S5wGKkYVGXmFySDPIe
	Z27f42moJzfZz0FwYnw8f/1huxNZCCs/6ZfO4UrQydtKA4puYxr4yRckSL8o4u7pHxJEfNufe0p
	/A2s6BQmIhlj4O6GhjegUyOwsm4ENIaeQ0nhY0b4BsT8pt2LbF66M4Q4USE9Chfs+Q/ewwtBjxP
	Ku+XahUvlzG4V/UiQx+EHOmbAncAhfJOE9w==
X-Received: by 2002:a17:902:d60d:b0:27d:c542:fe25 with SMTP id d9443c01a7336-2986a7509eamr149564165ad.41.1763450243454;
        Mon, 17 Nov 2025 23:17:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/SLEUe3E6fEfwBF72FyJpUo2FrhhB+u+/DbI/xRe93kPgCkMM5Se+pd8407X3y40jH+kV4w==
X-Received: by 2002:a17:902:d60d:b0:27d:c542:fe25 with SMTP id d9443c01a7336-2986a7509eamr149563765ad.41.1763450242978;
        Mon, 17 Nov 2025 23:17:22 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2986a60b116sm129955285ad.79.2025.11.17.23.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:22 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 12:47:06 +0530
Subject: [PATCH v4 2/5] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251118-sm8750-videocc-v2-v4-2-049882a70c9f@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-ORIG-GUID: gIfJe--qX8hTtVtz1wUjL2uDtAQdT5Gb
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=691c1d84 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=02cEW-DpipR3T3ESWNEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: gIfJe--qX8hTtVtz1wUjL2uDtAQdT5Gb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1NiBTYWx0ZWRfX7pEIeiC889hw
 vAncu9gu3svkI6nyNsngDhn2/X/9PAc5H1xOFJtVOCUcsITje8aQUfnIOnCh1BFm9R4VjZpOzDd
 VwJ9CfMGRLvrzDxOXF1u8fP1Gd3im1sBHM8mIBxEs4V5dqKhZrawc8FO+tVLe3RwIaoEFtJ8rzd
 xyFdOQ8B7nPHpZkmwuxcODX350Dnr5kqtjGwqQ3uSy3CVsH/WSQiNQaQJBvChqCumIK22XOOOju
 hwzRmHHoXQzhdJTcvknzT2bMBRp2uQAE2F6haW7g2/V5NVLzVg/WKIvgoWre4moHnTKzoO+FbMD
 9lWN12X4MBjwqKf9zRA10FHi2pnZzoaRly7YVt6sPUpVK0g09yBwaxGRc2uQPi213pIIwCvIr9R
 XxtAscmejEv11eBMwIRkX7GXAGfE9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180056

The ECPRI clock controller’s mem_ops clocks used the mem_enable_ack_mask
directly for both setting and polling.
Add the newly introduced 'mem_enable_mask' to the memory control branch
clocks of ECPRI clock controller to align to the new mem_ops handling.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/ecpricc-qdu1000.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/clk/qcom/ecpricc-qdu1000.c b/drivers/clk/qcom/ecpricc-qdu1000.c
index dbc11260479b6d25d52a7d00cfce78d4e35be224..c2a16616ed64508355a3d54557295cef24dfdf2f 100644
--- a/drivers/clk/qcom/ecpricc-qdu1000.c
+++ b/drivers/clk/qcom/ecpricc-qdu1000.c
@@ -920,6 +920,7 @@ static struct clk_branch ecpri_cc_eth_100g_c2c1_udp_fifo_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_c2c_0_hm_ff_0_clk = {
 	.mem_enable_reg = 0x8410,
 	.mem_ack_reg = 0x8424,
+	.mem_enable_mask = BIT(0),
 	.mem_enable_ack_mask = BIT(0),
 	.branch = {
 		.halt_reg = 0x80b4,
@@ -943,6 +944,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_c2c_0_hm_ff_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_c2c_0_hm_ff_1_clk = {
 	.mem_enable_reg = 0x8410,
 	.mem_ack_reg = 0x8424,
+	.mem_enable_mask = BIT(1),
 	.mem_enable_ack_mask = BIT(1),
 	.branch = {
 		.halt_reg = 0x80bc,
@@ -966,6 +968,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_c2c_0_hm_ff_1_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_c2c_hm_macsec_clk = {
 	.mem_enable_reg = 0x8410,
 	.mem_ack_reg = 0x8424,
+	.mem_enable_mask = BIT(4),
 	.mem_enable_ack_mask = BIT(4),
 	.branch = {
 		.halt_reg = 0x80ac,
@@ -989,6 +992,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_c2c_hm_macsec_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_dbg_c2c_hm_ff_0_clk = {
 	.mem_enable_reg = 0x8414,
 	.mem_ack_reg = 0x8428,
+	.mem_enable_mask = BIT(0),
 	.mem_enable_ack_mask = BIT(0),
 	.branch = {
 		.halt_reg = 0x80d8,
@@ -1012,6 +1016,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_dbg_c2c_hm_ff_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_dbg_c2c_hm_ff_1_clk = {
 	.mem_enable_reg = 0x8414,
 	.mem_ack_reg = 0x8428,
+	.mem_enable_mask = BIT(1),
 	.mem_enable_ack_mask = BIT(1),
 	.branch = {
 		.halt_reg = 0x80e0,
@@ -1053,6 +1058,7 @@ static struct clk_branch ecpri_cc_eth_100g_dbg_c2c_udp_fifo_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_0_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(0),
 	.mem_enable_ack_mask = BIT(0),
 	.branch = {
 		.halt_reg = 0x800c,
@@ -1076,6 +1082,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_1_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(1),
 	.mem_enable_ack_mask = BIT(1),
 	.branch = {
 		.halt_reg = 0x8014,
@@ -1099,6 +1106,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_1_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_2_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(2),
 	.mem_enable_ack_mask = BIT(2),
 	.branch = {
 		.halt_reg = 0x801c,
@@ -1122,6 +1130,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_2_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_0_hm_ff_3_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(3),
 	.mem_enable_ack_mask = BIT(3),
 	.branch = {
 		.halt_reg = 0x8024,
@@ -1163,6 +1172,7 @@ static struct clk_branch ecpri_cc_eth_100g_fh_0_udp_fifo_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_0_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(0),
 	.mem_enable_ack_mask = BIT(0),
 	.branch = {
 		.halt_reg = 0x8044,
@@ -1186,6 +1196,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_1_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(1),
 	.mem_enable_ack_mask = BIT(1),
 	.branch = {
 		.halt_reg = 0x804c,
@@ -1209,6 +1220,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_1_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_2_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(2),
 	.mem_enable_ack_mask = BIT(2),
 	.branch = {
 		.halt_reg = 0x8054,
@@ -1232,6 +1244,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_2_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_1_hm_ff_3_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(3),
 	.mem_enable_ack_mask = BIT(3),
 	.branch = {
 		.halt_reg = 0x805c,
@@ -1273,6 +1286,7 @@ static struct clk_branch ecpri_cc_eth_100g_fh_1_udp_fifo_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_0_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(0),
 	.mem_enable_ack_mask = BIT(0),
 	.branch = {
 		.halt_reg = 0x807c,
@@ -1296,6 +1310,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_1_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(1),
 	.mem_enable_ack_mask = BIT(1),
 	.branch = {
 		.halt_reg = 0x8084,
@@ -1319,6 +1334,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_1_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_2_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(2),
 	.mem_enable_ack_mask = BIT(2),
 	.branch = {
 		.halt_reg = 0x808c,
@@ -1342,6 +1358,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_2_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_2_hm_ff_3_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(3),
 	.mem_enable_ack_mask = BIT(3),
 	.branch = {
 		.halt_reg = 0x8094,
@@ -1383,6 +1400,7 @@ static struct clk_branch ecpri_cc_eth_100g_fh_2_udp_fifo_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_0_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(4),
 	.mem_enable_ack_mask = BIT(4),
 	.branch = {
 		.halt_reg = 0x8004,
@@ -1406,6 +1424,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_0_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_1_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(4),
 	.mem_enable_ack_mask = BIT(4),
 	.branch = {
 		.halt_reg = 0x803c,
@@ -1429,6 +1448,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_1_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_2_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(4),
 	.mem_enable_ack_mask = BIT(4),
 	.branch = {
 		.halt_reg = 0x8074,
@@ -1452,6 +1472,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_fh_macsec_2_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_mac_c2c_hm_ref_clk = {
 	.mem_enable_reg = 0x8410,
 	.mem_ack_reg = 0x8424,
+	.mem_enable_mask = BIT(5),
 	.mem_enable_ack_mask = BIT(5),
 	.branch = {
 		.halt_reg = 0x80c4,
@@ -1475,6 +1496,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_mac_c2c_hm_ref_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_mac_dbg_c2c_hm_ref_clk = {
 	.mem_enable_reg = 0x8414,
 	.mem_ack_reg = 0x8428,
+	.mem_enable_mask = BIT(5),
 	.mem_enable_ack_mask = BIT(5),
 	.branch = {
 		.halt_reg = 0x80e8,
@@ -1498,6 +1520,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_mac_dbg_c2c_hm_ref_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_mac_fh0_hm_ref_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(5),
 	.mem_enable_ack_mask = BIT(5),
 	.branch = {
 		.halt_reg = 0x802c,
@@ -1521,6 +1544,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_mac_fh0_hm_ref_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_mac_fh1_hm_ref_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841c,
+	.mem_enable_mask = BIT(5),
 	.mem_enable_ack_mask = BIT(5),
 	.branch = {
 		.halt_reg = 0x8064,
@@ -1544,6 +1568,7 @@ static struct clk_mem_branch ecpri_cc_eth_100g_mac_fh1_hm_ref_clk = {
 static struct clk_mem_branch ecpri_cc_eth_100g_mac_fh2_hm_ref_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(5),
 	.mem_enable_ack_mask = BIT(5),
 	.branch = {
 		.halt_reg = 0x809c,
@@ -1603,6 +1628,7 @@ static struct clk_branch ecpri_cc_eth_dbg_noc_axi_clk = {
 static struct clk_mem_branch ecpri_cc_eth_phy_0_ock_sram_clk = {
 	.mem_enable_reg = 0x8404,
 	.mem_ack_reg = 0x8418,
+	.mem_enable_mask = BIT(6),
 	.mem_enable_ack_mask = BIT(6),
 	.branch = {
 		.halt_reg = 0xd140,
@@ -1621,6 +1647,7 @@ static struct clk_mem_branch ecpri_cc_eth_phy_0_ock_sram_clk = {
 static struct clk_mem_branch ecpri_cc_eth_phy_1_ock_sram_clk = {
 	.mem_enable_reg = 0x8408,
 	.mem_ack_reg = 0x841C,
+	.mem_enable_mask = BIT(6),
 	.mem_enable_ack_mask = BIT(6),
 	.branch = {
 		.halt_reg = 0xd148,
@@ -1639,6 +1666,7 @@ static struct clk_mem_branch ecpri_cc_eth_phy_1_ock_sram_clk = {
 static struct clk_mem_branch ecpri_cc_eth_phy_2_ock_sram_clk = {
 	.mem_enable_reg = 0x840c,
 	.mem_ack_reg = 0x8420,
+	.mem_enable_mask = BIT(6),
 	.mem_enable_ack_mask = BIT(6),
 	.branch = {
 		.halt_reg = 0xd150,
@@ -1657,6 +1685,7 @@ static struct clk_mem_branch ecpri_cc_eth_phy_2_ock_sram_clk = {
 static struct clk_mem_branch ecpri_cc_eth_phy_3_ock_sram_clk = {
 	.mem_enable_reg = 0x8410,
 	.mem_ack_reg = 0x8424,
+	.mem_enable_mask = BIT(6),
 	.mem_enable_ack_mask = BIT(6),
 	.branch = {
 		.halt_reg = 0xd158,
@@ -1675,6 +1704,7 @@ static struct clk_mem_branch ecpri_cc_eth_phy_3_ock_sram_clk = {
 static struct clk_mem_branch ecpri_cc_eth_phy_4_ock_sram_clk = {
 	.mem_enable_reg = 0x8414,
 	.mem_ack_reg = 0x8428,
+	.mem_enable_mask = BIT(6),
 	.mem_enable_ack_mask = BIT(6),
 	.branch = {
 		.halt_reg = 0xd160,

-- 
2.34.1


