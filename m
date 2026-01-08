Return-Path: <devicetree+bounces-252671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F221D01F83
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:56:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5641430111B3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D190A37E2FE;
	Thu,  8 Jan 2026 08:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GXpqs16A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VlPTG4Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981AA3590C6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862707; cv=none; b=uR3gh5S/BiWaj/UD5SkxxotLDtQw/KT3yhA49Nc7BMekC+u/+iNop/9AdvHz1QJTOk3Ny/28kB0JODwLNpPjLZ9LnXzEzd9GcB8tlFc/nth/TAuTGABDPvWjYVOONt1v4I6VANGkuPfP+W7iXgY/3Ro7ULFQOhbDZ1SZuz/MaDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862707; c=relaxed/simple;
	bh=GPNHdwwPQhx6RHo0jHkO62FjrR7S3TzTSqPLz/MSGkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RTGi2CL4brooKE7Q9udwOdf0PGaXUrI/xTWlKGROeLWwXSH93Q+DJgOEfTV+UljiD/cBoeV0E6GrFyHVNbBjGmUB+pSPvK89+pU8TZU2WU1m1bvZeVSC7uTn0Id21cDAlpq/YntdC9QKqG9evYS12WNsz1IOudCjZx2EgKzqOWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GXpqs16A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VlPTG4Uk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6088w9KV1570538
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:58:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FQG5BqsGnCi
	ZEwc/eMkHo/ya5niea9nDglgo72tq9vo=; b=GXpqs16ArlQM6ExhDe7TB9Mow9X
	JzBm1MTIQBIsiJVONT69vJMSgllTdw9dtrrYUuvP37HjXD1IEhcpvArbfKjvY5Kf
	2sq503cV2I9EomIC4Q034KPtWi2lR1DQUdWzLVg+KzY+9mOvvOVMM/5aphfHGJ5s
	BmpX1+ilFKdUGlvHzIvIJ9iGhLAXc/WJ4TF5lxZDMpG9ivvUQYpZsB1OYPEPKRHX
	FlUZKz34x8ChAsWfHqlEemgR+UF7KNwBe0Qo47bno/MaD0esXJAL8An05C/Z9W/m
	+Vi5aI+pEktOax9mT9Y4ZvcquTg40ydIuaTIj/dkRoqCpepfC7OmlRWUx1g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj9hqr00r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:58:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2e19c8558so692426985a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862695; x=1768467495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=VlPTG4UkM4FeEInb0Vg9/Fzoo1bdKczTWBk5OrWZIjv39htTzHmHbxgsVZYDDgHH2h
         BuycLHaAYlY3TMjzO/luZstSsLWuJNHuMpCE2Kz95UQn2H4sx4w8pP4vph9qdVnb6HaW
         BC8hpuLvi8SoNP2xNEZfcd+drpLuH96jTvKpRU1cmK3UJwkne6GqZO8Xh46iwl/JdMZP
         K9d/VgDcBl3KwMsb6XI3dGOPQGlz8oGPLvc8TY/+ssOdt7LqL5SiPgB6gJ1EfKuUXVnX
         KzuPy7TCh/vbTwYCWli2gskap71+TSVgirMkiXzBwq1wvr7/HYT+h5OaGuRZQlt2+I73
         6KIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862695; x=1768467495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=aKa9CZCnEN0CYFCKNfzcT2DQRVGKrvwSMBkruOPWN+pSuDI2nyGkWJIY4Ul2lzV4bj
         uDrqzOgIHo40BLOeKdqQTxGge82S5UkNUVN1YTUwzfHyhDzUHswWMKtoKmIHL8rXdfNp
         IFrOiCrmgt1syTCZqxvKB2xFQp+OekpSXd4R1ixSiCISzLRtR4OE5J+h84CsF11Gwujc
         MpkIe1Su+JxBQRhCi38y2mzbMtx3xBaQxKcs7Z5cMtGbM0iMx72MuJGRNVwMtAfr36gT
         hy1vI0K9/zHNK1tOwSUcEGTsycMBwrxCFvOT8WNbG7fI6ynn0W7a1b4KgbB/+97hn3G4
         cYrw==
X-Forwarded-Encrypted: i=1; AJvYcCWNcKfCm5+bsFMR6wS6l4/TKu4+yQQjdb6JSucNoPP+gMApZSknl/rR0XQUxjMMRHlVBsrN3L/CJ6pg@vger.kernel.org
X-Gm-Message-State: AOJu0YyOk3u1aajH1qMSXGpBDEkVrqfvuCZiTCBFuLKqBI8Hwn+DZmN3
	Y7HGLrMViWlPtQC5Ck+dqRcaksmQjD6yUjIPkc1l7kneGAPoQpcndx+1uiRL/bdGuXYQ7sIfCNk
	LprBlYM2x4//b3/ecGMrFdrFrv9lBXV4M2suFemgadMISt2c5pFi05zG0X7jdVzGR
X-Gm-Gg: AY/fxX54HZBH7YTR1TJjruiS1C9dn5bbC5RidmY+hJCU3VdSYvzM225E64OJYBP7oxL
	BheiDTq5W+4o738HmSVOGHIQ4YZ6AxxaYAc5RsrGTPrubmCliYebNVCAlc8RyIPWbqi47ni1gIV
	0zQ4bGf0iDs03eJhAk+PjqT4Dfbw/sEY1+S/mp4dxEthFJcIji5tFS69lVSh9KIcwpdNBjXvSCB
	Xi/gPX5VCgc4z4CQcZmSVP60+J/Y/WQZlgW1Q3bDQevli3RZoLaJSmZYLhKVATiibWbOxDPoRjL
	+8bLNzmNLr6zVN357ruHN/Y0ekO8CNBNdbDhBkHz2zLGORNPkNrsYEsz9wSPPJTx+hse55Cx/q7
	jaUAP5pxUx3nM8emFJhtqX1cR1KibL8YDCXqoxOz/WbjKDEUq2iO96ZUh8mM4iqWnLZY=
X-Received: by 2002:a05:620a:28c4:b0:8be:6592:f823 with SMTP id af79cd13be357-8c3893853ffmr707781785a.20.1767862695129;
        Thu, 08 Jan 2026 00:58:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHE1l+9FTOJ+Z9xJMvA2OgwRV2jSHqoYIgGuLFFOfrr4dq2w6v3q/Wl47LjzyQVU7zH3mMFhA==
X-Received: by 2002:a05:620a:28c4:b0:8be:6592:f823 with SMTP id af79cd13be357-8c3893853ffmr707778285a.20.1767862694611;
        Thu, 08 Jan 2026 00:58:14 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:14 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v5 06/12] drm/msm/dsi/phy: Add support for Kaanapali
Date: Thu,  8 Jan 2026 16:56:53 +0800
Message-Id: <20260108085659.790-7-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GN8F0+NK c=1 sm=1 tr=0 ts=695f71a8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ab5uJhi7KCXt4xzmVoQA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 4Y9UbKJFm-4GJdR98wV8-1Bhnv7nlCb2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXxO4wpwNxBhpm
 bk/6AIq0LvQw2LbE7+VA4JMBU+q0sSqoJ6c8YSollO5ve9UnPqqpYj/VESr9KjpR5XAtShAJnKx
 PrdHjEFaH5OHXOF/1SY0ych8wwIgHXr4iBNmewcYilALPUKhSmzMhYHdVdvHMtbZF5Rjw9tvC81
 6o8pHl1nVbAoQ3S33JqhZY41OG4oyoVBM6ofcdK93d7Jd8lBxBVucb2uMmhBWRfe5Fk9peLq+g5
 FWHCTl+QkncHUXU5PUZ/prvErmsehPklelSD2AJ4wCK18FyLBrK/VrBjpVPTswOymfiJSJqY0ob
 JNBuXDCg9YFuvEZLxgJpzzGNmv4A3MVotQbIVL+2Rtjtj4as826lz5yGud8UP9xT6tQYCPilnIE
 ixWoZmWRCQZiRzI7wyWBqeD+35/kDtz6tcC5eHw9Hir4fNkfa07zo1zJdyxAEAcBUnnMBKS5r+i
 be26HcR/5Rkz0UydNBw==
X-Proofpoint-ORIG-GUID: 4Y9UbKJFm-4GJdR98wV8-1Bhnv7nlCb2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI PHY support for the Kaanapali platform, Kaanapali introduce
addition of DSI2/DSI2_phy compared to SM8650. However, based on the
HPG diagram, only DSI0_phy and DSI1_phy works.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
index 3cbf08231492..c01784ca38ed 100644
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
index c5e1d2016bcc..8cb0db3a9880 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -1504,3 +1504,26 @@ const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs = {
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
+	.io_start = { 0x9ac1000, 0x9ac4000 },
+	.num_dsi_phy = 2,
+	.quirks = DSI_PHY_7NM_QUIRK_V7_0,
+};
-- 
2.34.1


