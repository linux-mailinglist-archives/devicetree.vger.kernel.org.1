Return-Path: <devicetree+bounces-243902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD3C9E3E9
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 09:37:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFB4C3A9FE5
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 08:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA862D5A16;
	Wed,  3 Dec 2025 08:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VbOlu439";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EaxOax7p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F662D6E75
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 08:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751020; cv=none; b=gXmR7J42ZF9Ila6lcdywuqAye577LED5cT8LY7Wea1nS9OOWhcyVEDIdtTaS5weiUnd0p8Axm/T7YVwo45D0KTYKIkJSKIh8+8JLDV3ikGhVqpIsOoLZCvBTHllJNXsegEfOx8iwhpPm30Gc8wZ2TBbGR9kqpPoEMdAWBMA3WqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751020; c=relaxed/simple;
	bh=WxpXnnN20aE66OnX2c4EcUlc1l6NOpQAiYXXZVeIIRU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=T0XkmFsEGnysXNT2JdDZJsfowMOkya1Llt6+Ptgue2HJxkJ6OPlxU5DwNZOUw9cXoQgDFTEWnshnb9LvHWYXNylhD4jqF2WntnUR9qosXXNTD1Qkvk+IKP9R9YMZj2D2gDx2eWdQN8lXvcFflVSzxGyCKR/4KFMeft+YdAccm1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VbOlu439; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EaxOax7p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34EJZX1428471
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 08:36:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=d6KQ332SY4r
	oUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=; b=VbOlu439wpGIzTQDA1WANwZj63c
	twgl4KAJXLQK/GPtky17VJewD4WCzru/6oVeSwJZtevM0zUoJuUi/NAFRzMlEOE1
	nnNZUm/oJV5TDI+RmB6vv1eV1R9RwtECNjOx50P8X+Ai1EbIFCr7xYMug2IZsb6I
	n31OGsatnywavimX7g3rzjq7og+lwfy9xNRYOmnc//WxyJ8BDoCpY/+nFwleH29I
	RtR9PUOG5x92GEkWwA4q/+a6AYe8aNAWkKIdl5ZtDVo3v8XnissxPd/uodsU++Kq
	h9JKfYLCpKJCYARoO/vWPzx12xfwGIt8UpAYH3qcoqoN2g8TkFu2loucV9Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ate0jrr26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:36:58 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956f09f382so4830485ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 00:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751017; x=1765355817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d6KQ332SY4roUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=;
        b=EaxOax7pLj6NGxNBlvUlsuAZfCWVfaelTKTDU7rIL+XNODozniy+/Vl6rkqdBz0SDU
         P8lNGFuDbvNdrKjtdce1waCADeUen0xbY5p6yxCMnxw14X3iq7Xym3aL/5Li6o8z/RYq
         DBoIEud2X0rQjz57nNlWZi4GQjqW/ap+xAyfYKJqc4Qpi9wRHW/gnKOiUA68Fx8WufSL
         clKrc+2dsibzpMHqER0cZwLr5MQaGgif5en4n2UCLKB2O1LFGi+zFrMrSE6SRDEdLp7Q
         yrXHSK4SwWxcGI3bVJF9IaBkSkjCA6yW69fEiPd7r3FiA2+esElSIT/JQcrBSpvHJ3mf
         S+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751017; x=1765355817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d6KQ332SY4roUde3OPXCoCkBr8FmmOBZNjlgBZOAEB0=;
        b=QWbRALVCHt52QUHUNwu+Y6kQO6GTbNFTbQdUlL/s+qz/mAFKK9EcEav9gDYEvSZ701
         4K9H2QeRv1Eobw5yTUDwxo8wPeOYpMo3SchvOZ3bLxCyq6yNvSmoxlWSzrBnLHG6bu7B
         Upuq6BLxIASJYRZJ5RHOsbr01PYbXcBoyB9wDIe6OQdPqzyxtzzM7i7/XBfEWWtWnrjf
         ri+XVwnK6b1IcVZRgwcA+Sas+wIBLZWoE7hIBWM68vzTzG5CHw0nv1F8JKGmxln9Ow8n
         gfscpgwb98dH/BS7sKhp39QrdATEC+nVRqEo9F3ZAFvNxKuf/whRi0XSlx/PiUFH5PtU
         8XkA==
X-Forwarded-Encrypted: i=1; AJvYcCV7oYqC73GF48Y0tcZq8a3Ff/o/H5TECYkBsGWNWYpqvaIsuVCm2CQeT4bmvXrY8TK5jm3dqS7lWBPC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8jXsSKBahe7LVZLxBWKsjR4kQtPTwE3MWQHPS8YmDKLWh/nL4
	xsCQnsNVGaHC9lG9XDt3D8zI3SFiVrlQsISge2xhZTRdbdWcicjThh5OSXQeMPKIs9bFjiODa7l
	HTN6bkRx637gc5yveQaLnjacADRhfrJJ/B8dai/3SK0cKKHniWXH60bFbhtE36IR8
X-Gm-Gg: ASbGncvZm6/8LYofb+w/PgEkaKr30D+CFuTPngp8y2PbOh8IfOrgreDbqNdkr15t5Xq
	Rv8YzyAmPmTw0wbdjWuZ/7ynfJQK/Ky+Kb+urRNjjW17g4bHbMwe4lRYo+vlw1AcUzRlnB86I5v
	+V2jda3V9SNJKfSDVuU6B9OBllUI4VSnWXbSEMSMtBpdiEMTcF09Ua4Kpp7CD2EHYaw5CHG5msJ
	5xVhSGChvX29oiIf/hXlumFwzZ7le3z94SyqyBhO3GMQDVKhUI+pXVSdgj/iclLQ4Li5S1b5adN
	pbt7XHAdtiQ0fHAU6pgjPLzixVyFml4TXO+//HJwcru9Gsh8RsEs800aKziiDVOfJAIzARkFknx
	iRmh90N2nK5F39IKLy66pfU40Zi/A/fvKUCdp9eZm1Is4cz0=
X-Received: by 2002:a17:902:e950:b0:24b:1585:6350 with SMTP id d9443c01a7336-29d67e715b2mr24140335ad.11.1764751017115;
        Wed, 03 Dec 2025 00:36:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvnUwQGxzUwaUaVXvisTvu2yas0UaIAw6ZXo//eLlY4iKyWBDrY1+fylW8imkOBcqLQYzFSQ==
X-Received: by 2002:a17:902:e950:b0:24b:1585:6350 with SMTP id d9443c01a7336-29d67e715b2mr24140055ad.11.1764751016604;
        Wed, 03 Dec 2025 00:36:56 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:36:56 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Wed,  3 Dec 2025 14:06:28 +0530
Message-Id: <20251203083629.2395451-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfX0YZQa9DIVUIP
 ZJXTVHiG2JKhN0INVIM2oGQtJj4qnAZUwiYPn4Hqr98AsKXplTpkOWypQB4JxY7kVMCYMSKvkOx
 osdWPci+RUdp6VpYZ11IhWeTsoE+5H3MgP8Vm8tocxcmKdpGSbJPoFZi5LVjPcE2lxG9BQK6b6P
 bOyQLiLfjWln1mC4eiZVo6lQcb2r5veXKEv8nEgVGy7cvcHd6l2WnWgkQyJrTZH7gD7thK2362j
 3aYsCbzL2XZC4pMaDRtozq3RwNlaiu0ulh2oDRWAtZ0G9SFhu0RXf8TTH10qWl9X6Vu9TRv2Hb7
 GBZW4cC38+XNNb0hp5rYULKriIIChbVyFILicRSSxIWv8pS+nGdA1LEf2KMWk75pEou+dnQ+VbQ
 CQiCUcyfKQSONVx9ZUy+3kV6qZQ10A==
X-Proofpoint-GUID: sh9091zCzRee3L48O6kV8jVXkVPfhbfX
X-Authority-Analysis: v=2.4 cv=cOHtc1eN c=1 sm=1 tr=0 ts=692ff6aa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: sh9091zCzRee3L48O6kV8jVXkVPfhbfX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030067

Add support for overriding Squelch Detect parameter.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..e5812626a871 100644
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
@@ -147,6 +160,14 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
 
+	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
+		for (i = 0; i < 8; i++) {
+			if (squelch_detector[i] == dt_val)
+				val = i;
+		}
+		regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, val);
+	}
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
-- 
2.34.1


