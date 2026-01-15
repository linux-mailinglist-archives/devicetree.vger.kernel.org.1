Return-Path: <devicetree+bounces-255492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A5DD2397C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1AB830AD24C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9E035F8D2;
	Thu, 15 Jan 2026 09:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bSL54IrZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S77YNSEV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AEE36213F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469339; cv=none; b=N0sIKLtiAZrMp5hdKwGNn82mnynSaKOoyTV/YE+0Q2AH3Ef44Ndt/fQf+pbXNE7+kRfUKrZzl3tzKZ9EM/OUUuavEj57S9NBEdQCoSXEe2zpVKQgRMZWr9injJdYsTtQu1+qYguLo2nRFrDRQZ+WgRy4nZWy/2CIiSZjLzUpvEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469339; c=relaxed/simple;
	bh=GPNHdwwPQhx6RHo0jHkO62FjrR7S3TzTSqPLz/MSGkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ad1LLvUKiqaa1S9gjL7bNuMljPynCWrnjP2P6QVNUDvximxValyLdrwS+Gyl2zRkWhMZvxAX+yG1kxub3wqTNhAueT7ZEb02YI2yStAgq6JbQgbhZytcoPSEk7BRnEkLyPO9sIIOotL6sGo28IW4PhQQsOK/G1DUR5akJqgEO1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bSL54IrZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S77YNSEV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fs2Y3419571
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FQG5BqsGnCi
	ZEwc/eMkHo/ya5niea9nDglgo72tq9vo=; b=bSL54IrZ8IjgoL0hDzLC/tsFgeS
	U7Uv1gMuMaWXVV6W+ovoAUDnbTz37wC6Tz17xyxr+wA0NWvNIw6v8nAXthy/VqYy
	RcswOitxtZNMyMSHvm613gwSxYBDT+mBAocM39MR4sqJdLN5/XyYU7TgzEX+GUG4
	J8Hv5xvMBQFf4rMCersSjRosn5rI7TKmQIcqf69DS36Bj4Z13G7NvxerrNXsAZV3
	mvUkUaIHToHAtCEleFa1yDSjxH32lzp65wao3vfshP+KUici1P0qqbdkiJoAacIF
	3RaN0dFkS8BZ3QWzbW+bv8vlUFbHcWJfPFAe1buHuClyFDWZVwSMoi2nlUg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj89x92-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:56 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88233d526baso26273896d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469336; x=1769074136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=S77YNSEVKK54BS91LfGAQsYItfA900szwgrAtldps4iJ4jNgdzFpknSX8CApTp0cTc
         euzktJ53jjki0OUMBW44QiadJl+I6xC61RmCKdvM2Pg9jv671y/aKdT8sJ4ATTCt8UvW
         p+wq7s42zM+bfBd6XgoGY3pO/F7OE+DgvYZiD1FcEcCANifFLZmWt/CQxuygYAWNG7EX
         ZbH7rj/tbGJuHSPes6a2rFB/IvcZsYlBxyRhQxG8LGnFzKA0/A19XbF8/K70L3urJtPm
         kBOcgB16t/SjlsXkA+FkPogZuPi9TybBFpl6ZoQdmkylwRhT/XIgC1Sj6oRpdgiLlkLD
         zvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469336; x=1769074136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FQG5BqsGnCiZEwc/eMkHo/ya5niea9nDglgo72tq9vo=;
        b=B9tT9Tv76g3LClan/M5eAYxtgyd4/2AQohx/qYRQJ+ZECKEUS/2WBUoRt03Qf8nh/o
         +xj0glV0QMFTHoYFKrtKzooQWYafTzQJdISj7v4+/Y6QCiFjVDvU+Uk3i/rZdGPqjVdV
         RiCm1lt2tmSE4EOSWl2h2Ma9gmkrRX4YYUfN9FzzNXWBJEn79riW8G6cKmVmhB6Q1hk+
         Q2yj2ta24lD+6Av3Uvxa+bNOPnw11Y/eluE+WwTrMJ3YZvWYeS/vcPfCEQ1HER6wxepx
         8lK8ZaiSkQfN630HBiU2W8P4NtTtfp1qa8v7MpxHyZHBVkyWr/TJlPFpKWqqY1zVmjgM
         QdnA==
X-Forwarded-Encrypted: i=1; AJvYcCWUsFRvpYRXMs5MZShnZTEoqUre3M44uPhjm9VQPONLsqHQ6zW5YGspaO46XYUIROxzkf4yBBvcLCx3@vger.kernel.org
X-Gm-Message-State: AOJu0YwaX2V7lnkhE4IrDnfDjJAwUrOzhgQ/pVYOveem7oIn5Mzp6Wa5
	FtJuA8aD2k7VXahHu/XQkhGpYzl+6CiqUmQ0Ur7Stux9RgsKGru7L2yXaGcG9jANXJ7cY0NPWl+
	7YMgKsm2opNKmvyyb9bBiJ+Tif5o31Rs3zQNzbEheG9KmAHnPeCNQYXnKDuowqhFw
X-Gm-Gg: AY/fxX7o73yGWX1icQpYElHUNW2dRCzEZXPsD1I+QUoYOC8ISfPgmB+uT+r/JZikbeW
	J7MmesQalSLEY5G8MzO9EQxLa0iRfd48yvWN14VXYt6T9nrSoH1Ka3V5wTMZ0Wt0XW6/No6BY3n
	vTa71up2Y9mNIbXcoy2GC0XdKzLeK4SHKMEKZ7iTWluQ+H0QzxHIdDs7DaKpRhgu4UEXD29ybhA
	4dwFqJqKr4+Un+74J9B9TY9yiNCehzoiBFHnAppT5e95g9iYALcOnr2x2mKC1PlcfmSCm1JiWSS
	Ij2k82rLf6h7LTbbHaLCZjt0SmjS4yQzs+3TLXrN3A3GiaPCO5xQPeh3RfuzW3uXJijsHSKUgE+
	M4qHjOZ89C0bv6RYCtOTlkjSLlwx1SFHOWmNl+tkjfSgFhFKlzzwKF63zXXVemnoP9Xw=
X-Received: by 2002:a05:6214:1bc6:b0:882:4b1f:a812 with SMTP id 6a1803df08f44-892744503e1mr88982786d6.51.1768469335834;
        Thu, 15 Jan 2026 01:28:55 -0800 (PST)
X-Received: by 2002:a05:6214:1bc6:b0:882:4b1f:a812 with SMTP id 6a1803df08f44-892744503e1mr88982606d6.51.1768469335467;
        Thu, 15 Jan 2026 01:28:55 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:28:55 -0800 (PST)
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
Subject: [PATCH v6 06/12] drm/msm/dsi/phy: Add support for Kaanapali
Date: Thu, 15 Jan 2026 17:27:43 +0800
Message-Id: <20260115092749.533-7-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AfJA3PRCpkeQRg6ZjY7lmAFjucVhc-aa
X-Proofpoint-ORIG-GUID: AfJA3PRCpkeQRg6ZjY7lmAFjucVhc-aa
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=6968b358 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ab5uJhi7KCXt4xzmVoQA:9 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX2/7YAI/sIIV7
 q7Y6dFjUoPlEfAwtj9GvIT6QUzqsE7fNVwqGkgbV6QAibBH/kDxxF9I8FOTDusJvkxRmuVQFnYX
 na1wY5i38Lw2p65Bf8DC/L6LsPVNO7aivp4CfXR98AAOvgeHJu7wnzRfHdFfxn6in5IzMDapec7
 Fz1NbzQgMKOhcEbwBHXyGZjE5fGpMxp+4vIBM+k23/+uNjT3t4Dgyutn/n2xXDRSrwCYxvRQQVx
 Js63z97J3rslbVWYRacfXHokiv67mJcJG+Vvk+s3do9LDnlkVkKYAJNTCM6UG+At2GsriW5gJZk
 MTksPyzdVVmSOh0VTJmzLK0wYCeAIMnJYNG+2bzP4AjyylhmW94Hb91MRQHW/vCg9U5p+VanG04
 2cCvqe0cWXKGBiJILgEgKZ2wDXsOxrBPXF5Z8OVF2oIy4rufUVfucBoGOjX3o30HRh3Jq3jgCC9
 eEo2sVC43ivrq5KoTfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150065

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


