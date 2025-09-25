Return-Path: <devicetree+bounces-221056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69211B9CF41
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:55:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C900618970DC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFDD2DF6F4;
	Thu, 25 Sep 2025 00:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dO3JsxhK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9D82DF147
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761569; cv=none; b=V/Wxk1AxqO3UWVzeeoZ4tOUvsOy7B2qNLH086IeRHtHhZYekv3fFrvvoSzEAED3sG/w5IhQo8RZxe04fOvdIhFusFgrFhVVPRFZAwyhhYG7CkzwMGDjaHmpEoX8Ae4+QuO1I+z0WhvYxPd1JY5ahX0tqllnd77YPUmT+FMjQwWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761569; c=relaxed/simple;
	bh=OkC1mLtz16qVJoq2dcpPz2WMUUNz5fHtzWVOhSAQHi8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YBywnvXfYGcGZO50/LqGFglABHBlI+/TqQgEP6U3byPDN74ThZh7UYuhi8V9JdZHJhBpRJ319l1OSlyKTnI9RYYuvglVGS6eRsSb7KD74+5xhs7B2tITbUJWRhnmnvT/X6rLbYo22LkEoG6uIpQpciqjl2V7hRTrgy1M1H/hzIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dO3JsxhK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0MOSD027760
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GwDc2ByWl5B
	YnzIa/5w++Oacjx00R55NFfYXUv0r7SI=; b=dO3JsxhKNWN+4cYw7704EKXh4yT
	kFUPFg/G4A7DWjNhpCIH0KksUXQIVmGFBDWH6b9yqhHum+qwgjEWUhk/0XlHTSRH
	A2tlwwft1psIeIOHoyPqEYutUNKX+Sm1YiQXedjMXXhTych870gi0fpmySb6YvmX
	KisY3hqqE2REgRzuU/9swTJeGSAsjsBIJIwxGqeio2b+3GtcK3P8jxLLJdruXffu
	CKp03Rci17cjRNn8blbuJTywYzjVLSbXquuiDJ0aafzZtwk1tMHxARaqRcdaYuRT
	ig3gpLJPKv6rrT4KuIwuVMgSPtpmCXMi3OexB3dMPqXZEtrZA1/Uv286Ccg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxjps-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27eca7298d9so7907695ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761565; x=1759366365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwDc2ByWl5BYnzIa/5w++Oacjx00R55NFfYXUv0r7SI=;
        b=KHJhuslj7tGoy2bN9CFXom4R9BEkbjzejNI+yprFLVCRpd/B/iraASO3n6G395838i
         HfQqfTr0ud3qTqu1Lz78+zmxrjUqvwN0JAUcohfKd1HbkCR28YVx1CL8mdICjsDpjseU
         zr7tby4SqfEm9J+CENlSmmBk/CsUsN46Wa2swvBn3EQ3wxQZ1vGwBGqcIwQLYr27mdhK
         yfqImILBnq3DzLzv9flBVCS3sdB5/Cb5xmSsFwKTzOFJIq+eAJLyPVzInMul2J2Vcku+
         5egiinthH4F3hJ2bGGBp9IppIbrmYZKO8LWc0Z7UeWOxkDWRHxjj2pZicls2abtl6h5y
         lI/w==
X-Forwarded-Encrypted: i=1; AJvYcCVzcZy7XBuDnUhl3geIk8rm4R0iJIWkueW3iillJGZOsoprZVuGiwrcC1hsu3F/g37ohhF0ZB1MVc+r@vger.kernel.org
X-Gm-Message-State: AOJu0YwG+yMrQ6Di51XlvCYzbLzlJGsBUM8Od8VL9tj241jcajWSG5W1
	nSXSuCnkhvBVnixmLETcXR23xSCilpckffelbpNs6AefIJcIe2FYDTjJEvJFJEnNyjbUGuqPRLx
	xYyzgrCY8zlzDT5gL5FRGer6kudLfS9tTinQkzgtVqPmBh/ndUEsqgTINlOUVrncH
X-Gm-Gg: ASbGncsPkiv8t99J6ZzMQ+zEA78qUhV6htFiqh2Rig7l7b1S0FYX5sulIJ9Kfi0NhCj
	frjcN41JdhWYwAobayJnPubmzYjuV+rIYUv8FLrNPQZekwI3zurK+WrnpEgMUHlNgV9IF3P6E8Q
	iK5a6THdjjJv19u4W46FHJMmvuAnzbAk31ZXdEbngWvEKgx64ssQaokVjZCTNdL+tAJ7ATXh3R9
	+lRX8p8vJpgM8C3OUb6uyFAYVMK3STCyW6M3OdIEQVT9L8OuZ84SgiXDMDIeyNKvCvc2xF7bNvJ
	nEh3tHKhnqkk0ZpxG8xLQozGBwX0g/orxuFhIijMoUk98iiAh3lIBzsDDJlmq5QsA/On9xDtK2B
	Wbu2r8PpZ7MP8SeG/
X-Received: by 2002:a17:903:2783:b0:270:ced4:9116 with SMTP id d9443c01a7336-27ed4a30d4fmr11198085ad.33.1758761565574;
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1NU8ZODHNZkc+l42a5mkWmjFbo8+OfeRkITd+fOUaYxP3TJQUCBdNmqivTPnUx/dYUusvcA==
X-Received: by 2002:a17:903:2783:b0:270:ced4:9116 with SMTP id d9443c01a7336-27ed4a30d4fmr11197875ad.33.1758761565129;
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:44 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed, 24 Sep 2025 17:52:27 -0700
Message-Id: <20250925005228.4035927-10-wesley.cheng@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d4925e cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: qQ_4ZSzj2FbfIIzPBYtXTPJgHvhG_eea
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX+1bWVb1lf9H3
 wjBof44QpX5aZSpj9xI2DSerRSF6kXWfjGKm2cb0M1Sc3FVijXvyWgdIG5zPwhpRCS9YtasEgtK
 LDMOVpVJTix4YvNj1UTWhvXuVYiDgzZm4WjHmBox7/hILEIujk8WHaH642+ktl1DumIOCSFkRDv
 sZ1VgqIkZO8VL54q2pwRcV5Bpbac4Tw9pv6y/aetceKQDTWBHgnsRNaJykuo4P7tAjEENt/xAbS
 NvDDgy3w+T1ulJ9BthabMhu3sEjx8VcPvgqefyq+lEm5X5KCLJu5yN6LZeDAT/WvWAEQ1FVGvJr
 DN9m6gXJn8ydgj8wwePRI+9VGnzQRxVcVAN13NQfvt3KDjkCoDQHGo2fuTrLY9Gkurg5vE1VbAQ
 cfGnwsD4
X-Proofpoint-GUID: qQ_4ZSzj2FbfIIzPBYtXTPJgHvhG_eea
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..f8a00962f937 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

