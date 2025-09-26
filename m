Return-Path: <devicetree+bounces-221768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4E4BA2C34
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F16B1C004C7
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE222882B6;
	Fri, 26 Sep 2025 07:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k0H4muO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E879E2BD037
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871674; cv=none; b=U2+d8qXndHbxIxA+cZTevIKZKj9WkGxEp3CyUBjdniPm7AUoBah5Ru+OPpxIKsqQEdf5pJn8AV+KGGE0BnCH3Q8Eku3hWRwHCDxnrsfH5WvRok/YNlHxVanywl7tPyb7LYXYvMX6+bTPV2lmmIUuux9gHieOc1uA+uzAUspjzdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871674; c=relaxed/simple;
	bh=MBFao/DJ+AvQFYkIXOckenkzKbeQrB9uXWrKsMRXuzM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jXR7sEJAj3IwPfSH6jRzHu+UmNvmNJDRFGSUPczemklVawofRlpDWw47B/zAEXad30oS5wXLgRvfIQ7aN5qr22P89SJB8F9inFcAFFGApDy5yt0rCJbW1olgnDj/R7SavS4yX5fdEQfDXhqIHVdvyk8N0dzTbka+3ybDBhnBOJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k0H4muO3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6q9Kt027585
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=; b=k0H4muO3JpiR7XrO
	JM4T5YxLbsqy10gN+14OQMeJibqBDRsBRXETrvoguPrkFTFM1342pdduCa9HNsPa
	hD+ao5gTh8zSuYOGTnseBQxqOHaEgVd/DH16krmH7MnMT8ul9XiyAieFsm1tx/2C
	fdTn9febRNqewpv1n2Rj/qQWr/AD7w1Kqxay5UlvrJfMNH22Z3s101D/kptIxXnu
	+VTF3vt6q1EAQLpILpzY4pKYty5A0ny2hhPONwzV36jo8nj3hwTHRkSgpQLqpDss
	YAJd1G0rsfe93FVzownYpH1KAGPIzhc7JZpJqkV0bEGD+Dh9+4no1l2PpWMMHILO
	EUG1Vg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q1vna-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:52 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2728a359f2aso5034235ad.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871671; x=1759476471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/ewAsdzTC0PEPN+SodRZso/2oAjrX6us73TZlYVliA=;
        b=evwwYtKx5+rHeRFeDr5gX1rV2TdGy376bdu6Erq2B3c2WojapHejNlF5zE+0s0xNtO
         dCTHBvskld9/kIS7T3614R4hhdw17ayMWXGhLrsBSGs8lZbnkGKbBgFxadQgWQ67sru6
         jtDaLeasHWamx0Uq+lm/Pcih4is2bY03Vnl7w+viMG+Pnq5qR1gDqBdAUni5aGbwIRnL
         7TKwFy91OstLiLlPizkRx8YgnSVfL614PzkoH5Wyjd9KRN3YYm2jjT0SVpijERANtmLr
         a0xx1rEx9DXR7uP4nas6AvRkDsTTkSJ9dtNG0hGySBqtPuoOY8TNgGR/7ED/sGh4S+c7
         UT8w==
X-Forwarded-Encrypted: i=1; AJvYcCWJsdciV5/R7Xl/GeKR5Z58M10n3Eh/4BheR3VfMDCngFFcP3vpcmvftQYvCLovz/BXoVHbsA0UeN6j@vger.kernel.org
X-Gm-Message-State: AOJu0YzgWoJ110mffsHxAtBnwKIgOrvUzHGUyqD0WLXac17nxdwy6355
	sWQI80DzXovrCiFGTYVI/cXo/Vc9chSm8SZ/Ftyrm2KPmU+pIJ/4KBxXbP0n5I+2dmA7hVMso22
	XOhDvu1l4ald4iNom4m+iQecwC3LO2qE0QEJtMWLayucX+fgZMZgA+9rsIWAUgSQW
X-Gm-Gg: ASbGncv3hlarJZ/wyuJN30qN9jXppbAvqySNjdG04bHpXZC+S0bb1+fkYL/P8JAPCAE
	R5+LhcaaF5i2vFvGqPBlhEDH0orP23y7Y3IArTpU7YkvLEdFBJKl7M+7zrFxncJfytE1/4zcuLW
	liPzs+y7ztOOsjaQCWQyB1dBzS7wB1I8ZjqCT/4JMPggPKdSOD75ToQTAOK+hjOUf19TccvGOLD
	N5HfwKwsE00zZnf1jGQLnl5WAt8GC/5YqK0Z4khF4XWbTqJajqqeDs/MOWf/5LRlESMQnHR9dlX
	kWtWcupOZyky+azPsDe0hLCvLZZxP0neom9MEXLGbOeaW1LF9LVN9rTtYCD/OsBpBtqd77lkBJC
	H/rr9y/brul1E0EFOicIoKp9ppL0k3vGov2SPGweYbKhqNB66FNqVdevg
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47520895ad.7.1758871671192;
        Fri, 26 Sep 2025 00:27:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6Uw+EDOSyIFj9+o/m/cxC6jk8OuXVNovEMdP23XauT6Xa+BsSzopZGkt0smtTXUlDKaRzrA==
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47520575ad.7.1758871670715;
        Fri, 26 Sep 2025 00:27:50 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:50 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:50 +0800
Subject: [PATCH v7 14/14] drm/msm/dp: Add support for lane mapping
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-14-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871565; l=5055;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=MBFao/DJ+AvQFYkIXOckenkzKbeQrB9uXWrKsMRXuzM=;
 b=zmiqH6Oqah/3aH8g6DUespvXSHN8tX5HUqWwLWpFm91V/bc2Bw5FvFuS9/SZ4W7yCWeya8H1V
 j4g275HWltSBVdF/NJ931zfBE12Z5hD9+v2gG0JMubyTRU8iKPh3q9w
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXzjAjAjZWMEIA
 aXjJ1DgOEw6e+SUO1CX9FQAl96euPeuWvP6DlF/vgZosvKfSnqXynR/AX2f0M88qN4bhEHpFLnr
 24WyUKqawIf/u58kvFIJE+eGCf+yWuK9pOmKvqebFsu4wLn7T9M7OT6qAk9oDSuF8HRlMgyUcgm
 z17Bc28clPmom3rg81rsVgR5GXzB3uuGBl8fZFWSBRq0IBJ6eROqWUuM9nEvo93tm1ecy1TNp0m
 RdyqZbyALe+kX1UjiNV69EZ5gFTo0nb2r2aNZm8HyndAE5FqRLz0/xs3nvz7XKipKf0X6m9Fwix
 U7yTOHA4luadnczBFge5TqNl/Vr8oiXRpaDOuMCAWcPWYtqvzaGMuNMlwND7JnYosTUt28r92Ew
 mZ2dTdUA7wpP1TTa+R7cf1mwHoF3tQ==
X-Proofpoint-GUID: lSCwHrbGrrtb0SlmKVFYpTNpWgxAXYly
X-Proofpoint-ORIG-GUID: lSCwHrbGrrtb0SlmKVFYpTNpWgxAXYly
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d64078 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TnvzUFuqcobRuy42eWwA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

QCS615 platform requires non-default logical-to-physical lane mapping due
to its unique hardware routing. Unlike the standard mapping sequence
<0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
configuration via the data-lanes property in the device tree. This ensures
correct signal routing between the DP controller and PHY.

For partial definitions, fill remaining lanes with unused physical lanes
in ascending order.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++----
 drivers/gpu/drm/msm/dp/dp_link.c | 61 ++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/msm/dp/dp_link.h |  1 +
 3 files changed, 67 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_ctrl.c b/drivers/gpu/drm/msm/dp/dp_ctrl.c
index c42fd2c17a328f6deae211c9cd57cc7416a9365a..cbcc7c2f0ffc4696749b6c43818d20853ddec069 100644
--- a/drivers/gpu/drm/msm/dp/dp_ctrl.c
+++ b/drivers/gpu/drm/msm/dp/dp_ctrl.c
@@ -423,13 +423,13 @@ static void msm_dp_ctrl_config_ctrl(struct msm_dp_ctrl_private *ctrl)
 
 static void msm_dp_ctrl_lane_mapping(struct msm_dp_ctrl_private *ctrl)
 {
-	u32 ln_0 = 0, ln_1 = 1, ln_2 = 2, ln_3 = 3; /* One-to-One mapping */
+	u32 *lane_map = ctrl->link->lane_map;
 	u32 ln_mapping;
 
-	ln_mapping = ln_0 << LANE0_MAPPING_SHIFT;
-	ln_mapping |= ln_1 << LANE1_MAPPING_SHIFT;
-	ln_mapping |= ln_2 << LANE2_MAPPING_SHIFT;
-	ln_mapping |= ln_3 << LANE3_MAPPING_SHIFT;
+	ln_mapping = lane_map[0] << LANE0_MAPPING_SHIFT;
+	ln_mapping |= lane_map[1] << LANE1_MAPPING_SHIFT;
+	ln_mapping |= lane_map[2] << LANE2_MAPPING_SHIFT;
+	ln_mapping |= lane_map[3] << LANE3_MAPPING_SHIFT;
 
 	msm_dp_write_link(ctrl, REG_DP_LOGICAL2PHYSICAL_LANE_MAPPING,
 			ln_mapping);
diff --git a/drivers/gpu/drm/msm/dp/dp_link.c b/drivers/gpu/drm/msm/dp/dp_link.c
index 2aeb3ecf76fab2ee6a9512b785ca5dceebfc3964..2ae78d33fffd7c49190983952ee8f5a249f2b69d 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.c
+++ b/drivers/gpu/drm/msm/dp/dp_link.c
@@ -1236,6 +1236,62 @@ static u32 msm_dp_link_link_frequencies(struct device_node *of_node)
 	return frequency;
 }
 
+/*
+ * Always populate msm_dp_link->lane_map with 4 lanes.
+ * - Use DTS "data-lanes" if present; otherwise fall back to default mapping.
+ * - For partial definitions, fill remaining entries with unused lanes in
+ *   ascending order.
+ */
+static int msm_dp_link_lane_map(struct device *dev, struct msm_dp_link *msm_dp_link)
+{
+	struct device_node *of_node = dev->of_node;
+	struct device_node *endpoint;
+	int cnt = msm_dp_link->max_dp_lanes;
+	u32 tmp[DP_MAX_NUM_DP_LANES];
+	u32 map[DP_MAX_NUM_DP_LANES] = {0, 1, 2, 3}; /* default 1:1 mapping */
+	bool used[DP_MAX_NUM_DP_LANES] = {false};
+	int i, ret = -EINVAL;
+
+	endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
+	if (endpoint) {
+		ret = of_property_read_u32_array(endpoint, "data-lanes", tmp, cnt);
+		if (ret)
+			dev_dbg(dev, "endpoint data-lanes read failed (ret=%d)\n", ret);
+	}
+
+	if (ret) {
+		ret = of_property_read_u32_array(of_node, "data-lanes", tmp, cnt);
+		if (ret) {
+			dev_info(dev, "data-lanes not defined, set to default\n");
+			goto out;
+		}
+	}
+
+	for (i = 0; i < cnt; i++) {
+		if (tmp[i] >= DP_MAX_NUM_DP_LANES) {
+			dev_err(dev, "data-lanes[%d]=%u out of range\n", i, tmp[i]);
+			return -EINVAL;
+		}
+		used[tmp[i]] = true;
+		map[i] = tmp[i];
+	}
+
+	/* Fill the remaining entries with unused physical lanes (ascending) */
+	i = cnt;
+	for (int j = 0; i < DP_MAX_NUM_DP_LANES && j < DP_MAX_NUM_DP_LANES; j++) {
+		if (!used[j])
+			map[i++] = j;
+	}
+
+out:
+	if (endpoint)
+		of_node_put(endpoint);
+
+	dev_dbg(dev, "data-lanes count %d <%d %d %d %d>\n", cnt, map[0], map[1], map[2], map[3]);
+	memcpy(msm_dp_link->lane_map, map, sizeof(map));
+	return 0;
+}
+
 static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_link)
 {
 	struct device_node *of_node = dev->of_node;
@@ -1255,6 +1311,11 @@ static int msm_dp_link_parse_dt(struct device *dev, struct msm_dp_link *msm_dp_l
 	else
 		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
 
+	if (msm_dp_link_lane_map(dev, msm_dp_link)) {
+		dev_err(dev, "failed to parse data-lanes\n");
+		return -EINVAL;
+	}
+
 	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
 	if (!msm_dp_link->max_dp_link_rate)
 		msm_dp_link->max_dp_link_rate = DP_LINK_RATE_HBR2;
diff --git a/drivers/gpu/drm/msm/dp/dp_link.h b/drivers/gpu/drm/msm/dp/dp_link.h
index 0684a962d4ec93f7da764c4af2e2154c7050329c..b1eb2de6d2a7693f17aa2f256657110af839533d 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.h
+++ b/drivers/gpu/drm/msm/dp/dp_link.h
@@ -74,6 +74,7 @@ struct msm_dp_link {
 	struct msm_dp_link_phy_params phy_params;
 	struct msm_dp_link_info link_params;
 
+	u32 lane_map[DP_MAX_NUM_DP_LANES];
 	u32 max_dp_lanes;
 	u32 max_dp_link_rate;
 };

-- 
2.34.1


