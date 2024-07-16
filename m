Return-Path: <devicetree+bounces-86056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF593241B
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 389E91C20CE2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:32:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A0719A87B;
	Tue, 16 Jul 2024 10:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MnqJtLqO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136F4199EAB
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125855; cv=none; b=XeyFQfS1aLjomGd6kCOmFG0Ax5hW4s6DYJ3x0kp2WE9rhWdxlgmaFNQDTVwMOScbavI3Q3xv684LRF9Ep2gkFthIQWA9qX3AhrZjrSx+GeO8PvDA1/Dt4bxUK1bK55eoiw/0XaSb5Y4b0CBnh2vSo8jxI3kRbrM8eSCMBtoD2gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125855; c=relaxed/simple;
	bh=3FnnVqryGA1+fyj62llLLDqTN7Yctxhd6gzpR4TrpXA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U+RrzWIPqAirQ/ux/pHyVG3niOq7dWqyvD8av4DqvtxGyjgXpmdCRu/Rn8RyjmlgFfGmyrGJHL060TkMULKhxBnnKm7hVALUE+j1e/U3zZrbHfUW3H6z8+wGCmA8k0DbQxPSpL+OUwji3uFoG2S8BNCwrPy/jc8iJTENmKu5GlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MnqJtLqO; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2eee083c044so33065621fa.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721125852; x=1721730652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Lc/uNU85i9gb0+79NrAcdA+6hL4Qt2Dc7/pD8w1sdo=;
        b=MnqJtLqOH1xetf+sej3CzzDckDmuqP8XGjAGqE5sikHYdKqGzb2HsUm89LJZZ+wPOl
         9WPBtgKXIGtG3NHpglNcxuimRYRe+KvAF3bwzU03KuYzWPbN7VgW6BQxxwYQVleEkjgN
         8u3dzB+ZW7wi6ILhJFS+Zl6ueCitHyszi9OUlTNLcH95rjaFq3sTS+iLcBJRK/wpYvPg
         8OH4Sr/3Ic8JwR1upvbppFu7qmFqFxnzlK+maQEEtTMPvbpVZIDRUPlAjXgAn2eximfx
         MOY0ZinQtOQrs3g/Q0yjtR9bnhaXJnq01nET9VzvWwQXKocHJSLjAFx0X2qA/PSOsatL
         KmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721125852; x=1721730652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Lc/uNU85i9gb0+79NrAcdA+6hL4Qt2Dc7/pD8w1sdo=;
        b=XkkYT/qMb7106qDrul2jDcsR8LSJDC9cm3wFJsK9qousjdMs9bZk3RE5w8IGcxdvQB
         W2AmlyitpMFoTBQnZK7AzTXsHUucn+SJcfCc265jRnQWj5cNhIMk3kM/blTS2YOyRJV0
         uGv28XuelQu7Jz3FItULHBhE+KQEzzhnwndvGNYr3wYWPz8eEDdOmiW4akwlX1gH+rS/
         d4PR88SlUgnOj/IpDpuRZ4+ffPparCN/8yri25qZzIrYa4TdUFiXcf9eYPWAAHOp/RIP
         LHEGlMosTCyTYSUGYVTUPT8jmCpQ6F2KIwIDVRIbklR6jQvEtQTDK1KFTOdS1f+fLhhx
         J1Cw==
X-Gm-Message-State: AOJu0YxL7jYA+NCz1Uz6W3WwyYP8xh73YPFvpsTNg00+9Om8UxHcU6Hs
	qu9RSEF2on2hhXJJ5krfLCCDGRx2YHp8BjgHtXW/aMYRUJo9hvGsfCOzizqVTbs=
X-Google-Smtp-Source: AGHT+IF1Lb+nVjAsf8fHP0AS1wIPQKQn9s1ZCjD3vT5CusZmhAU+Uik6JLX9tgQRYjTy6nqzNxi6bQ==
X-Received: by 2002:a2e:9981:0:b0:2ec:f68:51de with SMTP id 38308e7fff4ca-2eef41e29femr10746011fa.47.1721125852148;
        Tue, 16 Jul 2024 03:30:52 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e77488sm121546145e9.9.2024.07.16.03.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:30:51 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 10/11] arm64: defconfig: Enable VBATTB
Date: Tue, 16 Jul 2024 13:30:24 +0300
Message-Id: <20240716103025.1198495-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable VBATTB MFD and clock driver flags.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- added CONFIG_MFD_RENESAS_VBATTB
- added vendor name in the VBATTB clock flag

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5c9fcf9ad395..f35fd006bbbc 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -750,6 +750,7 @@ CONFIG_MFD_MAX77620=y
 CONFIG_MFD_MT6360=y
 CONFIG_MFD_MT6397=y
 CONFIG_MFD_SPMI_PMIC=y
+CONFIG_MFD_RENESAS_VBATTB=y
 CONFIG_MFD_RK8XX_I2C=y
 CONFIG_MFD_RK8XX_SPI=y
 CONFIG_MFD_SEC_CORE=y
@@ -1358,6 +1359,7 @@ CONFIG_SM_VIDEOCC_8250=y
 CONFIG_QCOM_HFPLL=y
 CONFIG_CLK_GFM_LPASS_SM8250=m
 CONFIG_CLK_RCAR_USB2_CLOCK_SEL=y
+CONFIG_CLK_RENESAS_VBATTB=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_TEGRA186_TIMER=y
-- 
2.39.2


