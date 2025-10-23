Return-Path: <devicetree+bounces-230093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 810BCBFFBA0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D1603A5023
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB312DCC03;
	Thu, 23 Oct 2025 07:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UCqh9su+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B872DCF69
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206107; cv=none; b=cm4U8SUWXlza1l2CMNnTFg+GTQR6jibDkVgSNEpqh2vM4xer6gIZGWp217am2N/YiPVwjCFVqxqtjB6iI2UNGKyY9uiCD7EzVdnxUMhY92SreEDHs2sQ5w/Rg+y/ylrL/vdyidLfiTXS1AOlKMO/Ph0U4/SNqytJ/t6z9hBTTms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206107; c=relaxed/simple;
	bh=dLQWeX36WOw1tGMGQWa7Z/3xkwcHtkl603TdrHkHt/A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Jz4ElXPTayeuT2ogdDkCoThibJMx/xXLh61cZsyt0WFYRlGQslop3ZPR8rsIggAYzutUx+aA7lv802dD8AhFiuwABd+i+hzOhauZF42Pmf/z5awKqVCQ+bTGvWu5g8wI/4D8peFSBJEUCpuLF2Aeia3PWaX8jFCHlNwskPSw+OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UCqh9su+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6njws007434
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hxn7ShIYBtn
	ywIoj5z7bF8woB+YQ7/3kOpn9agNkuO0=; b=UCqh9su+0S8vwPc2G3kzO6ABdEI
	zGLJGtTbs6TcQjhPdV99Td6N6bWhLg8qCAWg3Jzi2E+eYAf420vl5e8xoQlQnxxJ
	IN0iTZr1SWzsSxjmh1/Ro+7TgiXgng3H0RUag+C34IO8/33lD0dedWxqt8Fk3WjK
	DxvcPZyi6tFE2iilFJ5vPW6IWKt5tsCpXuQ+WVOmD+8prh5Lpp2tHbjfHExuuR1s
	jhBwFrU24+A8em7FaumQVDbcxn5xuqF5C32HGrkPHKwVIF+k/02KnkCekIcOhCfd
	sv1XknS6jGMVIOs+s+QGY96+OHSpHB2U054ncfd3POAiEQysDkr0Ds1DmKQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3447k30-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso988277a91.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206104; x=1761810904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hxn7ShIYBtnywIoj5z7bF8woB+YQ7/3kOpn9agNkuO0=;
        b=OsZxMe0oZxnSb8Lq20hyIqgnntjYZKUsJ2cA9oUKUAHNgT1MMFgYl00TqL45eY/0Bl
         5wRNUDYkf9p6ja27AYL2bToGZbdVzxA81g1Qm96OPK5EvOOmRvAXHWhZegiJMNlL3Hzu
         SjHTiXS7MIGBubJS5+sZpn2ENmsF8xyPakJcpJHAJR0Cqi6FB3g8XYh5F10LiwWmJzYN
         5vfG5bY/ZClVg+GABwHOWEnYs1xYWdE7IIyqnKsVQUhTM9sVrgPmuDX8EwXF2sN2oWJB
         2gFBC22MrIJ0UWA5BN31pCoL4hvti7R8EPyC29SLAy9KpRcLeM+DQPl+Ds5Hke9W1VGm
         ve4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX35ufuVl4P+bwD942vHX/7IaLjsDhNcJB2lCYhNmxVC7cUdT7Y1vKuP7x/qR1odZ9Ne2DoXOENe0AE@vger.kernel.org
X-Gm-Message-State: AOJu0YyFYJotb9Hl7E+VcrfSJ5Q/nf7WoUa5/Ua3uOwDsVAEydpa9olK
	HbBfejbAV/F6L4aqKYY8DLkUD3GPX9grzq4M1oLemvcz+/gM6KfnAx3q140Lwph+GYC3Q6lpAKK
	+qIQAc/rvsBpV7+ZSQGlZjQJDecYw/wllY3v+hTTI03Dd+tEN6Ptsk4BOhTpbB9Tf
X-Gm-Gg: ASbGncvqfyviZ+tptZ6kH00v+lLblqP66ixIhe/fH4kcSadQI9B3p7U5vUVrxkAW8mF
	ogP1ARqDroHZymArS0EgPYQNGNJoKklwsvdg2d4/QozHn2y3p31yMuZjRLr/p3EGEwZvzKAKCMv
	6kuA5SlLxWy+Du3MB5ief5G3+kaEDqx+90leqcfqZqbpZQCBAT1+idTUF+ak64vZT2BBe9xUx3+
	BgPLOHBXgDHYQgdXQ1PYuQFCWiAhFiLqb5jFSMjMt7wxD2cMkoanWXZnZxua4txiHlu795Gef+N
	5wbCtWhNPL/i7tmB3A1Bz/pLP/rv5w9mDXWvBA9yKpenPPNlQnXyLtIqEai81qMj+v+KVyhAE75
	OYUFg2KYiRba9J/rcftTbEZcZJ6id8L2wSPnWZ76Rj1+DcjfMUg==
X-Received: by 2002:a17:903:98f:b0:277:3488:787e with SMTP id d9443c01a7336-290c9cf8e7fmr298783725ad.12.1761206104355;
        Thu, 23 Oct 2025 00:55:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbPua/PqYedRnSX1LyIiA33Ruaseb4k4MVB5/62weZo4u2AYpakMUmfxzI5Qq0e4u2523ZLA==
X-Received: by 2002:a17:903:98f:b0:277:3488:787e with SMTP id d9443c01a7336-290c9cf8e7fmr298783445ad.12.1761206103942;
        Thu, 23 Oct 2025 00:55:03 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm14371265ad.97.2025.10.23.00.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 00:55:03 -0700 (PDT)
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
Subject: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Date: Thu, 23 Oct 2025 15:53:50 +0800
Message-Id: <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-GUID: tTNz6YmKifKUW6kaPh7G_Y6vyauMm2uW
X-Proofpoint-ORIG-GUID: tTNz6YmKifKUW6kaPh7G_Y6vyauMm2uW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXyhbJYHi7SExU
 Lum/YIXIAZggMZtuWmdu6MAgKMM/zIfOJQ2kCfkV0hE4YylJyY4Tl/9Hq5ao0ecbWPTYkNegh0c
 ucInNUTSqZyyRfHPf+wWjBuNfuKM1fKaGdeC9zGrHLTSwRPNUPNRhEn9Qj6VySUreccZonLpElg
 wCFu4ANwA34KF/UUXxb/2mSaZkrPxOzrQrCdvMxWTzEwX62zP40IP5uT+gdT9rqjAyF9j9AyFkV
 xk3DUq3oe0wIKSPPaS81MiIVra9qUxGqLeX6NTTGVTcsDHMW8coVZnjoya1Z4Z5F3kzb7PbZ8aP
 ntlIu+64UxLVw4Pp1SDMA0+b8cyoVIsLH/wh4WI7yM9eyzLYjLAHroFs/TB8+31/HsvwQfBvGUm
 0Xw0IueKYrSzaOfbk/VOrCIhbpj5+w==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f9df59 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=B1tu1MuE3RNTBmX3WhkA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI PHY support for the Kaanapali platform.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 23 +++++++++++++++++++++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
index 4ea681130dba..7937266de1d2 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
@@ -577,6 +577,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
 	  .data = &dsi_phy_4nm_8650_cfgs },
 	{ .compatible = "qcom,sm8750-dsi-phy-3nm",
 	  .data = &dsi_phy_3nm_8750_cfgs },
+	{ .compatible = "qcom,kaanapali-dsi-phy-3nm",
+	  .data = &dsi_phy_3nm_kaanapali_cfgs },
 #endif
 	{}
 };
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
index e391505fdaf0..8df37ea50f92 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
@@ -64,6 +64,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_5nm_sar2130p_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs;
+extern const struct msm_dsi_phy_cfg dsi_phy_3nm_kaanapali_cfgs;
 
 struct msm_dsi_dphy_timing {
 	u32 clk_zero;
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index 32f06edd21a9..93e53fb8b4fa 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -1518,3 +1518,26 @@ const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs = {
 	.num_dsi_phy = 2,
 	.quirks = DSI_PHY_7NM_QUIRK_V7_0,
 };
+
+const struct msm_dsi_phy_cfg dsi_phy_3nm_kaanapali_cfgs = {
+	.has_phy_lane = true,
+	.regulator_data = dsi_phy_7nm_98000uA_regulators,
+	.num_regulators = ARRAY_SIZE(dsi_phy_7nm_98000uA_regulators),
+	.ops = {
+		.enable = dsi_7nm_phy_enable,
+		.disable = dsi_7nm_phy_disable,
+		.pll_init = dsi_pll_7nm_init,
+		.save_pll_state = dsi_7nm_pll_save_state,
+		.restore_pll_state = dsi_7nm_pll_restore_state,
+		.set_continuous_clock = dsi_7nm_set_continuous_clock,
+	},
+	.min_pll_rate = 600000000UL,
+#ifdef CONFIG_64BIT
+	.max_pll_rate = 5000000000UL,
+#else
+	.max_pll_rate = ULONG_MAX,
+#endif
+	.io_start = { 0x9ac1000, 0xae97000 },
+	.num_dsi_phy = 2,
+	.quirks = DSI_PHY_7NM_QUIRK_V7_0,
+};
-- 
2.34.1


