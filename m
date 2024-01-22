Return-Path: <devicetree+bounces-33687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3202836138
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75E321F22E98
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B403B199;
	Mon, 22 Jan 2024 11:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XPX6CVvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD7A748A
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705921903; cv=none; b=tQYDkw9CuY7az3s8eFOFZBvqerlKuFHlURnKyYX47smQ4e+ipsa/7UpnIZXrQ5z/n+Ajvk/KF98csAJJGUriHxgAn4NDv+ShDlJqcoqeL846Mfi10ZQAu9kazZH/igSAENRdIBcE1gRy1/izZymtRvO7qvSy6qDy20kox4KGBZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705921903; c=relaxed/simple;
	bh=mefYXbOVvTd1b6aOjuEZYN7gCkZzg2/94Eydy8chrWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PXT3HOXp+S+q+xqzM6oo+X9YW4EXJ/cZmroUku2Ces69xklh0fppeI32npYUftLx+q93H4fUerQFNx1uw9LbWBYjh/kIhYEcFl7Lq9Ejfu3JJqxfGuogmoRECCJanXT17M+cNxk3TZ6pA293jDHfMdZi91Udz5ATw31qubwvcos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XPX6CVvW; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so3272796a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1705921900; x=1706526700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bu7ioEwQ13f2ZHThsf0dqZJ0s9ap71NHFGVMH6COIW0=;
        b=XPX6CVvWBglcC2iRS+vM2Lzl5+9YEVW9wgeoZw7CdbB5hADJx9KHjtVoJZL5pEEvYg
         KZZQTTsPaE+BlAyicjKDrlFuG3C70IyxteW3iHt9cunfso0eRCM1JHr97G92xnZLICZv
         hsKcO0DVgOQH5EPK71TUxJvhJl38vEvKwFrr/fGS0Spw+yiN0vU4bQ859LcZD8Fhivv2
         4MTrQHki1ujSVj0MqBvQsv0jKAqVZIRgD58WLdtc7DC6x2OrD7Wyue4rZ8ZV7HWdrMuK
         6HEvfyBB0YfNZf2eLPOik97QS4eLgN8y9B6+zsE0Fi5xnsZF6Y3XutXvffa+O9DgmrXc
         Fh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705921900; x=1706526700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bu7ioEwQ13f2ZHThsf0dqZJ0s9ap71NHFGVMH6COIW0=;
        b=gFyuVlR7/K1rTCVychKpd7IRmLOAHH/tS2pKoMwyCeaIh3ru6U+oNEpNrjUN07grIG
         zWuy1lgI8AZ6rykcItjY3cvJjUtXlihsG0qPXLJ46YGwxnRz3uP77E++0N3EdbPiJoc9
         TRbYRMzrt1zkkdEeOBhtu82r8w1wm494rufipZtvLRWxnOjU/ZGHgZXvMwC1wjNYVrBa
         VBvbTBLqq8WHqAzZVnE359lqV7sNx5WoluykpIosaoVLpcuTx1rPOF5gdfObqRKN1J3l
         8S3UVm3cFLND3Q1ququwClT4WeOJDg4Om+6MGkXTZGb8UYVeul8mBqA3aEde1o0PPDqV
         YDug==
X-Gm-Message-State: AOJu0YzMiFYHEy/TYpZtCsQcWDw75vBZM99KOfMTJiX+pPryIwA4LcSm
	kAhggBSvoEXknOtIhOz0J2QEwOiswkjCe6j84ykiNhmJ9Rgrelq9DdSgnegzlPk=
X-Google-Smtp-Source: AGHT+IHKTB1HfQUxEiX5RQOR0J0nHUJ5xgPO9Q+AJbL8INumbtNaSgnEiNF+IofNp547LpTCAwOIlQ==
X-Received: by 2002:a05:6402:5213:b0:55c:393f:6ebb with SMTP id s19-20020a056402521300b0055c393f6ebbmr826317edd.76.1705921900257;
        Mon, 22 Jan 2024 03:11:40 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.135])
        by smtp.gmail.com with ESMTPSA id t34-20020a056402242200b0055823c2ae17sm14194241eda.64.2024.01.22.03.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:11:39 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 01/10] clk: renesas: r9a08g045: Add clock and reset support for watchdog
Date: Mon, 22 Jan 2024 13:11:06 +0200
Message-Id: <20240122111115.2861835-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

RZ/G3S has a watchdog module accessible by the Cortex-A core. Add clock
and reset support for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/r9a08g045-cpg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/renesas/r9a08g045-cpg.c b/drivers/clk/renesas/r9a08g045-cpg.c
index 2582ba95256e..c3e6da2de197 100644
--- a/drivers/clk/renesas/r9a08g045-cpg.c
+++ b/drivers/clk/renesas/r9a08g045-cpg.c
@@ -193,6 +193,8 @@ static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
 	DEF_MOD("ia55_pclk",		R9A08G045_IA55_PCLK, R9A08G045_CLK_P2, 0x518, 0),
 	DEF_MOD("ia55_clk",		R9A08G045_IA55_CLK, R9A08G045_CLK_P1, 0x518, 1),
 	DEF_MOD("dmac_aclk",		R9A08G045_DMAC_ACLK, R9A08G045_CLK_P3, 0x52c, 0),
+	DEF_MOD("wdt0_pclk",		R9A08G045_WDT0_PCLK, R9A08G045_CLK_P0, 0x548, 0),
+	DEF_MOD("wdt0_clk",		R9A08G045_WDT0_CLK, R9A08G045_OSCCLK, 0x548, 1),
 	DEF_MOD("sdhi0_imclk",		R9A08G045_SDHI0_IMCLK, CLK_SD0_DIV4, 0x554, 0),
 	DEF_MOD("sdhi0_imclk2",		R9A08G045_SDHI0_IMCLK2, CLK_SD0_DIV4, 0x554, 1),
 	DEF_MOD("sdhi0_clk_hs",		R9A08G045_SDHI0_CLK_HS, R9A08G045_CLK_SD0, 0x554, 2),
@@ -219,6 +221,7 @@ static const struct rzg2l_reset r9a08g045_resets[] = {
 	DEF_RST(R9A08G045_GIC600_GICRESET_N, 0x814, 0),
 	DEF_RST(R9A08G045_GIC600_DBG_GICRESET_N, 0x814, 1),
 	DEF_RST(R9A08G045_IA55_RESETN, 0x818, 0),
+	DEF_RST(R9A08G045_WDT0_PRESETN, 0x848, 0),
 	DEF_RST(R9A08G045_SDHI0_IXRST, 0x854, 0),
 	DEF_RST(R9A08G045_SDHI1_IXRST, 0x854, 1),
 	DEF_RST(R9A08G045_SDHI2_IXRST, 0x854, 2),
-- 
2.39.2


