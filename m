Return-Path: <devicetree+bounces-127810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C399E6612
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 05:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E81118834F2
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 04:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58361F7552;
	Fri,  6 Dec 2024 04:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="XdJl3T3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD41E0DF5;
	Fri,  6 Dec 2024 04:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733459598; cv=none; b=jEkmfRzc3bZf0ACkoxyILbVuUvtTJu9f0DLKaPajSvgojkVf9i6B/mVV8r7a+zz8RaUxEdVaWPqmmmhb/3rYH5KfNs5uIcwZDqzo7/quwueI6r5D10q44ECskyI+M/NJZXi+bbSRH41v+ov0V+WfZhOZ2lu84Y9xzNOyI44OgM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733459598; c=relaxed/simple;
	bh=D1VqWMKTo6O8vTBiJ/XNwQ0cGC1KHIPTaX8xpNxB/vs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=lISblmBk2ei+NnVDx3ET5q+Q5MyNoBT0rRm90YNHasaA097BcgQZiM7FXpysL3/F7ffAH6tv/7XShmI5BHKqBImmyhZxImIfmKihdCLqEvbllR2oDB06hwDH5pPYr2IXMzHrEX3xP8BkgPwi0QQl4OJRNoaagTdFf4m2+KgN0/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=XdJl3T3/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HbxLA009794;
	Fri, 6 Dec 2024 04:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NldLJiocM2LwPFN97VofW9rQSjAhSCF3W6zu/1pO5PA=; b=XdJl3T3/453xLkjk
	P9IN5Mh5dkbHm/HN9xvbrKVmDfp9gtnmRnlRDHm+vKIwN9J27jOmBWEOz+rFQC9X
	AG0hOpj3E/mQazDkjJRVAgGb2IU5/kJBCXTh+GPpI5V++C6x5i/jo2Y4d/wEtKjf
	eYOXNQSJXoFA6auH1BidB0uqGELOzZuOdh0/lIzjafwaglREqW5K+xi3wm1Pzx4W
	JFdHcd9d7WJRpfmxRJe7I6olf/G+daGjUHOKaU74xspZCNV+zDCUqqnV0a14hYc8
	oX05fD1R5G3/l4gjmFtNO8lGFZ4FcYJ8dbRpLuV1JJ51wnBhpGfoxcBG4v+lBNwG
	f1/AGw==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43ben89rnt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Dec 2024 04:32:34 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B64WYkY016347
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 6 Dec 2024 04:32:34 GMT
Received: from abhinavk-linux1.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 5 Dec 2024 20:32:33 -0800
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
Date: Thu, 5 Dec 2024 20:31:48 -0800
Subject: [PATCH 17/45] drm/msm/dp: use stream_id to change offsets in
 dp_catalog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241205-dp_mst-v1-17-f8618d42a99a@quicinc.com>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
In-Reply-To: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
To: Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Stephen Boyd <swboyd@chromium.org>,
        "Chandan
 Uddaraju" <chandanu@codeaurora.org>,
        Guenter Roeck <groeck@chromium.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>,
        Tanmay Shah <tanmay@codeaurora.org>, <linux-arm-msm@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <freedreno@lists.freedesktop.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Jessica Zhang
	<quic_jesszhan@quicinc.com>,
        Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733459543; l=13407;
 i=quic_abhinavk@quicinc.com; s=20240509; h=from:subject:message-id;
 bh=D1VqWMKTo6O8vTBiJ/XNwQ0cGC1KHIPTaX8xpNxB/vs=;
 b=Tkcr+JYc3TXdwlUNADUaWs2HIZ8DY5taxw1AIidejyoBEuyCzjrfFSqzBpkvKQLmgsz6Om4lm
 uxlXYux9ZDOB+daNqy6is7i5lJ8KywQnfjquldIiMjZFX4UW6/pagz5
X-Developer-Key: i=quic_abhinavk@quicinc.com; a=ed25519;
 pk=SD3D8dOKDDh6BoX3jEYjsHrTFwuIK8+o0cLPgQok9ys=
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: K-oTCAhH2q78KCTydqiypn0z37xvf2Rr
X-Proofpoint-GUID: K-oTCAhH2q78KCTydqiypn0z37xvf2Rr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060030

Use the dp_panel's stream_id to adjust the offsets for stream 1
which will be used for MST in the dp_catalog. Also add additional
register defines for stream 1.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 drivers/gpu/drm/msm/dp/dp_catalog.c | 99 ++++++++++++++++++++++++++++---------
 drivers/gpu/drm/msm/dp/dp_catalog.h |  9 ++--
 drivers/gpu/drm/msm/dp/dp_ctrl.c    |  3 ++
 drivers/gpu/drm/msm/dp/dp_panel.c   |  2 +
 drivers/gpu/drm/msm/dp/dp_reg.h     | 13 ++++-
 5 files changed, 99 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
index ee7f2d0b23aa034428a01ef2c9752f51013c5e01..e6f6edf617898241c74580eb0ae6bc58f06a154f 100644
--- a/drivers/gpu/drm/msm/dp/dp_catalog.c
+++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
@@ -457,10 +457,20 @@ void msm_dp_catalog_ctrl_config_misc(struct msm_dp_catalog *msm_dp_catalog,
 					u32 test_bits_depth)
 {
 	u32 misc_val;
+	u32 reg_offset = 0;
+
 	struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
 				struct msm_dp_catalog_private, msm_dp_catalog);
 
-	misc_val = msm_dp_read_link(catalog, REG_DP_MISC1_MISC0);
+	if (msm_dp_catalog->stream_id >= DP_STREAM_MAX) {
+		DRM_ERROR("invalid stream_id:%d\n", msm_dp_catalog->stream_id);
+		return;
+	}
+
+	if (msm_dp_catalog->stream_id == DP_STREAM_1)
+		reg_offset = REG_DP1_MISC1_MISC0 - REG_DP_MISC1_MISC0;
+
+	misc_val = msm_dp_read_link(catalog, REG_DP_MISC1_MISC0 + reg_offset);
 
 	/* clear bpp bits */
 	misc_val &= ~(0x07 << DP_MISC0_TEST_BITS_DEPTH_SHIFT);
@@ -470,7 +480,7 @@ void msm_dp_catalog_ctrl_config_misc(struct msm_dp_catalog *msm_dp_catalog,
 	misc_val |= DP_MISC0_SYNCHRONOUS_CLK;
 
 	drm_dbg_dp(catalog->drm_dev, "misc settings = 0x%x\n", misc_val);
-	msm_dp_write_link(catalog, REG_DP_MISC1_MISC0, misc_val);
+	msm_dp_write_link(catalog, REG_DP_MISC1_MISC0 + reg_offset, misc_val);
 }
 
 void msm_dp_catalog_setup_peripheral_flush(struct msm_dp_catalog *msm_dp_catalog)
@@ -500,10 +510,21 @@ void msm_dp_catalog_ctrl_config_msa(struct msm_dp_catalog *msm_dp_catalog,
 	u32 const link_rate_hbr2 = 540000;
 	u32 const link_rate_hbr3 = 810000;
 	unsigned long den, num;
+	u32 mvid_reg_off = 0, nvid_reg_off = 0;
 
 	struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
 				struct msm_dp_catalog_private, msm_dp_catalog);
 
+	if (msm_dp_catalog->stream_id >= DP_STREAM_MAX) {
+		DRM_ERROR("invalid stream_id:%d\n", msm_dp_catalog->stream_id);
+		return;
+	}
+
+	if (msm_dp_catalog->stream_id == DP_STREAM_1) {
+		mvid_reg_off = REG_DP1_SOFTWARE_MVID - REG_DP_SOFTWARE_MVID;
+		nvid_reg_off = REG_DP1_SOFTWARE_NVID - REG_DP_SOFTWARE_NVID;
+	}
+
 	if (rate == link_rate_hbr3)
 		pixel_div = 6;
 	else if (rate == 162000 || rate == 270000)
@@ -545,9 +566,14 @@ void msm_dp_catalog_ctrl_config_msa(struct msm_dp_catalog *msm_dp_catalog,
 		nvid *= 3;
 
 	drm_dbg_dp(catalog->drm_dev, "mvid=0x%x, nvid=0x%x\n", mvid, nvid);
-	msm_dp_write_link(catalog, REG_DP_SOFTWARE_MVID, mvid);
-	msm_dp_write_link(catalog, REG_DP_SOFTWARE_NVID, nvid);
-	msm_dp_write_p0(catalog, MMSS_DP_DSC_DTO, 0x0);
+
+	msm_dp_write_link(catalog, REG_DP_SOFTWARE_MVID + mvid_reg_off, mvid);
+	msm_dp_write_link(catalog, REG_DP_SOFTWARE_NVID + nvid_reg_off, nvid);
+
+	if (msm_dp_catalog->stream_id == DP_STREAM_0)
+		msm_dp_write_p0(catalog, MMSS_DP_DSC_DTO, 0x0);
+	else
+		msm_dp_write_p1(catalog, MMSS_DP_DSC_DTO, 0x0);
 }
 
 int msm_dp_catalog_ctrl_set_pattern_state_bit(struct msm_dp_catalog *msm_dp_catalog,
@@ -910,13 +936,20 @@ int msm_dp_catalog_panel_timing_cfg(struct msm_dp_catalog *msm_dp_catalog, u32 t
 	struct msm_dp_catalog_private *catalog = container_of(msm_dp_catalog,
 				struct msm_dp_catalog_private, msm_dp_catalog);
 	u32 reg;
+	u32 offset = 0;
+
+	if (msm_dp_catalog->stream_id == DP_STREAM_1)
+		offset = REG_DP1_TOTAL_HOR_VER - REG_DP_TOTAL_HOR_VER;
 
-	msm_dp_write_link(catalog, REG_DP_TOTAL_HOR_VER, total);
-	msm_dp_write_link(catalog, REG_DP_START_HOR_VER_FROM_SYNC, sync_start);
-	msm_dp_write_link(catalog, REG_DP_HSYNC_VSYNC_WIDTH_POLARITY, width_blanking);
-	msm_dp_write_link(catalog, REG_DP_ACTIVE_HOR_VER, msm_dp_active);
+	msm_dp_write_link(catalog, REG_DP_TOTAL_HOR_VER + offset, total);
+	msm_dp_write_link(catalog, REG_DP_START_HOR_VER_FROM_SYNC + offset, sync_start);
+	msm_dp_write_link(catalog, REG_DP_HSYNC_VSYNC_WIDTH_POLARITY + offset, width_blanking);
+	msm_dp_write_link(catalog, REG_DP_ACTIVE_HOR_VER + offset, msm_dp_active);
 
-	reg = msm_dp_read_p0(catalog, MMSS_DP_INTF_CONFIG);
+	if (msm_dp_catalog->stream_id == DP_STREAM_0)
+		reg = msm_dp_read_p0(catalog, MMSS_DP_INTF_CONFIG);
+	else
+		reg = msm_dp_read_p1(catalog, MMSS_DP_INTF_CONFIG);
 
 	if (msm_dp_catalog->wide_bus_en)
 		reg |= DP_INTF_CONFIG_DATABUS_WIDEN;
@@ -926,7 +959,11 @@ int msm_dp_catalog_panel_timing_cfg(struct msm_dp_catalog *msm_dp_catalog, u32 t
 
 	DRM_DEBUG_DP("wide_bus_en=%d reg=%#x\n", msm_dp_catalog->wide_bus_en, reg);
 
-	msm_dp_write_p0(catalog, MMSS_DP_INTF_CONFIG, reg);
+	if (msm_dp_catalog->stream_id == DP_STREAM_0)
+		msm_dp_write_p0(catalog, MMSS_DP_INTF_CONFIG, reg);
+	else
+		msm_dp_write_p1(catalog, MMSS_DP_INTF_CONFIG, reg);
+
 	return 0;
 }
 
@@ -936,18 +973,22 @@ static void msm_dp_catalog_panel_send_vsc_sdp(struct msm_dp_catalog *msm_dp_cata
 	u32 header[2];
 	u32 val;
 	int i;
+	u32 msm_dp_generic_offset = 0;
 
 	catalog = container_of(msm_dp_catalog, struct msm_dp_catalog_private, msm_dp_catalog);
 
+	if (msm_dp_catalog->stream_id == DP_STREAM_1)
+		msm_dp_generic_offset = MMSS_DP1_GENERIC0_0 - MMSS_DP_GENERIC0_0;
+
 	msm_dp_utils_pack_sdp_header(&vsc_sdp->sdp_header, header);
 
-	msm_dp_write_link(catalog, MMSS_DP_GENERIC0_0, header[0]);
-	msm_dp_write_link(catalog, MMSS_DP_GENERIC0_1, header[1]);
+	msm_dp_write_link(catalog, MMSS_DP_GENERIC0_0 + msm_dp_generic_offset, header[0]);
+	msm_dp_write_link(catalog, MMSS_DP_GENERIC0_1 + msm_dp_generic_offset, header[1]);
 
 	for (i = 0; i < sizeof(vsc_sdp->db); i += 4) {
 		val = ((vsc_sdp->db[i]) | (vsc_sdp->db[i + 1] << 8) | (vsc_sdp->db[i + 2] << 16) |
 		       (vsc_sdp->db[i + 3] << 24));
-		msm_dp_write_link(catalog, MMSS_DP_GENERIC0_2 + i, val);
+		msm_dp_write_link(catalog, MMSS_DP_GENERIC0_2 + i + msm_dp_generic_offset, val);
 	}
 }
 
@@ -955,13 +996,17 @@ static void msm_dp_catalog_panel_update_sdp(struct msm_dp_catalog *msm_dp_catalo
 {
 	struct msm_dp_catalog_private *catalog;
 	u32 hw_revision;
+	u32 sdp_cfg3_offset = 0;
 
 	catalog = container_of(msm_dp_catalog, struct msm_dp_catalog_private, msm_dp_catalog);
 
+	if (msm_dp_catalog->stream_id == DP_STREAM_1)
+		sdp_cfg3_offset = MMSS_DP1_SDP_CFG3 - MMSS_DP_SDP_CFG3;
+
 	hw_revision = msm_dp_catalog_hw_revision(msm_dp_catalog);
 	if (hw_revision < DP_HW_VERSION_1_2 && hw_revision >= DP_HW_VERSION_1_0) {
-		msm_dp_write_link(catalog, MMSS_DP_SDP_CFG3, 0x01);
-		msm_dp_write_link(catalog, MMSS_DP_SDP_CFG3, 0x00);
+		msm_dp_write_link(catalog, MMSS_DP_SDP_CFG3 + sdp_cfg3_offset, 0x01);
+		msm_dp_write_link(catalog, MMSS_DP_SDP_CFG3 + sdp_cfg3_offset, 0x00);
 	}
 }
 
@@ -969,18 +1014,27 @@ void msm_dp_catalog_panel_enable_vsc_sdp(struct msm_dp_catalog *msm_dp_catalog,
 {
 	struct msm_dp_catalog_private *catalog;
 	u32 cfg, cfg2, misc;
+	u32 misc_reg_offset = 0;
+	u32 sdp_cfg_offset = 0;
+	u32 sdp_cfg2_offset = 0;
 
 	catalog = container_of(msm_dp_catalog, struct msm_dp_catalog_private, msm_dp_catalog);
 
-	cfg = msm_dp_read_link(catalog, MMSS_DP_SDP_CFG);
-	cfg2 = msm_dp_read_link(catalog, MMSS_DP_SDP_CFG2);
-	misc = msm_dp_read_link(catalog, REG_DP_MISC1_MISC0);
+	if (msm_dp_catalog->stream_id == DP_STREAM_1) {
+		misc_reg_offset = REG_DP1_MISC1_MISC0 - REG_DP_MISC1_MISC0;
+		sdp_cfg_offset = MMSS_DP1_SDP_CFG - MMSS_DP_SDP_CFG;
+		sdp_cfg2_offset = MMSS_DP1_SDP_CFG2 - MMSS_DP_SDP_CFG2;
+	}
+
+	cfg = msm_dp_read_link(catalog, MMSS_DP_SDP_CFG + sdp_cfg_offset);
+	cfg2 = msm_dp_read_link(catalog, MMSS_DP_SDP_CFG2 + sdp_cfg2_offset);
+	misc = msm_dp_read_link(catalog, REG_DP_MISC1_MISC0 + misc_reg_offset);
 
 	cfg |= GEN0_SDP_EN;
-	msm_dp_write_link(catalog, MMSS_DP_SDP_CFG, cfg);
+	msm_dp_write_link(catalog, MMSS_DP_SDP_CFG + sdp_cfg_offset, cfg);
 
 	cfg2 |= GENERIC0_SDPSIZE_VALID;
-	msm_dp_write_link(catalog, MMSS_DP_SDP_CFG2, cfg2);
+	msm_dp_write_link(catalog, MMSS_DP_SDP_CFG2 + sdp_cfg2_offset, cfg2);
 
 	msm_dp_catalog_panel_send_vsc_sdp(msm_dp_catalog, vsc_sdp);
 
@@ -990,7 +1044,8 @@ void msm_dp_catalog_panel_enable_vsc_sdp(struct msm_dp_catalog *msm_dp_catalog,
 	drm_dbg_dp(catalog->drm_dev, "vsc sdp enable=1\n");
 
 	pr_debug("misc settings = 0x%x\n", misc);
-	msm_dp_write_link(catalog, REG_DP_MISC1_MISC0, misc);
+
+	msm_dp_write_link(catalog, REG_DP_MISC1_MISC0 + misc_reg_offset, misc);
 
 	msm_dp_catalog_panel_update_sdp(msm_dp_catalog);
 }
diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.h b/drivers/gpu/drm/msm/dp/dp_catalog.h
index edeebf1f313f50e9c54feee1e5aa6aa2dbba3058..c020b7cfa008241e937f6a53764b136431f1dbd9 100644
--- a/drivers/gpu/drm/msm/dp/dp_catalog.h
+++ b/drivers/gpu/drm/msm/dp/dp_catalog.h
@@ -47,10 +47,6 @@ enum msm_dp_catalog_audio_header_type {
 	DP_AUDIO_SDP_HEADER_MAX,
 };
 
-struct msm_dp_catalog {
-	bool wide_bus_en;
-};
-
 /* stream id */
 enum msm_dp_stream_id {
 	DP_STREAM_0,
@@ -60,6 +56,11 @@ enum msm_dp_stream_id {
 	DP_STREAM_MAX,
 };
 
+struct msm_dp_catalog {
+	bool wide_bus_en;
+	enum msm_dp_stream_id stream_id;
+};
+
 /* Debug module */
 void msm_dp_catalog_snapshot(struct msm_dp_catalog *msm_dp_catalog, struct msm_disp_state *disp_state);
 
diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
index 0648831df956dfc7afa1cbfb0dea2c32b02ff74e..ba39b009032dd6f5cb708988963cd6acb6838e4a 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
@@ -179,6 +179,7 @@ static void msm_dp_ctrl_configure_source_params(struct msm_dp_ctrl_private *ctrl
 						struct msm_dp_panel *msm_dp_panel)
 {
 	u32 cc, tb;
+	ctrl->catalog->stream_id = msm_dp_panel->stream_id;
 
 	msm_dp_catalog_ctrl_lane_mapping(ctrl->catalog);
 	msm_dp_catalog_setup_peripheral_flush(ctrl->catalog);
@@ -2062,7 +2063,9 @@ void msm_dp_ctrl_clear_vsc_sdp_pkt(struct msm_dp_ctrl *msm_dp_ctrl, struct msm_d
 	struct msm_dp_ctrl_private *ctrl;
 
 	ctrl = container_of(msm_dp_ctrl, struct msm_dp_ctrl_private, msm_dp_ctrl);
+	ctrl->catalog->stream_id = dp_panel->stream_id;
 	msm_dp_catalog_panel_disable_vsc_sdp(ctrl->catalog);
+
 }
 
 void msm_dp_ctrl_psm_config(struct msm_dp_ctrl *msm_dp_ctrl)
diff --git a/drivers/gpu/drm/msm/dp/dp_panel.c b/drivers/gpu/drm/msm/dp/dp_panel.c
index 172de804dec445cb08ad8e3f058407f483cd6684..662bf02b8b1a5165f927835bef3c11ac091ddce6 100644
--- a/drivers/gpu/drm/msm/dp/dp_panel.c
+++ b/drivers/gpu/drm/msm/dp/dp_panel.c
@@ -309,7 +309,9 @@ static int msm_dp_panel_setup_vsc_sdp_yuv_420(struct msm_dp_panel *msm_dp_panel)
 
 	panel = container_of(msm_dp_panel, struct msm_dp_panel_private, msm_dp_panel);
 	catalog = panel->catalog;
+
 	msm_dp_mode = &msm_dp_panel->msm_dp_mode;
+	catalog->stream_id = msm_dp_panel->stream_id;
 
 	memset(&vsc_sdp_data, 0, sizeof(vsc_sdp_data));
 
diff --git a/drivers/gpu/drm/msm/dp/dp_reg.h b/drivers/gpu/drm/msm/dp/dp_reg.h
index 3835c7f5cb984406f8fc52ea765ef2315e0d175b..6c534fde6034fced2cb428e9a29de31ed5c5fcc4 100644
--- a/drivers/gpu/drm/msm/dp/dp_reg.h
+++ b/drivers/gpu/drm/msm/dp/dp_reg.h
@@ -138,13 +138,17 @@
 #define DP_CONFIGURATION_CTRL_LSCLK_DIV_SHIFT	(0x0D)
 
 #define REG_DP_SOFTWARE_MVID			(0x00000010)
+#define REG_DP1_SOFTWARE_MVID			(0x00000414)
 #define REG_DP_SOFTWARE_NVID			(0x00000018)
+#define REG_DP1_SOFTWARE_NVID			(0x00000418)
 #define REG_DP_TOTAL_HOR_VER			(0x0000001C)
+#define REG_DP1_TOTAL_HOR_VER			(0x0000041C)
 #define REG_DP_START_HOR_VER_FROM_SYNC		(0x00000020)
 #define REG_DP_HSYNC_VSYNC_WIDTH_POLARITY	(0x00000024)
 #define REG_DP_ACTIVE_HOR_VER			(0x00000028)
-
 #define REG_DP_MISC1_MISC0			(0x0000002C)
+#define REG_DP1_MISC1_MISC0			(0x0000042C)
+
 #define DP_MISC0_SYNCHRONOUS_CLK		(0x00000001)
 #define DP_MISC0_COLORIMETRY_CFG_SHIFT		(0x00000001)
 #define DP_MISC0_TEST_BITS_DEPTH_SHIFT		(0x00000005)
@@ -211,8 +215,11 @@
 #define MMSS_DP_AUDIO_CTRL_RESET		(0x00000214)
 
 #define MMSS_DP_SDP_CFG				(0x00000228)
+#define MMSS_DP1_SDP_CFG			(0x000004E0)
 #define GEN0_SDP_EN				(0x00020000)
 #define MMSS_DP_SDP_CFG2			(0x0000022C)
+#define MMSS_DP1_SDP_CFG2			(0x000004E4)
+
 #define MMSS_DP_AUDIO_TIMESTAMP_0		(0x00000230)
 #define MMSS_DP_AUDIO_TIMESTAMP_1		(0x00000234)
 #define GENERIC0_SDPSIZE_VALID			(0x00010000)
@@ -221,6 +228,8 @@
 #define MMSS_DP_AUDIO_STREAM_1			(0x00000244)
 
 #define MMSS_DP_SDP_CFG3			(0x0000024c)
+#define MMSS_DP1_SDP_CFG3			(0x000004E8)
+
 #define UPDATE_SDP				(0x00000001)
 
 #define MMSS_DP_EXTENSION_0			(0x00000250)
@@ -270,6 +279,8 @@
 #define MMSS_DP_GENERIC1_8			(0x00000348)
 #define MMSS_DP_GENERIC1_9			(0x0000034C)
 
+#define MMSS_DP1_GENERIC0_0			(0x00000490)
+
 #define MMSS_DP_VSCEXT_0			(0x000002D0)
 #define MMSS_DP_VSCEXT_1			(0x000002D4)
 #define MMSS_DP_VSCEXT_2			(0x000002D8)

-- 
2.34.1


