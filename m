Return-Path: <devicetree+bounces-231625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0258FC0F186
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68E68461C8C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2572C315D47;
	Mon, 27 Oct 2025 15:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="q/4rFPnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E6C30C614
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761579914; cv=none; b=pwKz5LQOJ9Al5UsgOoDHTaF0uHhU9Q90C8r9p8teXxCdnK13j2b8OH3anp5yyLC18GEWuQBaXrjs5B7DRss2oRuzznxWqhdqmNio98N6tyldA2EQvM8rnIYiBU7/ymkoyBSq5Pn3lD6G0EUQOpBaEjUYUN45Bl+KAIEOyefdpsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761579914; c=relaxed/simple;
	bh=Zl99jxf9GqRUfYwhYic7tLWQVs7Z1avi6s/bbIYjffU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPegx5TxkWd7KYoV5/QlqWiEOWw8ffi1oeS8LMqEu5/bXFp3SwCbC41HokQ6geb4Iz9zRAIPNGuYaM9DuSQc20FG7bxmb+lNbOL94LoXbaIdC2+MOy5U3/Laxl15e+hJgCNyFWBU5Ds/hP59XE8JvYRjg7+kCUlku+FNrzGcXx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=q/4rFPnU; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e6a689bd0so48556425e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761579909; x=1762184709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OicQ1OKV8T/1KX5QBfxYsQT9BwdWiJOdtGfcmUcFvvk=;
        b=q/4rFPnU/fv4dQG5NLyotxHifdaDdMXgJp0UGTwRCslFf2nPjxgThRj9LkahXr4ZjP
         /68t3RA5MjKllO3d4obzPEVn2Tqie0e8uSCnK+ePbVFVLQmHQ7qlwT5L5B/LfucTdmEF
         usomDjNVcoxDPtZyLytX1tOXmNatJlsRVI8lP/4zGWj06ZqccSASHhqoRkY9vUzZfhQ6
         D0z9Yl3NQ/ZjD8Cq/3gB7JK1NT2xY7R8s0H0jeSKiZJnHS+HYW3U4nN3TU5LC7sIbftO
         2uI+0uuxRlv/6/LECJIwOpd443jzdJk6F6visGJ56ExfxKIpJevTS/RCoEHwHf1R5RzY
         4fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761579909; x=1762184709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OicQ1OKV8T/1KX5QBfxYsQT9BwdWiJOdtGfcmUcFvvk=;
        b=Kyfu2b+lOrFlsIKE0lk63HcHEkLrNdXzuHfcidZ2ScumkNElTJ1oIuFvF23QsqcQoT
         QRW6rXQ3oWt7s8Q8PlZ/VaJBsz/6i2kngqc1PLNy7NcDU2DuDSL42cBaB/on1LR49vAw
         QJNXetvBTJBv2sV5ziP15xiLIIBa8PhFNm0TIZEo+PwzByPiX+PR7yw6mQkU5KX7kdL8
         co890G80bNzTSmpWNG1QF+JSkR773/8ch1kvA7wYhi/eMtshc4sp4i9jv3eV43m70Pjy
         tB+lcU8ovAOj9MZ3XjcxJusZs9hhTrIL0Qab4mQEyr1TmOBeT8CLFdcdJ1vABAD/VpYO
         kdbg==
X-Forwarded-Encrypted: i=1; AJvYcCVEkrOQ60aogJcQMax1LsrRtIQg7gQ/nKSmGnoLja4tV7QAZuotgk2hVUwntzt7JLcqKGg0ZjK0QUfb@vger.kernel.org
X-Gm-Message-State: AOJu0Yx149A48W4BA/JgI7EjcWCJR8YBjMcIxUvk+YQoVY8XRZT7hme/
	YjChSmaQlNRPubJjZiLzso0A3KtYHEL3J/09g41UfAEyhWVv/IDnqhWDxVvsK4E9/0A=
X-Gm-Gg: ASbGncuExXT7h3fxMl+RUHRtxcwGABZIQEaVCgO00mU2G2bfvvztjhqfQ8yDX+w5k5k
	mtaxnYW6fPCFtg8yB5GHMe8MU83yfNCm4y6qSpEZcJ2QWEuwNzZQw/yIsDRAmumLzOQAkUfc4hJ
	hcXbPO7zxciwrq/TuYZYhNlFvLoCSj6YaKjMkOhfHgBA0GEeCTumJtd6vVfNzN0UQiXtuob+5gr
	0p4mS207QeeHbPsIzSsWwxoGl2NP8HCISDPoUyqeL0hC+FIRTniN6lSmuq3FcB4O9sXVS1r1hvj
	5+qQyU+58DBsj1crR/6VrMfsJFkAnpnzaFLzwldb5IpfCgbxZzoSBpyctj1wulwKk8DBXdz15b6
	/tBEncLYkxoP18SxfFF69tiV0O+g1epGtnjP8FUuG7ICVxpzfNl2PlQ/STOEkrYX3qXjtSvs=
X-Google-Smtp-Source: AGHT+IGnURDzCL6EXlYFgChfMetXN9DLHbDSZlPkZ7qshRFfNPQz3EB5h9snkYgIRzQ1RyekW2OGPA==
X-Received: by 2002:a05:600c:3b24:b0:477:58:7cf4 with SMTP id 5b1f17b1804b1-47717df7c8emr1161855e9.4.1761579908909;
        Mon, 27 Oct 2025 08:45:08 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:c1c6:7dde:fe94:6881])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd477d0esm138708045e9.0.2025.10.27.08.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 08:45:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 27 Oct 2025 16:44:52 +0100
Subject: [PATCH v3 4/8] net: stmmac: qcom-ethqos: wrap emac driver data in
 additional structure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-qcom-sa8255p-emac-v3-4-75767b9230ab@linaro.org>
References: <20251027-qcom-sa8255p-emac-v3-0-75767b9230ab@linaro.org>
In-Reply-To: <20251027-qcom-sa8255p-emac-v3-0-75767b9230ab@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5648;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=cOSA+NoNF7WC2Y1gjjgtDMtaHJ+KGJ3IylBfWUELjyM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBo/5N7y18ZJr6B/GhKmUSNUtBu9u+ofCQBq/O26
 ld3TvaFaLuJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaP+TewAKCRARpy6gFHHX
 cnwoD/0cxZBAb4XAX91qdtSNuOWe6oX6jeNpN8yk7QsX2VHoodzwPCt6oj6wMspuj4vJ9DxjBPf
 AP2jLjtIoV5hqOIHm0IhgTYcYRaFDR15GH/TOam2GYeAWLV92aBYmv6IdSBjAutwJgaBc318d6T
 g2hkFviaHTZEenJLMQEnvI72Q45xskOQC+TvH/yydMDmrQbMzEHN/cFqQ4GUSWsWZm6OseMnhAa
 iUB6ippCvLUyp7heH/nCGsSHLbhV9UDlKd1JOaow2u1Ulgpx45S5axLLX9/6pqZigvs2rfHzATJ
 Le+qEqvR7+Uh2+Q9Aws6QSXWlTa4Z3iSiIy5ZbP7bAsTaq9nuZsrL2kpAN1UIKoF/G6Oa7rsBgx
 +X8w0yx0w1H6U5UejolDHTeX9ZLHVoA850ctVr3h7XGjx/emlBJAo6uPxQ7VQPa0RiZeQ2E7BBE
 9xTyHHvZtzzpDpmEczdJpo8406xsjrY3v1SPmY1NOAJnThscNxNoNiUqCsyv7nUHtuxHRU7N0wN
 /aC5CsoAVcXZwPU1bJaddyFRpmB3ZzvurfMTgH9TO6Of3h56qMhET+WPorex+Xg/jPwotPdFs2b
 zsSehrtTd1JcZuqiNWbl1mYIvXuR/1nD6z8Y8l3LjqK+mOvqnUU201WCfTRZ0heDj3vpJxm6sQu
 burt8o4HoSXycxw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

As the first step in enabling power domain support in the driver, we'll
split the device match data and runtime data structures into their
general and power-management-specific parts. To allow that: first wrap
the emac driver data in another layer which will later be expanded.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 51 ++++++++++++++++------
 1 file changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index ed799da4e4079b4da4b555dd119cce8c6591aa39..2739bc00e7525a5913bd3a5d28d9c9a8871fb7cf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -101,6 +101,10 @@ struct ethqos_emac_driver_data {
 	bool needs_sgmii_loopback;
 };
 
+struct ethqos_emac_match_data {
+	const struct ethqos_emac_driver_data *drv_data;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
@@ -218,6 +222,10 @@ static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_qcs404_data = {
+	.drv_data = &emac_v2_3_0_data,
+};
+
 static const struct ethqos_emac_por emac_v2_1_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40C01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642C },
@@ -234,6 +242,10 @@ static const struct ethqos_emac_driver_data emac_v2_1_0_data = {
 	.has_emac_ge_3 = false,
 };
 
+static const struct ethqos_emac_match_data emac_sm8150_data = {
+	.drv_data = &emac_v2_1_0_data,
+};
+
 static const struct ethqos_emac_por emac_v3_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -266,6 +278,10 @@ static const struct ethqos_emac_driver_data emac_v3_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sc8280xp_data = {
+	.drv_data = &emac_v3_0_0_data,
+};
+
 static const struct ethqos_emac_por emac_v4_0_0_por[] = {
 	{ .offset = RGMII_IO_MACRO_CONFIG,	.value = 0x40c01343 },
 	{ .offset = SDCC_HC_REG_DLL_CONFIG,	.value = 0x2004642c },
@@ -301,6 +317,10 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_match_data emac_sa8775p_data = {
+	.drv_data = &emac_v4_0_0_data,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -764,7 +784,8 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	const struct ethqos_emac_driver_data *data;
+	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_match_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
@@ -815,13 +836,15 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->mac_base = stmmac_res.addr;
 
 	data = device_get_match_data(dev);
-	ethqos->por = data->por;
-	ethqos->num_por = data->num_por;
-	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
-	ethqos->has_emac_ge_3 = data->has_emac_ge_3;
-	ethqos->needs_sgmii_loopback = data->needs_sgmii_loopback;
+	drv_data = data->drv_data;
 
-	ethqos->link_clk = devm_clk_get(dev, data->link_clk_name ?: "rgmii");
+	ethqos->por = drv_data->por;
+	ethqos->num_por = drv_data->num_por;
+	ethqos->rgmii_config_loopback_en = drv_data->rgmii_config_loopback_en;
+	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
+	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
+
+	ethqos->link_clk = devm_clk_get(dev, drv_data->link_clk_name ?: "rgmii");
 	if (IS_ERR(ethqos->link_clk))
 		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
 				     "Failed to get link_clk\n");
@@ -849,14 +872,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
 	plat_dat->core_type = DWMAC_CORE_GMAC4;
 	if (ethqos->has_emac_ge_3)
-		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
+		plat_dat->dwmac4_addrs = &drv_data->dwmac4_addrs;
 	plat_dat->pmt = 1;
 	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
 	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
-	if (data->dma_addr_width)
-		plat_dat->host_dma_width = data->dma_addr_width;
+	if (drv_data->dma_addr_width)
+		plat_dat->host_dma_width = drv_data->dma_addr_width;
 
 	if (ethqos->serdes_phy) {
 		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
@@ -871,10 +894,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_ethqos_match[] = {
-	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
-	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_v4_0_0_data},
-	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
-	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_v2_1_0_data},
+	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_qcs404_data},
+	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_sa8775p_data},
+	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_sc8280xp_data},
+	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_sm8150_data},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ethqos_match);

-- 
2.48.1


