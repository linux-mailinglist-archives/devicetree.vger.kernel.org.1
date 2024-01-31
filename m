Return-Path: <devicetree+bounces-36994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA73843728
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 440321C228A6
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7790C50A67;
	Wed, 31 Jan 2024 07:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oZGCP0nD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC9C4F8A8
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706684903; cv=none; b=P32R63cC9R1zFUiWRVL3YnjuUIa6CydXwwXJ/5DH7P2yxJIhAhn9OLROApymd0HvbI3XzU7KKqbO+m7S38hfC547aumUeRv/cCzYw0ta9M44GCL1px5307yF9ZOD4b+BQkJa8xssAb/fUd/sR/Zbv4V2hNibXVI+mqSXjjGfyLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706684903; c=relaxed/simple;
	bh=SCBsO7RXjcmYj56UQGsgo+pKrcUyAXNxRNanEY60oIA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HFUvA5mLsz+rtYW50KetzsL90sY+5/U6qPhwgz8/iuYBIHc2+G/S754YKxnRSiL7WBMIejF2sgFvr5h946RB5pZphcOrSmtzQxmZ5TGlcKU9bIIZPKqJej8k4g4k3N3aOGoLwuMn5uZhSbG/WCzAxhZEYrAuBlfxKoNXlGdmelM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oZGCP0nD; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5cdf76cde78so2966731a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684901; x=1707289701; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vrBz94BuTNSt9P0cmQ/JtUYmmdiGOZDnkuKPdCIy/0E=;
        b=oZGCP0nDSuFucs4uYGMiPJv/b39k1GuOAE2G8tt3cNtC+zgIhWw8yLvoil7ezjKiou
         JcmhfVbmMFU2kvXo5Y+aNFWvaYsqRsfNFNe/cMBh9jMcoQynerixxwX6FxrgBto14FQN
         Ks1jSCwehYK/gOUotYSqsFAWxsltuOc8m09Kl91dgHADTUwAlsMAQm81qQzIEYa8RRDl
         1wwcPR14sJB8tLHiuL5VC5Dhti2eOY1XWEYIFkC/0RljBN2YtET1dxBUbYsLdbZqCvCN
         8SdG3ii+fFRoENq6cdLQd/0vHFEYx5uk56yLcmGMJs84tZGRgEcip4p5EtnpgqwPkprZ
         Q9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684901; x=1707289701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vrBz94BuTNSt9P0cmQ/JtUYmmdiGOZDnkuKPdCIy/0E=;
        b=ioBP6krzKB5zYrfX+sWS0rA5KIfkP0q9FHcWff0Pang6Cy7SDXS8ro8mkQLoAi7B2e
         rspkq7q+CykU6eHnWWqM32ED+KCQK0TtFS5kRVhvkW50kAK4EQX0Nb7JCr2QRollm4H5
         j1ut4HbGyJlzs00WBDhIqNNLWNiqY4PXT+2y85cPW2I2CK+KRDTwjrlCCd8xmvpCak8h
         gkpCZTV+f45T/n7i2rzjAS13StZ0UpQbZZj1NsORXEUIahA11leY5C12es7Be1fW7e+l
         XakE4mHjD3QQ3v5wvH/SRGEGMLhrKLpr8Owu9ovbq/C+1oYNoW42q8wCSFdVWdmr2idC
         mTmg==
X-Gm-Message-State: AOJu0YyT9Ed0GPrg7p29nzTMYecizdvoTGmCBIYMYZxSgdO1Iwfytkqf
	cuEtfH7rdKcwUMuu+MXrUHF5gYwr2FIACUHSA9PWppqoxNTCIck6qWDkzNLWVA==
X-Google-Smtp-Source: AGHT+IHG7CeD4yMbLmw5DP00Z2QDMS2iDb6DjukZj7eqvdYSSca+KNDl5G8GOiiM5rUOeKcIp3RneA==
X-Received: by 2002:a05:6a21:99a7:b0:19c:9e0c:1d2b with SMTP id ve39-20020a056a2199a700b0019c9e0c1d2bmr834833pzb.52.1706684901216;
        Tue, 30 Jan 2024 23:08:21 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:08:20 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:27 +0530
Subject: [PATCH v3 04/17] clk: qcom: gcc-sc8180x: Add missing UFS QREF
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-ufs-phy-clock-v3-4-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2717;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=SCBsO7RXjcmYj56UQGsgo+pKrcUyAXNxRNanEY60oIA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG77R/Xh7qMt7D8A82y+Z7ovm1A/k0BpEfN7
 WMRXpednByJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxuwAKCRBVnxHm/pHO
 9Wp9B/4sITOPxh34rYcFxhTohk0p2usKarDdGVg8nQuZ9W3Ljqt+kv9LCpkbpgUcdMsot2rjdw9
 8PdFkJQL3sBCkWo6aOo7ZURtGRGDdUGbnmFF7i+VKbVoiswNNDvbNBSUedfudrebnw3Yhi4XSrx
 YKZIK1X6s/FxR7Aalf4NFDn3XZzp45UKyvly60YhZaZnGxxHRtk8Tnc22QfEFWYT0kkekXTJpz2
 87N3jquVNJT/mTc4vWvs/E+aqI7oROIEL1oUnXyOpjSaFLsd9AX071QWChbKmZoA1lGGHY2CC0r
 1v5+UhAyynSVtx0Bd9DsGEdrMsbb/l79qsJ5IFK5MDYNUoF2
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

Add missing QREF clocks for UFS MEM and UFS CARD controllers.

Fixes: 4433594bbe5d ("clk: qcom: gcc: Add global clock controller driver for SC8180x")
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/qcom/gcc-sc8180x.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sc8180x.c b/drivers/clk/qcom/gcc-sc8180x.c
index ae2147381559..544567db45f1 100644
--- a/drivers/clk/qcom/gcc-sc8180x.c
+++ b/drivers/clk/qcom/gcc-sc8180x.c
@@ -3347,6 +3347,19 @@ static struct clk_branch gcc_ufs_card_2_unipro_core_clk = {
 	},
 };
 
+static struct clk_branch gcc_ufs_card_clkref_en = {
+	.halt_reg = 0x8c004,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c004,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_card_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch gcc_ufs_card_ahb_clk = {
 	.halt_reg = 0x75014,
 	.halt_check = BRANCH_HALT,
@@ -3561,6 +3574,19 @@ static struct clk_branch gcc_ufs_card_unipro_core_hw_ctl_clk = {
 	},
 };
 
+static struct clk_branch gcc_ufs_mem_clkref_en = {
+	.halt_reg = 0x8c000,
+	.halt_check = BRANCH_HALT,
+	.clkr = {
+		.enable_reg = 0x8c000,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_ufs_mem_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch gcc_ufs_phy_ahb_clk = {
 	.halt_reg = 0x77014,
 	.halt_check = BRANCH_HALT,
@@ -4413,6 +4439,7 @@ static struct clk_regmap *gcc_sc8180x_clocks[] = {
 	[GCC_UFS_CARD_2_TX_SYMBOL_0_CLK] = &gcc_ufs_card_2_tx_symbol_0_clk.clkr,
 	[GCC_UFS_CARD_2_UNIPRO_CORE_CLK] = &gcc_ufs_card_2_unipro_core_clk.clkr,
 	[GCC_UFS_CARD_2_UNIPRO_CORE_CLK_SRC] = &gcc_ufs_card_2_unipro_core_clk_src.clkr,
+	[GCC_UFS_CARD_CLKREF_EN] = &gcc_ufs_card_clkref_en.clkr,
 	[GCC_UFS_CARD_AHB_CLK] = &gcc_ufs_card_ahb_clk.clkr,
 	[GCC_UFS_CARD_AXI_CLK] = &gcc_ufs_card_axi_clk.clkr,
 	[GCC_UFS_CARD_AXI_CLK_SRC] = &gcc_ufs_card_axi_clk_src.clkr,
@@ -4429,6 +4456,7 @@ static struct clk_regmap *gcc_sc8180x_clocks[] = {
 	[GCC_UFS_CARD_UNIPRO_CORE_CLK] = &gcc_ufs_card_unipro_core_clk.clkr,
 	[GCC_UFS_CARD_UNIPRO_CORE_CLK_SRC] = &gcc_ufs_card_unipro_core_clk_src.clkr,
 	[GCC_UFS_CARD_UNIPRO_CORE_HW_CTL_CLK] = &gcc_ufs_card_unipro_core_hw_ctl_clk.clkr,
+	[GCC_UFS_MEM_CLKREF_EN] = &gcc_ufs_mem_clkref_en.clkr,
 	[GCC_UFS_PHY_AHB_CLK] = &gcc_ufs_phy_ahb_clk.clkr,
 	[GCC_UFS_PHY_AXI_CLK] = &gcc_ufs_phy_axi_clk.clkr,
 	[GCC_UFS_PHY_AXI_CLK_SRC] = &gcc_ufs_phy_axi_clk_src.clkr,

-- 
2.25.1


