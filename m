Return-Path: <devicetree+bounces-4458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FE37B2B4F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:39:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 42CD7282578
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF517187F;
	Fri, 29 Sep 2023 05:39:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525263D78
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:39:31 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A8911A5
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:29 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99c3c8adb27so1842013666b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695965968; x=1696570768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TQ5vJt4uEBZYxaoCUMCaBdZYOuAagvaFox1SiyVlaFY=;
        b=M8Scall27LM9JZIEc0lNb6z87WIUQzcanG8ecsXwR1YcH2cZKsl2X/RsuQoIeTR0Y/
         oVs7ZYbCW50dhWM56t3/ofoOpo7n9YAMB7xpmwmKroD+ymLuAHcpWeqzp7hQWQX9SbZj
         VEP+hRKJJFLGfIeyItINIlDYAcIQkqPq61AdLTa4mKFSmNzKxRkSjbnLBKUeyhK8+avJ
         +7+tvkmHBOialyd1xxGu8pOvdfr+qp0oFs+d3PfROkVvl/JeAG9w2WjbvXJucBT+KtqB
         maZLISG48QzeFqyOBYnQ77eiu3yL9IasvuGkxknYgYB7dzEoU7BScIo3SHssTA1KDI59
         dyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695965968; x=1696570768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TQ5vJt4uEBZYxaoCUMCaBdZYOuAagvaFox1SiyVlaFY=;
        b=eNq2RcaEor68HYgkI3RFNxQId6yySHpUvhAmEJSXSyCHEvBlmD+eXofFwcaxWwPQrS
         tzbc3szndn61ADHPQDapkiX0LdCWZkquwUTNIl1oVHM2SwIOV8y4ZCEbVhMxnMVP6t1C
         rooPVsbXGydycQRhE46jfNEITYYT9MvrbDDcVcbHiOC3PrDYnW8GDv3kLSqJFJRTYWc5
         cauV5oSh8Ywb8ciMz4nshpCRMeqEXTIGB6PgnI1JhGPcR03Vwleol1W1B7EMJZ3W30QO
         7oiYL04dDTxDiIrQO5cFaYVw++uozVXwjaPsmXCzhBq6MtFUnYuIdLSmth76cswHZFVt
         W4Bg==
X-Gm-Message-State: AOJu0YyQ7M6uKxrGnmVSdZZ9mPo6sfgnQuHzcXAOXKeLHnhlVQbeRr/+
	YUgr+Q0Z64lqVnPw2C19+XjqPA==
X-Google-Smtp-Source: AGHT+IF2d7y2sZctyVqepi31GT6G13UI30T9U1ZXO4+TvKL35jVYdGIA1Qbh0TvHWtTX5d5AgXLNmQ==
X-Received: by 2002:a17:907:2717:b0:9b2:d78c:aff4 with SMTP id w23-20020a170907271700b009b2d78caff4mr175767ejk.74.1695965967847;
        Thu, 28 Sep 2023 22:39:27 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:39:27 -0700 (PDT)
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
Subject: [PATCH v2 04/28] clk: renesas: rzg2l: trust value returned by hardware
Date: Fri, 29 Sep 2023 08:38:51 +0300
Message-Id: <20230929053915.1530607-5-claudiu.beznea@bp.renesas.com>
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

Initial value of CPG_PL2SDHI_DSEL bits 0..1 or 4..6 is 01b. Hardware user's
manual (r01uh0914ej0130-rzg2l-rzg2lc.pdf) specifies that setting 0 is
prohibited. The rzg2l_cpg_sd_clk_mux_get_parent() should just read
CPG_PL2SDHI_DSEL, trust the value and return the proper clock parent index
based on the read value. Do this.

Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- Used "return val ? val - 1 : 0;"

 drivers/clk/renesas/rzg2l-cpg.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 0679f2c7649e..6f50f0329ecf 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -238,14 +238,8 @@ static u8 rzg2l_cpg_sd_clk_mux_get_parent(struct clk_hw *hw)
 
 	val >>= GET_SHIFT(hwdata->conf);
 	val &= GENMASK(GET_WIDTH(hwdata->conf) - 1, 0);
-	if (val) {
-		val--;
-	} else {
-		/* Prohibited clk source, change it to 533 MHz(reset value) */
-		rzg2l_cpg_sd_clk_mux_set_parent(hw, 0);
-	}
 
-	return val;
+	return val ? val - 1 : 0;
 }
 
 static const struct clk_ops rzg2l_cpg_sd_clk_mux_ops = {
-- 
2.39.2


