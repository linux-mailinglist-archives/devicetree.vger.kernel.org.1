Return-Path: <devicetree+bounces-224430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B028BC3CBE
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:19:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 153C0404219
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC71E2F60AD;
	Wed,  8 Oct 2025 08:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lVz7wwNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EE32F5A14
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759911494; cv=none; b=kWKKCLXF/+cITE832lNXcN0cQlbj44ncwDQx47h1DCtJvaLWwxsX/N8Hr/6BYb9D0XcYwEpCP/ilRIndNMYp9Kep9dS/ozTqzyC64s7n2zpFj2MiTKowC9XLnQLZyizvL15fTe0FqqCqlKfhjKRy1qcJD9rUIsUW3kyliTQOrDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759911494; c=relaxed/simple;
	bh=TO9nsTt0YPxpWytCVH7ZJjGxn2Z4plKkUXJnF32G1IE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WDo4u8e0ui3D4HNNZP802aargyQH/mwsyWllshG1Kdyu6kZc+nsC2P9hHZRHHR7eN+rh2u+LfH7aVq2Sao982lbkXDQfETWnB595zgbnpfGbUtLwqXRtJnGF73s8DpjfcSbESPIYQQuuXdVm7oG9tD3IvXirZKlAKnLtdJXupHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lVz7wwNC; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso5729514f8f.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759911491; x=1760516291; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K5ZbnZbGKkG8LBPBH3Ir29b+fdJ02lrKRlpbmxW9/T8=;
        b=lVz7wwNCmV4aq8tRumqCGo46eHXQJLDoq/mxCkXOWELb3SntbwGqaLscoQxUR9pduV
         gnAllMFvcUnlS4lLEZC+LZROBRWSscHkP3J3m9pUZreXBSw+xFECg+/A0wL0DgbHFFg5
         WovNxQkZUHMGHyjXX+8syeUUP/nfBn30vZOp7tFkFnPf0P9wdkr3pg6NvB0kYy3EKTYr
         0zeQ9UAdzceX3oH+lQvvbV2ZEQjzilYgO8RldP3mojEuwuTVfoxW2qwWgUrFSDZlJtCS
         KX+uYqe/sRm3YsaruPY5wHeRCKp6cjGeUNuPKbBOmoNjrfKBT/E1ZVb5XdBFN43xGur0
         VvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759911491; x=1760516291;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5ZbnZbGKkG8LBPBH3Ir29b+fdJ02lrKRlpbmxW9/T8=;
        b=IWl28t4nctBEOAmByZLk2LnglviPm8vulprjZFAXU6mTN1gocjFyav5rxcvM1Ywj7L
         kTEjrV++vQBks8jgx5N/yP3GM2AvgIj2OWPyWg20se4bCUM/bkQ22ra4XPhKOnLc3Cwm
         v86QX/qSFOC7PwOIntDCuYnsJgLD7jWe1nS5XzmztS0BmJSzmJK1/8TxBUE2zKpjez4q
         613s/sLKk6dmmlX6tAt1DsREE5/h6uO0QIJGeVa978u4bI1F680BJckrw0sckZGew9Yz
         BIkKgu3NrpDMw3FKzl4x5Kb1eEX6b9yxRdNETCalbISEhh8NkODcsdcvU/fi733KeS++
         pm/Q==
X-Forwarded-Encrypted: i=1; AJvYcCX1vooyLYEuJzPmuHPl2om7kfOvQJ/Yv7hoWghdDv5fNlLqvbwBe885RQ9GbX7to4G9u2jb9p9fnRJD@vger.kernel.org
X-Gm-Message-State: AOJu0YyUX78hzTxPQhHmUoiKhE6IMAETtPcHNwfGkV/OICXU8OvKL5BM
	DqtErx7fgVSRiNqH6fu1oRmzR/3X5sF8mKuTjAXfV+cRG5rojZQUC3b3OEEqh9LnLzc=
X-Gm-Gg: ASbGncuRimB+9IrkfECF+HnUszcU1fP+tXSfvH+Z3HfgejH8pH9R/bUZccK6aNvjQcX
	xcp3IP6jVlmze68vNAaa/NaR6RNObsc+jm1BtCy8DxWEZ1ORZlps/DyFDfirbvMlzKGCXo/fIEx
	+u5wpscJISXkenDtoimtGDVScIJXBccvRqvc4T0Vvz5OvEkMoGRmFk56dDHer777R5VippXChV5
	QTxLf97pS1Jdke4shQC5TncsorkulPY2KvQbHL2SW5O/SX3Vsp9wQzTUTY0IpGIQ5mfI896w4R+
	Og0nVvkImLTSBR7rDOmoiMb9VWaewfO4+xJJbVRA9rv4ZO6Yav3CahbAYTtaRFY0cb7SUce9vFT
	y20xae/2v5YYrSeWnzetxEXffeO+HgPYH0gLYZGozmg==
X-Google-Smtp-Source: AGHT+IHkwtqy2vb9uxT6M7LtlQU6zwCjb9IR5rIG74fXz3TalugvLB02SuzmrQY3nea1fwBLGELWhQ==
X-Received: by 2002:a05:6000:1845:b0:425:8bc2:9c43 with SMTP id ffacd0b85a97d-42666ac4502mr1491294f8f.1.1759911490600;
        Wed, 08 Oct 2025 01:18:10 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:286d:ff1d:8b7c:4328])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e97f0sm28498943f8f.27.2025.10.08.01.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:18:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 08 Oct 2025 10:17:52 +0200
Subject: [PATCH v2 5/8] net: stmmac: qcom-ethqos: split power management
 fields into a separate structure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251008-qcom-sa8255p-emac-v2-5-92bc29309fce@linaro.org>
References: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
In-Reply-To: <20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3478;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=QXDtZJBSeiuTqR9NRW8KT3qs59BPygxIGrInXJc2Y/o=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBo5h42Xak+xMy0XGVbg60nsHByk/5QWfRt+MQk2
 tRZVAmURSeJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaOYeNgAKCRARpy6gFHHX
 ci7yD/9T88d234rhjtNAnU5hIUiy2KPa1vwStmh6rzlpiBEAYQWJ7n0qtpVAahYHWOUDFfpCxbX
 qwsLaWX2pQdosbU2lkFdffA5lYMtlXOH6J6GUvcdj0SWTSPeHuhvGaoQjr7rMYT7wVScdfK/f0T
 Q1CKPK/+i7nlZ2XpFhFSHcPcHMwzGmSe7yNtxWyMhmTZEv8xPu9N45yE6Rkw1f4qtdQujoBZ/wk
 ViGxpFT6K2MmqD7NkTEgzs6EwNBhKII+UCC0hlGskAB5N8PiTaE4r7rPLvA/B79t2fjd2o6Gdqm
 kD1Qhk73OktYQEiw64TAkceahph3P7g2PKW5p8whO3jVBKsjKRnG8RPhrtkPoV/muXooK+UnYXv
 mmYJvnC8pUx3BXZGy0PMtyN8HuSK05GDhscy0T/HJaRGcw9bpg777ge6XlAfW1BxNTP8nVndOD2
 C63+OilZ0jPj8BKIQyY88Mudny2/zvh9bu44+UKEa54IJUn5ZuGUZDWUHhFH3Qcgs7Ha3ampG1u
 g/o2E0tK5wZcBSN0d0YwtACEOcKuLIBBakebxgraxUV5tByTHxwOPcMoVU2nHMyVfZM5riUXQgJ
 klzu9ahNp03ITcGbo5/lCY3N3M4bAkCKevXvcNQXc+oXsr/KMNhSmNINpCoZrlbCTLyp/r4mwsi
 fNcmzHN7Zq/n+Zg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Now that we have a separate wrapper for device match data, let's extend
this structure with a pointer to the structure containing fields related
to power-management only. This is done because a device may have the
same device settings but different power management mode (e.g.: firmware
vs manual).

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c   | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index dcee5c161c01124ea6bf36ceaeca4cc8ca29c5d5..d4ddf1c5c1bca2ae1fc5ec38a4ac244e1677482e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -95,15 +95,19 @@ struct ethqos_emac_driver_data {
 	unsigned int num_por;
 	bool rgmii_config_loopback_en;
 	bool has_emac_ge_3;
-	const char *link_clk_name;
 	bool has_integrated_pcs;
 	u32 dma_addr_width;
 	struct dwmac4_addrs dwmac4_addrs;
 	bool needs_sgmii_loopback;
 };
 
+struct ethqos_emac_pm_data {
+	const char *link_clk_name;
+};
+
 struct ethqos_emac_match_data {
 	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_pm_data *pm_data;
 };
 
 struct qcom_ethqos {
@@ -297,7 +301,6 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	.num_por = ARRAY_SIZE(emac_v4_0_0_por),
 	.rgmii_config_loopback_en = false,
 	.has_emac_ge_3 = true,
-	.link_clk_name = "phyaux",
 	.has_integrated_pcs = true,
 	.needs_sgmii_loopback = true,
 	.dma_addr_width = 36,
@@ -319,8 +322,13 @@ static const struct ethqos_emac_driver_data emac_v4_0_0_data = {
 	},
 };
 
+static const struct ethqos_emac_pm_data emac_sa8775p_pm_data = {
+	.link_clk_name = "phyaux",
+};
+
 static const struct ethqos_emac_match_data emac_sa8775p_data = {
 	.drv_data = &emac_v4_0_0_data,
+	.pm_data = &emac_sa8775p_pm_data,
 };
 
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
@@ -787,11 +795,13 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	const struct ethqos_emac_driver_data *drv_data;
+	const struct ethqos_emac_pm_data *pm_data;
 	const struct ethqos_emac_match_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct device *dev = &pdev->dev;
 	struct qcom_ethqos *ethqos;
+	const char *clk_name;
 	int ret, i;
 
 	ret = stmmac_get_platform_resources(pdev, &stmmac_res);
@@ -839,6 +849,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	data = device_get_match_data(dev);
 	drv_data = data->drv_data;
+	pm_data = data->pm_data;
+	clk_name = pm_data && pm_data->link_clk_name ?
+				pm_data->link_clk_name : "rgmii";
 
 	ethqos->por = drv_data->por;
 	ethqos->num_por = drv_data->num_por;
@@ -846,7 +859,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
 	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
 
-	ethqos->link_clk = devm_clk_get(dev, drv_data->link_clk_name ?: "rgmii");
+	ethqos->link_clk = devm_clk_get(dev, clk_name);
 	if (IS_ERR(ethqos->link_clk))
 		return dev_err_probe(dev, PTR_ERR(ethqos->link_clk),
 				     "Failed to get link_clk\n");

-- 
2.48.1


