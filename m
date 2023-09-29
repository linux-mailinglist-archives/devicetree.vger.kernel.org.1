Return-Path: <devicetree+bounces-4460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 732717B2B55
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 64962B20B97
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D8F7211F;
	Fri, 29 Sep 2023 05:39:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C085B4418
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:35 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7478DCC5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:33 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99c3c8adb27so1842020366b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965971; x=1696570771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Tx8IsOEvb8qkvUy2Or6MBahI0OwwMce9fHoVPFho48=;
        b=C4lp08O6yska7znKdYMmclZfGa3X6+zuJBT3DJfQ5oFKoe9K9y7j8LuAzgRiYdNfmh
         5hzYKxAleR/W+F4qeYhKDx7HWinwO/whkxrbHVI84w6dN9Qxh8shf/x62wyy5g3zPsCa
         N1xq1GjBB50q7BwpUN8RchxaYfphycRls3aHGCMsN6VgFjWAV3CozP37FGuU4/UTU3DO
         kyeR1VNOoMj2Lsxg085moJky6ahF+z7OABVZtHX1No3Cx6kOPD8g2YcOCdTgXJ/JV+GT
         EhyqUJC8cET6tgiAFt3jBN2SCqRgCIBNp2WEeDqwpwcBUuhJcyKyymOgsL6y79be6J/l
         3mXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965971; x=1696570771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Tx8IsOEvb8qkvUy2Or6MBahI0OwwMce9fHoVPFho48=;
        b=AryaR0xOc3FsNGDESaFYi/E8rs3b4yyxWzArR6t4DDeXhSgtJB7pjd8KjYQfjewAzn
         4+hjq8s27EUUWJUW2T1nkIk1tRjYBIWxlSGLBKIauppqAaqovmBNKZVHIXdvP2c3uM/H
         5GLGrTCq7X4G379U098w3TNwHyZwv3tXEkI4EGClcUccwms9OzsUG+iWBnlC5AbBLXeR
         851Ap2Wsb7wSYE1VCi06HyNevX4oifbE8VQMZ4HsCyMm5EibuSOegwdr6+f/j1udBaiu
         lEDWDao9AIdRNVcCAlSPRZi5MDcjqKJYQ6wOV2YqW0/4dN62/hpzlQz+jJni41ie1G2w
         TDIA==
X-Gm-Message-State: AOJu0YxiQscZuWW/ZLmpehFho+xXKKHXaK/bZIBzMKF6FRRf+nOXWedk
	mNLAo+Q4iVZt9jWrkzd4o9jKAA==
X-Google-Smtp-Source: AGHT+IFssgixc+IrMTS/V7svcvYp3mqrtz9kBpFjxlgOV+eCYx41PSPSVkMAV0EmJXCg9RRV7OOD1A==
X-Received: by 2002:a17:906:845b:b0:9ae:695a:fed1 with SMTP id e27-20020a170906845b00b009ae695afed1mr2909592ejy.1.1695965971645;
        Thu, 28 Sep 2023 22:39:31 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:31 -0700 (PDT)
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
Subject: [PATCH v2 06/28] clk: renesas: rzg2l: remove critical area
Date: Fri, 29 Sep 2023 08:38:53 +0300
Message-Id: <20230929053915.1530607-7-claudiu.beznea@bp.renesas.com>
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

spinlock in rzg2l_mod_clock_endisable() is intended to protect the accesses
to hardware register. There is no need to protect the instructions that set
temporary variable which will be then written to register. With this only
one write to one clock register is executed thus locking/unlocking rmw_lock
is removed.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- removed also the spinlock
- s/reduce/remove in patch title

 drivers/clk/renesas/rzg2l-cpg.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index f411e428196c..d936832e098f 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -895,7 +895,6 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 	struct rzg2l_cpg_priv *priv = clock->priv;
 	unsigned int reg = clock->off;
 	struct device *dev = priv->dev;
-	unsigned long flags;
 	u32 bitmask = BIT(clock->bit);
 	u32 value;
 	int error;
@@ -907,14 +906,12 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 
 	dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
 		enable ? "ON" : "OFF");
-	spin_lock_irqsave(&priv->rmw_lock, flags);
 
 	value = bitmask << 16;
 	if (enable)
 		value |= bitmask;
-	writel(value, priv->base + CLK_ON_R(reg));
 
-	spin_unlock_irqrestore(&priv->rmw_lock, flags);
+	writel(value, priv->base + CLK_ON_R(reg));
 
 	if (!enable)
 		return 0;
-- 
2.39.2


