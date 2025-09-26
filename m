Return-Path: <devicetree+bounces-221758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 843AABA2BAA
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 843EF7B774B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A115B287269;
	Fri, 26 Sep 2025 07:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lcdzY8+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A3C28724C
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871603; cv=none; b=s3lYpj2v1lY7GpYTx4ugtV4bNQfpH0Zx2xZwz+CGYfX3wx9MjXRx/C7wuKm5eN6XbqIeFQm5IsXCAN1dxMSiyohWA6tHvXfCOk6h9LQTqX9IVmTIlz6svG8THnGFWNVqg0vwR5UcNLTRqnTI0IcAL493FXFaGSyVx6N79NTfSIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871603; c=relaxed/simple;
	bh=ScND5R19fNR4fxgqnX3CVdg+GNtnOHYJhlmcXMGybGg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iMdgHlA1CzlXy6qn5FgZ2iZiHchcPCfDz0cU+7wAaDFgSxoT7prpRYPp3dwZNXO8JlJjUxwtW3FIvoxwiCVZzpiU/RmdlsGDPWppM1W3odJE5O62MOUffB6j8pn8nUPNCdVrXov9HpMrNTL/LoFXwv8j7PeTVzds88gJvktgvDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lcdzY8+4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q75RkH005903
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=; b=lcdzY8+45Q584zCA
	QRnxVJrPlZktq2dplon92ol7t5p473evyuZmuab1of/TrftCyoOCQ05DSkkvE0Jj
	pKNBPkuhqNjCXLcUNzrIT2utJjxvR/0To/zz2QJh+dWHN7aNk5w6AkpT4tnVEpcq
	x02xFHYNPf4Ep4Csc0d5V/N9fvjDs1rD75x6qBvk/tEZlFeDjvQcFKyt7l/XkuCv
	OKeT9XEZ6/oxA5m1odjRCj4aenCl5BcGvNwCYnfu55OkVPCEiEG5ymtR7gE9RSuH
	TgqTNRYCNP+5XwXE0FPdmfrS2QkE5+JQuWh8HB56sUc0GP5Lx6Wpt9YYKLt89T0h
	p6mJ6A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db321vjg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:41 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-245fbdc2546so4390255ad.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:26:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871601; x=1759476401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=;
        b=qU7fe0pIK9cVAh8T+PWO21rk63x2q4q6vfY3NUFNHQAPA9+9EQjFT/6gVm4CVC8rcx
         ytj7yHqe1CM8sOqa+PmimpH9rX404b6OEwp0CUk/T5eFceSWxZB+Ozm3HiUXcl8/g56A
         JcdH5v3aATQK1jnyQkyLozQjPlwPs5hEWQVws9a3J3IeHMNe7ErF2nvmVh4zAsuUuGyB
         Je4CYJOo0Xys44SwLTr83s+wGAmqmlaajf4uXO7ZigNkAStSf8n2su6YVSZo0ZbtxAxb
         p3BbTPOHY5X53ijSngjh4LINWskwqxJJiUnu5l+hHj2CDVf66fZTTBYgUpH8y/6qxy22
         5lTw==
X-Forwarded-Encrypted: i=1; AJvYcCU+YCRVFvg7EGEvjkJFdaySYDUePmqq08is7w8FE3Y60tu3o0uDHf7RPGPWO27bd/Wxs7mT3WO8MM41@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4uIJxTl30bJgX/2UzsjzGizxxDaLipWLDX9RkUnt4c3DFZ09y
	GsxMZ7ieO/1K+cv0gFRYItmCDVFIXCOdUbEeW5teZvC0rLWkXHYq2KMt80EUAgpsPHBV9Z+kWsZ
	gLJB9N6V/wOJ7w9x4PFKf6LFnmZoWq1uX6UehnnjzUeOToGvO6R0wlI6cu062yc/p
X-Gm-Gg: ASbGncvefF0/bCXK2ryonuSeQPzWYMQ92+gz9CiXx779nFtNQUHCPF3VT3K8z3knO2W
	BZ35vwunfUn4vb9h7trJjZ8X+TIHUc+PfXeIj1ZwYlCRY19EwqBHZlCJl1X4ipWcbFDCkq3ULZd
	QAW4Rpxb3GoP0ussqfaKhuwkboMtfEjOeGLwXeveCWjxcxyQuLxyfWGmgfFrDyg34oV4tuvExtk
	KyC/NWSViFkvsbHl4XSkVFa8/Fsmw4Bwd/HryXyAPlPlvv1QYh35jZ8LQmGPbZN5B0j9BZhlG8W
	2K2J1SwY3fDVfq3j8reMFp+In+upG9crirGYgoD7oCp8obf3c7ppXF591hdu75A0LSmnhxKSvQU
	/4BUcHlYRQAY50VhabsbFcfejWJcCKUCXgcBuumXYHWu2uQikcXefKV60
X-Received: by 2002:a17:902:e886:b0:274:944f:9d84 with SMTP id d9443c01a7336-27ed4a66e4bmr41068515ad.11.1758871600562;
        Fri, 26 Sep 2025 00:26:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHODL/foIPc/vImOn8UziuC4Zpy7ZHgp1f2EJiz+aCgHOwhMhAgQuOtz8+uUG2x/ioV5tv2Ag==
X-Received: by 2002:a17:902:e886:b0:274:944f:9d84 with SMTP id d9443c01a7336-27ed4a66e4bmr41068165ad.11.1758871600028;
        Fri, 26 Sep 2025 00:26:40 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:39 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:40 +0800
Subject: [PATCH v7 04/14] phy: qcom: qmp-usbc: Add regulator init_load
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-4-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=5441;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ScND5R19fNR4fxgqnX3CVdg+GNtnOHYJhlmcXMGybGg=;
 b=JilRW12/cwSKH9uXb4YCzsMzmAHwczV/dMTBJ0+x5D+EOLPW/ukmoNYlEdlvelT+23gPue8jR
 L3puGEnpVrzDKhlYwLo5EoTxfEV258QfbUpE/f35Qm9todR/cb0QfWr
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d64031 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6BFfyeCpfu5Dl7vuC9UA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: VYzZ_iPmPEEEgwgXMuSzTpuiiOcafkCD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX4oqyhJl6pnLD
 9AUAd6xef+gH1hpIgG29oIfLJJxcL6cCnoUGB6ASQew5XLSphv5mKgU9YqsOssSxeRCJnAVkZ1W
 SE2sHK0g8koumUJXbIRrk/qZ0ASwcEZbUf2EJ3Xdt4aCRTr5RfYFCgkjudEmjiwRzsdhKxc1eSi
 jSU0dSospZfTHCC8HGGnUrwMyHj8U+YUgDJLBfVvDP20UYljTboU8DIKOr5tfHwQvq2b5rr4H8a
 qFvHgONDA1wAM9qtizSYwlKK9qwQ5cWzmIx/Y+sL6887qLdpeoE6UeeUfZrSeBUFc7LNyO1+YTS
 6xrHoW0zL10Q/vo6G6nZpuUdOASICvtXP8boiVn0iSvFYmDVf9CnfzLD9T7362mpTGVgeeWPOy/
 YgD23p4OIPl+mPs4/3R+DuzBym1xBA==
X-Proofpoint-GUID: VYzZ_iPmPEEEgwgXMuSzTpuiiOcafkCD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

QMP USBC PHY drivers previously did not set init_load_uA for regulators,
which could result in incorrect vote levels. This patch introduces
regulator definitions with proper init_load_uA values based on each
chip's power grid design.

QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
regulator requirements differ. A new qcs615_usb3phy_cfg is added to
reflect the correct settings.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 68 ++++++++++++++++++--------------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index de28c3464a40ea97740e16fe78cba4b927911d92..3b48c69f9c3cb7daec495ebc281b83fe34e56881 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -336,7 +336,7 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -428,9 +428,19 @@ static const char * const usb3phy_reset_l[] = {
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
@@ -454,8 +464,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = qmp_phy_msm8998_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
 };
 
@@ -470,8 +480,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_sm2290_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -486,8 +496,24 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
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
 
@@ -773,23 +799,6 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
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
@@ -1097,7 +1106,8 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_usbc_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
+					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
@@ -1163,7 +1173,7 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,

-- 
2.34.1


