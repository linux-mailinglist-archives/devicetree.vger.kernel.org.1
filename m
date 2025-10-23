Return-Path: <devicetree+bounces-230095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B5CBFFBBE
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:55:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6151189484C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC692DF71E;
	Thu, 23 Oct 2025 07:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bo4C36Or"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76F82DEA68
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206124; cv=none; b=Vr8DdQ2fSqXoF2bdA3J3v3U83XlVzpz1VgaZI3kLLx0vZEtK1s5IcKTstEcUb7CJlxbkAiS/Z2l7GK51ej5ARqVygztqyKyBSV3BSss+ZTrktFZx3bBQRBlYbL1tfpYM/jKHFhK1ZUEs7vm22Kh0uiWJ/Ec5X6WXJ9QMrcOG7rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206124; c=relaxed/simple;
	bh=YhGT0zF/zIeWZmR6CDQ85NX+twO6JxXEYFGAWzBoQ4Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tzyzxLw8bEZubGMfRfltSueXrGJRa+cakOAF4Ie90AajznxDpbPMDCITli6RjYhH3Xfh6y3B4wZN3+jFDqYADuNFPK8k3e1TN69XiLXrehJm1je9XyqIk3/DzFvSHUhzPsLfx+bjBUJ/Q6KB0UBEihfJkQclSU9KmPKOCK5ZFos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bo4C36Or; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6xAvi015958
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2+NE/Af1iO8
	IikWgwbLW4+s7TSryYrkY5597Cn42VwI=; b=bo4C36Or2X678XLhHCUndFZMhMz
	yQ25fxDnxRYWsv3Aacu9H0FI4VXgNj/84LJU4ElLmAo6POqapgG9BxJ1gN8K4q/G
	nhqJy9J/XgioGMQCA7cuKw/nmH3OO+luZdHzwbHDa3DExrm09BJ21/nfJFE5ITrG
	C5/tJxmD5dnvsaBpbtRydKhILEn+GnRE5QSBDVh+bkzu/wY0x42mMC3OI4oDZygt
	7IZj7ZlznFefeX/6eiAx+SbammfKZQoYWZfCfpjYn0fhfut0Wmpk9agLI6RbZfuy
	9/SWYRrgSOG6Mw6Qm1UZhh2Kjbs0ZochMAZ4v+mzMXt0oAuJyOZsvafL7+w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsd4bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-28c58e009d1so14343955ad.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206121; x=1761810921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+NE/Af1iO8IikWgwbLW4+s7TSryYrkY5597Cn42VwI=;
        b=wqazUwt+9HZcg9/p5aZF/pL9z5tlMv8pB1pQLGESaXmajtx2EPYmwVqm7byIOvfPU2
         RZHTiTyGy2RJuv9jE4gmyj0gkttUfjwEl2hsz9pZ8XhRyl+oqdMQejM1fSlPn0zgXJI4
         Nf95Rl4/LqJdZkvVMHwJnyY8TyA0SMkS13CxnLszEo12QW8gqp5E7bviOCdoYh+OAV64
         oDyqP5d/Oap/jgx1gN0k/qS4niEd3uIDrBRVfMmu3AC8yYynvcWGdi3fRitxPObcGajx
         benpojvFrOBg8eGwJlnGJG71RFxBJGc+BDjuTtIRDQ95FjSRr4YEHZYWLse0cRZuvsrn
         e2rA==
X-Forwarded-Encrypted: i=1; AJvYcCXlD517Fcn6RrqzBIaKkkUc6fq6QrKoAucly73/5sxDtnWED8q14KKVrrAhHxXohDWL4svfOUPyT50l@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6/mlDbtWDUgjXwi8j9aDuRCDPu82iFy6Kl8z68BEyl62kiiAV
	LvAfkxXRz4CVZFBwQlGGToH8gLAIfKRz1pIzAq+tDBWnH+i82kJ3zh1nRpdvuSJj6sS1GF2O2Eq
	CB1F/knmGAQHx6Mtg5PRNFiq/NvsWfG3d/2dPQB/urcW5IPu8/SZbrkomUOADCWz4
X-Gm-Gg: ASbGncsqBo620DIOGCqdqWfBt2oJLzA/6isygAh4SnFHtu9BlNyWvOatjOL4J83cL+j
	YX9Ua+UjuMB0XSqOjGk5E5MRWPfFfefF3GPFkqPiGyJGHSD8/8bmFziaryW4ZsfVeJnIUam2ZPQ
	0YBpRK+3wV3F2Z2Fi0dWGohTM+HyoeQF9Usw85+DUXcaBc8MBUiMKqb+bzGK4ctj2jFDgz/YRun
	QvR4yg5JSo/vhvogorlMBl/JKqveW32TO03xTS2eGYr7AyoTczsfloHBINuROXq/Qe+7h7J8npg
	8bTjGiJ1F5SoKhLbXomZTJAWuBrg5Dk/zaE0iMw4VL8jVFtEJSVEDEc1tCjcMvOCCfRP5XDykUn
	zm6Y1u16RLpLEgz2gDF2cHviFDEc8fEsFUtGmawIJGB56HCDG2g==
X-Received: by 2002:a17:903:1c3:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-290cbc3efc4mr334314395ad.47.1761206121118;
        Thu, 23 Oct 2025 00:55:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ9mxG0mQE4e2d0wtdtC0Pzf4q1nK4RIrpRbfpCU1mVr5UFw6tRXlVqC8ZjctkbkmykKWyhA==
X-Received: by 2002:a17:903:1c3:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-290cbc3efc4mr334313815ad.47.1761206120651;
        Thu, 23 Oct 2025 00:55:20 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm14371265ad.97.2025.10.23.00.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 00:55:20 -0700 (PDT)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt register
Date: Thu, 23 Oct 2025 15:53:52 +0800
Message-Id: <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfX3lzH9wwxpUy6
 CYcR4A0LQ8307Ule3d5JhKyOdG9Ohib2u4xiQ9RrgffwlAv9vOa+1zoPURQSmm7xEmlcCZLYVXu
 6hguc6SlnrEpw2o62Jc/8m5NJGqacq1ysuKYEF7d+zalisywedhK+YQ7mZvoQKbP/eFnd4I+9pN
 xHPxnqFrKL94DLKCYWYSsQaA36bSEB6vxlqsHRoJpn3RgNu8vKYSSt2rH2roXeWozAczE42BVgX
 tTD2Xl57kvunooufQ+6hW631e9vBVYWTxHJ8rdOE2oESKEce3tsF+uNxYP+ytadPAMBqckiMkWI
 56FWpnw2XvUs/3zOnYjHHf2j/K2WTyHOA8uocTavIf2Bt9G4BiNT1pc9pwLLB7rLiA2iJfS2T+w
 DufdoVWSEAvtSrP2tLsoib+bx/UlYw==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f9df69 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=53IYeV4kbo9ohMI6A7gA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: BK0IiFaWOrsMap2rF_uZfIL2DZOmDJ-h
X-Proofpoint-ORIG-GUID: BK0IiFaWOrsMap2rF_uZfIL2DZOmDJ-h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

DPU version 13 introduces changes to the interrupt register
layout. Update the driver to support these modifications for
proper interrupt handling.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
index 49bd77a755aa..8d265581f6ec 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
@@ -40,6 +40,15 @@
 #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
 #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
 
+#define MDP_INTF_REV_13xx_OFF(intf)			(0x18D000 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
+#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
+#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
+#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18D800 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
+#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
+#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
+
 /**
  * struct dpu_intr_reg - array of DPU register sets
  * @clr_off:	offset to CLEAR reg
@@ -199,6 +208,82 @@ static const struct dpu_intr_reg dpu_intr_set_7xxx[] = {
 	},
 };
 
+/*
+ * dpu_intr_set_13xx -  List of DPU interrupt registers for DPU >= 13.0
+ */
+static const struct dpu_intr_reg dpu_intr_set_13xx[] = {
+	[MDP_SSPP_TOP0_INTR] = {
+		INTR_CLEAR,
+		INTR_EN,
+		INTR_STATUS
+	},
+	[MDP_SSPP_TOP0_INTR2] = {
+		INTR2_CLEAR,
+		INTR2_EN,
+		INTR2_STATUS
+	},
+	[MDP_SSPP_TOP0_HIST_INTR] = {
+		HIST_INTR_CLEAR,
+		HIST_INTR_EN,
+		HIST_INTR_STATUS
+	},
+	[MDP_INTF0_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(0),
+		MDP_INTF_REV_13xx_INTR_EN(0),
+		MDP_INTF_REV_13xx_INTR_STATUS(0)
+	},
+	[MDP_INTF1_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_EN(1),
+		MDP_INTF_REV_13xx_INTR_STATUS(1)
+	},
+	[MDP_INTF1_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(1),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(1)
+	},
+	[MDP_INTF2_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_EN(2),
+		MDP_INTF_REV_13xx_INTR_STATUS(2)
+	},
+	[MDP_INTF2_TEAR_INTR] = {
+		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_EN(2),
+		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(2)
+	},
+	[MDP_INTF3_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(3),
+		MDP_INTF_REV_13xx_INTR_EN(3),
+		MDP_INTF_REV_13xx_INTR_STATUS(3)
+	},
+	[MDP_INTF4_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(4),
+		MDP_INTF_REV_13xx_INTR_EN(4),
+		MDP_INTF_REV_13xx_INTR_STATUS(4)
+	},
+	[MDP_INTF5_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(5),
+		MDP_INTF_REV_13xx_INTR_EN(5),
+		MDP_INTF_REV_13xx_INTR_STATUS(5)
+	},
+	[MDP_INTF6_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(6),
+		MDP_INTF_REV_13xx_INTR_EN(6),
+		MDP_INTF_REV_13xx_INTR_STATUS(6)
+	},
+	[MDP_INTF7_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(7),
+		MDP_INTF_REV_13xx_INTR_EN(7),
+		MDP_INTF_REV_13xx_INTR_STATUS(7)
+	},
+	[MDP_INTF8_INTR] = {
+		MDP_INTF_REV_13xx_INTR_CLEAR(8),
+		MDP_INTF_REV_13xx_INTR_EN(8),
+		MDP_INTF_REV_13xx_INTR_STATUS(8)
+	},
+};
+
 #define DPU_IRQ_MASK(irq_idx)	(BIT(DPU_IRQ_BIT(irq_idx)))
 
 static inline bool dpu_core_irq_is_valid(unsigned int irq_idx)
@@ -507,7 +592,9 @@ struct dpu_hw_intr *dpu_hw_intr_init(struct drm_device *dev,
 	if (!intr)
 		return ERR_PTR(-ENOMEM);
 
-	if (m->mdss_ver->core_major_ver >= 7)
+	if (m->mdss_ver->core_major_ver >= 13)
+		intr->intr_set = dpu_intr_set_13xx;
+	else if (m->mdss_ver->core_major_ver >= 7)
 		intr->intr_set = dpu_intr_set_7xxx;
 	else
 		intr->intr_set = dpu_intr_set_legacy;
-- 
2.34.1


