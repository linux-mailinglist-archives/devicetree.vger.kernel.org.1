Return-Path: <devicetree+bounces-5206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE62B7B5988
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 949232829A0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB7D01EA7D;
	Mon,  2 Oct 2023 18:09:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40B1EA71
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:09:31 +0000 (UTC)
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D316CC4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:09:30 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7740729ae12so6278385a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1696270170; x=1696874970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K/9udtHJxdUnIEfNuTeE6b1Yaqw4dJt+yBS5HPABR3I=;
        b=FXjpC1BfcbSAxOKwAOkJi1e5KiObsmqRyrZ1O755PF3BlijVsKtrR3kQOThxz/+a0k
         mVXmmmtNfc6ENPieANrBm/FwXLpuoi5mRikMgUENjRRlhiL43fcH+n7VWd+duBxzSCrj
         FKBb14j83CS2CamlUZBvccctthw1Aumqi1TEW2AyGYnuza60Qk2bzLWt3lIDmT8n7T3J
         ejMhEBkw/KrCOpdQmW4VVdx5xUpGKhOEFxsoufcQlzxlaqj9+P19GGQO0jEkXpc3UYgN
         E5Z+FXfq/OT/a1BkePzRvxfI9NZ7lJHqSiTv90gh7P1q/b9Q5PwtkYSqgYZMsVqDpBvd
         YAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696270170; x=1696874970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K/9udtHJxdUnIEfNuTeE6b1Yaqw4dJt+yBS5HPABR3I=;
        b=juF2o4j4avgKO9+pO0+nxujjQuDAyzZ6ruxhuylPC6wr55kweigQpRQd/kseKQMDud
         u8gHHOu7Dw+G90UPJ29glxAOSg43X0CEDlKJpvAyR1E4/YuGsJa4c2VeGMKV475UiKFe
         wawSYHlQMChXS0qRsx7vYM4c0Stl6pWReTIyMjuUVNYKemeW8Y+bm/cWAO1JVgq1OQLN
         evi2MILMxTQHFjhewNGgQDxFqzztdUbTRSfku/nCSSLOsZdksk89BGD8CcrtLH7iooaB
         Yyi2/aVQZxGMUMRmHo/SVxn53XfAMl60P8mDGLFU7uzrMLk91XYMypJ00Af+6A4eqdqZ
         inrA==
X-Gm-Message-State: AOJu0Yx/MFTo5P3/RsyhetubX4ZUjdD/IzFmoWdYlDqqj+OK6MJJQ3Eo
	WSpPZIBS+1lMfifjurI1MmEIlA==
X-Google-Smtp-Source: AGHT+IGwixskDpdw9/a1WqqdPBN+k/f7EbXZs8t1/jSWdyRBC7cYwnhvEjFKQCihuGojDRTAfr1XbA==
X-Received: by 2002:a05:620a:b5a:b0:770:9bd2:b3be with SMTP id x26-20020a05620a0b5a00b007709bd2b3bemr11139670qkg.5.1696270170028;
        Mon, 02 Oct 2023 11:09:30 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id w15-20020ae9e50f000000b0077423f849c3sm7390255qkf.24.2023.10.02.11.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:09:29 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 1/2] clk: stm32: initialize syscon after clocks are registered
Date: Mon,  2 Oct 2023 14:08:53 -0400
Message-ID: <20231002180854.1603452-2-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231002180854.1603452-1-ben.wolsieffer@hefring.com>
References: <20231002180854.1603452-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The stm32-power-config syscon (PWR peripheral) is used in this driver
and the STM32 RTC driver to enable write access to backup domain
registers. The syscon's clock has a gate controlled by this clock
driver, but this clock is currently not registered in the device tree.
This only happens to work currently because all relevant clock setup and
RTC initialization happens before clk_disabled_unused(). After this
point, all syscon register writes are ignored.

If we simply add the syscon clock in the device tree, we end up with a
circular dependency because the clock has not been registered at the
point this driver requests the syscon.

This patch avoids this circular dependency by moving the syscon lookup
after the clocks are registered. This does appear to create a possible
race condition where someone could attempt to perform an operation on a
backup domain clock before the syscon has been initialized. This would
result in the operation having no effect because backup domain writes
could not be enabled. I'm not sure if this is a problem or if there is
a way to avoid it.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 drivers/clk/clk-stm32f4.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 07c13ebe327d..a88e762d2b5e 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -1697,12 +1697,6 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 		return;
 	}
 
-	pdrm = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
-	if (IS_ERR(pdrm)) {
-		pdrm = NULL;
-		pr_warn("%s: Unable to get syscfg\n", __func__);
-	}
-
 	match = of_match_node(stm32f4_of_match, np);
 	if (WARN_ON(!match))
 		return;
@@ -1894,6 +1888,12 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 
 	of_clk_add_hw_provider(np, stm32f4_rcc_lookup_clk, NULL);
 
+	pdrm = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
+	if (IS_ERR(pdrm)) {
+		pdrm = NULL;
+		pr_warn("%s: Unable to get syscfg\n", __func__);
+	}
+
 	return;
 fail:
 	kfree(clks);
-- 
2.42.0


