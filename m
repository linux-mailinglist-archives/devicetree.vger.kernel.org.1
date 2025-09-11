Return-Path: <devicetree+bounces-216013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA16B536A5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F7E71C23DA5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52B835208E;
	Thu, 11 Sep 2025 14:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g8jl3gUW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1614034A307
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602598; cv=none; b=eXeS77Ft9ptGCrYA593dbYCnR2SPJVKE0iBChxOyDpSQZ9j7Hpt5OpRNMEHYH0T1CUfw14wl2Rf2TDSu/DACwk7nnMGqUCilMlmsmwqqZTKjcVDK82gxKzBXXjqNUBz6/UKKSoZ2jZuJQkBZntXHciVvBY7Jd27K1ZDZIQFqrKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602598; c=relaxed/simple;
	bh=mc60fbGnoAVEo5yG+c12CgJyqEsRxFDHJbOqeLy8ArY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QQtknTHxOPMUmBQRHv0l8l7burTYkpDyE/SuUCifGkZ32Ur7vvfmEEMCwOll1Pp02QoI5t10RJSVfyMsM2EitE97Uh3g1MQE73lL3sPXtJ96aFdSSio3GKYKfaqXdyDlmk//XhVzSmGF7hUOJjn1d7N0VfJAmfJtAO65uwsBFps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g8jl3gUW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDYMv5002279
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNQeat9pvNbPTog67roy6KckIEGxAOnd4dbWmMxr+og=; b=g8jl3gUWF+B7wb/t
	Y57wnvQ5U4L4AugZpZa+RZfiGF0E7U+eY+fEk8nF+CCnuwVhspCB9b/KsrWbHAeQ
	NunepMkLfx37O5rjegq0gVYaK98s6ymDUPhnCDof8usvT8jFGNSPxcjoXCuJoDCy
	R/c04/vRlJGTdNfJCZPHQuiMtAISC5wbJOPhayat+lBDP+4zDgdUn9KqxtNLs4JZ
	Su7kpuHs7Etl+a9HxHzaOxk3ELc0eNEAkouLIi26VVXRfav4k26MoQaubnpsJ8iY
	ZIw1lN27ZtcFgl2r4Ta2HmArpNKBehf77ei+JN0zeNNdyXAGAw6Tvisq93dUv8Mi
	91y53w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv0bb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:56:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32b5cb0809bso227342a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602595; x=1758207395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNQeat9pvNbPTog67roy6KckIEGxAOnd4dbWmMxr+og=;
        b=c6WkCb78BlUCF8D0h3Zv/5H0IxGeNJgalpeddhncBzumLcZAcOdEjHGudWQXBiXPsw
         xa0nJpGKELBsMD7ugkqUGa3Sjp+f1w5t/jrfwTl/QIJUrT7Zg3YQK2BDmOe+Ql7BwdWH
         ryY+eAeUeQWk8k71xqQsrEgdhPzaKnofz/negOgB53jEgtPiKn+PoX5B4g/J/HoKvrmB
         zZIRZxHNsP0ucPDGCnB6FWGsZdJDVK8xex2FTJoRWV/I6XKQ86twqrd+R0W6w55WXPO2
         1RZiSa+kU2lzqNvdhgE5hmB4J1K8n8JgLT0WNjFixKEC+kGbwURDbS5SMdDNQsdlkTce
         DtKw==
X-Forwarded-Encrypted: i=1; AJvYcCUShInjPovyFpBzMEBGFVn1fqJsjV6f5xg1dAKIaS80jLSrqC6tMB+hIiXoOEh0Unn3jCfPIVVxgXOl@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvy9MkIbeyIjwpUmbiVlNkRdaQnsz91o1QLW+pphWxPQBxeV4S
	egNf3UC45iX+SjrZH5QahauaNG68PLIPsvj+vHY1qceku30vgmmdjEHtykC33NHEeONs77IdSQY
	N+QsRN2Cpi1tk860ZHI/HHXuvXXGR6oZKKMsaRSk47zFwtj152OIUX8uU75rZdfIa
X-Gm-Gg: ASbGncuhJZT3ly1DZOSDdTeVKgTBmlOkZUmcaTpwKk8gXygLJqLAwU5/Y7D9cqXehNr
	Dd41QoTa6NYaITkVHckYnjBDHRy+3I6eOeLN2acIDCUpGM3PNHE6JukMhyC55Wvn9RmO9+Qw6Av
	I/pgI6RKli2lCSi5SSuWSWG2VeocQJ2zKwd08WczOI4zxGnDwF6CxJYZ3tqUZQ/WgzTSq81Ps+k
	2GSWPf0jF1wJHdbfR5YJYboIfFSaz3wgSlhvHB5jLBzCJW/v+6bOYGboyChc3LF6kttN7LoZt3R
	6hcbIbbkFNStHt5Ma9jfwPXHrBcRofTUU3OFMZFxqjdrgWd9E6eii1p3aRjbjW93WGhRQEeME23
	BRappwGtyBoiP9BGhvfNysykd/OzQZiHnR/C8XrXqAgc7Ht1szTXARXPw
X-Received: by 2002:a17:90b:1e53:b0:32b:7082:b4 with SMTP id 98e67ed59e1d1-32d43eff842mr15045436a91.1.1757602594613;
        Thu, 11 Sep 2025 07:56:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvB0n9NMJS1ssPh6TYrlAyonIfVRXAMxAbAlgyzpNBDjSW1xB+NeJwGODHWLYzvOXf9ftkFw==
X-Received: by 2002:a17:90b:1e53:b0:32b:7082:b4 with SMTP id 98e67ed59e1d1-32d43eff842mr15045398a91.1.1757602594070;
        Thu, 11 Sep 2025 07:56:34 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:33 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:06 +0800
Subject: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602528; l=4233;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=mc60fbGnoAVEo5yG+c12CgJyqEsRxFDHJbOqeLy8ArY=;
 b=SBS1/8HrXVaD6s2hujd4K482pOZYmdQ76wxvNB8nYNvez9CiGfPDcHnXCpjF5aCAf5pHlWsYG
 VudOVMF1sUvD28zAAEmVHwrpU/l47Mo4Xn3Ozy2hOioRZYXiYluCkkq
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfXxLSLAEjOhbGu
 7Jr3E81dGZdD0LUwkeTJuG3o1mOsztzGHjPLLTomoD/YE0jaMhqMXnuYCB8ziVirC9iooDIdf4e
 qLhcAN17Kec2QmDG8RrEPiSn4885gUQtbq4iNxC95xV24j9f73U/ATrMmR1aLFuOe8kHuqtBEsl
 yx2Iv+r2lc06tK104vxxNEBvy4DR6xcQT72U17QhkEtByWgFiujk+LFeU3xyXpYkP+JjsA9JJ7h
 nQkrovGWW1Rk6KITcEe8kjwAAa6eF8fUKbZlQf4s3J+Yl/Ei/ridCIo+7ETwlMqix5d4tj8mY5c
 pzmIHwngWxYyw3+/I5xWpKlZS+na5owgsY53+k2ST1eep77DYiIB62ecAFmpoq3uZ621ku88LW9
 SCcobw1v
X-Proofpoint-GUID: HHwW46FPySV8IxE19I-khCYRHfMvUmNN
X-Proofpoint-ORIG-GUID: HHwW46FPySV8IxE19I-khCYRHfMvUmNN
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c2e324 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ADjXBmbmjA5MTMSrQwQA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120

Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
Move USB PHY-only register configuration from com_init to
qmp_usbc_usb_power_on.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
 1 file changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 95a099de908e7f3478eb1e18326b21d4014d8da6..c57596fe0d5cd5c15105ad8183ccdc047953e4d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -33,6 +33,8 @@
 #include "phy-qcom-qmp-dp-phy-v2.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -686,12 +688,16 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
 
+static void qmp_usbc_set_phy_mode(struct qmp_usbc *qmp, bool is_dp)
+{
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);
+}
+
 static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -716,16 +722,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-#define SW_PORTSELECT_VAL			BIT(0)
-#define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
-
 	return 0;
 
 err_assert_reset:
@@ -996,6 +992,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
 		      cfg->serdes_tbl_num);
 
@@ -1068,6 +1072,8 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 	if (ret)
 		goto out_unlock;
 
+	qmp_usbc_set_phy_mode(qmp, false);
+
 	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
 		qmp_usbc_com_exit(phy);
@@ -1493,6 +1499,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 		qmp_usbc_com_exit(qmp->usb_phy);
 
 		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_set_phy_mode(qmp, false);
 		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
@@ -1634,15 +1641,16 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
-	int ret;
+	int ret, args_count;
 
-	/*  for backwards compatibility ignore if there is no property */
-	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
-					       &tcsr_args);
+	args_count = of_property_count_u32_elems(dev->of_node, "qcom,tcsr-reg");
+	args_count = args_count - 1;
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg",
+					       args_count, 0, &tcsr_args);
 	if (ret == -ENOENT)
 		return 0;
 	else if (ret < 0)
@@ -1655,6 +1663,9 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	if (args_count > 1)
+		qmp->dp_phy_mode_reg = tcsr_args.args[1];
+
 	return 0;
 }
 
@@ -1694,7 +1705,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
+	ret = qmp_usbc_parse_tcsr(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


