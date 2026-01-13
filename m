Return-Path: <devicetree+bounces-254422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D71ED180E5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A10663038F74
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054A938E12D;
	Tue, 13 Jan 2026 10:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k4KXU5CZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z9jkLibX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0AE38BF6C
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300120; cv=none; b=DCxvFRDFzwaz/yHYf71HQMa8jQFkeHy+9CZ7+UcD4dctQ4cwDNfWm36Vm/B1ZjSP20S5oMeMgqlrZZ1qlBK9qZU0mZrWwHgd1E6vhKgTBOlIiNrQaQsLL0NbTeU+nuG7vNz/beYoSQ2Xh/UC85VYTgYUFx2FINm2XoFAgPp5gYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300120; c=relaxed/simple;
	bh=HU5LADSrpxuK1KdyyUOHGH8SfXv4NloG4/q6gIT2Las=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m5fYNSquMIvq7jSAjzDoIxo3udZlQ3mNyUFUL5ys4ipU+1+DQZcSP0+5OPPBcWnDhZnxQwEPgKnivTZhZ/NYt42b5zht0RImhk34tFBTEapC8vPMN9+uBrqD8D6vn1elrc0PLSZ4aBZQG4O8qGcqfA8NN4x9SrNr9Fw8HvJIv3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k4KXU5CZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z9jkLibX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DA5q4g3799036
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IUtMrQiaUIFSrShIi4475b4BJOl1t50l20lRUfuc3xg=; b=k4KXU5CZMagTEL7Q
	NFUKsWXeFfoU9pxQ0py2VpvczutMUXYDEX3GK/I6GqBE6ujxUlpaDsJkKoisRLog
	1ZhloEcxXNTHceiLmAYcAUhx3jsueCfXKuqNOpwcr9vyGjG0oP2JnLmohale3/Wy
	CqjPc2LyszNZW9qqMsHnl4Yv5lH47xNI2CoAOudLynv3imgLE392KDXY+bNq29CZ
	6LRlQTvYzh84ZVnKsdROnEcxFZfts5Tjx00aVlbKw/CSfSoon4Ej5flWl/ZpA98r
	f9pMrBhgEIHoO0tjrnj0tHRKsvrIhd2m49gDcUGhs+7qakhug/GCDU5HpAcntWsO
	nKdfpA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0dr2d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:37 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-11f3b5411c7so26548418c88.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300116; x=1768904916; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IUtMrQiaUIFSrShIi4475b4BJOl1t50l20lRUfuc3xg=;
        b=Z9jkLibXfGVw3OjaptWDwuZEb/aq/sSq6Meyn7qFU84VZnVZ9Gczg1MU2QLufgbqYs
         SJ+8CVfkvJowphZYsWborJ451Jqa5Sen1yyb6yRvjXx2LbLaRMe1RZRBnNOElYg7KXF2
         yf7W3BNl2rs85lEDoNdfktbMq7h2bzKGANdsCXqQIXRS0wt/Ez1SsvnyHRoEzH/SWrG+
         D60LobB9Gy9ym08G5zKBfsYJcv9kXI4jwdlz7exErPn9RnZ6eWfW4HYb03BdHLtwekmh
         lI6nO+UuzT/VJGCo0KJOit2Bu3ybBwsPh3ce6AwNMHs+hAqh0FVNhLuTD+w/AsxGBCFp
         Fx3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300116; x=1768904916;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IUtMrQiaUIFSrShIi4475b4BJOl1t50l20lRUfuc3xg=;
        b=YRm3iQLcEyAA1Ti1KU5lBQlayXT2NoRWlJ3v5RkzFj6U6Vr3NLAX0tCGoA/SuYdocm
         E84CYaqqvB3iKkPw2SVtv4eenFWfDH+6oNnh2OVkufmXur0ARrseRiBpO0gEbyyv8JCA
         OJ99lBbmOT+zb+zArKWLt8G5YJzLuBJtxR1ookpc+jOdmw/T+Nn3GgaMiGuwkURzCD+d
         lSkAMyHGSE2gCMN8AV9ddr41iWPqeAUhcfUTm1sWql4HXKzwM5ZPv/xv/IeLQPxxVZ06
         tQaTVBuzVO00hz5WHfBQ9cUVm3rw+HjblS5HN9s0SzvMNiLEIzXVqDOT9zaFSw03ZcF2
         K4XA==
X-Forwarded-Encrypted: i=1; AJvYcCVgSVWzs/X39Ic5Zb6rcPTzrcFSOA46VXNLIaX6wdG1GY3RaW4QUaiqwzByH+ny0CyYmEGE1cKCeS22@vger.kernel.org
X-Gm-Message-State: AOJu0YzTzR9x80XdRQQjM98StCsEqGwjzHtAHiZRTCDVkAoU8BTBuLbc
	1Qoy+YZUhoSXL5lcLCastQvh/8D2bST2LPq0o3nxx+Vd833ZTSNwzgnnJMCOJJ2qutRPOnctbWN
	crgCZiRelo5F0ZrPzryXPzPh8iPfTJSL/vL/fF3pHu40LpIHeAGoI8J9yEh0O2UMM2L/eGnzlWw
	w=
X-Gm-Gg: AY/fxX6pNPAgv0tQVVv8JVVc+2fzA3qoHZh0VIfEREqLCJmseUofzA8d/0mi/s3uVp3
	pA3ikbGf4bhRE6KmHaYGNEKs9aWe3dDT5zWKflrqFplNwyh/GzRUAAIJfXnIPMnFZ5H7Q5Hwie4
	y4aZ4yYG303Pnf/i2n6mjPpHZWQ9xF7hmVuLItVuRUBOs+xNKA8zDESad+14Cy/jKuO7CgnXOi+
	Wvp5FqjXCKVFdHgcNeVknDVS5G6699/gr4zIbDcIDoP637u+bG9SDBzi0hJytPC1f80B7bvDamE
	uJeBAngiE2okmK/6YponPhnah5jrcCEWoRdfxPC82hVQTK34uxmMgHpuJJ4WCY/aveDHpgfHwEj
	mvRVCOXR/8r1T5AO0kPCqQ5IMDu3cCg+waC4tJr2XRkFvtKoBMx2sPBr+fiSg7cvf
X-Received: by 2002:a05:7022:380c:b0:11b:9386:a3c8 with SMTP id a92af1059eb24-121f8b5a33amr16338206c88.41.1768300115820;
        Tue, 13 Jan 2026 02:28:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGV5WbVdo5rQ5sP/hDDUIAjGEGohIT6H9t3QHJLXK0wt+jUYgBKtunUDg6UvGKRrAhMzoXlug==
X-Received: by 2002:a05:7022:380c:b0:11b:9386:a3c8 with SMTP id a92af1059eb24-121f8b5a33amr16338165c88.41.1768300115216;
        Tue, 13 Jan 2026 02:28:35 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f23b798asm21162429c88.0.2026.01.13.02.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:34 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 02:28:31 -0800
Subject: [PATCH v2 5/5] media: qcom: camss: vfe: Add support for VFE 980
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-sm8750-camss-v2-5-e5487b98eada@oss.qualcomm.com>
References: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
In-Reply-To: <20260113-sm8750-camss-v2-0-e5487b98eada@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=69661e55 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3rR15nC7HOTWOJgZU7UA:9
 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: L-6FHaPrH9yCSgivAguArHGjPKF5iPfn
X-Proofpoint-GUID: L-6FHaPrH9yCSgivAguArHGjPKF5iPfn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfXzLOSKS/0uPge
 gcIUNdbtMHlkJWsJfUa+6Ycg2gYP9xU8SMYd4lGHpW4Q0qfxGlHJdnNHAg5qyTZtOOLAGs88UbK
 dBIgM7CDoVqcyHUq2KA8IXHmmhVG3113/1uiv+Ax/mDeP+zE9AZ2u+KHi03hhp9oaYprZsVlcCS
 Fvg/UUemC3N+bobBEXsVd7siSSIRRFkZ6JLgjMvsBt280YO7Yeskdnbbl8063IvV56SUTaYOZ1U
 2olKdULpceS4z9E9HBSGvIOUlAjSof+1fFsCuOGT4jhTns7xY1Lktmmv+4vTTwfI8nZdUn5P0cA
 Qiti5TbOM3lXCcGKeyHzXxHYBewOWby3v+QROH67C4lXKtbKg4K6lz8UFxb3DIeT/Y8JKUToGy5
 4QeIjBNvr+0MXf8fffziJ7JSbTCYUcFSDzulHAgodwGEtCB9F56c9beefEEUr1oEiKololaWuj+
 GKPYKF+a2A2onJE+yeQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130088

Add support for Video Front End (VFE) that is on the SM8750 SoCs, which
is the same as VFE used in Kaanapali. VFE gen4 has support for VFE 980.
This change limits SM8750 VFE output lines to 3 for now as constrained
by the CAMSS driver framework.

Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-vfe-gen4.c |  10 +-
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss.c          | 135 +++++++++++++++++++++
 3 files changed, 144 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe-gen4.c b/drivers/media/platform/qcom/camss/camss-vfe-gen4.c
index d73d70898710..46d8e61b9bac 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-gen4.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-gen4.c
@@ -13,8 +13,12 @@
 #include "camss.h"
 #include "camss-vfe.h"
 
-/* VFE-gen4 Bus Register Base Addresses */
-#define BUS_REG_BASE				(vfe_is_lite(vfe) ? 0x800 : 0x1000)
+#define IS_VFE_980(vfe)		((vfe)->camss->res->version == CAMSS_8750)
+
+#define BUS_REG_BASE_980	(vfe_is_lite(vfe) ? 0x200 : 0x800)
+#define BUS_REG_BASE_1080	(vfe_is_lite(vfe) ? 0x800 : 0x1000)
+#define BUS_REG_BASE \
+	    (IS_VFE_980(vfe) ? BUS_REG_BASE_980 : BUS_REG_BASE_1080)
 
 #define VFE_BUS_WM_CGC_OVERRIDE			(BUS_REG_BASE + 0x08)
 #define		WM_CGC_OVERRIDE_ALL			(0x7FFFFFF)
@@ -55,7 +59,7 @@
  * DISPLAY_DS2_C		6
  * FD_Y				7
  * FD_C				8
- * PIXEL_RAW			9
+ * RAW_OUT(1080)/IR_OUT(980)	9
  * STATS_AEC_BG			10
  * STATS_AEC_BHIST		11
  * STATS_TINTLESS_BG		12
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 399be8b70fed..b8aa4b7d1a8d 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -350,6 +350,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 	case CAMSS_845:
 	case CAMSS_8550:
 	case CAMSS_8650:
+	case CAMSS_8750:
 	case CAMSS_8775P:
 	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
@@ -2012,6 +2013,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
 	case CAMSS_845:
 	case CAMSS_8550:
 	case CAMSS_8650:
+	case CAMSS_8750:
 	case CAMSS_8775P:
 	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c52e6f7b6294..1e33d42eb550 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4262,6 +4262,139 @@ static const struct camss_subdev_resources csid_res_8750[] = {
 	}
 };
 
+static const struct camss_subdev_resources vfe_res_8750[] = {
+	/* VFE0 - TFE Full */
+	{
+		.clock = { "gcc_axi_hf", "vfe0_fast_ahb", "vfe0",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife0",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE1 - TFE Full */
+	{
+		.clock = { "gcc_axi_hf", "vfe1_fast_ahb", "vfe1",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife1",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE2 - TFE Full */
+	{
+		.clock = { "gcc_axi_hf", "vfe2_fast_ahb", "vfe2",
+			   "camnoc_rt_vfe0", "camnoc_rt_vfe1", "camnoc_rt_vfe2",
+			   "camnoc_rt_axi", "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 360280000, 480000000, 630000000, 716000000,
+				  833000000 },
+				{ 0 },
+				{ 0 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe2" },
+		.interrupt = { "vfe2" },
+		.vfe = {
+			.line_num = 3,
+			.is_lite = false,
+			.reg_update_after_csid_config = true,
+			.has_pd = true,
+			.pd_name = "ife2",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE_LITE0 */
+	{
+		.clock = { "gcc_axi_hf", "vfe_lite_ahb", "vfe_lite",
+			   "camnoc_rt_vfe_lite", "camnoc_rt_axi",
+			   "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 266666667, 400000000, 480000000 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe_lite0" },
+		.interrupt = { "vfe_lite0" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = true,
+			.reg_update_after_csid_config = true,
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE_LITE1 */
+	{
+		.clock = { "gcc_axi_hf", "vfe_lite_ahb", "vfe_lite",
+			   "camnoc_rt_vfe_lite", "camnoc_rt_axi",
+			   "camnoc_nrt_axi", "qdss_debug_xo" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 266666667, 400000000, 480000000 },
+				{ 0 },
+				{ 200000000, 300000000, 400000000, 480000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "vfe_lite1" },
+		.interrupt = { "vfe_lite1" },
+		.vfe = {
+			.line_num = 4,
+			.is_lite = true,
+			.reg_update_after_csid_config = true,
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	}
+};
+
 static const struct resources_icc icc_res_sm8750[] = {
 	{
 		.name = "cam_ahb",
@@ -5702,9 +5835,11 @@ static const struct camss_resources sm8750_resources = {
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_8750,
 	.csid_res = csid_res_8750,
+	.vfe_res = vfe_res_8750,
 	.icc_res = icc_res_sm8750,
 	.csiphy_num = ARRAY_SIZE(csiphy_res_8750),
 	.csid_num = ARRAY_SIZE(csid_res_8750),
+	.vfe_num = ARRAY_SIZE(vfe_res_8750),
 	.icc_path_num = ARRAY_SIZE(icc_res_sm8750),
 };
 

-- 
2.34.1


