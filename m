Return-Path: <devicetree+bounces-4456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA87B2B4B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6E9AF2825FD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4542119;
	Fri, 29 Sep 2023 05:39:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FBA187F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:27 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E21F91A5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:24 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99357737980so1796261966b.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965963; x=1696570763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KeROYzXT5X0vhWub03MpkUt5t0C3EfcKOwYZPDuBwCY=;
        b=iXjiS5MxM9RIAEPbwtRNcJX+E8z0R0L93eGAAb5VokHuXB7prx9WreoLZ/twhVQ4CT
         fNA7+ur0PJeFCYSBBeTeDkRPMB38/vfDFRTrfff9015aCVhGMHPaOumXhCZSNZipWmjr
         dw4qNcYNa7GOWt1ERRsNBH16MXTivAB7j5B+4E1rveqQI31jtnpddCyKktl49Is9DOaP
         I3DFzKtSKIBnleD5CcZj1HnRULeIz4NtxaZfnQACtMZhPiGvzXIloMVOxX5GN856dzEp
         L/MvpSJVhIbLhJiUq5bHQ75vsN8kfCHVediG64G/tc+bhjCTuwZiNF5J80p4JAiv6UI0
         TWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965963; x=1696570763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeROYzXT5X0vhWub03MpkUt5t0C3EfcKOwYZPDuBwCY=;
        b=CfF2MkyQg6dG44zbPBVuxkHh8xrVZ2V7Nxh97EuwuuD5jUoFHhqBnxlqIaci3q/Hxl
         AqACds3xf7eBSU+1w6e7+CU41bau07qY/6/DIMmoF9baZ1LdI581jNBik/kgzUYfgW9E
         jS+Xxh1DjByCMsKj5qF2mfe+fyUg1q4uaRxEFMhzS0AV76Ejnvxnk91J39BPA1ETBdly
         8fipmf8CvUCOaTrJFDe8fj+KaaTkKVqsClM2/aEnSwhbAz7rZd0oxafynSVl2sWyscBs
         y1fSNAl1ojv/bKGH+6o3jKWD2y6ZOWYWCdrHtnPEbc6LbyJS8229pWdDKieQZH6rldzA
         2VUQ==
X-Gm-Message-State: AOJu0Yw9J/77jgWbCwIr8ECXSxqNvFnmOQEspQ+H7etr3PQWHyR68DpF
	qQLhFtdifVP/MGq2tMlnI0vWvQ==
X-Google-Smtp-Source: AGHT+IGADEnpx3heQWFHdL/4NzaHz21fAG/RuwtTOzG7s3wQgRBxCwzfIgq/eWl2F+fu8QtXUo2AmA==
X-Received: by 2002:a17:906:100c:b0:9a2:24f9:fabe with SMTP id 12-20020a170906100c00b009a224f9fabemr3031122ejm.66.1695965963508;
        Thu, 28 Sep 2023 22:39:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:23 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/28] clk: renesas: rzg2l: wait for status bit of SD mux before continuing
Date: Fri, 29 Sep 2023 08:38:49 +0300
Message-Id: <20230929053915.1530607-3-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hardware user manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf,
chapter 7.4.7 Procedure for Switching Clocks by the Dynamic Switching
Frequency Selectors) specifies that we need to check CPG_PL2SDHI_DSEL for
SD clock switching status.

Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- initialized msk

 drivers/clk/renesas/rzg2l-cpg.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 9baae7bb7094..5343d04fd70d 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -188,7 +188,8 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	u32 off = GET_REG_OFFSET(hwdata->conf);
 	u32 shift = GET_SHIFT(hwdata->conf);
 	const u32 clk_src_266 = 2;
-	u32 bitmask;
+	u32 msk, val, bitmask;
+	int ret;
 
 	/*
 	 * As per the HW manual, we should not directly switch from 533 MHz to
@@ -202,14 +203,10 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	 * the index to value mapping is done by adding 1 to the index.
 	 */
 	bitmask = (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) << 16;
+	msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
 	if (index != clk_src_266) {
-		u32 msk, val;
-		int ret;
-
 		writel(bitmask | ((clk_src_266 + 1) << shift), priv->base + off);
 
-		msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
-
 		ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
 					 !(val & msk), 100,
 					 CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
@@ -221,7 +218,13 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 
 	writel(bitmask | ((index + 1) << shift), priv->base + off);
 
-	return 0;
+	ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
+				 !(val & msk), 100,
+				 CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
+	if (ret)
+		dev_err(priv->dev, "failed to switch clk source\n");
+
+	return ret;
 }
 
 static u8 rzg2l_cpg_sd_clk_mux_get_parent(struct clk_hw *hw)
-- 
2.39.2


