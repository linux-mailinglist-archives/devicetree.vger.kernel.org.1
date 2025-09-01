Return-Path: <devicetree+bounces-211211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B72B3DF4E
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D02E189D351
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CCAB3101B0;
	Mon,  1 Sep 2025 09:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lQS/xVmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9019A30E84E
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 09:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756720728; cv=none; b=uCXMJAUK5DW2fgYJX7bylc6oD/VxrDZGD5S/0fG45W1VCm0RZHuWH3OiFzjNEMShS0B5kgLXOKcu0+HhHwa61NWsyg4QGGE92S2S76nVrx9PQTfl58QCk1cfATNFWjjtl7Lp8iUXj5cJ1rcJNmvcldbFeD48Jqih1I50xmMhMMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756720728; c=relaxed/simple;
	bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ohrsDX3KDBMT0U15pXLZSjxrcbEVlEdR8fqKmOcg+xsJNLMDtSu3c7LgvfxqilomHNTxs0lATmGD+2d3oevDvj/vRbkI0M+GqeECJ//gO9/MEJae1/jg3xQyMSpzbEdt+FV7JMlEfabqoYxPe7TyX/qRSqBYkinryfBsEObFJd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lQS/xVmv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5819eQ0W024263
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 09:58:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=; b=lQS/xVmvG6A+GYPB
	iOPwO35lO+3st8M1q3ObbX8yFPXMvvWu6Y6KJChPWmEC/1ICyfJDxbhY2K3CibQE
	zng83HD8CZrgwQdt80DM3VHNjtR6m/rBjPJWgJsBujrmqn/Zj6kPbjIONIj1AuSQ
	5kM0tpCuaDyqqabWyBIhvoN69ca0yDwfN+/T9SWkjOMuKSYRXErMpuU4OsHgr4K3
	4PtCpBg2kadVsc5Sn0iyyb4lW/M/hwWMRw48cJIzvbO6jJZu1bdQF4t3aIRFjXzB
	Nu0eTON0Kyg2KkLQ5kHUmrAWI11a7Ut97G2S8/FizAe7l3Sepy3Ogr2WtZgmA3uw
	CP143w==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8m9vs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 09:58:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b47174c667aso3353809a12.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 02:58:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756720723; x=1757325523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=;
        b=OVVDY6hROyjx3QAj2IC2+g6MC1KMOqvQGOglKWT8IDU/ghWWX8XshfP5CpkXT0NgFc
         37R/rVw5zJDxVIvVa1YgsRJZTZjN/+8BYonLdAtwWC+6Bqd9Um1SZ2NUefNwIvm8dYyM
         KZJdDZmIHjPJVL/8Eba4KEGr58z35qV9Jm3KS/UC04LmQxXB/g39yMj6yOuGLesUJkYm
         mpJA0N77yhlvTKNfDLzpyng4GppQ0mC8INeT+vQJdzS25Lvt9LxrXkkjZUDPf5icoVh6
         F8X5PLYzfLZ4CE9FT1jTclZa4FHiDRt5apVozowU1rC2sSCPG2ZznyyZJjhMccg2e8XB
         yI9A==
X-Forwarded-Encrypted: i=1; AJvYcCU5P2AMKTLkzJrrHbzC7MFL0R2CbkD9xR+4m8o04kHFtPzKGzcZBEATTTRMWxcae6gt6h2ARKAhl0f4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy34KbqP9EuItO3cHKmc/i1TLJKq0X0mU+rae32uodtvPLBQ5gy
	45561HtsDzPzeanHVhHbOOIOv1Bdg5VCR3L/kPzY4VSEF/iORIRhBjWmIJPzFw6A986fmRYj8NB
	GQ4Y5Jraot1pucvrGK66XxN76q5hW9xCdL+3EOonZrNWI0LUkt2Alx1NZoRFlAPIR
X-Gm-Gg: ASbGncvM8jvwAeeA0rMOe464jx1uCtQe+LJBv+rsMlyTikcQpIa/mkPvBYMehz1FVAS
	2ptSttEvAXBG5zEGq2FSJgX8hkJbG1MmQOXcbUkthRUJeASO4C+KfoALWYFR7rB/9FKUVEDpCcg
	4yehjfhMcwY0kcbPcterl6TBbAH+U0XQsdLls0V+ceacA1DFUDRl3IVBamaWxyjRPhOyArr6/U1
	UVxsyJM7eZ/TEMGYrzayLGGwcK2fZ+ONSvxCPCggC/KKrp96+5ZlAZY0PDp3vgM/OG4O5wzXY+U
	PdrxztqzqwJkitOmUx3JXao2b0qnaP4PSvX8LJ+sxADqbzuEMe6/s/SzWFcjuXL7JikKAQc=
X-Received: by 2002:a05:6a20:72a8:b0:243:755:58b5 with SMTP id adf61e73a8af0-243d6f7e021mr10260507637.54.1756720723165;
        Mon, 01 Sep 2025 02:58:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcT6Sy3B9OTw9HVUyb8xsdhYrAB9UJyNu8eiRPjBXTTgcVrCt/D/vmbND6zyw2UIQqSmNAag==
X-Received: by 2002:a05:6a20:72a8:b0:243:755:58b5 with SMTP id adf61e73a8af0-243d6f7e021mr10260470637.54.1756720722682;
        Mon, 01 Sep 2025 02:58:42 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a26bfe2sm10305656b3a.14.2025.09.01.02.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 02:58:42 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 01 Sep 2025 17:57:34 +0800
Subject: [PATCH v10 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-qcs8300_mdss-v10-6-87cab7e48479@oss.qualcomm.com>
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
In-Reply-To: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756720668; l=1242;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
 b=f9d+cJvkz4X1o3ygAyE4yDQLdFavOoV2A1iTB2IP2/9bGSNAus9L+k4CJMzrFYJlYnWv5JD2C
 6XtJKflv/acCfCPt93e5e8IU+9EdYW6yJHxMMWdV5lAkSkxssNGg5TB
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-ORIG-GUID: KjfU7c5OIBwmQcW-_xuyu4R5CaBoPszk
X-Proofpoint-GUID: KjfU7c5OIBwmQcW-_xuyu4R5CaBoPszk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX0qFcPAyLTOjj
 n+sbli4jLqRPHtXpf3EB0nl+J3oPNDIrEPH2pUpadBSNXgNasM8vzTXcopRHTHosHZBpQ0h50Rh
 gPKiICNqVYUOAjwvUqjtsqxbWLiMGLyvKhwDhD8/tU6xyRdN5+oe5bL4KvkwO+nYeP8iOCMU6wo
 Oregw1UzlIm4X6d3iCpmJ2XCEznJypf/nD9iCo5zS2SD9S303I24dFhJcNRQ0qw+9JZ7qzBdd/6
 LIkI6jCEDXFMMwGeYA3cvnQU9YCFp9JbGAerlRqeZ7o16qUJF/2YpxSyfxW7pXRA+WVpfDy3DRV
 wZdhy/kh6Kt0xVMIoje6WICkFy+sgoQDj/Ftl8IrFtq1aVrStBq+HbdpYVQeofZiHf1PqAkX+qB
 vmOHUx3X
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b56e54 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E9mFum2VwHQHOKsBOicA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

The Qualcomm QCS8300 platform comes with one DisplayPort controller
with same base offset as SM8650. But it requires new compatible string
because QCS8300 controller supports 4 MST streams. 4 MST streams will
be enabled as part of MST feature support. Currently, using SM8650 data
structure to enable SST on QCS8300.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index d87d47cc7ec3eb757ac192c411000bc50b824c59..bb4660585849d1a67921a28e7e12422e0c327ab2 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -187,6 +187,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
 };
 
 static const struct of_device_id msm_dp_dt_match[] = {
+	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_sm8650 },
 	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
 	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },

-- 
2.34.1


