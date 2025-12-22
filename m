Return-Path: <devicetree+bounces-248779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCC1CD5AF4
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 204EE305678E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD78339875;
	Mon, 22 Dec 2025 10:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lW4H9h7j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cf/nV4RN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC31338935
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399108; cv=none; b=COmLN5dCbKL1Y1bjs3MkpYLUKG7mverKRYkzWP6XhdwFBp12YO3urUG08tpR+9/1Aoic/Km10mZdpu0aK6TWcwl1v++axdkSDG26IiVdn8WBuaeOY5KgCPjh+ZUhHaw3o/ulKT9K8GoBAhNkQingJ38soETYgr0blE5f8Z5vNXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399108; c=relaxed/simple;
	bh=GPNHdwwPQhx6RHo0jHkO62FjrR7S3TzTSqPLz/MSGkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lTMCEeFZ+aLWEmYOg30yPBCUCwvySReu8HuVCHaKDaFhvq5EfSFzk2JAIhtV/zpaCTMwpEp914vR8aHxW3PmkvVTRKBBdJ+CbxCEzxSbquSZHWpuh8vkGMPPIoQt0qMwCMa8mDcE+s+9w/XZSjFYvqRYbPP7/Bs5tz7nO6XgvvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lW4H9h7j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cf/nV4RN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8HpSY3841451
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FQG5BqsGnCi
	ZEwc/eMkHo/ya5niea9nDglgo72tq9vo=; b=lW4H9h7jjvTU7HPAwzt9JGC6fyY
	d0sQxoaKD15QBLsBwb2EIIaSWrrYDzXcC/PIPMbEjWa4ESAH0bDvn36VRWHVuIEc
	0fC+bfZcY2+/IqcVbAt0hJhohcZQrMdJKhUjVXQfzR2XRIoN8z7j/lRwyxHvHqCw
	1Xjl4njxNzFmWmRZnZ0ZKbBzzOZow4yadZyxAQPqInaN2gOzJp5jKwlIYu4ejGQA
	i8fCHRz11fVzCw2EVCpgQ0yhCbVIqRy0N8ieXv2PoMEsHPym1y9Bk8oVWzd/p5g6
	1QGswrZJSJScH+AwKYS9ziC4+LWZXfbbGP4glPo3hlytpFIgy7JEGo4l+Wg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry4m0q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:25:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso92347511cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399105; x=1767003905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=cf/nV4RNzAted7lyHqvHewjy67mAcAoUpkj03kIkWRggICewEodISqDCTZQnVbpWUS
         +ZHHxAfZa6q63QEOSaiIKNxcV8cUaNK+9NlIrNOyjnwgS1cVlQsBySwCAwjVgD0/EHlu
         os9NfR0JB3uLpeqw5YLfTbYFW81/QuPrDe0xyrSDF/snauEv/XGS4laKOBJ9dmhloXWZ
         o8FEXtdCJuynG5xKGC3UIQ3Z3zgep9PavYRYHHXJcv8doyNSAPa+u6pKvzR+bDO8FX09
         kXjvoW4CqOrDoAB4R3XoQWS5EeV/lDGavFZKqvg66axtY55FuZdrCByG2GBeD6O50WM+
         pZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399105; x=1767003905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=i8hI599mNYxkOMRkcp0Cw+DwHEMdxUoAT7/yjzXcsGiQMgQNejbMuibgOTPoFYdzYx
         Ap2fePzDRbFUQxGhXxalG35eFCzpbnriEzwmaO3nLCpTgyGo9kpsUVxzI+2cU+J8zAZs
         plp6EhDLZC1tI3pt54kQHiqGoZOdIo8wtnHdALdbUDWk6KBrKRGRVTHrB+J+Fbb8KR7r
         gY/f97rrdPikG6LUBykQPL0N92DtI0VTF7JLma6D/YIWvX1AWnI+0gSToRAcJ/OocuUS
         4nl6aDtapqFSJGQY9+fJBOM2qtwN3lW2npBUIF65XSd6sRPPpWEO0LIlR9a8mgiXHb4u
         Gilw==
X-Forwarded-Encrypted: i=1; AJvYcCXeHuo9KJQOAwdC+ATvqsIZFz7YoVjDw+aQWcfjDYNHsahLJqUmUjNIe4zgHsb4aRKEg5vKtuMLJSuO@vger.kernel.org
X-Gm-Message-State: AOJu0YxqqPAzaR7J6C4n5ih8B0UwLHGn5YfFeKezB72lpN9XlHwl3oZF
	6n/XrufnyUHHxK0ip6Reh49hFudMda8xk/ZURnOMv++nqQ2350aBFZr9G/dRG/PawHfwTkXPRvD
	tMovB93URmaiVPowF5aq4ecAV69ZxdDyjs2zC3fGzHB1KS8igx/Fr0KyU+s9pLeuG
X-Gm-Gg: AY/fxX5zk4xjmc0Caogs3V3YCLhskO0vjY1YZLJPXFVKIWh79xuyQifuMfY4ynCCBd1
	R3b4qG3olLJjjdaJ3oyYAp6gcDktT0TLPHHK/d2yhT5VDhnchy+NOh9q4WdzyvPbGeUubTEYbTn
	RHncnMcp7EZ3BqYAuAtamWZdzYrn4rT11HHWpUQYrEGrGAMuI0ASZJcBHp87Csxhr1PPKJKudaq
	XZqQ3c2ADExI+OseecNcjRueo0L11ZcYFJO0OIHGsEPcih2ZPxQT48MJEJ0+T9wTUPiqnfJuzJs
	vCJyrxDrvLIRt2ENtf+uxdm5GhGnBMNfp8ujOTgICu3JxJLQ/+PseKV4+z2WWLprIkQFvJOEY84
	fENHVnbmvcqr1fx5+gPwOPbV2rEWsvQ/ibnhtdwEhDJhDH4pk9l3iOsy707PVODaeDWQ=
X-Received: by 2002:a05:622a:14d2:b0:4ee:739:142 with SMTP id d75a77b69052e-4f4abd9950cmr152195851cf.51.1766399104804;
        Mon, 22 Dec 2025 02:25:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHg72loQVQ3ROxbdMldRDmJqXKjwUSCWfEGLH0PRiH86vimyJapbk+lJWkciAVHhCTHfsSNcA==
X-Received: by 2002:a05:622a:14d2:b0:4ee:739:142 with SMTP id d75a77b69052e-4f4abd9950cmr152195611cf.51.1766399104312;
        Mon, 22 Dec 2025 02:25:04 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:25:04 -0800 (PST)
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
Subject: [PATCH v4 06/11] drm/msm/dsi/phy: Add support for Kaanapali
Date: Mon, 22 Dec 2025 18:23:55 +0800
Message-Id: <20251222102400.1109-7-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=69491c81 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ab5uJhi7KCXt4xzmVoQA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfXwNlrChb8yjIr
 MVHbSDKJtPTBskAWf6TpgZVxNLMIftviQtJQAk4IB9j5ovtVkdj/A/wp2nwToQI/S61uQcTg99j
 2Cwilbe5Fs8y8Ha0QS9OSnsSD3atHcr27ooOgkp+gZm0oz2CDpuLBgzgPGMOP1X2N3gTK0++3lR
 Z7OltvX4JzhvE1yUgO8pB3zzOp3+bAOs3zK4rSc0VDczaFTw1/nZhQKWlN46+u+TQ8Dq7Xu/GGd
 amJ/gpAaOVGpiiRT+cihftMh4yp8U3sb0F7eXj7jA0CmCvB2TAnB2IqXOjrs/sfvBtWVwf18t2B
 n7BueZ2l7lx+U3vSFpQs60GOQFMpFzMOOk0SzlPB/grKyedXT+43M48b+LPNYWqFuR4uIXntziq
 Wr+LdCTDoH0f9Q0H5GeUQkOuPUvrnHwhZbXi84yyYt/5y0P/cmMPh/T8yUSBPO2vyGAZTaiC55u
 SKsUB8tayQx7D9ksPCA==
X-Proofpoint-GUID: FytIrmZ9Srtpw45yy-zxHLdLfzIGtc2O
X-Proofpoint-ORIG-GUID: FytIrmZ9Srtpw45yy-zxHLdLfzIGtc2O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220094

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


