Return-Path: <devicetree+bounces-216008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4BB53696
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90402564B34
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7EB134AAF4;
	Thu, 11 Sep 2025 14:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IHffhLmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AB734AAE4
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602571; cv=none; b=AvR9XBacGy7tO73/fv6q14GWG4rWspVvPcTaTh7fPU7y1/Jx6dHxojBy9z/IQZUCnfc9hG1VUosuGPMBdCH+/ISUK2pKQ3hi5FFMIzKgB13sjomhpdVa1GyHx0mkvkzLtX82gXeaVVn1esAvWt95A7q3twXkQ78fP8WxzjBvKcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602571; c=relaxed/simple;
	bh=Ka68iZ0YAPLqx39F2bkX9DO9L1BfCDXGkrO3CFDr1Y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zj5Gtsz5q4ssuRnxjqGzCHfYU5cN1VKZ8LSljxGG9awLYowd8wGdcHicYDvN1dCgjnYUmXKiM/6gfpmIjUQ2euZ1wFX6Vb87mUafE3sp9PocKmw3lY+Y05FDx7iTesbFXPTcQ7Yrj3cLDgzNNtxPUuBFeZPVF5Vnqe3Yt5Z/2Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IHffhLmg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBFfPT016098
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qf33+rpkqechNWLDM2iiocmjqpmdnUS1R/bV4PaBr7I=; b=IHffhLmg2Kp2S1GF
	7NUgB/aDIyENtgUzLBLy8UoNfDSsBtPFix49uLYfl6TVmX/cHQf0YsRk3X73Lhz1
	vcv/Ep/kjrtWH2iT/mUGrjm9LwrbSnjXsrftCu7HtCblXHGjoUHm0UHN/ciuWde8
	CMlON4E42Rz8WJFdB/ZrszPDwJ5LGpOox+3gVo/gPKPUCSQ/GywSj92C2rHaVJfB
	/evQ1AM+dOT5rdzFm8HoUwrLxjaOJDB+VEpBjJ1VylR6vaExAJbwCn3vR2ewTRdY
	HTF7gSyZYah0cR12KyO9S191LjFqkbYyvKo8QH4gs+kM8HBb9JrsU/bNlR7hrhCy
	XuWrZQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t384kc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:09 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b471740236dso36610a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:56:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602568; x=1758207368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qf33+rpkqechNWLDM2iiocmjqpmdnUS1R/bV4PaBr7I=;
        b=aJrqPdkZuLlgbxB+BDVC20TGxvmdAzq/mWacWCGjoAcv7Y+53n/2MpnW9uKc+VQbGg
         gF1xXlvuLGc+y3mOyIvGpJrD6i+O+KtuMX9dz2SXDftrnEwxjN26xyFbmqPrxs8IwsSY
         djsAgQMZNSxIDWIfDuYBg1J11l7VoaiHb6o8/MnHtlPjtNFt1Byy9fZVUIhuCDe5CtKG
         yNr9YyHB43xHM4JJTlMQXZrhADr3Svdy//fD2P/B/rHhVGXaToZYLl2H4whVHKZ2BXeT
         MWyeC6Eme0jcgE/tf96LlvgwrL6yiI21fe0MPsQD18eQfV8V4ESxJ0xoy1pLWPEnShvg
         XCag==
X-Forwarded-Encrypted: i=1; AJvYcCVSsfnJgt0VFtFGVwlZxg9pwyMPSDnXJQCY204C+OJsMyrLt7eByS3BufCWpzKZlB0EsLzwJxOVbbNM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3FiZ9pFIm9Rl9x4QMI3LY5AcdI3wqObl8BN1NnzRFP89DXIQa
	b47Q/fw+K8lbSmnMqBTxQIYgvNggolq+W3M2H7vnRnRwS4f8lB7w2ZsyqW9Yls3Qjub3wcPk4+t
	CmvL2fhZu6ReWrWtwO30fRh00enBiYdnbzwIu0nOmxeDP5juS4jbm2J+ACKNEYlF5
X-Gm-Gg: ASbGncvjTpIW5OyIiF+aXk0kiNJ4A791rbnaEWROYVGskZ7JKvE5Y8yQGaWsG4efJQD
	oA8rRLAq8cRTfIdkfkc/sl6ndGzA4cKp04otd6WdKZ+FwOKa7IXF3b9KbhP3jyvoqmzCHE4gk7Q
	4WZhX4M0EPs3HtrdzJQCdTszF7beSms+8Hx+nElhV6uQKgBbGqdeYQIMPgq5K7Z6OJagTrp2GHs
	tMjLYA6AwOHdc2rqOSsJKuHstaBUyQX5+0fqNWUlVpXifJMvg2bm9cDc1hn1PkjeJrnmvI+4LdG
	0Ryqj6pfcMkgA6NqlqdUt74PS27eE8w1XydR15HJT2EupQJgB9+CT+gEW/zZ189Fxj9X994arlb
	IpSMd428bqLLKGMiOcLTLaMvRHrDtFkucYbihFq8HfBAL1sYNt1A+cIhn
X-Received: by 2002:a05:6a20:3c8e:b0:249:ba7b:e358 with SMTP id adf61e73a8af0-253466f7f0dmr16784923637.7.1757602568327;
        Thu, 11 Sep 2025 07:56:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzOKHmMadDOEhXme38l/SgVEjQSf03G6ln8D6mZepsc9zXZZEmfprR+eGiQM7vxndfPtt00Q==
X-Received: by 2002:a05:6a20:3c8e:b0:249:ba7b:e358 with SMTP id adf61e73a8af0-253466f7f0dmr16784879637.7.1757602567620;
        Thu, 11 Sep 2025 07:56:07 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:07 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:02 +0800
Subject: [PATCH v4 05/13] phy: qcom: qmp-usbc: Add regulator init_load
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=5710;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=Ka68iZ0YAPLqx39F2bkX9DO9L1BfCDXGkrO3CFDr1Y4=;
 b=/ZWVMXETRYCmYdA8o6t2MnLwpgwvcWgvtvLKQLXtulERXXssTrM8ZB2ekpiJCe6sF3eIQ5bs8
 k1596YGMfx3AcWiYQkCCQAZUjlVIOjpNMsbccZosgJojGzZ/aSeLQ9J
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: sX6IAmNUEZXU1fQoUz-ZX2gjtcLdw8Ym
X-Proofpoint-GUID: sX6IAmNUEZXU1fQoUz-ZX2gjtcLdw8Ym
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c2e309 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RNflNDmReaz8n2eeux8A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX1bGjXnRkB6hJ
 tJdH8l+8k1M6wBZPeYmqUhIaMtcSlwtlV97Jtgi5AH/2dXn/DHd9lA1CYScH1ocNZatO0C8U+Sg
 T9tuDhvNHnm+pngh1e7ys8g0luT6//XYQmnSKuc379MvscVYpDaEHL2aSk9FaZD1crEI0QZT/dr
 adUL0Kt0N3Sl5ugZ2rAbexz2+L5hx1R41KDHrBhyKUOLNh0nOVmBBjzvWliszJEOBTKxKDosri3
 gAHt6Wi2ZOm79rSs8+d/8yLVWysTdlc/1C0KwyOYpHlbost3heaxvwc3h8GjhewIvhiPdLwDgEI
 Y9SKGEoPKiGiG2QYMRSyqNVxM/g1OAV9iRaOR15rE+QwOx4rzMqbrD7G2o8OdsFkuoU9rVO+D2o
 2U6UOTB4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

QMP USBC PHY drivers previously did not set init_load_uA for regulators,
which could result in incorrect vote levels. This patch introduces
regulator definitions with proper init_load_uA values based on each
chip's power grid design.

QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
regulator requirements differ. A new qcs615_usb3phy_cfg is added to
reflect the correct settings.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 70 +++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 791c7d86c51769bc9c7c5e1c73603c87fc71a820..23a0efa7fc4418f379ac4c02fd92080c7755dead 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -416,7 +416,7 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -508,9 +508,19 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-/* list of regulators */
-static const char * const qmp_phy_vreg_l[] = {
-	"vdda-phy", "vdda-pll",
+static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 68600 },
+	{ .supply = "vdda-pll", .init_load_uA = 14200 },
+};
+
+static const struct regulator_bulk_data qmp_phy_sm2290_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 66100 },
+	{ .supply = "vdda-pll", .init_load_uA = 13300 },
+};
+
+static const struct regulator_bulk_data qmp_phy_qcs615_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 50000 },
+	{ .supply = "vdda-pll", .init_load_uA = 20000 },
 };
 
 static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
@@ -562,8 +572,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = qmp_phy_msm8998_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
 };
 
@@ -578,8 +588,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_sm2290_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -594,8 +604,24 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_msm8998_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
+static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -627,6 +653,8 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 
 	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
 	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
 
 static int qmp_usbc_com_init(struct phy *phy)
@@ -911,23 +939,6 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 			   qmp_usbc_runtime_resume, NULL)
 };
 
-static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
-
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
-}
-
 static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
 			      const char *const *reset_list,
 			      int num_resets)
@@ -1235,7 +1246,8 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_usbc_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
+					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
@@ -1304,7 +1316,7 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 		.data =  &qcs615_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,

-- 
2.34.1


