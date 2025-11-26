Return-Path: <devicetree+bounces-242298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 70368C8903D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:41:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 853FE3532CA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB9231E0FA;
	Wed, 26 Nov 2025 09:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UuJ4zUFg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eCofYCZC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E74E2FF150
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764150015; cv=none; b=Z7eENSpLzgsQB5LeewtLy8/AYld633A8UQW9PY9Wj2i+ReBPMRYPBDyX0uccVHpsuZWl62S0MMxgMYtpiLtW2qiRCM5AzMJKKu2g40dACC82GnVFeYron2rhpRywpR+yZ9UMqsHViLan+G1kV2o96qsDMt2IWXn7qYacdDFRd+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764150015; c=relaxed/simple;
	bh=y/hwvKvcNJO1h5CB8FsRktRU4+4mAgET9C2RtM3Ut44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pjDlt9hMj4LBCu6+pPpRuCwxCyK/s/AbAbu/BUTpsszqHoNAiafVpaNxSZFdk4tTzi/W3L+UPrLB/sFO4IduEHqrhn2et1A9BTMhd8rgs4bcwKbj2klzj+WnZTgg18Zfrk5sLV93CG0WKX5IMidp5XryLuskAu+9TdrV0epKluY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UuJ4zUFg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eCofYCZC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ8JxvQ3666112
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	REs6ZBdLjDIF/e+cR7tJJA/2wQcglIdwSlvAhdROUFI=; b=UuJ4zUFg7MXKn/vr
	Pb6cTX+NczCT2sm2ZpSHLhAy3Bf/AiXSv6clGMAfqlzlw8XNfYOXFHBzecP6McIX
	BBNYATifPVNQkZAN+GFiFwbjMLJ3h0yTw4HKDQPNjYw4aER+YdkL4L6+Dg/WkK0A
	/Fcys/lEFhWJAhDdquAcqVBBa/an46y/jNZDMorRFJpMwhvFcjGcCfY22j2XH3UM
	lu6HW44JbKhVHNptmBUhx+ATw4NDp7vBlg2XR9LtfO1GVDdkChWZR6tWMA2c+6zS
	gn+D3vk2hBqFoA0ge4mb/BtMUT131VkLRQKTGjRMH+5xyym4W0yqmBsxQHTlBm5s
	kQjfIg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anmemsn4y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:40:11 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-bce224720d8so12264207a12.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764150011; x=1764754811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=REs6ZBdLjDIF/e+cR7tJJA/2wQcglIdwSlvAhdROUFI=;
        b=eCofYCZCVFyvUJ0bzrVl3ckm1Gd3aLEYwuU2JklLf2m0VLMkmDokPZBfLywFoTKgfY
         1gQU8kQU/ICGedW/cyvtcqC6Gfb8T1A68vIazozOnfxhDC8o7XGqgWszToC+63py5apF
         qGKJV4NwQfL93ETUd9PQcXLDM7qUGeGsUssY1IpIuBUtEguNb32Fr+MxiIUEtpRl1CzG
         TiR5TqvJDxVKLMbOk7uNL9BBdX6HjxSAyWHYxgItujMNg4L3KuR6teEj4XjfzytEKGLQ
         0uBusyKDU1MN3E9VYcOF/nhkHI3iRqPPct+hbW80gTACp0ZQG0C4isfkqLF0DCDRVJqf
         8Zrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764150011; x=1764754811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=REs6ZBdLjDIF/e+cR7tJJA/2wQcglIdwSlvAhdROUFI=;
        b=slgH7juhHqnhHVT/MJXpQi0SPn4t226AsDO6NBabVGB2h+hJUgbhSdqbP1gJ7Azo9U
         KdVZgL23LEuvd76CidFk60bYELqvvc18Tus+0L7yatugWm7htlnzoCC6ZE+O5Hp+fGZX
         jpE2x17J1m8Fq/bHt7D7lMe37iccNwV3JbfWGBA5dbrplbMkU4V5wiiea0jTtARDU45i
         /PCJOFkqlDpOI3vmUzwgLGJ1y8taYp+PWaOU79rPcn1zHgTNPjQKPY2X6iZEq5ttZVYo
         8UXBha5DldCBQP/aA/7WS0gzlIy5SAJHuO/d2fDz9zorVbBnu8S2CUanh35nUUkP/ghX
         ruhg==
X-Forwarded-Encrypted: i=1; AJvYcCU7l27hyhyGIkZJsmOaZfhdisQDwiKgPlk86hA6ViYHDxFZS8SHqk1zPDf1hhSDtgxSViNQyckvNTAk@vger.kernel.org
X-Gm-Message-State: AOJu0YyQGdeUcA2Arm3XLLFL8ZwYSy3Hua5rLYqJmOwl1MLKz6Nc6euK
	tDtUIwck3MmKL9A+WA46Ppr79lrvF3lzyW667qfCdzCO3b0UxWsxOG2We4/IEzwxHnPlM/vAgFj
	k2K6ISxZ3jYztMBq56p9Iic3Cc7XJLKJwp8cnbq/wSsoDF/r9B81qHX1sfmeRrJFI
X-Gm-Gg: ASbGnct3BUreQHaIfepDLScMhBcttmYWf7I6dACRyL3ScBdkfDF9mz5FnsuJiQiHWLV
	Oxgaqha81RaoU+RkeXBSXlqS49oklfN1FMsX/BaXb/EO7oSKyJiJo7msllanUXJYtTHU8DRLcHI
	GGypoyIGuNgKt3LwIW5hv8VIC4xgLiehl63O9PwkiocitFtT6CDSkWlxsMnlHCYZ5DHHIqUGxw4
	HLwcWFo4ydrHNfjbEaty31Vmz8zYiL5sauZ1H+W3zugURs8DPd/0+oqcRQUB3xglF7ZkhtqdXWa
	WngefNflCA2B376Kjym1QBCpnSgHi2PZwGDBuOj5r+SOBUJAA5PHFVCDMBIz7yyIndvLxfIpIsF
	R/qVoLyuOTc11prMr1NyBDY6koMsJrd2+pJ6NgqIvuO07R5GfsCwoLNpzf8L0fx7m
X-Received: by 2002:a05:7300:bc0b:b0:2a4:3593:6472 with SMTP id 5a478bee46e88-2a7192e5cb2mr12439764eec.34.1764150010750;
        Wed, 26 Nov 2025 01:40:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0lQEBRkJFx5hayI9QF9WUJYZBS6Sj0KxBz11xrhudU7eWgl42AvXm2kPJqinf0FD0/ZMy4Q==
X-Received: by 2002:a05:7300:bc0b:b0:2a4:3593:6472 with SMTP id 5a478bee46e88-2a7192e5cb2mr12439740eec.34.1764150009947;
        Wed, 26 Nov 2025 01:40:09 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e3e784sm69150307c88.5.2025.11.26.01.40.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 01:40:09 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 01:38:39 -0800
Subject: [PATCH 6/7] media: qcom: camss: vfe: Add support for VFE gen4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-add-support-for-camss-on-sm8750-v1-6-646fee2eb720@oss.qualcomm.com>
References: <20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com>
In-Reply-To: <20251126-add-support-for-camss-on-sm8750-v1-0-646fee2eb720@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: WL1l_DRm4ZWn5acMDe1lR5HDuMRQnpO_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA3OCBTYWx0ZWRfX+RvIhofPK7kJ
 yllOkx6m9s1zDAC2HEB5DsilzPSODUfygA9TJfT6XM8ToC3XUITX4y7JsYPrqnJknQpDg4GfWz6
 WxMIA+ns2FZoozAWbG9DS3C4UMqPuFK1ljpCxTMFy1h9g1jIKWykuO+wroqmXlGQ+Qu0pvHN/s/
 02wQ0cBHOaGy6VT4xQ69LCicFniItN92fyy7RgWPXvKzJgy3IkY2ga/jSohyrDsB991qmDevRCY
 Jr5ASuTej1uStF95kGFmEF8bGowwI5Pied1h5KchVFLFYk8uYV2xxsD4Q0zNfJtFM1fNOjN0c73
 XJj9aBC69qUVZ7yklCJfyZJes2bpAmp9KtlALTvLjSNgbZnQC5bvncPptuIQ9tZAdC9xVU5ioze
 CPQyy9RfTH853j495sXk6hQpZ9un5g==
X-Proofpoint-GUID: WL1l_DRm4ZWn5acMDe1lR5HDuMRQnpO_
X-Authority-Analysis: v=2.4 cv=bZBmkePB c=1 sm=1 tr=0 ts=6926cafb cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=BHla8BSFx5Mbbv4c_UwA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260078

Add support for Video Front End (VFE) that is on the SM8750 SoCs. The
bus_wr configuration and the registers offsets closely match with the
driver that had been added for Kaanapali. Hence, rename the previously
added driver as 'gen4' and use that for both to avoid redundancy. Handle
the minor differences in the driver using the chipset version.

This change limits SM8750 VFE output lines to 3 for now as constrained
by the CAMSS driver framework.

Co-developed-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Atiya Kailany <atiya.kailany@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/Makefile         |   4 +-
 .../camss/{camss-vfe-1080.c => camss-vfe-gen4.c}   |  60 +++++----
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss-vfe.h      |   2 +-
 drivers/media/platform/qcom/camss/camss.c          | 150 ++++++++++++++++++++-
 5 files changed, 182 insertions(+), 36 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index 74e12ec65427..6e54d2d11ed3 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -23,9 +23,9 @@ qcom-camss-objs += \
 		camss-vfe-340.o \
 		camss-vfe-480.o \
 		camss-vfe-680.o \
-		camss-vfe-1080.o \
-		camss-vfe-gen3.o \
 		camss-vfe-gen1.o \
+		camss-vfe-gen3.o \
+		camss-vfe-gen4.o \
 		camss-vfe-vbif.o \
 		camss-vfe.o \
 		camss-video.o \
diff --git a/drivers/media/platform/qcom/camss/camss-vfe-1080.c b/drivers/media/platform/qcom/camss/camss-vfe-gen4.c
similarity index 75%
rename from drivers/media/platform/qcom/camss/camss-vfe-1080.c
rename to drivers/media/platform/qcom/camss/camss-vfe-gen4.c
index 9ad3dee2e80b..d0218950c05c 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-gen4.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * camss-vfe-1080.c
+ * camss-vfe-gen4.c
  *
- * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module v1080
+ * Qualcomm MSM Camera Subsystem - VFE (Video Front End) Module gen4
  *
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
@@ -13,8 +13,12 @@
 #include "camss.h"
 #include "camss-vfe.h"
 
-/* VFE-1080 Bus Register Base Addresses */
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
@@ -86,7 +90,7 @@
  */
 #define RDI_WM(n) ((vfe_is_lite(vfe) ? 0x0 : 0x17) + (n))
 
-static void vfe_wm_start_1080(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
+static void vfe_wm_start(struct vfe_device *vfe, u8 wm, struct vfe_line *line)
 {
 	struct v4l2_pix_format_mplane *pix =
 		&line->video_out.active_fmt.fmt.pix_mp;
@@ -121,14 +125,14 @@ static void vfe_wm_start_1080(struct vfe_device *vfe, u8 wm, struct vfe_line *li
 	writel(WM_CFG_EN | WM_CFG_MODE, vfe->base + VFE_BUS_WM_CFG(wm));
 }
 
-static void vfe_wm_stop_1080(struct vfe_device *vfe, u8 wm)
+static void vfe_wm_stop(struct vfe_device *vfe, u8 wm)
 {
 	wm = RDI_WM(wm);
 	writel(0, vfe->base + VFE_BUS_WM_CFG(wm));
 }
 
-static void vfe_wm_update_1080(struct vfe_device *vfe, u8 wm, u32 addr,
-			       struct vfe_line *line)
+static void vfe_wm_update(struct vfe_device *vfe, u8 wm, u32 addr,
+			  struct vfe_line *line)
 {
 	wm = RDI_WM(wm);
 	writel(addr >> 8, vfe->base + VFE_BUS_WM_IMAGE_ADDR(wm));
@@ -136,62 +140,62 @@ static void vfe_wm_update_1080(struct vfe_device *vfe, u8 wm, u32 addr,
 	dev_dbg(vfe->camss->dev, "wm:%d, image buf addr:0x%x\n", wm, addr);
 }
 
-static void vfe_reg_update_1080(struct vfe_device *vfe, enum vfe_line_id line_id)
+static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
 {
 	int port_id = line_id;
 
 	camss_reg_update(vfe->camss, vfe->id, port_id, false);
 }
 
-static inline void vfe_reg_update_clear_1080(struct vfe_device *vfe,
-					     enum vfe_line_id line_id)
+static inline void vfe_reg_update_clear(struct vfe_device *vfe,
+					enum vfe_line_id line_id)
 {
 	int port_id = line_id;
 
 	camss_reg_update(vfe->camss, vfe->id, port_id, true);
 }
 
-static const struct camss_video_ops vfe_video_ops_1080 = {
+static const struct camss_video_ops vfe_video_ops = {
 	.queue_buffer = vfe_queue_buffer_v2,
 	.flush_buffers = vfe_flush_buffers,
 };
 
-static void vfe_subdev_init_1080(struct device *dev, struct vfe_device *vfe)
+static void vfe_subdev_init(struct device *dev, struct vfe_device *vfe)
 {
-	vfe->video_ops = vfe_video_ops_1080;
+	vfe->video_ops = vfe_video_ops;
 }
 
-static void vfe_global_reset_1080(struct vfe_device *vfe)
+static void vfe_global_reset(struct vfe_device *vfe)
 {
 	vfe_isr_reset_ack(vfe);
 }
 
-static irqreturn_t vfe_isr_1080(int irq, void *dev)
+static irqreturn_t vfe_isr(int irq, void *dev)
 {
 	/* nop */
 	return IRQ_HANDLED;
 }
 
-static int vfe_halt_1080(struct vfe_device *vfe)
+static int vfe_halt(struct vfe_device *vfe)
 {
 	/* rely on vfe_disable_output() to stop the VFE */
 	return 0;
 }
 
-const struct vfe_hw_ops vfe_ops_1080 = {
-	.global_reset = vfe_global_reset_1080,
+const struct vfe_hw_ops vfe_ops_gen4 = {
+	.global_reset = vfe_global_reset,
 	.hw_version = vfe_hw_version,
-	.isr = vfe_isr_1080,
+	.isr = vfe_isr,
 	.pm_domain_off = vfe_pm_domain_off,
 	.pm_domain_on = vfe_pm_domain_on,
-	.reg_update = vfe_reg_update_1080,
-	.reg_update_clear = vfe_reg_update_clear_1080,
-	.subdev_init = vfe_subdev_init_1080,
+	.reg_update = vfe_reg_update,
+	.reg_update_clear = vfe_reg_update_clear,
+	.subdev_init = vfe_subdev_init,
 	.vfe_disable = vfe_disable,
 	.vfe_enable = vfe_enable_v2,
-	.vfe_halt = vfe_halt_1080,
-	.vfe_wm_start = vfe_wm_start_1080,
-	.vfe_wm_stop = vfe_wm_stop_1080,
+	.vfe_halt = vfe_halt,
+	.vfe_wm_start = vfe_wm_start,
+	.vfe_wm_stop = vfe_wm_stop,
 	.vfe_buf_done = vfe_buf_done,
-	.vfe_wm_update = vfe_wm_update_1080,
+	.vfe_wm_update = vfe_wm_update,
 };
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
diff --git a/drivers/media/platform/qcom/camss/camss-vfe.h b/drivers/media/platform/qcom/camss/camss-vfe.h
index 118cac5daf37..c402ef170c81 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.h
+++ b/drivers/media/platform/qcom/camss/camss-vfe.h
@@ -249,8 +249,8 @@ extern const struct vfe_hw_ops vfe_ops_170;
 extern const struct vfe_hw_ops vfe_ops_340;
 extern const struct vfe_hw_ops vfe_ops_480;
 extern const struct vfe_hw_ops vfe_ops_680;
-extern const struct vfe_hw_ops vfe_ops_1080;
 extern const struct vfe_hw_ops vfe_ops_gen3;
+extern const struct vfe_hw_ops vfe_ops_gen4;
 
 int vfe_get(struct vfe_device *vfe);
 void vfe_put(struct vfe_device *vfe);
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 9dea343c1ac5..48d8f282d780 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -245,7 +245,7 @@ static const struct camss_subdev_resources vfe_res_kaanapali[] = {
 			.reg_update_after_csid_config = true,
 			.has_pd = true,
 			.pd_name = "vfe0",
-			.hw_ops = &vfe_ops_1080,
+			.hw_ops = &vfe_ops_gen4,
 			.formats_rdi = &vfe_formats_rdi_845,
 			.formats_pix = &vfe_formats_pix_845
 		}
@@ -274,7 +274,7 @@ static const struct camss_subdev_resources vfe_res_kaanapali[] = {
 			.reg_update_after_csid_config = true,
 			.has_pd = true,
 			.pd_name = "vfe1",
-			.hw_ops = &vfe_ops_1080,
+			.hw_ops = &vfe_ops_gen4,
 			.formats_rdi = &vfe_formats_rdi_845,
 			.formats_pix = &vfe_formats_pix_845
 		}
@@ -303,7 +303,7 @@ static const struct camss_subdev_resources vfe_res_kaanapali[] = {
 			.reg_update_after_csid_config = true,
 			.has_pd = true,
 			.pd_name = "vfe2",
-			.hw_ops = &vfe_ops_1080,
+			.hw_ops = &vfe_ops_gen4,
 			.formats_rdi = &vfe_formats_rdi_845,
 			.formats_pix = &vfe_formats_pix_845
 		}
@@ -327,7 +327,7 @@ static const struct camss_subdev_resources vfe_res_kaanapali[] = {
 			.line_num = 4,
 			.is_lite = true,
 			.reg_update_after_csid_config = true,
-			.hw_ops = &vfe_ops_1080,
+			.hw_ops = &vfe_ops_gen4,
 			.formats_rdi = &vfe_formats_rdi_845,
 			.formats_pix = &vfe_formats_pix_845
 		}
@@ -351,7 +351,7 @@ static const struct camss_subdev_resources vfe_res_kaanapali[] = {
 			.line_num = 4,
 			.is_lite = true,
 			.reg_update_after_csid_config = true,
-			.hw_ops = &vfe_ops_1080,
+			.hw_ops = &vfe_ops_gen4,
 			.formats_rdi = &vfe_formats_rdi_845,
 			.formats_pix = &vfe_formats_pix_845
 		}
@@ -4053,6 +4053,144 @@ static const struct camss_subdev_resources csid_res_8750[] = {
 	}
 };
 
+static const struct camss_subdev_resources vfe_res_8750[] = {
+	/* VFE0 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "vfe0_fast_ahb", "vfe0",
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
+			.pd_name = "vfe0",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE1 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "vfe1_fast_ahb", "vfe1",
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
+			.pd_name = "vfe1",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE2 - TFE Full */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "vfe2_fast_ahb", "vfe2",
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
+			.pd_name = "vfe2",
+			.hw_ops = &vfe_ops_gen4,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+	/* VFE_LITE0 */
+	{
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "vfe_lite_ahb", "vfe_lite",
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
+		.regulators = {},
+		.clock = { "gcc_hf_axi", "vfe_lite_ahb", "vfe_lite",
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
 		.name = "ahb",
@@ -5485,9 +5623,11 @@ static const struct camss_resources sm8750_resources = {
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


