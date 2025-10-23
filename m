Return-Path: <devicetree+bounces-230098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E9CBFFBD9
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0A101890203
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425012E2DCD;
	Thu, 23 Oct 2025 07:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WXHjepf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF9B2E1C4E
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761206141; cv=none; b=TAC0Z5kXGSOn3yd/9TcvaYcfu679pPHVlxe33FudaQUqFxeDDXOElRyhydFhyBLnByMsdY7IJPyblCCt6i+ByTNgBOSfOHRt0mdbTgpdtmizwFgr5UCautS1yqFCIX1oDpPlBzwGigZycRnp5sht28LDU9QhlbxMOf0aRX9U/hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761206141; c=relaxed/simple;
	bh=8rdmNQAo9Bd+9bAr+NPJwM1gYXFJ8g2yQPEWjrxSiZ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DVHep5Pwte7sO6wQ4ofNF7QCbL9C7fJrj02b6fqDVR5/fFagDCyWaqJQ19aNfaJsjgK7X4WG6qsNQKUWC/oRjPTSlNw8fPnYRyQisYJ3cJ4+4fjRVaAmrExv719GnOl8zxxmk9+HOs2QunTsUG6SaIDxzMJ6spToeaEKkJe2NRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WXHjepf5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6WcTU015966
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=w2fC93DLUlG
	GbUXGQjHhV8DdpBbQi0xLHsTL8o67LJ4=; b=WXHjepf5MYu5cijtLVVBVnTLOW0
	byGMo+foJtSjR30FlSqtQli1zp9opvPqeV2Y4E4KXpRvOdiuB05i6KenLguS3Aam
	xdK8BY5Worl/S4qTrfpd56v3PzLukhHL++qUa+DMs8+uayfUwbcsCb2SOnymMHFo
	1+rGKCfp8+ofdFf8uGZXvrCFtvoA65Gt5sf7V172DEF3WWQGzwud9eoBgxJ4GfNJ
	5wM1mBfikEc6m70E5vFUvemDiGRxH/7BVMVD8FHcTeBasz2WEVoHZisveWNSHxv1
	CLIoTAtAp7aY4gCA9b4WDkD2lzC6tBMAdtzfDRVU6F3g3ao2ZDTHmdyrhXw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsd4cn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:55:38 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33bb4d11f5eso601592a91.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761206137; x=1761810937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w2fC93DLUlGGbUXGQjHhV8DdpBbQi0xLHsTL8o67LJ4=;
        b=Kw6AKZ0Zxfkuzaq5KWNWSQt0v89JTkkFOGRxSe50yAdTGbEq+ZF2xnttsNb+wMI9MB
         jeL9m3ikYG5rPAKRzblxvZGC8UKcs5vrvmnzmgDaCsyzWX3rgNCo7V0cMm9HGNn+4y4D
         AfkJWGzvAPPeEFbvTJe46nTWynA4+MIkqSK1vlG262J1I5FHyOdH7AqVqZKd39xFnPrP
         jhIJ0Gh7yh1zQGxg6T5mxzQLjcwQF0qnnwCqBIkQMglTFHx1eZoXV3XbEc6vTCUOnw6K
         BDAvKpU/XGzr6bPVXcYEtZjSBocyWKhaT7dUKvULVtSaXUv9bdyiRckhqfgKLeHJ9NF6
         E8cw==
X-Forwarded-Encrypted: i=1; AJvYcCX/0508jBsbltH8wzViV8GCKR1TevvXBK6zGIwf7ZubtzwLi18jhMkGnZxjWEZW6srXjl3Jc00xpcjy@vger.kernel.org
X-Gm-Message-State: AOJu0YxfloMvZ9V+pWaCA2K+SY6qwQCsemZUvwTDRe8putFSNDXwFw/M
	M3Trqr8G0Kv6S9j6118mdgEw7RDECInmG13OSOVHkaWyqNH2T/XOkAISC9j2dXE2ccp5q1U9Xh8
	wWLL8wCZQEruSlMCBDNKGXI5xgIkJeG+glLyQOU/q7pccUXvUkswGRXSVMChbaVBy
X-Gm-Gg: ASbGncssvpHWAgmmQvJOExuA6jOB3pndt1Yj9dXbUSRu8fmesG0boIycqv+GbnIGogN
	sbqAIazIZOd2NxmxmjlQXY8R6mIsvLwmnzA6dA5/s5q1c4o8qARlvd4idiDZFZd9mqiH99RL3r+
	4KYp61RqdaJ5WYnhAUl6LQPbs9UbQvwsJ3Rra2u3XRza84PpbqemUFM9oPi5NwpUMkpf8sXpNzu
	QNzzE+cnYSEtismwIG7GOSID3Pf6Z2E1gCr8Ir0UD1g9CJfsWsZ6VjHBMG/fPWEKazrGvV1tT2S
	HXD9z+3OYdsF+yg2sThSKIF6kSWHcLH8xCJvN2IC2+ZyqaxeCrZDvzQ6QSzT9vtzLwAdEkOjs32
	kQNOD93KBpFWD+EpJ9rcAVH93Fd/JrcoDBVvHKy2qxGqz+Jmdsw==
X-Received: by 2002:a17:903:2310:b0:28e:7841:d437 with SMTP id d9443c01a7336-290ca121206mr291270535ad.38.1761206137439;
        Thu, 23 Oct 2025 00:55:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH682hkGWt3dvBEItqoe9UCqS26mzJjNqbQjGPbVOBXOGQ063Q1XYvwVWIAZvw9Ki9Hjwp2hA==
X-Received: by 2002:a17:903:2310:b0:28e:7841:d437 with SMTP id d9443c01a7336-290ca121206mr291270225ad.38.1761206136943;
        Thu, 23 Oct 2025 00:55:36 -0700 (PDT)
Received: from yuanjiey.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e1231b0sm14371265ad.97.2025.10.23.00.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 00:55:36 -0700 (PDT)
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
Subject: [PATCH 05/12] drm/msm/dsi: Add support for Kaanapali
Date: Thu, 23 Oct 2025 15:53:54 +0800
Message-Id: <20251023075401.1148-6-yuanjie.yang@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfXxtYip9e+2Dkl
 7xvIbaaWoLKzLpAXkj8D4b2Cq4j6jglLw9xb5uuFoG1QN0+w8rhh695eO3PJcm4kLIQaO55qVFG
 9vPoDUY41lqkfnNlRtn+Na+/FbNWgmP5hHF0gKxCtQ5LOHD6txLfgTRAO+cZdF7CI9qLjYu73Mo
 PA5ZnaSu3ETi02M4655QmBTC7K1tnUHmw9mRY4XOscAchVR+G7Du+HQ8DbcMde6+Pzy2w/lmPHG
 NwmdC1VpjnJapdNkZdAU0EtXDGOF7SSZmrP/u8D1MeKmOKd9UBB+CVoYcy9zWEP0V9sXZy+fEZC
 RlxMYcwe+guRUyKFrdAwJG4i0+Mevlg5aXxE5USQZEBtQ+NvcKXXqwPxSAjQkgektQ88295OVo3
 Yap7mWUJr5B5YOoJN+MIE/rnETGfKw==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f9df7a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=EGddA7oXPexY6v9tJfMA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 93AahrqyZuiyefPyHipdw7D2E9GZGVIG
X-Proofpoint-ORIG-GUID: 93AahrqyZuiyefPyHipdw7D2E9GZGVIG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DSI Controller version 2.10.0 support for DSI on Qualcomm
Kaanapali SoC.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
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


