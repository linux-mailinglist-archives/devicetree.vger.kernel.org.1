Return-Path: <devicetree+bounces-252672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE05D01EFF
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 98C7130019C2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2769B37F100;
	Thu,  8 Jan 2026 08:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cr+cDKz/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g3jX5XSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78D737E2E4
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862714; cv=none; b=r0+lO0YMKsuo3b/tegwa2kFQALPQs0Q7Y0dUpMZntm3baAUNTBJwwJSXsfwrSbflk1FKcEAgAaJ40V5/EpqsDRiO3BFzpeXArW6VGEW/hef2TSJ6OthAP/tAKZjN1bchZQMpWlc0SNciHMwN6d8blsIgFTngyblITLpIawSomUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862714; c=relaxed/simple;
	bh=eYqbCgFTx7pO2+x0Rgwk8N2aIIU8O+9nShTeQC9NPWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VxW9YVO1prSBzjP/71WHyWxwL4uUY5Xa+90Bb4QPG9VUtw3Ozf2vgjFefR+qS3Mye90kglhodsVvV83fLSMavdRwunrB9ZnTXUXM2K3FJh/8LgGu9LniGKmjsV/mZPOJQehk11pJs2/clHN7SKgW4CBazXOeJAuh+ribwbxvyEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cr+cDKz/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g3jX5XSp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60846QjV2782119
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AlSWjXvP89D
	8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=; b=cr+cDKz/xSZUWk6B06N+mmY220k
	I2lAAwjoK/uUXw+OQdofauEx2KHJHLu2Ts2WBb5bRLTC1fFG0gZz4hZB4WkDReOR
	D8x+tCTnwpWVWH+gYuRC43tuxo5CT+zM12+z0+LipTab+0vGlxRd1zvVWmnhUi0z
	rWWRMMuME88sXlMuePPDaKVDUhcVGaHfAjMGWC1wf0YQWshm/nE8x8k7T9/PFW1V
	LQ2I51KG7tlQU3d9LQ+k3pM4hNf4baKJsQbqM5wtYX51QxFDSCZpN84Q8His4zbd
	ziVL1uQv+eWtSz4Btaj4e1MRtbZUzX5tzTGAkfjAYJuoe5QCKRI2h/95tnQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj58ugt8k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:58:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b234bae2a7so790585785a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862703; x=1768467503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=g3jX5XSp7kzHPyAeXLeON+YMQSdMRY4nnqfaawnhKbeXiXDja51mrwTZGPgj0EUvBQ
         MpOSnUQpTgAwwi1JPF4SfyYTlC3vZwVW6m7ffIj/sb3gToPl+KldPnzn/FmsvAaNlHkM
         0bLhHCQR+3tn66DR3OL+XuGAuI5NBGd4C6oXx54fCmXtBQBrBUYyuk98M6qJMdiIqhK9
         xLXDtrLEC8xgQ74KHHKK9PebsUgXusVHj1PXyfRqrx9U2berCFMKBJzHacgUwSU4o44t
         is21kKsbD6bIgXtrmA6bD4iW1PqvxsjXuXjh1aWJJEtaDRFkX/IHYLQSDbE/85jEgu/t
         cn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862703; x=1768467503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AlSWjXvP89D8APUnrnCOFRXps/W1frFHw3Bcs+wBdn0=;
        b=uuDMSBKtbtgZnI4NIAALQBRtiv8r1XBsSyytZ5ag7XV/ZnMTIj6g0WVbrwLdqcQ66C
         iju3Fn1ja4VHfhGy2Y2kV+qavgpeUKbgQCRuic9ZkjIiv8VEWxAaHB2HZyjkY5tSI9EC
         Gl7H+LDy8A/vrbXKAWUotefF5F7lXk0sHAiAxSUhZmzixL1gg9SYPp+ej4zPUCYZ5o1t
         9FJutc/uMvzVaUjN/9CWoR6ZcLIKNkElPgqaET7ro687LMFJkh+omvDXhgN8fVPPpgpD
         zA1yVlmcjefRqpQEl7PXTRjmcvJsp0mFs3iWqUNe3fNtYQQJSkyzjYRdq7BYe9RSuL8r
         i9dw==
X-Forwarded-Encrypted: i=1; AJvYcCWvJlG2RAoSEHOiFnVYdo32kRN+cfvrM39iu0/PptYWHmKFvvj1tZ0ksYrS8DHvoOijeo6syw1iSA7v@vger.kernel.org
X-Gm-Message-State: AOJu0YykTuPnD/Zz9CyQd0E4PWdaz1hmoUausHd69mIiCQ6btl3FM7e0
	G3EZbfO94VEzJitigiKuro06kRbigWTh500PVERXIkukWwbM8FStst/K2BgPvGRSOjvIglxCZwv
	x6K1wDnWtnbhlWl4nC7gNddiXx4eNM+pAmZ4/RqOjHdIB6FzV3o8IXgEspSmfuVHvOUIAJMmb
X-Gm-Gg: AY/fxX6ylkd7pfNCO5uLLRNE2mIiCsZZcQypr+5yJoz75LsOHlB1tCbM/td6daXlw81
	+9+Sv2M4N146LqE8aQp1IPJM9oYd7e8ce9PgRnmFEmY5Ar0ighI6ziO+wiGnEtnur+cvYlCZDdG
	FEAD6KqRbFNvbzQzKKcS4zhGYM9/5GvyL/WO83fRStG4ekr5uZqVbteVbOA65k1v4l6TVC2kJRQ
	+hPFRrPrD3Wanlj3uqAQgzGZ1tkPXoY0IKs8QX4sQchy+Ed+669qfZBJaW7kE8L9d5cvDxxJcWV
	juj++DLtDwtJbFJLMyo5Hm0gkfIp0UU8qLnMcJxWXfxcBHS9iQ6UdHlArlxR2tMHqHmIaSeltSC
	xCpNJ0PKwR2nZ2xyYx0ZUMoxTcXIkAjaxjOws1EDZGp0660N3OUIDHiUNypHjvIcKTjY=
X-Received: by 2002:a05:620a:1aa8:b0:8b2:664a:309b with SMTP id af79cd13be357-8c38941c034mr652182785a.84.1767862703415;
        Thu, 08 Jan 2026 00:58:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFd2KU0rDWQ/R3b6xYRGG3myKrYnDS3p+KmuStEdvZ5CG3nEDqVpppZIpNi/G/SxwTUg47LCQ==
X-Received: by 2002:a05:620a:1aa8:b0:8b2:664a:309b with SMTP id af79cd13be357-8c38941c034mr652181685a.84.1767862703011;
        Thu, 08 Jan 2026 00:58:23 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770cc7eesm49680326d6.2.2026.01.08.00.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:22 -0800 (PST)
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
Subject: [PATCH v5 07/12] drm/msm/dsi: Add support for Kaanapali
Date: Thu,  8 Jan 2026 16:56:54 +0800
Message-Id: <20260108085659.790-8-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfXy+2LujbC9Gfu
 wwJnjRzBVi4W4sSkZxpIVrNoZvqT3K5Ebn2/4sfcSDXGI6pVM7Di3p6gi9AAFP9gLXjPSh1KwKy
 8GhLrMTnbY1xq7SjvZZ7pFESzJ15pXVeiKPncDwcAyJ+29Xo3KPXnc4l/XFsI46lsy++jYOeGWJ
 klzJgZR8ZNP5eGVEpm/n5GNNJr25Z46vMTQ95DnKYg87XHoEdgZTJtgqBLJI6ebv/mQgSnaZpML
 MAx0jUQ8NLW4+s61w1Qy8Br+HrqKjS/zdUq3Te0tEKXg5lfkWPd5k1A9trrN+zmKOyonV4TDDCR
 V90S0bAVzzbZ7Gi0FSSQMkbQxo3LOR69ABf88vm3tXn2Ncc6R6S2QPdV4aegrJHT0ZBltCyCS/W
 bqlJ3mhJkrykfO5xIzgKZsgKA/zfJL9fi1vyghvhRuDsgnlNNSPUXlCzPZ7HGgV+dXYHsulRKBA
 pv4WiuOPxkm5CoR1XaA==
X-Proofpoint-GUID: nAmjD0R1e6QtPo-FLL8bZdp2DTNkXawN
X-Proofpoint-ORIG-GUID: nAmjD0R1e6QtPo-FLL8bZdp2DTNkXawN
X-Authority-Analysis: v=2.4 cv=CMgnnBrD c=1 sm=1 tr=0 ts=695f71b0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EGddA7oXPexY6v9tJfMA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080059

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


