Return-Path: <devicetree+bounces-4462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FE37B2B57
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 726491C2099C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A32E187F;
	Fri, 29 Sep 2023 05:39:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993BA211F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:40 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BAD8CC5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:37 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99357737980so1796286166b.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965975; x=1696570775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3c1H/PZJ1MisjjuSeuZVQvTBJXyOl1OkEQKaODnh2w=;
        b=dyQEOvLYR4nwOmk4oaDlMhHsUBDGz9PaXSQGvdDC6D5DgolAcIaDVDwZPxi/xiqjC4
         wNPwXox43bGsOLPbeNqLJZBL4MKnmB6ZMDlygfgtAczph1EI2Di7CHONQ58n5CL5NBM0
         piKxoU5Wq2ht5BdAFwxMADevL/H+Ra4NTZ5ptTdyvtiAhqMV6DyCpjtIEKe0hVZY+jWq
         v5YIoxq1htYNqtbLMGXVidpQJ2VOPlADKSt8XmzLYNdpAzsbujAZJBTV0Io+YiyZt60Q
         JnFJKA6Pr+fa8fDZ8LOD7Ufp2jyJn5+eaBfJ1OIApGkvTSFLCQipHanCczmTZdduL7C0
         47fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965975; x=1696570775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3c1H/PZJ1MisjjuSeuZVQvTBJXyOl1OkEQKaODnh2w=;
        b=qrAU/4ipcdXZ5B4R8V90KZzdNtoYCBZYAxbLgouiafROrVNQipkdrqy5BwHfiptX8z
         abNcJEOTzUm9OClALg4K+EoFmMJqZLBSL2aTTBL+IZcAxFX0PQ7lZxi/zR2E8+SMkhLX
         B+e3UtrLvxp+MAC+f+QFyVl2BwQfH8g0u0N379qBy/6sMIb1PiAl9Ax/J+QiOURfI57B
         KMMTOUu1yjDbYNaPojW2Wfpubk+1EeWE1r6F+ITQ3Diagb5TJPSfxFUQxCTxKHP+VJ3C
         nNbyg0vOSEYmRF6NhA53SDaGdejS4LCV0HFFrRReKBX6K8qqFQHHV6xie0w5QR4iOGak
         Bvzg==
X-Gm-Message-State: AOJu0YxrmqEH35Su26wmRsSnKXGPdJEt4IlZOl1JAjBNap7I4Gktb09x
	PsBmJs0If8l7s9t6LWdGfhKjlg==
X-Google-Smtp-Source: AGHT+IEYe5Bbl6K6Kb9sVO7dQpfEDwuRdRHpGZ0ScCXxBph7H03FCWpCmVn+mlyXuJKGJQ1kdesCpg==
X-Received: by 2002:a17:906:bcf0:b0:9b2:b786:5e9c with SMTP id op16-20020a170906bcf000b009b2b7865e9cmr3079018ejb.28.1695965975671;
        Thu, 28 Sep 2023 22:39:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:35 -0700 (PDT)
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
Subject: [PATCH v2 08/28] clk: renesas: rzg2l: add struct clk_hw_data
Date: Fri, 29 Sep 2023 08:38:55 +0300
Message-Id: <20230929053915.1530607-9-claudiu.beznea@bp.renesas.com>
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

Add clk_hw_data struct that keeps the core part of a clock data. The
sd_hw_data embeds a member of type struct clk_hw_data along with other
members (in the next commits). This commit prepares the field for
refactoring the SD MUX clock driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---

Changes in v2:
- collected tags

 drivers/clk/renesas/rzg2l-cpg.c | 52 +++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 02058a2d39ca..ac05463d1d98 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -63,13 +63,29 @@
 
 #define MAX_VCLK_FREQ		(148500000)
 
-struct sd_hw_data {
+/**
+ * struct clk_hw_data - clock hardware data
+ * @hw: clock hw
+ * @conf: clock configuration (register offset, shift, width)
+ * @priv: CPG private data structure
+ */
+struct clk_hw_data {
 	struct clk_hw hw;
 	u32 conf;
 	struct rzg2l_cpg_priv *priv;
 };
 
-#define to_sd_hw_data(_hw)	container_of(_hw, struct sd_hw_data, hw)
+#define to_clk_hw_data(_hw)	container_of(_hw, struct clk_hw_data, hw)
+
+/**
+ * struct sd_hw_data - SD clock hardware data
+ * @hw_data: clock hw data
+ */
+struct sd_hw_data {
+	struct clk_hw_data hw_data;
+};
+
+#define to_sd_hw_data(_hw)	container_of(_hw, struct sd_hw_data, hw_data)
 
 struct rzg2l_pll5_param {
 	u32 pl5_fracin;
@@ -188,10 +204,10 @@ rzg2l_cpg_mux_clk_register(const struct cpg_core_clk *core,
 
 static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct sd_hw_data *hwdata = to_sd_hw_data(hw);
-	struct rzg2l_cpg_priv *priv = hwdata->priv;
-	u32 off = GET_REG_OFFSET(hwdata->conf);
-	u32 shift = GET_SHIFT(hwdata->conf);
+	struct clk_hw_data *clk_hw_data = to_clk_hw_data(hw);
+	struct rzg2l_cpg_priv *priv = clk_hw_data->priv;
+	u32 off = GET_REG_OFFSET(clk_hw_data->conf);
+	u32 shift = GET_SHIFT(clk_hw_data->conf);
 	const u32 clk_src_266 = 2;
 	u32 msk, val, bitmask;
 	unsigned long flags;
@@ -208,7 +224,7 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	 * The clock mux has 3 input clocks(533 MHz, 400 MHz, and 266 MHz), and
 	 * the index to value mapping is done by adding 1 to the index.
 	 */
-	bitmask = (GENMASK(GET_WIDTH(hwdata->conf) - 1, 0) << shift) << 16;
+	bitmask = (GENMASK(GET_WIDTH(clk_hw_data->conf) - 1, 0) << shift) << 16;
 	msk = off ? CPG_CLKSTATUS_SELSDHI1_STS : CPG_CLKSTATUS_SELSDHI0_STS;
 	spin_lock_irqsave(&priv->rmw_lock, flags);
 	if (index != clk_src_266) {
@@ -237,12 +253,12 @@ static int rzg2l_cpg_sd_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 
 static u8 rzg2l_cpg_sd_clk_mux_get_parent(struct clk_hw *hw)
 {
-	struct sd_hw_data *hwdata = to_sd_hw_data(hw);
-	struct rzg2l_cpg_priv *priv = hwdata->priv;
-	u32 val = readl(priv->base + GET_REG_OFFSET(hwdata->conf));
+	struct clk_hw_data *clk_hw_data = to_clk_hw_data(hw);
+	struct rzg2l_cpg_priv *priv = clk_hw_data->priv;
+	u32 val = readl(priv->base + GET_REG_OFFSET(clk_hw_data->conf));
 
-	val >>= GET_SHIFT(hwdata->conf);
-	val &= GENMASK(GET_WIDTH(hwdata->conf) - 1, 0);
+	val >>= GET_SHIFT(clk_hw_data->conf);
+	val &= GENMASK(GET_WIDTH(clk_hw_data->conf) - 1, 0);
 
 	return val ? val - 1 : 0;
 }
@@ -258,17 +274,17 @@ rzg2l_cpg_sd_mux_clk_register(const struct cpg_core_clk *core,
 			      void __iomem *base,
 			      struct rzg2l_cpg_priv *priv)
 {
-	struct sd_hw_data *clk_hw_data;
+	struct sd_hw_data *sd_hw_data;
 	struct clk_init_data init;
 	struct clk_hw *clk_hw;
 	int ret;
 
-	clk_hw_data = devm_kzalloc(priv->dev, sizeof(*clk_hw_data), GFP_KERNEL);
-	if (!clk_hw_data)
+	sd_hw_data = devm_kzalloc(priv->dev, sizeof(*sd_hw_data), GFP_KERNEL);
+	if (!sd_hw_data)
 		return ERR_PTR(-ENOMEM);
 
-	clk_hw_data->priv = priv;
-	clk_hw_data->conf = core->conf;
+	sd_hw_data->hw_data.priv = priv;
+	sd_hw_data->hw_data.conf = core->conf;
 
 	init.name = core->name;
 	init.ops = &rzg2l_cpg_sd_clk_mux_ops;
@@ -276,7 +292,7 @@ rzg2l_cpg_sd_mux_clk_register(const struct cpg_core_clk *core,
 	init.num_parents = core->num_parents;
 	init.parent_names = core->parent_names;
 
-	clk_hw = &clk_hw_data->hw;
+	clk_hw = &sd_hw_data->hw_data.hw;
 	clk_hw->init = &init;
 
 	ret = devm_clk_hw_register(priv->dev, clk_hw);
-- 
2.39.2


