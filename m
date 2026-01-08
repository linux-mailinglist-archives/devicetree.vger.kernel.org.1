Return-Path: <devicetree+bounces-252674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE6BD020B0
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 975DA313BF20
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAE837F757;
	Thu,  8 Jan 2026 08:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EgyO5cpL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HWAZXXmi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF19837F10E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862726; cv=none; b=kZRfsCkOOd0We315KcDRegReXHoA2A0cz0OYqYIhnGaYvAfdSQk62pu+frzbfWXzp4bVgHdUt7xysHf4eYt8+u6jX8H7S2KK0/ZBW8jPi5qR1dkfUngv6Ct6Kk6PrPLiWmOPeeSs5YMk8JCINlZwwho+QqUyhTNLRZcZ590559o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862726; c=relaxed/simple;
	bh=s19WZGnVsjnU3CIa2pjMzvDcR1778Z6ip689C/D4ewo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pUfRLOFv0PJbUBcUlOIrK7BABwJFoURlSU9IPZr5jVRDupeEG9xz/h1zQz1h3Abd5qPUFtUQ0SL6HRVyOI8CMP1WF9CFCFm7+O9dWWJEr8D4RcJuUaKYUf2bBPEcflO3ef8jlpnw8gLBm4N+U9UKoSTY5+sMl1zaYFopvq030aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EgyO5cpL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HWAZXXmi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084F7kv2593341
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I87OukHNOgS
	eTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=; b=EgyO5cpLCmQJtQc+ko+psolgag/
	M2vuNo6IauR1zeaA6kYPYLp2Q2nwQeid6mjhEaYQHvDr1hLjb9fwZv569AcmpHEF
	PFvUDJN+5J3RDHVFQ9sEoAQ/gZK26aZz7p+MxlFwcr86RsI8YsPgEc1iKqxc/uM8
	aQIubd3N4+dCAJDEaT/U9bmUyq9U5tflRFZipJf5aA3Ip2r/CgJg8AlpDIdJdDvc
	frNhdSC2dWGB7YkaliQrjzDDVSp72+vaRpdp9NZlNjFJPi2d5HG6Zz/XvBh8T5ho
	B5WxgrgGa/VTR9+dnN085pze1P48aPtK11QcqIx7MsjjF3d5K2EDCpl03gQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn29417f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:58:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b9ff555d2dso830659685a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862713; x=1768467513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I87OukHNOgSeTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=;
        b=HWAZXXmit2/TD0amuDHNrJ9thK5N5b2LZevuHlyUgMyXV9uF6E9sWfrdUlZLed6a8h
         iVusDKD2x8+53AvGp0LCRCUjqjwM49IEfioWONphlyeBo7lSH7sPfWZucBiulxB0pRUQ
         cG3UPerikn5eZK4Isue19cy9eViErgISZyT6fX7y6JcEbGg0LB+4QGnEv0OHUmiRlOGh
         nJknwDd3KH13RzD+xycIifBHL/j9Iq8c8Xj4hnwNm5+1SZEqM1TpKbXW/yxJkc8xI3yH
         1wF/UGmz9vvfh/cn5tzUHEnmyr8zhPqugCbval6JVirB/dboisJTgwbw26673IJc2HiI
         yEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862713; x=1768467513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I87OukHNOgSeTgoOXQALSi1N6P0XQunpMCBrwQ4g5NU=;
        b=JX0w78WLW0EYK6EEpvVZTtKMVipkNfxf5sO5CSz127EmkptrNxU5KZESaZbwbeC31i
         dUti9gn0SS/FtA8x4Iut3B8B4RaMi/FEONl+W+WU23W4GZwiZZzVLwnAMaLB2GF/u+xA
         9CGyIYSWiK67sXS28YftxbdDduSZnPqTblc0GZQ7XrQ21wlbWEH4CjC1ILPjoV0TfSvZ
         0bvNdjCKANk/5QJmwGjvjVgMmfPjGrlZICL/MjCsBv3uTRxi5VRpZ4m6ss++9TGe1nB7
         RMbm9cuMTOJEkNv35Jf+ufJXZbBtBSs7bI/+oUxVGhWeFLDpI9i6umXGSVir7yUOE7om
         93IA==
X-Forwarded-Encrypted: i=1; AJvYcCXC2bX/sBfW1ntIuSBBaKS1MAP1IwtLwzVuRyWPQTp+qrBndBjumqUvNyk+3AzXd88eUvXlLC8gCyiU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7H+mwlvMWefMa8yzcrSwRi6hSiGZ73M+NPsOsiJsarmz5kwK9
	tWyH09fs2UpuYX7xcgdROX/tFahcwlLUZiUthZARrJpuKgMMyBKm9GLmdLxGaZqAlGXfLHwjWyV
	dnYsOsE1/t51eYsRBdv5k0+GduutMq1qJejpbqcHm/9ZoYKScUAXgQc/o4E7skS60
X-Gm-Gg: AY/fxX5fe+VeOBx5DK64M0Ct1VznLCgAFYQ+7gVwx5YVM23Ovkv39s8syN+fmgrNypY
	EP54cWp1cX6f0cDQRanhNvpBpOucPp2UoGsyQLR5KrzxerpvYkiYy07GJbT023SulLYaxRef7MI
	Yq4+z4+vuxBOC7BYg/06xZM4pBNeqTLcislJnDF9CSbxd+CkEjsJ4c5aVF5WEBcg5bocm6gN2Sx
	21FrlbQqbA3vxq2tUcI463ukm1waWAG+9b5Xu++4N/oUSOmLcOtnlpQofU8gHoX+aChq8w4WjSF
	MoDwavaKjpUz6sk+8lgv0KJXWls2IAk3SjjRV++Vmm6HoKMxA/uBucqXqO+iw0Klnq41SVZWkJV
	N1fwu26U+aD2dmYH6IKe4NS8QYNiHMfenqLoMBqMpQyR+wKGgnUEIPMLCrALsIaEr9uU=
X-Received: by 2002:a05:620a:4041:b0:89f:4306:2a50 with SMTP id af79cd13be357-8c3893dca8bmr714703185a.42.1767862713566;
        Thu, 08 Jan 2026 00:58:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFfxm2xgH03Bu5IXbZUM440zcT0kVGZx2cBef6lPp0OA3bAIQjoWiw52T8xxLeMMMV86G9Nhg==
X-Received: by 2002:a05:620a:4041:b0:89f:4306:2a50 with SMTP id af79cd13be357-8c3893dca8bmr714699485a.42.1767862713159;
        Thu, 08 Jan 2026 00:58:33 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:32 -0800 (PST)
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
Subject: [PATCH v5 08/12] drm/msm/dpu: Add interrupt registers for DPU 13.0.0
Date: Thu,  8 Jan 2026 16:56:55 +0800
Message-Id: <20260108085659.790-9-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: NgFowA1MlbdR_x3EIUWqOvgOOTT3-Gwd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXxR0/QZc/bs2s
 qeaxLUfTHtDwpyG1zi1XIloWAbip4+mAkWcDldagMOPhNsX3PDPWgFvt6d6D+M9bpGGmguo9bSu
 DZiKv2OVWGIZUr1hxZ9PdTG22G/vAFnXq5JXUcY7RdukAOpQW4BNN687eTfGi+fWjYbINxTabo0
 6ivPufEIdhW/dmQzkkzT4hPfBlD2mFgKVrFl+qkFhxfhRk57mFWp/UpLPRzE96W6e+sMgu4me4b
 Nu9hzqP57Jos2H3lJzMYA1udeIOLFLT+a0DNdUUcLMcwrPRtkjpDlagTSB5F4MuO586Muvy6rp9
 ML87EGAjb0Q9RttvcvkQOYaO4Bble84vKYas33xNOmzimNbVO+ARWX6x+IbIeufy+/pfXbU42S9
 J/IwTPC+ecHBmdGVr4H/ggr+xHvxLbkwra0YBblYPsWvl+CfUpBA7vlxYsAWgdSeTGKnvNg1/6d
 kgWSjdFWWGXWAVzcLfQ==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695f71ba cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RfJNy9JZAWTFlj1jTG0A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: NgFowA1MlbdR_x3EIUWqOvgOOTT3-Gwd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080059

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

DPU version 13.0.0 introduces changes to the interrupt register
layout. Update the driver to support these modifications for
proper interrupt handling.

Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
 1 file changed, 88 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
index 49bd77a755aa..5b7cd5241f45 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
@@ -40,6 +40,15 @@
 #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
 #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
 
+#define MDP_INTF_REV_13xx_OFF(intf)			(0x18d000 + 0x1000 * (intf))
+#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
+#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
+#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
+#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18d800 + 0x1000 * (intf))
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


