Return-Path: <devicetree+bounces-185058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8243AAD64F9
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39222174406
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116EE14901B;
	Thu, 12 Jun 2025 01:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVunQLJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2EF1487ED
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690947; cv=none; b=BcKEVdWGizMmzyUz8KQIIPiZvHyDglB6HnxhhYTzd6+jWNE10PP1ub9H7AnZLq6858EmxW+tXNuPEN8V+wW8i19ZzmWz12rSusy80p+EsrqWFCg1RfDcOOnua6vWWP4GPDk1HQNA4TDO9STatMKw1UokF9NNB4Qn46O81uu3vCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690947; c=relaxed/simple;
	bh=IMi0ADJmNFhdUTuPsCvNz20Avnzqg/FLQjL/Lp+bix4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VP0+S4mvRD7uKx3UGV711xvl89k6VhXgNEti2T2YlE/7aav5OFMG3HYYL6Bd2yLpULs+hMehw4WTQxQcTCrGG39IRlj/mGml9wGNDoDegOd9lEu7z4LP6Pc1hw+ixZ2jXtVazpiAbaYezlwEmlgss6DR6hEu8l6RDhydgYQ33wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVunQLJa; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32a8abb1613so569251fa.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 18:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749690943; x=1750295743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gi7OuH3v0fsslSod+wg7r1kDbClC/Q60uMP2imoSx0=;
        b=FVunQLJatUJOXwrKVTGxyqcSh6CqF2Xylkz0r4H1Yh7RrmG08sfTdH4u/g17hN0RDz
         hUNCgEGlHTSTLslibbSOEH7wsE9Y7bYpIDMdYfcPKp3OMyI0Uvq692z2Okoem72ALFmj
         XjchoJehTtXHBD9AMH0DQE1mMReCwrqeK4UnzT/mRz8NSNV0AGLxAHQr4epmQ92HILV4
         3WEkxJudF/LLLwUhp1rcSNGWM6OoflunRXLSxUFyZDkj+oa4fj1teybLgWWkUexFIolo
         G8yuOZdV23GzjJQzqd5pdSJDSNVos9xlL4bOgLMr/WklERgNjGCcgL2Jsb0H4wbCz/rm
         vEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749690943; x=1750295743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+gi7OuH3v0fsslSod+wg7r1kDbClC/Q60uMP2imoSx0=;
        b=Pg2nDjrphLMerpllhkEOF1sC7+GCKzzAQcWK5ue29rYb0QRr5llolPvdf+7Qua+WSj
         WZZjmWEAtS9d52sDuz/RKltqERfuJIVAWTtErmR0qf6KfPeeMEgLoAXM9E6rJJF6/tHg
         9ZcF4m0SBdvwWWZjEfzwxl0M9rvj7l+OrdDk42IzFsZVn56R13xJwwevJH0sbVDV9uA5
         ebGKl3VKaZ7Jk05Ya6WHxtVaid8W2vF6g0Vlo43FgcWsXpGi4Yv9ZMn4PeidKpR7kal5
         com8rd1uUc8z8QPggckN9KFFh2ImWyHghp89TW39bh7XsuUmhTdqGLrC591fo5jNH7u/
         u5Uw==
X-Forwarded-Encrypted: i=1; AJvYcCUABnz70xmHRW9IEQ7yhOAjVg0drFu1ab59TiCaF1u5hqfixH5gx/pdcP5pDnzQUdYcC8masKyPbfyX@vger.kernel.org
X-Gm-Message-State: AOJu0YzW+oOd6HvVQvcnc5BvBUP7Yuol+jcCt8PFl4+xgo5muqPLwOj2
	1JdipRRFdh3ZRQJruWzsqiTmAAzUELYNiFSkdHyea0ac1v58u3cmJhE00GMnIqY/fe8=
X-Gm-Gg: ASbGnctn4L4g/ANmUDnYHrUrOeHTUdXPLU/Mrphm/GiiW3cqnhKzkcLMN4obnfDqLtZ
	klryptyFhLiH4TCF+tnia98DmwhQ/WXjTiIDWHkgTu4Wk6mMYs5ujETJF3IoFltjN6ihQhTrENF
	5SLSncpP9nRSHiLIIajZjOVzAM29/0cGtx3Ss7bYwk4Q17h6qEDcmcv/RuJb65gZX3gHvkKaI/H
	Y5DsCJOlhN4cn5vQ/ITIpo5zM3gOSCJ8uG9daxpDliAcnp6lqfkTI7cTF9aZMgCDcHzl2aEUOMA
	r5g32rOiNib5WMKtHI8Q7/pILFfaM9gMMcMI725P28fYLDRChqgG01LbheAr5RTu4o8yOEsRPq2
	IzNuPmIh+eV4P9vpz6ZznYNQdE1hfPQ90RiBtN/xt5YURw16V79w=
X-Google-Smtp-Source: AGHT+IFPMkepThXh+hpHafQU+8mg6c4yfS3OBn21itTHnwbLfxR1NdOOPbci4HOxrZLuvpBH2+aJIw==
X-Received: by 2002:a05:6512:33ca:b0:553:30fc:cedb with SMTP id 2adb3069b0e04-5539c11831amr554733e87.10.1749690942952;
        Wed, 11 Jun 2025 18:15:42 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553a7018069sm62808e87.157.2025.06.11.18.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 18:15:42 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 03/10] media: qcom: camss: csiphy: simplify arguments of lanes_enable and lanes_disable
Date: Thu, 12 Jun 2025 04:15:24 +0300
Message-ID: <20250612011531.2923701-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some of .lanes_enable and .lanes_disable functions the second argument
of csiphy_config type is either unused or it can be derived from the
main function argument, this lets to remove it from the list of arguments.

Apart of being the simplification the change is needed for further updates
to CSIPHY part of the CAMSS driver to get CSIPHY combo mode feature and
a related to it management of non-statically assigned CSIPHY media pads.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../media/platform/qcom/camss/camss-csiphy-2ph-1-0.c  | 10 ++++------
 .../media/platform/qcom/camss/camss-csiphy-3ph-1-0.c  | 11 ++++-------
 drivers/media/platform/qcom/camss/camss-csiphy.c      |  4 ++--
 drivers/media/platform/qcom/camss/camss-csiphy.h      |  4 +---
 4 files changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
index 9d67e7fa6366..d9735f61fffc 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
@@ -95,10 +95,9 @@ static u8 csiphy_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 }
 
 static void csiphy_lanes_enable(struct csiphy_device *csiphy,
-				struct csiphy_config *cfg,
 				s64 link_freq, u8 lane_mask)
 {
-	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
+	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
 	u8 settle_cnt;
 	u8 val, l = 0;
 	int i = 0;
@@ -114,7 +113,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 	val |= lane_mask << 1;
 	writel_relaxed(val, csiphy->base + CAMSS_CSI_PHY_GLBL_PWR_CFG);
 
-	val = cfg->combo_mode << 4;
+	val = csiphy->cfg.combo_mode << 4;
 	writel_relaxed(val, csiphy->base + CAMSS_CSI_PHY_GLBL_RESET);
 
 	for (i = 0; i <= c->num_data; i++) {
@@ -134,10 +133,9 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 	}
 }
 
-static void csiphy_lanes_disable(struct csiphy_device *csiphy,
-				 struct csiphy_config *cfg)
+static void csiphy_lanes_disable(struct csiphy_device *csiphy)
 {
-	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
+	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
 	u8 l = 0;
 	int i = 0;
 
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index f732a76de93e..69d95bfeb9d2 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -638,10 +638,9 @@ static u8 csiphy_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
 }
 
 static void csiphy_gen1_config_lanes(struct csiphy_device *csiphy,
-				     struct csiphy_config *cfg,
 				     u8 settle_cnt)
 {
-	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
+	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
 	int i, l = 0;
 	u8 val;
 
@@ -758,10 +757,9 @@ static bool csiphy_is_gen2(u32 version)
 }
 
 static void csiphy_lanes_enable(struct csiphy_device *csiphy,
-				struct csiphy_config *cfg,
 				s64 link_freq, u8 lane_mask)
 {
-	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
+	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
 	struct csiphy_device_regs *regs = csiphy->regs;
 	u8 settle_cnt;
 	u8 val;
@@ -791,7 +789,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 	if (csiphy_is_gen2(csiphy->camss->res->version))
 		csiphy_gen2_config_lanes(csiphy, settle_cnt);
 	else
-		csiphy_gen1_config_lanes(csiphy, cfg, settle_cnt);
+		csiphy_gen1_config_lanes(csiphy, settle_cnt);
 
 	/* IRQ_MASK registers - disable all interrupts */
 	for (i = 11; i < 22; i++) {
@@ -800,8 +798,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 	}
 }
 
-static void csiphy_lanes_disable(struct csiphy_device *csiphy,
-				 struct csiphy_config *cfg)
+static void csiphy_lanes_disable(struct csiphy_device *csiphy)
 {
 	struct csiphy_device_regs *regs = csiphy->regs;
 
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index 1ba3fc2e33ac..f561811b7617 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -295,7 +295,7 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
 		wmb();
 	}
 
-	csiphy->res->hw_ops->lanes_enable(csiphy, cfg, link_freq, lane_mask);
+	csiphy->res->hw_ops->lanes_enable(csiphy, link_freq, lane_mask);
 
 	return 0;
 }
@@ -308,7 +308,7 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
  */
 static void csiphy_stream_off(struct csiphy_device *csiphy)
 {
-	csiphy->res->hw_ops->lanes_disable(csiphy, &csiphy->cfg);
+	csiphy->res->hw_ops->lanes_disable(csiphy);
 }
 
 
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index d82dafd1d270..3b73248f1364 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -72,10 +72,8 @@ struct csiphy_hw_ops {
 				struct device *dev);
 	void (*reset)(struct csiphy_device *csiphy);
 	void (*lanes_enable)(struct csiphy_device *csiphy,
-			     struct csiphy_config *cfg,
 			     s64 link_freq, u8 lane_mask);
-	void (*lanes_disable)(struct csiphy_device *csiphy,
-			      struct csiphy_config *cfg);
+	void (*lanes_disable)(struct csiphy_device *csiphy);
 	irqreturn_t (*isr)(int irq, void *dev);
 	int (*init)(struct csiphy_device *csiphy);
 };
-- 
2.49.0


