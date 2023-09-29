Return-Path: <devicetree+bounces-4457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAE87B2B4D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1CE742824DC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FFF399;
	Fri, 29 Sep 2023 05:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7273B3D78
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:29 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB0491A8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:27 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9b2cee40de8so62180666b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965966; x=1696570766; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=au5TjHif1NdZJ2Z7FrkXoOxh3rDBA3mHRRDa4P1Qy7A=;
        b=bbhcGyIDn/XHtayop1ONScEnDCLyGTMRomMTmeZAofjitENiGonQkKdWcLLh4Qr2w7
         cFh0WJ3L/5YY72cDiDQD4/JbcDylEQXEucdtrHtshfwVe4ukATDoapBuM6yXl4XaPMCG
         VLJRe87tDkXKTxGr0rxVGb+pwFKuox0zE5+hLuROIKe286r+bjIB9MAm2KHnWJaZc+m4
         Ass2BnhuDrxhgPwZAk1IMAsWITcNY6/qwOxEjJipIp4CnsskjLsHteqE/OzAOGHaXV5H
         ksHaNpHu6GkO781b3ftL6C4jOjfuMm5sFKR0qpptxNdxJSsnkJDsUdkYEcHonyI+aT+B
         GSvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965966; x=1696570766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=au5TjHif1NdZJ2Z7FrkXoOxh3rDBA3mHRRDa4P1Qy7A=;
        b=kCaMHQDEIBLM+lHcoKyaB1GS+E2J08EUZ1v8mpkDS3gcsAaF9b0p0QuczaEpC8FHgm
         ZH1e8Nxv2uY1BBT/9Ia6zpvod7OSXYOH4h48HZSEHHI32VPmfBBqQ+4WZJEUcNUKUmne
         TCKGqH65uxIAbI27U9i2dv71kNnn6MBcvhNPTcWY76SNPk5CCytPoq9ekMi9S9c9sl3P
         TBkRjV32E3P3RYiXL2+bXpggkLKoaOZ3YBhkAnBACzNj8gyX2YZVwpziA7A12dH0n+4S
         Yg5u25LD9UrPd562GOqA1J4ruoJftnUDskBfeMBFskHow/+T73EaPxf9/JgVhW7CR7Nq
         r1dw==
X-Gm-Message-State: AOJu0YyLwG7TltIky51e0p3bM0rbBzN+obZR7sh1Gbk9snCN3sdJyT7E
	SrJqLKayIFuRtFw9H2HyUSR92g==
X-Google-Smtp-Source: AGHT+IFum4h4g8el3Uw1w6DcCrPLqgJojSzrnCceoMYUy9pG/hToo9w/gNJaOE/EEubYcVZDtuSoyw==
X-Received: by 2002:a17:907:b60b:b0:9b2:cee1:1f82 with SMTP id vl11-20020a170907b60b00b009b2cee11f82mr1301071ejc.7.1695965965746;
        Thu, 28 Sep 2023 22:39:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:25 -0700 (PDT)
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
Subject: [PATCH v2 03/28] clk: renesas: rzg2l: lock around writes to mux register
Date: Fri, 29 Sep 2023 08:38:50 +0300
Message-Id: <20230929053915.1530607-4-claudiu.beznea@bp.renesas.com>
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

SD MUX output (SD0) is further divided by 4 in G2{L, UL}. The divided
clock is SD0_DIV4. SD0_DIV4 is registered with CLK_SET_RATE_PARENT which
means a rate request for it is propagated to the MUX and could reach
rzg2l_cpg_sd_clk_mux_set_parent() concurrently with the users of SD0.
Add proper locking to avoid concurrent access on SD MUX set rate
registers.

Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- adapted delay_us to 10us
- adapted CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US to 200us; tested
  with this adjustements on RZ/G3S and RZ/G2L SoCs

 drivers/clk/renesas/rzg2l-cpg.c | 23 +++++++++++++----------
 drivers/clk/renesas/rzg2l-cpg.h |  2 +-
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 5343d04fd70d..0679f2c7649e 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -189,6 +189,7 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	u32 shift = GET_SHIFT(hwdata->conf);
 	const u32 clk_src_266 = 2;
 	u32 msk, val, bitmask;
+	unsigned long flags;
 	int ret;
 
 	/*
@@ -204,23 +205,25 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	 */
 	bitmask = (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) << 16;
 	msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
+	spin_lock_irqsave(&priv->rmw_lock, flags);
 	if (index != clk_src_266) {
 		writel(bitmask | ((clk_src_266 + 1) << shift), priv->base + off);
 
-		ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
-					 !(val & msk), 100,
-					 CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
-		if (ret) {
-			dev_err(priv->dev, "failed to switch clk source\n");
-			return ret;
-		}
+		ret = readl_poll_timeout_atomic(priv->base + CPG_CLKSTATUS, val,
+						!(val & msk), 10,
+						CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
+		if (ret)
+			goto unlock;
 	}
 
 	writel(bitmask | ((index + 1) << shift), priv->base + off);
 
-	ret = readl_poll_timeout(priv->base + CPG_CLKSTATUS, val,
-				 !(val & msk), 100,
-				 CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
+	ret = readl_poll_timeout_atomic(priv->base + CPG_CLKSTATUS, val,
+					!(val & msk), 10,
+					CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US);
+unlock:
+	spin_unlock_irqrestore(&priv->rmw_lock, flags);
+
 	if (ret)
 		dev_err(priv->dev, "failed to switch clk source\n");
 
diff --git a/drivers/clk/renesas/rzg2l-cpg.h b/drivers/clk/renesas/rzg2l-cpg.h
index 0b28870a6f9d..097fd8f61680 100644
--- a/drivers/clk/renesas/rzg2l-cpg.h
+++ b/drivers/clk/renesas/rzg2l-cpg.h
@@ -43,7 +43,7 @@
 #define CPG_CLKSTATUS_SELSDHI0_STS	BIT(28)
 #define CPG_CLKSTATUS_SELSDHI1_STS	BIT(29)
 
-#define CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US	20000
+#define CPG_SDHI_CLK_SWITCH_STATUS_TIMEOUT_US	200
 
 /* n = 0/1/2 for PLL1/4/6 */
 #define CPG_SAMPLL_CLK1(n)	(0x04 + (16 * n))
-- 
2.39.2


