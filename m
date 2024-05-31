Return-Path: <devicetree+bounces-71342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E918D6657
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 18:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2EF328ED7C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42423172793;
	Fri, 31 May 2024 16:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MN3R1Dn0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDEE15CD62
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 16:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717171621; cv=none; b=g81if3cDgm/CZFpRyQUkhQKFpkbUOZZTk1fXIaPr0TJNuCVBNvbtdXwNDrw+TYdwYoYIUG+IwISMEF/tZb2I3XUmsqM9KOghucQegeEln7XBwe07gi3onurG67YmJmCKQpuEsmKPCgdK5CuS2wR93B3V71oe5NPNG31qyPE4G/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717171621; c=relaxed/simple;
	bh=JJsL5OqAlyz9O2TqvokIzCODnIdsn9g7a8asMj9Q3QI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gCUQCq7gJ10KKyI/zx9v6T0rY3Nyz6bKJdtqRFczbOSx2puQ8GKy2orzVQUBeHcL7AQfiwTHYrwgMqtdSvmYI8dYs3i0rqcu71WcOeHHC4SNLrvK3XVzQvDnm1lq4TctUQOv5aGrMCS9rKa6kR+bzzqsnfsENJHQcP2JtZjlgLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MN3R1Dn0; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b0d25b54eso3356368e87.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 09:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717171616; x=1717776416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6//FEP7cApjoaJ6/xp+H/xK3TdzcTfbzf8Zzgf+lsQ=;
        b=MN3R1Dn0Gr1L3oL4fjeCZf/wywVvKejzscUp5F6pHfdlRnMqj+O+bE6GbLoZ83WzB8
         m3l3vWMoQMElyRpGL/hhfboItniYwAKBq3MWugu9BHvCIMRRdoB1W/Eol20pRpcQquL+
         4+1UnWKHj1CBGBtB+2P3EOGSH2836pg6QPz+pYhyIjzDr8zoDIYLOY/fwc6b+UCLlWmn
         ui1C752OT6hDcrlPzIKX0v1DJ/Y/b8Oyu5A6dLn0ECaEeOETfcql4VSfQ4lc/naeSA4p
         fyqNW/PGa7qaSVNjr3kBcs8p1Nuzr6JW7JvkuCSKuJ03z1vKlGG19Pcikg9kryUccO0p
         MKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717171616; x=1717776416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G6//FEP7cApjoaJ6/xp+H/xK3TdzcTfbzf8Zzgf+lsQ=;
        b=VazMbCEXwnrrBjFOC6a4gmGDrBghYxVEYQX4ts/yfJ9J+TvJ3EwkpcJ/1yRQNY0Mzq
         tmxpG1vTM3N9KaSL38dyyM2Zd7zrLrORSttxgTfHdyKazObiNRvdyqr01TUnJYylAHSQ
         +M5EiqLp/U/mk5eAhjUQWOe8+q2P3Vz/XLWta3739AdRciTwCZ3srcJwsKZ+LS9xMW5A
         QZ4HLEi+FwDN0F2wJYviN2J1XNRUHPrZB8rtG+VZIom+7HrzbME/y2lKch02KhVw+iDk
         431G5Kvu67o6FW5aQ7YglA9Len1d2B6qnQma22CeQ3M9go7yIOORXtJoeX3VESllimTr
         fnGg==
X-Forwarded-Encrypted: i=1; AJvYcCXbxHFd+xNrVBuqLj2phvD9r6csSFDEh+t1qBniKeuopIStUBu7aJ+n+Wy/GtY5euZlGmAvg6CumTbq6aEttHrjas0GOumWe2Q47w==
X-Gm-Message-State: AOJu0YwwvT+3pypDX0LmZzRAXDvdVSIahjXq4E7fTwEdrkI5Mv+TG+ZC
	ZhqiojMETKMw3Osw/2253yHi3eK3tNeyOArDI1P5iJOoMC89b2utRnt02aobNSM=
X-Google-Smtp-Source: AGHT+IEHWKpPL+jhfqZavVDoxTOPOV5YFGaBjgLYXJxMXGRrq6wSeFgdwO7LUe8FIhStMBVRPg7hJg==
X-Received: by 2002:a19:7501:0:b0:52a:7d01:84cd with SMTP id 2adb3069b0e04-52b89563555mr2122032e87.30.1717171616398;
        Fri, 31 May 2024 09:06:56 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1b3sm100802566b.74.2024.05.31.09.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 09:06:55 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 31 May 2024 19:06:45 +0300
Subject: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3148; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=JJsL5OqAlyz9O2TqvokIzCODnIdsn9g7a8asMj9Q3QI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWfWbZ+v0JzeD+G1ezXOkdmTUgYe7zkYCZUaJp
 AT4TPNHSUGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZln1mwAKCRAbX0TJAJUV
 Vl4JEACZlz6/FX72IPvoBV2KhG9rc7UqNay9v/AWlqtoOrFjkUGKYrtfWDzoLf3V72U2WR4b6Ae
 GgtBzkEufTBZgAzbfmRTCt9E1VT621Pu6y3hn7OMCrntVyvFtKfVETkJjEjx4AJwLIakN/AU4pU
 +JBmRNMQO/+ICih7/FEZFAF0u1rvMSs5ET+DBA6Jt15xr/iUKysZ8iRBNgKoWnKcjP1fyhW8sJG
 1c6DJt5A3h92cxz8nCDaPWX3f1JXlirD7VtvB3YsAo4fJOJQERAi080O5OelHN3sWK85GKQ9CnK
 vSIxq3pzAY8ncjabYrsnUWv+Cci6GNYl0r//kHSX2tMNyAIYoYBrkjxnEF1uyh7SKCfyU9ydEoY
 Ekih3Td7WE1OZjVnQoNXaLSDPTud+530/R1cqUs0DcYfyEDU0G7brmDhlkr9ay3bzRd8eLQp1HT
 u8ozVsQNXsXBJAkNHJXmEanYl0HX7DTn1oddemGnycsRiff/5Bgxowm2G6SX2LqbbJCMpbdibHb
 dZvzTtHB/ng8d3BysFfcyeL+wakfNnt8Zzn7hVd1wJ85A9Uqdv+uot1siNWybEwqMCxgrsyV+xI
 fTjL1qevRegswKsItjvnFuOSb1cEYyvkKrQFIaD+iVnfAivE9OK9iO+vz0HTdQXD8eb1Z9q9WZA
 jKpObCZO6iOhRig==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
2-lane mode. Add the configuration and compatible for the 4-lane mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c796723c8f5..4e0b28da69a7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1028,6 +1028,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
+};
+
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX, 0x03),
@@ -3342,6 +3346,41 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
+static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= x1e80100_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= x1e80100_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= x1e80100_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= x1e80100_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+
+	.serdes_4ln_tbl		= x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl,
+	.serdes_4ln_num		= ARRAY_SIZE(x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl),
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -4108,6 +4147,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy",
+		.data = &x1e80100_qmp_gen4x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


