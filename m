Return-Path: <devicetree+bounces-216017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBBAB536B9
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A1D2584859
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8CE356901;
	Thu, 11 Sep 2025 14:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HN2pgsX3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFACC3568EB
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602624; cv=none; b=UyKrvObGWakpuhdkohU//H103AabQpQm6C6D2gQNZNTZSWWxT1+v81vGPVUOMa5CeIxdT2+9NpzKujWeLvCTqkAppbGKZchwVfebeOWaPRIToFhSbsYMt7bxK6o8ALck8zM3EgsDrwdz2LeY4ERRkjsQWhnMrSXdUzvhWTpgVOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602624; c=relaxed/simple;
	bh=ydjAKX71QvKWvvFLsD1Bwlw16HeAPipo1gwgyRawXAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SPin8bNPRNKh1ySv/MaSN6OGZWEMgu6bOQn5nO4TcMKqPtmolZfpVhsvbJKhQZF8YfxAgYKxVFIOkJkVs3ChvwUX+KS3BwZi+tr/sRQTb5HBTgTuuSvoTwlLvZ/k+WMDAxwZ5RGDd4PFsLH01fGwux7yGPYj9hXmihW2yxPN1lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HN2pgsX3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBI2XX015064
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	poPQezAqO5CLn7JGsotj9+FaLlUAX0s+F1zX9jDxN/U=; b=HN2pgsX3P5FMk8Su
	utmLP/T3KSP6vXamGNxCKBRVa44iNls7G8Y71g06GkmxPX6xGrWthrp/5gqCynKG
	0otlp0H0Woc9BYXwwa6uatpMUC7bSjuUSVpc/D0tSB159hSzalZnUx+H6mj3fIfh
	2gp8c9/7aN1fFJEnEzBCAollbIv6+xnY4j/1uElptv70SIQh6TIxHutA+HD+O1wl
	QyqOOi70Il1WevVSV+xnMY4AfXT4okiOywhozyt2bCksecvAS6ddwmAFDu9CqsZj
	zlXAkkttewOQ23mhEk4bCicq+WCxUJF0WLm6ULDRyOgfdW8HiEVN3lvsUiy5P7if
	I2R+eg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m819p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:57:01 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-25aadf13424so1650805ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602621; x=1758207421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=poPQezAqO5CLn7JGsotj9+FaLlUAX0s+F1zX9jDxN/U=;
        b=IokVu7iS+rPWJZQgodgm9If7julF845nO48Wua4YOajZ/Pewti58azbKutIpB6Y3BR
         GkhdpS9C60ZYrAjiyktEkIGRS0cZ6iCtWqueS9yYUwJrSMtyHBX526iut+hXjHmVFjgv
         bithbedu1qJ1kOOuhfaFMrcC/fq6UmtUpwNzj7GkJsw18DSjfoUmrNlLjWwp13m1LnCz
         wY7gyZUf2cWF8r57e5l2UJranxKl+3TxR9J+Mh3wZkTR9LNTTcc4KsyUBh9CLEBcoNEb
         ozdQc+bqGt7tKidw17aTCJY69P/w6B3sXjM7gJ+2kQzj+NVgWQFASL/OJQI4h8+2VMIj
         LSJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpB36Ss2WV3wJyNpHRMrppVIWJiIWGymvfO4v8FH3tI107gd4aNV7qV789NO2ZXiyJ5ocQwHP3Y6JQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyjYhyrIxovkywW5hzZ4Cr8v8qX1wcXqWzZiDhJ8pfTHOjFIILp
	1nYaV5MsjVYkYkCfuhGvSXFqvlfl2C+LKInlWj/hK4CH5p7eY3lA8AgRCKIRqCdcrJWdE3bljey
	R6GUGLbkmProCM7mrsH+W8dqTUMm/N3deYt2gpLHyz0C83PrRmPzCbCQrm/hpR468
X-Gm-Gg: ASbGncv00TeLnHwl1ABfhWUdp6f7zXyKfVNFY1j18TjYMN9oIA4EXJKs46ID04L+IpS
	FiArPXNs+6zN16TJjRY61gHmEwQIJ22G+rWsHgNYQBlbfPcu9Q6HsbaraL8ODg55mVWta+wCStU
	hcmkIInnzBZ77DW5BZVpgUBfXDv6XSiuspv+r3bPZYrlym9F+UoCTofJ/OfKa8GaM7tfWxiKCDL
	19xmJZWCgXpL6RomCsdsw0etW4g+9f+/cM0MukAZTyh98P/LvHSLtb6GrMAmKS+aXu9mis/71Ex
	tfmA88a9o5RbBieDxd/5MeRltguOeURO4ZI76OHDfHJ11BpFD5e97KyzZjrffDRlqs4AwaDmL3p
	z6CgLqAOC4H0dQjUyMJvsQlIqAQ0Xo6/3vMR0BDJOqRrHPAyuCjnRiqjq
X-Received: by 2002:a05:6a20:3d88:b0:247:55a7:695f with SMTP id adf61e73a8af0-2534547a5d2mr15322009637.6.1757602620796;
        Thu, 11 Sep 2025 07:57:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA+T6bihioSO0fuY5YfCxHZc3M0pBOMOH657Ze5hznhiS0Qw6xXefqkICG6PW275tVlLquow==
X-Received: by 2002:a05:6a20:3d88:b0:247:55a7:695f with SMTP id adf61e73a8af0-2534547a5d2mr15321976637.6.1757602620256;
        Thu, 11 Sep 2025 07:57:00 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:59 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:10 +0800
Subject: [PATCH v4 13/13] drm/msm/dp: Add support for lane mapping
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-13-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=3440;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ydjAKX71QvKWvvFLsD1Bwlw16HeAPipo1gwgyRawXAA=;
 b=URK3ZuXt8hjr965TBLqTHuckNd4RoPiuWF52jnx2F/+KEB7ZTvapur4qpeUyfJbHmlYbZS0xK
 D3ebmdp3LzLAeFch1oItDUO95apaxHczikuX+uQP2i/doSYgA6mFisz
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX94E8MUM3lvLU
 /zmvA4i98EOTdRNzQWlHh0azvUnEavLNdvmKHke4kscNh/hLwDdVbZ4dokFgQa0jKJzFWepwt9X
 lUnz4bGzv2Mcv7ZIQIf2N+mkLYL/1yYPOVjvL17/uUd+zxUUVt//YCiFFhy1HBYj4PIbnVlpZuV
 m3uMDmnang4U7TzFODvbFNjlFRtSpnS5lyjq0XlrKn2ZM4mCciXGORnAm+i1G6vWC5o5UEAcLlr
 tU6Jvw4pwvbCNXTczspI/JvYUehMWBzNJOuDl3dghXkQUmLIaE+4W71PbNmxpmQTiz+IVMBoJpW
 +0BMYEVfoIKYs27wTFQ6feIMNMpqF4U4RSa2Skh5FMeq4dS+imluyEB3DxqgMcpDQZbPXNHy1s9
 M3d6XsWm
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c2e33d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=knvC0gF5dBKrktezL5UA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: Rh_k-qq9Skz9D80LV7aJANtSHhwLqHMq
X-Proofpoint-ORIG-GUID: Rh_k-qq9Skz9D80LV7aJANtSHhwLqHMq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

QCS615 platform requires non-default logical-to-physical lane mapping due
to its unique hardware routing. Unlike the standard mapping sequence
<0 1 2 3>, QCS615 uses <3 2 0 1>, which necessitates explicit
configuration via the data-lanes property in the device tree. This ensures
correct signal routing between the DP controller and PHY.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_ctrl.c | 10 +++++-----
 drivers/gpu/drm/msm/dp/dp_link.c | 12 ++++++++++--
 drivers/gpu/drm/msm/dp/dp_link.h |  1 +
 3 files changed, 16 insertions(+), 7 deletions(-)

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
index caca947122c60abb2a01e295f3e254cf02e34502..7c7a4aa584eb42a0ca7c6ec45de585cde8639cb4 100644
--- a/drivers/gpu/drm/msm/dp/dp_link.c
+++ b/drivers/gpu/drm/msm/dp/dp_link.c
@@ -1242,6 +1242,7 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
 	struct msm_dp_link_private *link;
 	struct device_node *of_node;
 	int cnt;
+	u32 lane_map[DP_MAX_NUM_DP_LANES] = {0};
 
 	link = container_of(msm_dp_link, struct msm_dp_link_private, msm_dp_link);
 	of_node = link->dev->of_node;
@@ -1255,10 +1256,17 @@ static int msm_dp_link_parse_dt(struct msm_dp_link *msm_dp_link)
 		cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
 	}
 
-	if (cnt > 0)
+	if (cnt > 0) {
+		struct device_node *endpoint;
+
 		msm_dp_link->max_dp_lanes = cnt;
-	else
+		endpoint = of_graph_get_endpoint_by_regs(of_node, 1, -1);
+		of_property_read_u32_array(endpoint, "data-lanes", lane_map, cnt);
+	} else {
 		msm_dp_link->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
+	}
+
+	memcpy(msm_dp_link->lane_map, lane_map, msm_dp_link->max_dp_lanes * sizeof(u32));
 
 	msm_dp_link->max_dp_link_rate = msm_dp_link_link_frequencies(of_node);
 	if (!msm_dp_link->max_dp_link_rate)
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


