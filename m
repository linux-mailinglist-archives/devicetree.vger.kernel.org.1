Return-Path: <devicetree+bounces-98449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 256CD966279
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 15:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58B401C23790
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 13:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0011B5830;
	Fri, 30 Aug 2024 13:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cESEC9vG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560D81B3F0A
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 13:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725022979; cv=none; b=Cs8w7PscLvyBv+lA5nS5bXzGkixIrctSKyCNRAlcArHywWiMiVCVzcfFJy5Mfo/RHfO069Yq2m0yYt5r8erdQJiomxcGT51ZEoddUle3wkvecd2ZblEP8BqtcpmSMXHJsC8HfKH0buiq4Bb9qiC1FPjZGsoi/eSvrMCs1YKlvhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725022979; c=relaxed/simple;
	bh=d8WVePSthW+dxNncbWzycUowwJpITS4AMD6P6eg6HFU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Nq9vE0zesRb0iszmGo8PGGO9uwhBwNpiRj4L3QHb0fKBxdPGAwgf2boUY+XKsY7T6oEr48te1ciba53FNHEnp3oyTM+DA3VALbZw96o8FVzwKyL8+iaF3iq/OKmzajgdsfapeHZz2mJ4ZLX8GcdounPgdvsYeg45hcnpKiCpYQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cESEC9vG; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-429da8b5feaso20056275e9.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725022976; x=1725627776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iop8qqO9jUR8G5l7F3wNru9rj99Z66kVWofgsuIec1s=;
        b=cESEC9vGQf1G6itm3a/lOG0+UjmBw0Nk1SegWTZQ7FTJf+/g+HKpiDnxAtQeWRfbUC
         CT9kjOIOG3BzZrAqqy3X0cwrdqsj51KWa+W0SgHTpbR+l8mCk1sOT6LwShlwGLI3zGnW
         vY83neW2T9V76ghaqUmte3jwKue9NW+f5LpE6Pp34tpWGe7WjfQnQNY6htOJfhxO11kB
         PL81/0s44UsRGg5zyXPtiRYAEti8CYMFYbofSrLqAKaLy/Gp8WZJs2eFgnXVrvLROulp
         Jszert7N+MEJ3TZZ6vMJStCSP/63uAU/f/TO2q62/PMmh/Vnf1FKTLMvB70f5Kiju0Qo
         u+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725022976; x=1725627776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iop8qqO9jUR8G5l7F3wNru9rj99Z66kVWofgsuIec1s=;
        b=aHjJdFl9AOGI68sXzdMs7Us+QBa9mmmv+CiFXnx5zyARzDjjWlCq2iZuuGdkGKzhbp
         a2ZVrMC6oo4bLIOSK5OEQX+ZTzIOS83U6P3O5kQrUXMXyAVdy7ZfcTivJHu2elP4O/Ex
         HCdXg6E9+uvKpBwEaHtjyLYJbvmHRVyyiFhAHwk8P5blV5LJ8juseHQ9+OVS5/QjhPrl
         vdPGmznk0rHSl8Wdt/pW3XgzjT6Qi+zxL0RTQqwI0D1j6piONuDeAfNnTXSkH5+TsSG/
         PXLXetvNWAJTGLAcE1lI2c2Vxi0efNe+LXMu+kHW8h/pjOHt7ih2/PLy4qt5zyQ0nqyT
         fACg==
X-Forwarded-Encrypted: i=1; AJvYcCXJylPn1TOdX5OTKk2VyF37z+dwXw5kRKOFE7hNU7LnoSHAh9JC/IZz6UJCDF7qlPkVyU8cpo7E4585@vger.kernel.org
X-Gm-Message-State: AOJu0YyA3noBmpzyCKI23bVmtV2mZ1pLXVgV/ddXeii9UGaAGNuyy2cj
	uQH8nqoMTQV4va8sNUNflISILpAoskgOMXa4uD2c/Ba484No3e4DYV5Q/Z6a6Gs=
X-Google-Smtp-Source: AGHT+IFISbcD0awVc8lknv+LxPpsY6H/AUOiGEDJsMkyVLmTSYhBZOirNNAhX9KU4dogrvwFZ9Xx1Q==
X-Received: by 2002:a5d:5351:0:b0:374:ba2b:4d1c with SMTP id ffacd0b85a97d-374ba2b4ea9mr332013f8f.31.1725022975647;
        Fri, 30 Aug 2024 06:02:55 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba642594dsm80361785e9.47.2024.08.30.06.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 06:02:55 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 12/12] arm64: defconfig: Enable Renesas RTCA-3 flag
Date: Fri, 30 Aug 2024 16:02:18 +0300
Message-Id: <20240830130218.3377060-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable Renesas RTCA-3 flag for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 465b70a06c33..40165e06c98f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1215,6 +1215,7 @@ CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_MT6397=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_RTC_DRV_TI_K3=m
+CONFIG_RTC_DRV_RENESAS_RTCA3=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_SUN6I=m
-- 
2.39.2


