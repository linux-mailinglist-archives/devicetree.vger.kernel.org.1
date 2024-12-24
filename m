Return-Path: <devicetree+bounces-133793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8C49FBC0D
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 569EE1886905
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D7C1C1F0F;
	Tue, 24 Dec 2024 10:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xN3awfGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E865E1BE251
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035165; cv=none; b=W7sLGYo6r94aloVatMelGq3xoUJdJS73LcR41zMtWFCtoXy+DRZItqJkzk0m73O5G0CiXjiSnwM/1enEkGkn9xcTLsZQjdp73y7JQy0w+dDO96oq4fJQhtAPboA05GbwhF03ygpSy8qT5KNko/XzzFfJQh28Oc5pcpAxyiUxO8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035165; c=relaxed/simple;
	bh=OZbwhp9v0yJpxtOAjrkOLCh412r4s/Pspr2Af7Z6HMk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pIVZLpPP+y9yWr5wpL/vMIr7cCGSHwfp4HjDWuJ/mg6ulRrJE7PV8gHguF/Vac+4+SosrJxTRa+HSUOEYKsaceU+EyiJSSMdXRfcuqojc4lYodvs7FyibefTwoGSlKdcstoGZURLSAQbs+gc0KnxY/Mdowq23AcefQNOEbVIVac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xN3awfGa; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401b7f7141so4469230e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035161; x=1735639961; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6mXzY4WhWP+aDJKEVsTsLjKHDeS6gGmOf+TLu798BVY=;
        b=xN3awfGazW51/kCYeDWdQMLfCiYrk0BoFMpnO8qnRjfnLmHF4toj6dk1W1AaY4KmMP
         fzW2OGtNmOF9RHyPfaG0LNoWDCfWGGhX5lQDWPyTtcw4TOqhmkFO96A937oCEI1qhFRm
         oMxZfWTumlyYboo0w4etgTnpHCcserXzxi/2p/trkvf4Jo7E2bag3XUcs0HX4OZbSNmP
         KSBuVykGdlJHXfIWsw+ArQPLzfGlRbwyLXSUWI3S1BAM9LmVnutMGUpM2ZCy1dFFpvw/
         9MFPovOMwM/yuJ0DBixlpB04B0I4ALvyv3yn3wr4E6EP8WfhmNLyXB9V1X2phB3weip6
         1MmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035161; x=1735639961;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mXzY4WhWP+aDJKEVsTsLjKHDeS6gGmOf+TLu798BVY=;
        b=lcrLDQ8xSSAbLifDsqB3vrylISjikH+5q+OTA5ZAod0hK2BMGktTMamWdEMO5ccKgJ
         hLkNXx44+/eGS76XR81ACuCDYOBaV4oAM037oZPyxjgkFd2ne/QmqCDQGrhUqdoQ5X24
         Es71Mjc8QKZ4j+8JfTX9fIXriq0oJUIlsGMpfvvjkEeuhtOYY0ffcZwlMnJQtofZVKt4
         nliPRYlYMg+/nB37mL3JOPBVrpurRA3EtELL1xZWiU+zLRogXileLCFEPpqqz5FlH30C
         CeIW0wzvY8EZ6gR+HS++9aTs2GOYN735Ob9unfSrvKeSSzuTX6QAFaS/PAOCdTn5u9aL
         DC7w==
X-Forwarded-Encrypted: i=1; AJvYcCVa8ZaD5YEXDYSwwZHKc4tj7FiTmVrekqvKZ8mVTz/u4QoKoHBZmGwS5+1cxnprVmyiYIVauKulpZBl@vger.kernel.org
X-Gm-Message-State: AOJu0YytsCBT9dKwgPyyIZJHN87T2PeRe7/9vXJPGK/6CJSPr0Mcm76W
	Z26PZsKBbCftZ3SI37MwVduPaUdm2sJFEz3G82VxY5XtzqzCUgPZ/k/L3eAjIFo=
X-Gm-Gg: ASbGncuOIHQGwOz8dwInkPOq4mM5YUEb7KdBCYhzI4IhTGrAGRB9FG4M35lyPrNkSk0
	C3HVpOZXz3lWT0IMYoK/48oF/b5cy8AByDY/7LZ1GCaNAez3SdFMp0mZgczAzwnhYc0uzgaL+49
	L3Bvl0eo/2WMQrq0VOqjwJsMDDC9BZhCinAnhTPIr5UeyKJ+8tgdPBri2bUkKM3awnS3w3Zt4wM
	nhT/T6A/tGQLohyq1YjB+ZzW8OZHXUUj+CoiH41dewE77CQT4ljN8St6R0rgWR5
X-Google-Smtp-Source: AGHT+IE0ZELiwo7+KnvFDaM6stPOMYxeW2oSNkT4ubW9RCuiLLhXc0Cqj2kqttntd6Eru/iBwA9mmA==
X-Received: by 2002:a05:6512:1053:b0:542:29e5:7323 with SMTP id 2adb3069b0e04-54229e573famr4655313e87.5.1735035161113;
        Tue, 24 Dec 2024 02:12:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832073sm1574233e87.260.2024.12.24.02.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:12:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:12:16 +0200
Subject: [PATCH 4/4] clk: qcom: mmcc-msm8960: handle LVDS clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-apq8064-fix-mmcc-v1-4-c95d2e2bf143@linaro.org>
References: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
In-Reply-To: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4316;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=OZbwhp9v0yJpxtOAjrkOLCh412r4s/Pspr2Af7Z6HMk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaokMsdsE3iQatg9NHaGAS+xN1N7srVmo25Pzg
 qShpoD5dsmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qJDAAKCRCLPIo+Aiko
 1S1lB/9H9aVeyi0xwWm1S/oL5eqny/MQDJgd/VGN4W7Mbk2n7tfzTLlKVlknNt7GrD3yBCVlfFR
 qxcfLfRiqM1vXMw/SuPIaib3PSNquziqyCY4M1w23FRGzSSc3gAxb5fXfQXs/0l1aM3HcsFBgHa
 IPlOrK482rlJyZWoN1c04AncGx0lQ0Zp//SHl1EJUrGJzjWWtFg/YNVEqWk7MPcdC8kGMdcF02Q
 BGRmuPg2uBS80VAfz39hO10cFnLn04/3Xp6lQF+xacuWgMFLoufkL/I0LbdByJhBVVaUWxQM6cZ
 BOeY2alDVKmqYHd7vxlt+Rt74tSYL9WcEw6d4cdNxfIPpN7l
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On APQ8064 the DSI2_PIXEL_SRC clock can be used either to drive the
second DSI host or to drive the LCDC controller. Add LVDS PLL as
possible source to the clock and LVDS output clock. The DSI2_PIXEL_SRC
clock has separate path to be used for the LVDS clock.  To represent
both DSI and LVDS clocks properly, add intermediate clock which toggles
the enable bit and make DSI2_PIXEL_CLK clock just check for the HALT
bit.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/mmcc-msm8960.c | 61 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/qcom/mmcc-msm8960.c b/drivers/clk/qcom/mmcc-msm8960.c
index 3f41249c5ae4350a0d5a6e7ece0fa0416bfd9114..20d1c43f35d99ba531c4e138950c0b69c8c08786 100644
--- a/drivers/clk/qcom/mmcc-msm8960.c
+++ b/drivers/clk/qcom/mmcc-msm8960.c
@@ -37,6 +37,7 @@ enum {
 	P_DSI2_PLL_DSICLK,
 	P_DSI1_PLL_BYTECLK,
 	P_DSI2_PLL_BYTECLK,
+	P_LVDS_PLL,
 };
 
 #define F_MN(f, s, _m, _n) { .freq = f, .src = s, .m = _m, .n = _n }
@@ -143,6 +144,20 @@ static const struct clk_parent_data mmcc_pxo_dsi2_dsi1[] = {
 	{ .fw_name = "dsi1pll", .name = "dsi1pll" },
 };
 
+static const struct parent_map mmcc_pxo_dsi2_dsi1_lvds_map[] = {
+	{ P_PXO, 0 },
+	{ P_DSI2_PLL_DSICLK, 1 },
+	{ P_LVDS_PLL, 2 },
+	{ P_DSI1_PLL_DSICLK, 3 },
+};
+
+static const struct clk_parent_data mmcc_pxo_dsi2_dsi1_lvds[] = {
+	{ .fw_name = "pxo", .name = "pxo_board" },
+	{ .fw_name = "dsi2pll", .name = "dsi2pll" },
+	{ .fw_name = "lvdspll", .name = "mpd4_lvds_pll" },
+	{ .fw_name = "dsi1pll", .name = "dsi1pll" },
+};
+
 static const struct parent_map mmcc_pxo_dsi1_dsi2_byte_map[] = {
 	{ P_PXO, 0 },
 	{ P_DSI1_PLL_BYTECLK, 1 },
@@ -2439,26 +2454,42 @@ static struct clk_rcg dsi2_pixel_src = {
 	},
 	.s = {
 		.src_sel_shift = 0,
-		.parent_map = mmcc_pxo_dsi2_dsi1_map,
+		.parent_map = mmcc_pxo_dsi2_dsi1_lvds_map,
 	},
 	.clkr = {
 		.enable_reg = 0x0094,
 		.enable_mask = BIT(2),
 		.hw.init = &(struct clk_init_data){
 			.name = "dsi2_pixel_src",
-			.parent_data = mmcc_pxo_dsi2_dsi1,
-			.num_parents = ARRAY_SIZE(mmcc_pxo_dsi2_dsi1),
+			.parent_data = mmcc_pxo_dsi2_dsi1_lvds,
+			.num_parents = ARRAY_SIZE(mmcc_pxo_dsi2_dsi1_lvds),
 			.ops = &clk_rcg_pixel_ops,
 		},
 	},
 };
 
+static struct clk_branch dsi2_pixel_lvds_src = {
+	.clkr = {
+		.enable_reg = 0x0094,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "dsi2_pixel_lvds_src",
+			.parent_hws = (const struct clk_hw*[]){
+				&dsi2_pixel_src.clkr.hw
+			},
+			.num_parents = 1,
+			.ops = &clk_branch_simple_ops,
+			.flags = CLK_SET_RATE_PARENT,
+		},
+	},
+};
+
 static struct clk_branch dsi2_pixel_clk = {
 	.halt_reg = 0x01d0,
 	.halt_bit = 19,
 	.clkr = {
 		.enable_reg = 0x0094,
-		.enable_mask = BIT(0),
+		.enable_mask = 0,
 		.hw.init = &(struct clk_init_data){
 			.name = "mdp_pclk2_clk",
 			.parent_hws = (const struct clk_hw*[]){
@@ -2471,6 +2502,24 @@ static struct clk_branch dsi2_pixel_clk = {
 	},
 };
 
+static struct clk_branch lvds_clk = {
+	.halt_reg = 0x024c,
+	.halt_bit = 6,
+	.clkr = {
+		.enable_reg = 0x0264,
+		.enable_mask = BIT(1),
+		.hw.init = &(struct clk_init_data){
+			.name = "mdp_lvds_clk",
+			.parent_hws = (const struct clk_hw*[]){
+				&dsi2_pixel_lvds_src.clkr.hw
+			},
+			.num_parents = 1,
+			.ops = &clk_branch_ops,
+			.flags = CLK_SET_RATE_PARENT,
+		},
+	},
+};
+
 static struct clk_branch gfx2d0_ahb_clk = {
 	.hwcg_reg = 0x0038,
 	.hwcg_bit = 28,
@@ -2799,6 +2848,8 @@ static struct clk_regmap *mmcc_msm8960_clks[] = {
 	[CSIPHY1_TIMER_CLK] = &csiphy1_timer_clk.clkr,
 	[CSIPHY0_TIMER_CLK] = &csiphy0_timer_clk.clkr,
 	[PLL2] = &pll2.clkr,
+	[DSI2_PIXEL_LVDS_SRC] = &dsi2_pixel_lvds_src.clkr,
+	[LVDS_CLK] = &lvds_clk.clkr,
 };
 
 static const struct qcom_reset_map mmcc_msm8960_resets[] = {
@@ -2983,6 +3034,8 @@ static struct clk_regmap *mmcc_apq8064_clks[] = {
 	[VCAP_CLK] = &vcap_clk.clkr,
 	[VCAP_NPL_CLK] = &vcap_npl_clk.clkr,
 	[PLL15] = &pll15.clkr,
+	[DSI2_PIXEL_LVDS_SRC] = &dsi2_pixel_lvds_src.clkr,
+	[LVDS_CLK] = &lvds_clk.clkr,
 };
 
 static const struct qcom_reset_map mmcc_apq8064_resets[] = {

-- 
2.39.5


