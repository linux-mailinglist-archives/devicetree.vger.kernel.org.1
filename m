Return-Path: <devicetree+bounces-216006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D53B53691
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8330B16CB0A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93FA7346A1D;
	Thu, 11 Sep 2025 14:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dwnw78Tq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E1F3451B9
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602559; cv=none; b=U+jjnenYEaXPX+oS+wiDBMujeeIzJ7Nl9s0j4rjjQ0758fzFLwojX2s+X8zpe/gr4l7o4JpMf6EThfS3bHeSW73mbMrVuUV5J2uIOlQKD7X+C1wL5sHoGLw/JBSfrn6oD2ET4tb5cKat0eJTJiR/qFuAA+Edc3OzsaADuJUCNxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602559; c=relaxed/simple;
	bh=7+KyniYQTJ+9G3oqOiRpqeMGFIBrJBIyusIP4VdRaxk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=beQIMT0KSX0PTsfdaYkfenONqWiV3lJcpzp1jmhHMV2l0sSjTW5wR1N7t+CxQvP2dRwAHkSQegUEFlPcVb7vikgHa13ERXXOcfZVB9oeGLuUVqHZQAGoN4UElO0hGtkkemrnFgDbT5SumyPtOZ2GErfa/lPQtDXEqsZp+0E7+9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dwnw78Tq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAxSa3008167
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yj6L58xwnl408i85N6AVkTYY2VfPx4sT2ZTdfwp/cHg=; b=Dwnw78TqB3/qxMr7
	2xvh+jOzRYgF2B3/DPw+zjLr8JSvUmEeCSmOhHYbdN1KwWoUeFPP5H24rEeGNtFk
	CObYPmlCGoPIAhQsyAtFtaxjF2Vc5qtOATmW5klZgqQc5YShIZ4XBxhSiH5oG4bP
	5jUmUs6363VUCTOrCMa0Zm8uJFrcdEwnu3IFpw4T3EN9/RxxNsHSq4bzGeGcXRDe
	ZGsPxZfa+GaBvfMui/jyOYZLK9BoM1Bxhavt5TI2OCggwPJx5i+3DdmfD/U0bO2V
	Dh/Y4BG9KshXILbiPmWlyllyZI4ksk1siFVZ7Si0Izk5d6guXJhL0RGc9Oi/Lsu+
	Vbd+dg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aaprer8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:55:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32b5c46baf3so236321a91.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602555; x=1758207355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yj6L58xwnl408i85N6AVkTYY2VfPx4sT2ZTdfwp/cHg=;
        b=vyaGutLgZbw95SKYbjIYrnAKCB7Mp0yy32SwZRqE65o0v/34iOkUruldjjqQvHWiPo
         uN1zdBsQ4osriRL3TItA7+ED/0hi2atzVN+IZIfAhtxDnNVe7SdcrhDXv1kATBPhzD1e
         ynEr8qcokdycz2fK2V+4bY3JA5jeE2e9ZXeTCNQnnPGipiO3XkGcUdhFbibaUPbG88vX
         Vp50iR8h547ewdw455WKBiEnO8fTSixKQ+ZnrWEv6BFTvM8nbM4Zfs5yfMD84zL2oywQ
         NXw5QO9DWvkLNA4b6HXQXKpQBz2GJP5r3jNuajoPXKZK9W0AC2SsP02wS/TBrX58RvTq
         8S/w==
X-Forwarded-Encrypted: i=1; AJvYcCWcGgEdsOu4GMGWt/M9VKq+eUr6QvO3kPnKQpY7y2X8leje4oc5ZEWdeicEb06FHlFm/NpER0UII/SN@vger.kernel.org
X-Gm-Message-State: AOJu0YzjEgnDqUkR3Cd05FhKV/JUyOyxVwEpXvtRqPUpqza8xVLinMFf
	zV0YbHo8t+fZKjDrz1GZ/17ioAkQIE+BEJJUWTtFtjm6x4JM6w30ZahDuWLIeo1G+2rddLGEigx
	R0htgHnf/5jdkvEyb08eRQ9ejB7XbGzJX95RCZmEUcKuXfmKzATu+NY7IYYF6khky
X-Gm-Gg: ASbGnctmxi36o1IbSyLLTxmtAW7VYsdvjvVu2PrkczUwUH7L2G+Wa+1JLcxEy0y3cID
	yCzLLSedabrk5RYtyKh7hsighkhZqtaOKM2vO4ZEYIOFJKzIgngvwJPBsjAh6nCgmRPj/5L3nq5
	L2+DBg3UR2SxgPxbm9XU5trA6YHarAVgt3FoAK04XpyhBfzPiqLz86+9La29cVuPBMBQTMBXc67
	gAhHTjLEpQ8+X7AqLYy8JSxBYTLTh8Se1cbKVSYLXH1mG8PttlKgwsfUAYqryD3xunNfr7ZL4qi
	dTBHquAHG1TuNYPRthp6XGUUY3IMIVpnduAXmbqchKhIKqLal2niVzXIUGT+/2KLW6r8ss4CTjf
	vjY0qfCkGJMZjCRjBx/MSwHrctrZLxYtApnID8MBxHsyxiYAc9BTeWQbC
X-Received: by 2002:a17:90b:17d1:b0:32b:4c51:628a with SMTP id 98e67ed59e1d1-32d43fb18dfmr13671120a91.8.1757602554895;
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSF0u95PMC40wmGcQT8D474kYHcmFyGjeWgeP2uLbuzJLRPPy3g0ruE1l/NyUdy9AtHv34Ng==
X-Received: by 2002:a17:90b:17d1:b0:32b:4c51:628a with SMTP id 98e67ed59e1d1-32d43fb18dfmr13671091a91.8.1757602554372;
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:00 +0800
Subject: [PATCH v4 03/13] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=3912;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=7+KyniYQTJ+9G3oqOiRpqeMGFIBrJBIyusIP4VdRaxk=;
 b=DZMpi5unXPCafzFW8cKQEPg+NAoZ8HMSlQCoFHZsiNctl7mZcEIdfdbbHbFCF5e3h1hXNi3T2
 NRHO3m64nqfAuLqIKQUqrMS3KA18+vrmGif51fpbuOmGYa6QEJtix5+
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c2e2fc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jm3WsR2aq1IkTfYpOVcA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: LKb4kqildLl3AWMHW-qPpXHrupE9dFer
X-Proofpoint-ORIG-GUID: LKb4kqildLl3AWMHW-qPpXHrupE9dFer
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXxcOjdWBOefDf
 byXbHZ2noQZT82/b5L48FyB+4aDtlGVgxxEPK4IqM0GsXXql9TkevnnqfVL8R6rzYMPsOiguOd0
 zBWNRBypgbh83fpP/dh/w6UOzzll5BwqB7/blpDWXt4L3XaZSvz3gs21ItJwErGeBy4J0eN50eV
 81UsgW4x4tzvrCqRiwAcaRfrbnneMoCZdX823t1sacAZi2LNygmXlTbH8VcAR7tDFNKqK5DEy8l
 Lb6rob/6SxtmFsT5OGoKWT1LmF+XDkwNa2KbjymwTsmwF+PoM9LwUL23vq7mxEkOcpZZVaV5OGB
 m9rmxW/3HOoZupVEqh05555HaR386mAUT1DBns+w8GJ09bVYupz+g0DPqvz7L31f7f+IbUh/YM+
 XwQKoqGA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
including register offsets, init tables, and callback hooks. Also
update qmp_usbc struct to track DP-related resources and state.
This enables support for USB/DP switchable Type-C PHYs that operate
in either mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 54 +++++++++++++++++++++++++++-----
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 62920dd2aed39bbfddd54ba2682e3d45d65a09c8..de28c3464a40ea97740e16fe78cba4b927911d92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -293,13 +293,18 @@ struct qmp_usbc_offsets {
 	/* for PHYs with >= 2 lanes */
 	u16 tx2;
 	u16 rx2;
+
+	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
+	u16 dp_dp_phy;
 };
 
-/* struct qmp_phy_cfg - per-PHY initialization config */
+struct qmp_usbc;
 struct qmp_phy_cfg {
 	const struct qmp_usbc_offsets *offsets;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	/* Init sequence for USB PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
 	int serdes_tbl_num;
 	const struct qmp_phy_init_tbl *tx_tbl;
@@ -309,6 +314,27 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
 
+	/* Init sequence for DP PHY blocks - serdes, tx, rbr, hbr, hbr2 */
+	const struct qmp_phy_init_tbl *dp_serdes_tbl;
+	int dp_serdes_tbl_num;
+	const struct qmp_phy_init_tbl *dp_tx_tbl;
+	int dp_tx_tbl_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+
+	const u8 (*swing_tbl)[4][4];
+	const u8 (*pre_emphasis_tbl)[4][4];
+
+	/* DP PHY callbacks */
+	void (*dp_aux_init)(struct qmp_usbc *qmp);
+	void (*configure_dp_tx)(struct qmp_usbc *qmp);
+	int (*configure_dp_phy)(struct qmp_usbc *qmp);
+	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -329,24 +355,36 @@ struct qmp_usbc {
 	void __iomem *rx;
 	void __iomem *tx2;
 	void __iomem *rx2;
-
-	struct regmap *tcsr_map;
-	u32 vls_clamp_reg;
+	void __iomem *dp_dp_phy;
+	void __iomem *dp_tx;
+	void __iomem *dp_tx2;
+	void __iomem *dp_serdes;
 
 	struct clk *pipe_clk;
+	struct clk_fixed_rate pipe_clk_fixed;
+
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
 	struct clk_bulk_data *clks;
 	int num_clks;
 	int num_resets;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+	u32 dp_phy_mode_reg;
+
 	struct mutex phy_mutex;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct phy *dp_phy;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	unsigned int dp_init_count;
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
@@ -689,7 +727,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -709,7 +747,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


