Return-Path: <devicetree+bounces-221757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E55BA2B9B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 27BD51BC71A8
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB8C28CF4A;
	Fri, 26 Sep 2025 07:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MUO36ulx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46BF289358
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871598; cv=none; b=MceJLGhbsm5eVoSeswf6nWI7J12RLmOVD7/Nig7ublM0Tdyhq1UMqHC0RxFDxUviehm1556+SAFMrP2i7sry/sFCxznsnO4yL28YFY6L4yBLY5xwQFYll6nWzKrINCQfETYmXTIuJrH1MzMnF2T309H+ebHEfbxSgw4IPkmSpmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871598; c=relaxed/simple;
	bh=V+bmwYjKfMRV9O7yUHq5omi3q3vjjg0Qz8GTgu2JE4Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XzTB0ws5KWSnnWZAjGTNHKcpIk99q0KRW8qKaT06jt8MRSGIogC1LHE6pHkzW88faBiNV78XtwNNuuhWjvoCYRhobSU8Fx6evbYXaO/v1EHxoO6icFnqvsM3pfQLZ12JjX6wD0oY2mr6uH64+fB9X6/4CSFlp+RmHNgHbu8ubSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MUO36ulx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q7EAt9004169
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=; b=MUO36ulxe97L2OD9
	1BqLZ//oeJKZlzPBFOMEWw0RJNvdw6Pf21HW9DNvxjAfqTZxX9lXGyjuCQOHTFqo
	Cgtxr9MURwmFGZMKjyP0sJ4AquEbrh2DoLj8M3GJ02OwcnvseyJfgH6amDgUSh++
	SjJNEmhjL1cgfJG5odETXojel1Hs2Yewrcdsk23PxhoadICDqTXCNFgxtdAFi+o5
	ixs0t+uhHIfw5b2pb3cgg315fB4f/+O8MUmvDkXxiY8YZYHfBJzyZN+kIudbBWET
	oBjXnOa1EJM4Uoje0/ngN90OBmzBlr1h66aond7InW7AA8Bc+ymf201AVd//d5uw
	fiYfDA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u1vtr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269b2d8af0cso4284715ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871593; x=1759476393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=;
        b=dMJxBM/ZtPo5HmKGzooA16uULV+cy22liA2IQqTOwtlpSTOuP19fm2eyghFa8TEzHq
         tB5kPyFhClMmlqGtr9OO89bWkpadsi9l7GV71iaSlBNUxWq3rF2OkudutPclTFQ+CHWx
         C0hwLFdGdnxJGrhxOIGYEEZx8MZkwGgpX0E+TAJZmg2jaLWCjvAbRZe3EKB4y+FyjcwL
         PFQFh7BucWVaJOAB6ORnB9ylIjOBwP/mwW+yz9WV6NVi4tTd4O1aixd4IKdQjBIB1X03
         349+zRfwfR8+YsloMdhFup8YJE/+FX8GTgF9O4frwCKkgb7RC0muIxLWLLpaclaGk8OZ
         1uhA==
X-Forwarded-Encrypted: i=1; AJvYcCWBYVu2q/rN9GVrQLCxYwZvDMaZRoLVfoOqPTuFwiBokgKjdi1M1w7fcmlyksa46Uywx+d7a39uQ4WX@vger.kernel.org
X-Gm-Message-State: AOJu0YzWuRk5jxtLI6gJkoaRELNpA+dOr8dakWEWf0Y5EU4Prx+ILe1V
	S0ZwXvupXxeyrmBzYy5y+aEk66E7D2cf43aahAT/s8H3RTS+Ohz595qPWgdYZljoEZ7yt0aLVxH
	kF1QE/izT7XQyxIdr9gMeorHw5+hsbERM/RAOngN04WGfPqks6LPt60VmgkeDZkv2
X-Gm-Gg: ASbGnctvVAk3xdUsboTVCaCUiKJgKEribjWVaLewaz+E75nXV0oP2sMbcRLq/AgbidS
	NkiHtU/JU9OHznvtLExqmp+Rho7/+cIKwHYfEFu8wbb1o3Oj5IKmxsBXTshQPvhkwyzKB8tEvEc
	RTV9owgFaZTe0Te1Mnu7g0KchFxUZ5VI+HAFTf6Wfv65phzEgwnTk7D3cznZbLpTkY7Buln8k7x
	BsSoqHYrtTX8+B7D5oS75u0gLWUz4Akuztex8CPNgKOXq0KIJ45+prQMvw3snwsIiZHoZCcsYds
	rEJSvMindsF07KfdJFd6BTYfF5U2+gv6ozdX9nAQ2g5ICejAnwVZw6d6BUsZduxFqVBjByjA8DV
	ewqXYK33ZSIZn4vWbHa5U9eLAhCa/lZgVor0uMMSxPFQQZ7ud68mM60W2
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47493095ad.7.1758871593434;
        Fri, 26 Sep 2025 00:26:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtuIwETTdMuZFytO6gNG8pDDirIuQO50mBZZkHzCplsKRiXqaAce6j6yazHtoa1boWUkBnIg==
X-Received: by 2002:a17:902:db11:b0:24e:af92:70de with SMTP id d9443c01a7336-27ed4a7e773mr47492965ad.7.1758871593007;
        Fri, 26 Sep 2025 00:26:33 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:32 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:39 +0800
Subject: [PATCH v7 03/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-3-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871562; l=3979;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=V+bmwYjKfMRV9O7yUHq5omi3q3vjjg0Qz8GTgu2JE4Q=;
 b=8Gw1TqMTIu4+SMDOsf2QNnJ1zb+xwdOWQ6J2y4ga7ZkzeMW8XD2pf5E9cnQQLlVs0je+aagaj
 NmrMOdI5mPgC9gOOCsgy43oMazsY2HtkgiGoJtjIMzdWF79TzMxQ05T
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: WHLbnTSrxgzGujUaneCPV6Ujwyq-TVS9
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d6402a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jm3WsR2aq1IkTfYpOVcA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX+eMl/0StWKCz
 54q7xrDSdH8R1sMVkxjtJCP141gXEa/wpwcQ3Uuhq0Cl8ozxHecrfvtszI1ba2FXu6WHHyZJoT6
 fGcjLro1M0kFw8d7lYmpD4oirsfrPIDm+7BNJTghzY4jHRMorPnCwWlmmKHJ0KIwkfXaLdt63GO
 ndaLOYm2p1wTMDb75ldOdO7Sc3aDfcW43W1ezyIWx6VO6PkJbnqtb1k+D8Q9w+s8bt6w0leUCQD
 eO68ffhWZNPxrHEOh7Y4wV71yJ4fYWO5ggamQaXF2hw3m5exR4mqevEjkQ+wuD8+gMEh2PjMuhy
 vtFIyPS1tV/m7tiuphvjd9hcrFQQe4oCtzHCZvO1QnV9WLkbty+T+qmaId1Za+l06ThuVG7jVfQ
 aaczbUCb6rxicMIANYThj3j/1kLXRA==
X-Proofpoint-ORIG-GUID: WHLbnTSrxgzGujUaneCPV6Ujwyq-TVS9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
including register offsets, init tables, and callback hooks. Also
update qmp_usbc struct to track DP-related resources and state.
This enables support for USB/DP switchable Type-C PHYs that operate
in either mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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


