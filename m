Return-Path: <devicetree+bounces-246461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7416DCBD034
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D669130562DE
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67CD32939C;
	Mon, 15 Dec 2025 08:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdLNK5jD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iVUV53sE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28003329393
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788049; cv=none; b=T214QQBKvVKT3Whkjb+Dxlwo/MkYYOie3eBszzWzJd7pepaJ6e3GOaxCTAP8KvqLPjEXkIbQl4fnFUzDqW5DnoOMsXQpxXOK1W1Z4mMVQSpFsFXq4S2SQemMjJNomrWzpvyWovO1eEKw+S1LhV9hqKA4hvqdjkIox6m0Vpmsc88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788049; c=relaxed/simple;
	bh=eYqbCgFTx7pO2+x0Rgwk8N2aIIU8O+9nShTeQC9NPWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VShuBdivS64/w+4D9+tkRY5L66XSW87+UsX5b3C4tUugXY/EmYqaOzdYVpsrKovJ4DG96uYcHwO2xzPz7y+TmPLJOAoeM7FXF1dAUNVkM8w3MtAwmbYG5mSoL2EkBbgXTQkIb9dtrMMIXMSshRjXWZwv8q7blk3gLJCqpK2QlEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdLNK5jD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iVUV53sE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BF8Mmww2800683
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AlSWjXvP89D
	8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=; b=cdLNK5jDp8TBB7djLkAZ6HtFZoW
	WTej2mBmm7t8tW9Je6HRuT8zUzvjjl/E1dCsS+jz1SL8gSIVj+LBa2gF/tFSzOnn
	gnKYLsH7/g+1ybTm/TQyHPdboHESWBt3nz+LVX2rh+yJXq9lCscolQxx+Rus6neD
	4GQ/HItzF9rWj+WdhnLzSHXZmyiIfe6vXtpoSmOUR3QQJIX1nPgIk7tmvPTE3SPq
	iBXBCRec+Cr7zO56HMJHb6pBYnHiVh3DYmaDCnDnJkPHS5APwMbzxjGEiarLw3ua
	QCWXir820zTOKa0IHrdXwJKQzq/T3QDgYULHlDUvFaRi6SKCxO3ZuUl68+Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119akrqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so73958281cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788046; x=1766392846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=iVUV53sEeI3gf18cay1Ao3WixaBEBu4r4sxQT0OwUFkmSD0Qne9aqEspQaqSCDvbz4
         My+MOcZlEEv6ZRhJ1b7TX00AK4Hr1ConYFt6z9WAFv0tOfMDCuqwscebZmttDEBu907F
         R5G2zZAerTI6kh0T+u9ESN19F6cqnrb63Orh7UmcDYPlCEmYW54BGBE5BMNcB096tEsQ
         AlK1kGP7IBa45Fe1pGThEtsCR1RiDlq7fERcLb/m/PAVzX3qiOLZTWvo+mft6YHIWLFq
         qMrxwGugFHFYCitz3ix4PcgurcUK+RSprCjBsYsWznle0+i2EXqz/ibiveu0ZUEXb6+R
         xq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788046; x=1766392846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=Sk4Df91IldmxtPc+qV+AejW1Ayauh802Z7TiPdP7RGJzOrhAT2jVTfpu0qQkBM7MMu
         zTXjnCcs6hEDhDTk46457yY1mBV4/sgAhE7DYILk4Q2aYdEJMzwmdGcwTrv2wdCMl3or
         NZXYGtJPunNz3Er0iwF3UHg5oeYOwtUK2S+y+h8r5fUczbOUKb5R/jCQ2Dsv8K0iqJw9
         BjO52BSLbVnT1mpBzQWTUIkxDgLOfZiO3Hvp4Wf24dA7KucKEwNlqnnlUlXpcvHg9YsG
         jxiLDqWzagsJNhhA7AkqDbvXmglTkqOllNKaQr5pFMuKYCvGnhN4VFNPF4J1VE2PgtBr
         9CRg==
X-Forwarded-Encrypted: i=1; AJvYcCUaaT1w1e3KssqyJffsyu4wrtgBZAL7XuTB8jb7VXCppyFul2L30OGQAiDlorda9rgCyfl7Dy5y4mRC@vger.kernel.org
X-Gm-Message-State: AOJu0Yym1gEGwF0Fs3dk+btkhsVgvjmr83K6PzdTODCQ7UYetUWqSKTc
	r/V2dTPinYac0ku+aKG3erm9a3WtLeYXCk+7TXqSDtk7Mr340G/jM5mwjLP23xZ+pBzUxIq+ZzT
	Zcg0aH6XAVlT3yYGHhKRV9ZRWBXgnkS8ngYpNfiIrTU2a+Ldh85EieSnq8M6FeKGi
X-Gm-Gg: AY/fxX7PoDRCmImB3EvmK0xXOZIcO4hCIipYBPRdugVo/f+H1auGipvhqazmfZOA+bd
	h7rU//wa6/tXkCPsJpnF0fKLBWZRYUJiqCPXgQYk3adICvzK85ux9MoybKu1qZcfFX6DGq8UxRD
	wfibkuyplgfbcE52GtzFl3OjMOE9xfylULQpFbEDd3XmotXNAvWsczM7UWLk1T/9g/VASncgPdA
	X4puVcNJPnZPPhDRJ5VP+Qy0T92y8jpnyDjJ3YEzd8W9Ep30c5Q4Gp1pxzjKK82WTxslvb9shMJ
	TZDkNHqXw+Rar7+gL1Ui5m1fEtnk26ujITxc3e3sNuDgHgDKhZg9Y5k/iumrR9aqhdXt0HJ+Nr7
	QfHAsSKW+uRtrTos684pn+sgBOVBOvhkKlQIwlYHlzG/w5skXDWq5Kt8FXt0fBdxdzaY=
X-Received: by 2002:a05:622a:1791:b0:4e6:ebe3:9403 with SMTP id d75a77b69052e-4f1d059d261mr122345771cf.41.1765788045675;
        Mon, 15 Dec 2025 00:40:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkrFIAQoibBowZ+hZ+Nx8U5gIQEDXi5Q9OFXQj88z4ksCGjc3LaNGlfwA9GNy8uOY0+1Glhg==
X-Received: by 2002:a05:622a:1791:b0:4e6:ebe3:9403 with SMTP id d75a77b69052e-4f1d059d261mr122345531cf.41.1765788045177;
        Mon, 15 Dec 2025 00:40:45 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm90557971cf.21.2025.12.15.00.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:40:44 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 07/11] drm/msm/dsi: Add support for Kaanapali
Date: Mon, 15 Dec 2025 16:38:50 +0800
Message-Id: <20251215083854.577-8-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ftPRpV4f c=1 sm=1 tr=0 ts=693fc98f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EGddA7oXPexY6v9tJfMA:9 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MiBTYWx0ZWRfX3lPb9YEtW/qj
 1byzRSufSPWGjM524SQpAvL4mGjUL+llYzrGb4DZC+XNbLTFL3hS+yyO8edKAx2JhxFlVmw8FfH
 a0zlHiBb0YZ7E4TAf5cJPrnwBatkgGQoiIDYAIk/N+Gzvn5vkFIJ1ze2qNSCmjbIvPl5CteplPd
 0fYZfOpXk48yN5/kmr7zGE+IpMMAI1IKVbQIAT85UHGlrnUuo7ka9qZKRRF/jefX2sLPP7g3wJa
 kOtMpXMU1mlk2lgPHftCYikl+o2jcmZVoh2+SynWfaqJmnLLzA3dsbevMDEoabycHXegFILBQfa
 6nqHBfVh2uoACOJXUXJbltplki6u4zBYiXHZKn8PjKXN6yI/EenAsvzMtyCqRvCQIrCzNT+vdVk
 QJ6jdpqmM12wKHRf8bYCcdUbI4bQzw==
X-Proofpoint-ORIG-GUID: MReBsyBJFgo2Q7FGmT6M34IHyalsNA5I
X-Proofpoint-GUID: MReBsyBJFgo2Q7FGmT6M34IHyalsNA5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150072

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI Controller version 2.10.0 support for DSI on Qualcomm
Kaanapali SoC.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dsi/dsi_cfg.c | 13 +++++++++++++
 drivers/gpu/drm/msm/dsi/dsi_cfg.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
index fed8e9b67011..bd3c51c350e7 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
@@ -205,6 +205,17 @@ static const struct msm_dsi_config sm8650_dsi_cfg = {
 	},
 };
 
+static const struct msm_dsi_config kaanapali_dsi_cfg = {
+	.io_offset = DSI_6G_REG_SHIFT,
+	.regulator_data = sm8650_dsi_regulators,
+	.num_regulators = ARRAY_SIZE(sm8650_dsi_regulators),
+	.bus_clk_names = dsi_v2_4_clk_names,
+	.num_bus_clks = ARRAY_SIZE(dsi_v2_4_clk_names),
+	.io_start = {
+		{ 0x9ac0000, 0x9ac3000 },
+	},
+};
+
 static const struct regulator_bulk_data sc7280_dsi_regulators[] = {
 	{ .supply = "vdda", .init_load_uA = 8350 },	/* 1.2 V */
 	{ .supply = "refgen" },
@@ -332,6 +343,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 		&sm8650_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_9_0,
 		&sm8650_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
+	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_10_0,
+		&kaanapali_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
 };
 
 const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
index 38f303f2ed04..5dc812028bd5 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
@@ -32,6 +32,7 @@
 #define MSM_DSI_6G_VER_MINOR_V2_7_0	0x20070000
 #define MSM_DSI_6G_VER_MINOR_V2_8_0	0x20080000
 #define MSM_DSI_6G_VER_MINOR_V2_9_0	0x20090000
+#define MSM_DSI_6G_VER_MINOR_V2_10_0	0x200a0000
 
 #define MSM_DSI_V2_VER_MINOR_8064	0x0
 
-- 
2.34.1


