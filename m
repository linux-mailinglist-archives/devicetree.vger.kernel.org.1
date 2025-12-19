Return-Path: <devicetree+bounces-248319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE812CD12A4
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 508523092F23
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAD5732ABFB;
	Fri, 19 Dec 2025 17:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQpKdii6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AFc3Dg5N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE512339B51
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165496; cv=none; b=rGsDzkyz4rHg43lTsVPfSEhjjookdZdjuEmphxetyFoZg1G8T9zHQf4lprIfvP7K4uz8mZVBSijmwjl/jBxtU1aRXcyZ0SODshey7tL7nGXg9yX3495zZ0s6gZ6RbJ4iJOhC41kk3mfdZs0YiYXWZSgqFY8AK0mDXFo3O4PO3d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165496; c=relaxed/simple;
	bh=3ikvbKMf7PUmo3visIuMMZQDsdq+i0/nZLMttFmv2Xg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EnVL2FJU6W6Mdqmzr4Cf4nOW8+bOBA8Sdje0YDH+XWvituhWzdhFuIjU0viOhghSOwGSnX1gM15QDEeNadXORP7BI3WZXjARP8l0fgFfGZnH+LlyFvbK+CeRUxAQquh5OHPu8ibhSY+v0TUQxhMPcByjFHixi8Z2Oz2WVkBXLHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQpKdii6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AFc3Dg5N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjXi91745062
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+HoP4zgJI2H
	QvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=; b=MQpKdii6NHdrT18A5ykgHfeT4w3
	4aM6hClexX9xFlWil6+WYfXe2Qux/f4HuNCmIjDz6V7YUBDbftJHokBpvT4sYROI
	ji1FrpbkVRXUF2+jvymj9JIIS3020M2yQsGsdW3sSpvXj4SnVZVPu1NP94K+eOel
	SAAiwxZV29Kn2wgfT5OmzLgtYwLMx1lZMHTerbRV/Hcm4pU3n8fr/kv1lfpLkVy+
	2+Bt9iZ+jsZlcdVFduKrUTxDMY+iJbvlq6MUJD7qeVl31UeWUy8fGv1kOJQL8Qap
	dIxgmKPJfqJaP6pUzQ30HDEIWW7YKwrRTsDAOFiYVxG/hD0DApvLVKoPJFA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dbdy3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:31 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0c495fc7aso27384485ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165491; x=1766770291; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=AFc3Dg5N2NNIHkLxPi6+4sXnc9VoSD7xHm3VkTc9wGDFpbVo64QVCcMYj4zdLGqCUT
         Uxmt7mU8RYmgwcS14VfBSKZTj45kEXk3YYh2bT4EXVlIUG6810hVkCPDMe1+f56G/kkT
         /md5qo0zjqK4r3HVc1ZYuBWgwuFij8E6p9XaQhW/CCmqQ5rO67nTsK10w51Vq0lKaj0J
         XPgXWzqW1Y61CJJR/Tly/LYowdA0/S7ZZ4A3dla7MRiXruPrwRuCfMlNs0lWcliIBscq
         zJBuF6BT35xmKLF8LsHR755kew2vcftNJoB2D8BRUNGxWuA0YCaJwXiXIa1K2ESAW1Ba
         JHCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165491; x=1766770291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+HoP4zgJI2HQvPd0VfVnVmAlTXxAtZwgmAa2Xf4qdeI=;
        b=aqrAyJzJJp/QwbozCn2+ts1iWpmpJPco6nPYigW5jgS7YzlHle8XfumVOXTssFDZwV
         bfiq15uPc9fh+z5pHLJKsLEiDSZjawL/2TOv3yPDFFb5f8GZDgmpNYDVf6iEaLGVJWvW
         YEaoTLqz9oYl4FcuxS1w4DXc1c7PAs0D2p0ZuV6aZQuZzvFktaSIri04vjZbGIHYaiGQ
         AxJnsHZqCHsifMF2aDjqDvFkpYe6QeWZ/nC5PhXyWOBvI/AHQPFy6YZA2ZMDGaUzJSNv
         Legx2rZmNq3k3MP+c3UWAsGBqunClWE1vO+2c6rtSgbjdrwI/A8LMzeqI6meO22KBStz
         yKDw==
X-Forwarded-Encrypted: i=1; AJvYcCU0QfiRsBufeADvvQc29/Pq2D7bHrHY299TvrWY6/H9KzRMnKTwnqQXtqT5ciG/VhhKFyyKL+9fV6+V@vger.kernel.org
X-Gm-Message-State: AOJu0YzqSlIZsshF07dDxKgAg1h/3DIQA8hoVEh9btLseI51ddGM0UP+
	9qILGwGctYhyKUbCMP/AsSNCrZ2qhCD3LzXUNV9OhjPWLjQ3zkp4o9Ymzk77DlsfbMk7Z2TeAwo
	udhxHtXVWVIg2l3+DxSPz81TNgt0wSW5TVcsVcbgHxp7fCQtOh0T6ZcRbegvcl4Mh
X-Gm-Gg: AY/fxX4Dx+Epg9M+davs43Mr4CRheN1mPH3u0SjuIsfiA+aCQpTIc7VBVxOiAYK+VUc
	YdeRR1/3dsclO1a1f2gAVyaDP5GV4a5AFeJsRr8MpqDh8STNKa05VK9xzj94Xeso9Qq2Qo8BhI6
	p75T0KVhZPfVMRkFz/sZoPS2XExuoI0OFknIa09Fkw4x9zNsW+WkRvMcyN75UiNhelzzPZBvyU8
	7orW2bEDMOeE6McyHpgNox346UMzbN7eAx1AP5ecT85wEomDHOfGzIBHy6khLHYRmUGsTaDHWJp
	uwQkwYJDJA6Th5wRtLvDLekGjnaDzfg0I2b7SQiTIPB5O3GzvkAvvSo+enSWn3uxcdZax34m/Hp
	+IKkn1aMOgWt62+ap5UNRZI5upWfK/BvnWRavj2o9QykwNc0=
X-Received: by 2002:a17:902:c403:b0:299:e031:173 with SMTP id d9443c01a7336-2a2f273241fmr37252975ad.35.1766165490829;
        Fri, 19 Dec 2025 09:31:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzFvMAdz5PgeVAw7CRcWyMY1NGSIrH3Y8keTUbQcE42aBNKPhUnO0LQAbSyeCDChvPK6N/zA==
X-Received: by 2002:a17:902:c403:b0:299:e031:173 with SMTP id d9443c01a7336-2a2f273241fmr37252505ad.35.1766165490222;
        Fri, 19 Dec 2025 09:31:30 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:29 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add squelch detect param update
Date: Fri, 19 Dec 2025 23:01:07 +0530
Message-Id: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=69458bf3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1szMwrN-8cuOqQ1sM4MA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfXySrqy6Ah0A3w
 M9LAaKK0tmyaiHSjP6cTi7sze78PmslF8eluLRzOn3KEDf/GX5vdMifHkievju/iQpVuzYO56fr
 jrmhxS6DGPopCkJToqAYwSOdQT7jzcmN0H5pERvdcvYeKzSDeGmS8objDGgIFAklEuVGW7k/AbF
 ywhbN5VPhz4WE55aVHOw/7W3Ewg8Vyr3buLHO1nfZIicOdVDau4cIDOTpRb/sf26FDuAyWnoA0M
 Tupc4OB7YAQptpSN1Bj1MjWdB+D+tb59+y5F5K1+wF1zMc8Hnx1Yypw7Yw0avR25nbAbm0gAIWX
 qlue4kkXCfLrrOFE6cWSR0Y1hoo9Uz3LmIdLzVDMfQsPUfrrpVttWV27nlgwyINlTMVwCPhnE8A
 O68ThnowmLLJvv0StpbMwVNTvJzYMBD6JUoDeViZZHFTXr6V/JfeofGuKPtuUJbmD0eLk7VeWZj
 D84iqYQUaNg7UeNYOSw==
X-Proofpoint-GUID: 98I8vx3a33j7si72nYajcfBad5-Hw0Ue
X-Proofpoint-ORIG-GUID: 98I8vx3a33j7si72nYajcfBad5-Hw0Ue
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146

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


