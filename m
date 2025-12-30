Return-Path: <devicetree+bounces-250589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE039CEA56F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:40:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8901304791F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B2332B9A3;
	Tue, 30 Dec 2025 17:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cqA0rhHH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aGwyWU7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97D7283FE6
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116338; cv=none; b=F9dWjRIOIa7rvKcD+42J0ZngmQj078YaQdk95YYksBDLjCAkyZ0dwCu+2ZDFyQobTezP9VQojTLPDmq0zhRyQwURdPr00ugLi0ntTVoKWVVfhCia+9SvsQN4KS279ZWwRY9MBG009v28Q157aJDrk+BQImRTZ5mUewi9xshw3GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116338; c=relaxed/simple;
	bh=q5Cs9pMAdeX8ROnaUQwit23gUZZU92irF88/Bmc63Tc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=De1kgViGp/AhDPp4h/Uy59B5QigO3eONsy98PIjaFcaHdyS2nLJB1af7FkAD5vLQh07TXUSZl1g+3KhpTazcxmZeiZeFRNWJehQeEPZa1dIVIFwsB1/bT4k/ND9yAlPxZvNFAg4RAx8iJePj0kt5yrstsXgaLW7aV4B7w1E4i3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cqA0rhHH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aGwyWU7X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUCu8OV715897
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A+8oapdwj8Kirsaqr20TQ6RDvOnq/fvBRIB/9Md1HLc=; b=cqA0rhHH8BRuxJZn
	4qHiwgjfinXDTLrM9nTRE4mIt3ogrPDYqucHKsPNP00MMSzV8zHi0enTMdi6Kbxw
	m3EtYAmE5xi/2UeN1JRBazs6DI5zutvhbnOTifaC5oJgqmmouyT9io7hFjkc/zJ3
	7HPx4sepOxcxItakN9WS2t+RZWPM5Ayj3nU6pGxPYN1syVWnE2c4+OVwxXEX4rHT
	kqoN33HepfD/qsSXXAkajSnTF9BqFhLpQWlMA4awnx9YBwHTSsD0TPKs4BC+k+z1
	Qi3a+51R4+irkj3mnRWmsJa3nzRsNejSedKMNGtO4Yly6TggzlkOY/mAP+MnmNc0
	rGTZtQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yrnfb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:38:55 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a99a5f77e0so17011959b3a.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767116335; x=1767721135; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+8oapdwj8Kirsaqr20TQ6RDvOnq/fvBRIB/9Md1HLc=;
        b=aGwyWU7XIfgnTu9zXGrMSPxSLkqcTlv10pk6zPA0IpOMB+nTZpyUoqDySkFv3AnYRW
         uZlhxP3pdl8Re6EYEzF65K9+VL+0sruST6ZL9M1kwGKPmVvNeZnOVHmghvqftEBMQ2mK
         zur0lYTi14L0B75ntEojnIGU+CO6n4fE//2xY8agia7+mHVCyFOWq0/zapfkMT/ggXbR
         KQUfHlLhBDWzFqMDm9lmxtzZ94MKS22hodnRdIgTf4dMstK+3r58W/5pKPBXEhegMqql
         gCqeD9AEl73QgLSa0lQBnzpeIdpCqNtCRIpclSOpMeJc+VLYZYvH88FLfAoiK1cwF/yl
         INCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767116335; x=1767721135;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A+8oapdwj8Kirsaqr20TQ6RDvOnq/fvBRIB/9Md1HLc=;
        b=mA7nXqgB2OerKRFpGhqxWbiCiLVDux2xCuTWz1BX3nQ1qaofHXcwZ17CviKq6VgB/u
         EybHMQUpE1sC8N8NEorhWEiuHvgEjHzcvLFqEtzKMrMDV7yZNzGM0k/7ZHmJATj8+NmV
         Od66c2hKQgYsHMXoQ7+X2oJKWzVQo7snV+flj7wRFvsUPSb/3KSuMM/Er42TK5oN3CO5
         lf4XbHqs9chLLk1laJpIcKBosP45BZNCXJWG/TbvvZSU0gzycW3IumsXTYiDZ+4NwBuP
         YCUescNdZXH2ACqD1vQ21edUzqvXfaAsmgDWxyI0nUsE0eixTqtctd4GxXHR0K6hgDQN
         oVBg==
X-Forwarded-Encrypted: i=1; AJvYcCUPPqvwk/pnQ00TXXXiuUOLXGUnQf2gnqyzb7nVbj1IEuAxoz4Tdb+czq7ii3Lkc8mVvd+kfTIhaii8@vger.kernel.org
X-Gm-Message-State: AOJu0YzZj27ckPFGs9vg5+wjJcudNN+3vLEWK2WZhdGAnd6O56MjE6w6
	f2xOx6OCsFn4kG/XA9cgW83cwxKuf1+J1dHQn5dbwrYeGkB3LEg8+PzOa4yKxviNAsfj/GZQ8Ga
	11BnL3ay81V7i0KY6dfEW/tplIOgc1BufEtVysWxJ+YFDhV2Xx03gsM7xXO07/goK
X-Gm-Gg: AY/fxX7SCiMdQ1Ppb2/8Q/z6u0c4pIhZ3fRGU+TZqq88Vr40wf2Q5CzOGwnZHnF5KGp
	nlY8NlR2FRCe0wSPPUTR2vRyRxDVnTCu1X7II814y2tzDm0ZSZvHMbb+LFL7prOsEKHmI2pG0L4
	jTs/N4fDsjq5FyDPOY4ge1b830OionS/FOrG2IMDcJfUmojHU+/ILT2fFgchFA4EkxgzX7wWLw4
	J5mxkx5qYPcLJOZd6UN7D/biTrAgRwsaMTrhOmZ9qMI6sT8oNEwv6MTws77enBgpKx1li4UCIBj
	xY2eRh4Zd/U/6qaVlOri0hsFhtSv3vwLan9WK6q4W9N+8D2SNK5ncGXRtAQhInqYcXRzOLbdUUP
	JWBAvTliC937Qjwcg3nN7ZNfnmGRwWpg7Qw==
X-Received: by 2002:a05:6a00:4105:b0:7b2:2d85:ae74 with SMTP id d2e1a72fcca58-7ff65d7e724mr30564519b3a.29.1767116334640;
        Tue, 30 Dec 2025 09:38:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ48hkLumTZo1qmOgJTcbRN51YorB0Ubsww+zTBgea2mb5I+SE1k3buqmASho6QQmQRfIagQ==
X-Received: by 2002:a05:6a00:4105:b0:7b2:2d85:ae74 with SMTP id d2e1a72fcca58-7ff65d7e724mr30564465b3a.29.1767116333428;
        Tue, 30 Dec 2025 09:38:53 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af35f37sm32865208b3a.18.2025.12.30.09.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 09:38:52 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 23:08:35 +0530
Subject: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing UFS symbol mux
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
In-Reply-To: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1OCBTYWx0ZWRfXwkjWbgHJiXAj
 K1dBHGyDeLHGe2JlZE7Iet0kyZN6RtehA8dkPJ8GUSERDJGDcwLEle9TXOFAWA/gexLLEV2+3xi
 5eqwqX8QCMrf+c1Y/LAdzXrv3sdQvuBl5CLD2kx2zUC748WvDuP++piQvksXhiYQc4RLMZTwwyc
 xYbsxO7oDZcSbmR3HJKY5t+U57cPCeyjZ6ymoSkpcdUsofdcfw8GcFTAPopMaruMob+K2oApqhU
 1UDjxu8OawvekfVacpgRTzhJVQIhOTJT1XX8zD/WzR2Amm+N6vDavtTe0IKlm1kxe1zXrfxua3F
 pA3zTSGUUm9bhUz1EcVU4xdlFpDajL3MzfOSYI4kM/0HgNVeQGDS0/SxftkcE+ufqaijOQ+a+e9
 Ikrif4BI8c4xwWFnxIDhnjYeMqJEJU7+s3srfQfXEXKVs+20ghNnk7DiuHP+jVWMcc9sYkLv+35
 7QthtF8g9c5/1Mm8e8w==
X-Proofpoint-ORIG-GUID: GmQrUK6n0dNuFim21XX6wsde5QO3nNk8
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=69540e2f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zK1IZneI0yAGVV4HvJ0A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: GmQrUK6n0dNuFim21XX6wsde5QO3nNk8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300158

The UFS symbol RX/TX mux clocks were not defined previously.
Add these mux clocks so that clock rate propagation reaches
the muxes correctly.

Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-x1e80100.c | 102 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 99 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/gcc-x1e80100.c b/drivers/clk/qcom/gcc-x1e80100.c
index e46e65e631513e315de2f663f3dab73e1eb70604..c8fc9e6b1ac97b13f84753ac7f76e23df071c2e0 100644
--- a/drivers/clk/qcom/gcc-x1e80100.c
+++ b/drivers/clk/qcom/gcc-x1e80100.c
@@ -59,6 +59,9 @@ enum {
 	DT_USB4_1_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
 	DT_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK,
 	DT_USB4_2_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
+	DT_UFS_PHY_RX_SYMBOL_0_CLK,
+	DT_UFS_PHY_RX_SYMBOL_1_CLK,
+	DT_UFS_PHY_TX_SYMBOL_0_CLK,
 };
 
 enum {
@@ -103,6 +106,9 @@ enum {
 	P_USB4_1_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
 	P_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK,
 	P_USB4_2_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
+	P_UFS_PHY_RX_SYMBOL_0_CLK,
+	P_UFS_PHY_RX_SYMBOL_1_CLK,
+	P_UFS_PHY_TX_SYMBOL_0_CLK,
 };
 
 static struct clk_alpha_pll gcc_gpll0 = {
@@ -482,6 +488,78 @@ static const struct clk_parent_data gcc_parent_data_33[] = {
 	{ .index = DT_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK },
 };
 
+static const struct parent_map gcc_parent_map_37[] = {
+	{ P_UFS_PHY_RX_SYMBOL_0_CLK, 0 },
+	{ P_BI_TCXO, 2 },
+};
+
+static const struct clk_parent_data gcc_parent_data_37[] = {
+	{ .index = DT_UFS_PHY_RX_SYMBOL_0_CLK },
+	{ .index = DT_BI_TCXO },
+};
+
+static const struct parent_map gcc_parent_map_38[] = {
+	{ P_UFS_PHY_RX_SYMBOL_1_CLK, 0 },
+	{ P_BI_TCXO, 2 },
+};
+
+static const struct clk_parent_data gcc_parent_data_38[] = {
+	{ .index = DT_UFS_PHY_RX_SYMBOL_1_CLK },
+	{ .index = DT_BI_TCXO },
+};
+
+static const struct parent_map gcc_parent_map_39[] = {
+	{ P_UFS_PHY_TX_SYMBOL_0_CLK, 0 },
+	{ P_BI_TCXO, 2 },
+};
+
+static const struct clk_parent_data gcc_parent_data_39[] = {
+	{ .index = DT_UFS_PHY_TX_SYMBOL_0_CLK },
+	{ .index = DT_BI_TCXO },
+};
+
+static struct clk_regmap_phy_mux gcc_ufs_phy_rx_symbol_0_clk_src = {
+	.reg = 0x77064,
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_phy_rx_symbol_0_clk_src",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_UFS_PHY_RX_SYMBOL_0_CLK,
+			},
+			.num_parents = 1,
+			.ops = &clk_regmap_phy_mux_ops,
+		},
+	},
+};
+
+static struct clk_regmap_phy_mux gcc_ufs_phy_rx_symbol_1_clk_src = {
+	.reg = 0x770e0,
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_phy_rx_symbol_1_clk_src",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_UFS_PHY_RX_SYMBOL_1_CLK,
+			},
+			.num_parents = 1,
+			.ops = &clk_regmap_phy_mux_ops,
+		},
+	},
+};
+
+static struct clk_regmap_phy_mux gcc_ufs_phy_tx_symbol_0_clk_src = {
+	.reg = 0x77054,
+	.clkr = {
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_phy_tx_symbol_0_clk_src",
+			.parent_data = &(const struct clk_parent_data) {
+				.index = DT_UFS_PHY_TX_SYMBOL_0_CLK,
+			},
+			.num_parents = 1,
+			.ops = &clk_regmap_phy_mux_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux gcc_usb4_0_phy_dp0_clk_src = {
 	.reg = 0x9f06c,
 	.clkr = {
@@ -5148,12 +5226,17 @@ static struct clk_branch gcc_ufs_phy_phy_aux_clk = {
 
 static struct clk_branch gcc_ufs_phy_rx_symbol_0_clk = {
 	.halt_reg = 0x7702c,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_DELAY,
 	.clkr = {
 		.enable_reg = 0x7702c,
 		.enable_mask = BIT(0),
 		.hw.init = &(const struct clk_init_data) {
 			.name = "gcc_ufs_phy_rx_symbol_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&gcc_ufs_phy_rx_symbol_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},
@@ -5161,12 +5244,17 @@ static struct clk_branch gcc_ufs_phy_rx_symbol_0_clk = {
 
 static struct clk_branch gcc_ufs_phy_rx_symbol_1_clk = {
 	.halt_reg = 0x770cc,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_DELAY,
 	.clkr = {
 		.enable_reg = 0x770cc,
 		.enable_mask = BIT(0),
 		.hw.init = &(const struct clk_init_data) {
 			.name = "gcc_ufs_phy_rx_symbol_1_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&gcc_ufs_phy_rx_symbol_1_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},
@@ -5174,12 +5262,17 @@ static struct clk_branch gcc_ufs_phy_rx_symbol_1_clk = {
 
 static struct clk_branch gcc_ufs_phy_tx_symbol_0_clk = {
 	.halt_reg = 0x77028,
-	.halt_check = BRANCH_HALT,
+	.halt_check = BRANCH_HALT_DELAY,
 	.clkr = {
 		.enable_reg = 0x77028,
 		.enable_mask = BIT(0),
 		.hw.init = &(const struct clk_init_data) {
 			.name = "gcc_ufs_phy_tx_symbol_0_clk",
+			.parent_hws = (const struct clk_hw*[]) {
+				&gcc_ufs_phy_tx_symbol_0_clk_src.clkr.hw,
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
 			.ops = &clk_branch2_ops,
 		},
 	},
@@ -7180,6 +7273,9 @@ static struct clk_regmap *gcc_x1e80100_clocks[] = {
 	[GCC_USB4_2_TMU_CLK_SRC] = &gcc_usb4_2_tmu_clk_src.clkr,
 	[GCC_VIDEO_AXI0_CLK] = &gcc_video_axi0_clk.clkr,
 	[GCC_VIDEO_AXI1_CLK] = &gcc_video_axi1_clk.clkr,
+	[GCC_UFS_PHY_RX_SYMBOL_0_CLK_SRC] = &gcc_ufs_phy_rx_symbol_0_clk_src.clkr,
+	[GCC_UFS_PHY_RX_SYMBOL_1_CLK_SRC] = &gcc_ufs_phy_rx_symbol_1_clk_src.clkr,
+	[GCC_UFS_PHY_TX_SYMBOL_0_CLK_SRC] = &gcc_ufs_phy_tx_symbol_0_clk_src.clkr,
 };
 
 static struct gdsc *gcc_x1e80100_gdscs[] = {

-- 
2.34.1


