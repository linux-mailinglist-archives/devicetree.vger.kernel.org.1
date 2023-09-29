Return-Path: <devicetree+bounces-4459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB157B2B54
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1F0F0282548
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49922399;
	Fri, 29 Sep 2023 05:39:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1243D78
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:34 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CF771BB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:31 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9a645e54806so1765139166b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965970; x=1696570770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnqQLNYZz3xo/Z2CLQzgm+cKizcANRje7hedbfOoLFU=;
        b=Hrado1MyFwyR7mvK71RCyzFzGbXu9MJSQDBMIk2zhzioAc+6XROHOWJB/cBcbuTfUF
         W9Fm6EFk+wf1A5DJSHTmyD1yLcFfzj8xGQQWeoVFGy481cmja3fakRuMwIxflcPE/ApU
         B8wXyUSU73HhUFi4TldIQZmkFSRLHg3zuT9GGd7OkoQYGf6r3Wz3ocGgmOCtOJ41uCUB
         tbGTrSoWpb65wx9bUoj55JsJJO3DN12Bvi6EE3ahDNonoccdVYvf0hN4igMSAq26ka9Y
         syyRKAzK93j3OAhtIpDxdWvlD6oqCH0yT7bA/E3zGxGdTf+fpKUzhNCiG6WLLiQJwwwK
         RmuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965970; x=1696570770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QnqQLNYZz3xo/Z2CLQzgm+cKizcANRje7hedbfOoLFU=;
        b=anEyIWtyIidbI+TqHl3fMR2OBtSZgH/EifMnvE/Q71wou5vJjuqIccdoboWYzaHEte
         4gP9dmL9cNFsTAjQXKoI5WDqRF7KzVjZYGWRPVwH82hc6PE3jQQG7Bcbm0n2ldSzGJzy
         ekZrLekVCm++F19GkNoienELe/3I6o/PS33q6eLDN4gHGC2+SYc5M9VBLYTTqaVME1vF
         8EuoWx5deJLoVbDzYRAt92hkoMtzSwGtQHGh9SLvbt54vXe6hRvnZmSGI8Ae+UYOag3D
         CF+Fe5mQSM8AXzRH8yTYD8cvjAyjczMEmYIx7oNQlEyYN4Iw0D4VHoXDO0sAqFCG6QT1
         KKag==
X-Gm-Message-State: AOJu0YyokhxNfzMAnuRpMMZahxAHpIcFBruXaB886lt3I2SiderSQVg/
	5InkzBRCIFCjnK7rAA1Ve9lnsg==
X-Google-Smtp-Source: AGHT+IHQNetWLkVJ62VPE+HyiTqj5WFfnB+Bs5B1knSVeh9ea0t+7zjVn4DhCdK1IlZdfEVAxrGMkQ==
X-Received: by 2002:a17:906:3019:b0:9b2:73b3:29a1 with SMTP id 25-20020a170906301900b009b273b329a1mr3092024ejz.23.1695965969759;
        Thu, 28 Sep 2023 22:39:29 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:29 -0700 (PDT)
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
Subject: [PATCH v2 05/28] clk: renesas: rzg2l: fix computation formula
Date: Fri, 29 Sep 2023 08:38:52 +0300
Message-Id: <20230929053915.1530607-6-claudiu.beznea@bp.renesas.com>
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

According to hardware manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf)
the computation formula for PLL rate is as follows:

Fout = ((m + k/65536) * Fin) / (p * 2^s)

and k has values in range [-32768, 32767]. Dividing k by 65536 with
integer variables leads all the time to zero. Thus we may have slight
differences b/w what has been set vs. what is displayed. Thus,
get rid of this and decompose the formula before dividing k by 65536.

Fixes: ef3c613ccd68a ("clk: renesas: Add CPG core wrapper for RZ/G2L SoC")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- used mul_u64_u32_shr()

 drivers/clk/renesas/rzg2l-cpg.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 6f50f0329ecf..f411e428196c 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -695,18 +695,18 @@ static unsigned long rzg2l_cpg_pll_clk_recalc_rate(struct clk_hw *hw,
 	struct pll_clk *pll_clk = to_pll(hw);
 	struct rzg2l_cpg_priv *priv = pll_clk->priv;
 	unsigned int val1, val2;
-	unsigned int mult = 1;
-	unsigned int div = 1;
+	u64 rate;
 
 	if (pll_clk->type != CLK_TYPE_SAM_PLL)
 		return parent_rate;
 
 	val1 = readl(priv->base + GET_REG_SAMPLL_CLK1(pll_clk->conf));
 	val2 = readl(priv->base + GET_REG_SAMPLL_CLK2(pll_clk->conf));
-	mult = MDIV(val1) + KDIV(val1) / 65536;
-	div = PDIV(val1) << SDIV(val2);
 
-	return DIV_ROUND_CLOSEST_ULL((u64)parent_rate * mult, div);
+	rate = mul_u64_u32_shr(parent_rate, (MDIV(val1) << 16) + (s16)KDIV(val1),
+			       16 + SDIV(val2));
+
+	return DIV_ROUND_CLOSEST_ULL(rate, PDIV(val1));
 }
 
 static const struct clk_ops rzg2l_cpg_pll_ops = {
-- 
2.39.2


