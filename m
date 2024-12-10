Return-Path: <devicetree+bounces-129378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DBA9EB809
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D58F8188064E
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D43238742;
	Tue, 10 Dec 2024 17:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bHzgadTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A4F237A21
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850616; cv=none; b=JJVeSv8FRm8IJnT9EaX2q6BfTGmee8ruI0JoX3BkqPjvqnUxnigCNG+3jbF0Fzr+H2RevLxQalGReljf4T3gRQrzPzy/HIqyfKdSvko0z2Rqn9W6+FAWQgbEZKik2dxR6qslo1FhuWMQWYpCvpy7IYTWQ+SZtF/0Be18xc2qr6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850616; c=relaxed/simple;
	bh=OTYVPrJXZsCibJypCZf8QK2KZMdsmtd9T0kWyznh0q0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OjgOIvRGgnJsKT4sMLekdnJ3MJZOnJ9yFl5xTLbl0UCViOLQDSsRAhhDJUGINuee+YenZdUHwBf0W0UGFE8C3zLAydr8YcSQMix5fFda0VUdAjeEU3T0t+IFbV5l856q93rrwSId5pEo4IhkiQsDveZ67oPqOo4gsugn+r93URo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bHzgadTq; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d27243ba8bso8671800a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850613; x=1734455413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y4VjqX7iwW/vu6N1WvzJJpy4sCnLnXPgQs452O7qiog=;
        b=bHzgadTqkHFD23BtqN2KbvqYcbXCWKNUpmCFiMAvclw4XLSAoYgrzQ3jl0PppOLaGC
         2guV1KrjMFb/xNpNtSVhLLhizXZkv/WVqDyhAK4+0zvCiKgaN8qASbW/DZ0ESOVWhcYr
         2mAtA2hpqZtUouIL8PyLmxSVpGapr/QtPWRkV0WIr3etRR7WM4oQ3uj4WFfeig3nJjR3
         RX4aMNwM5coMXfJy0wXFRf8RLOIrtDJelVmkR+EKSp/qt4GRM9CdKxhpTNeHCUhvtPuu
         kMcyUIziiPvWZFq77/6D46/4wGYT0Gm8pWaqHjIPImy5VHEVA5Cr+o1puS89MMbcjWzb
         0nrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850613; x=1734455413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y4VjqX7iwW/vu6N1WvzJJpy4sCnLnXPgQs452O7qiog=;
        b=jZFTcG9GvajwUGMPi274dzlEy2IHzD1SE+g3FIkz1XbfO+OaiZ3bt7m3jlfu7nNPj4
         aVzRFXEREQ9BhcbBL6UnNXlKobq8su02aIs52jRvqHY84Wu1gptBLzCqgFGFjEAZYkB2
         kRgbYjFj/n2yOXgnxggiJIkR3WgnSw4qjau6ClLeXCfCx4pF8c7tqnHXBv93MByZ+5OI
         6nOCLfi2Va95SIQ8LTfYKf9LkCr6y0oFkuLNQtL+NUS8DBY95BsKYT+DDSb9OQD6UAho
         O+bV9rOL6WdR6uaS2WBmPoYvsShgIv/k3HxjRblNTbkOTJhpDW5cPIUDiIwaEJRwAUr2
         vT9w==
X-Forwarded-Encrypted: i=1; AJvYcCXpEwo0E9zBkgJJ/5LV2S52/0Mv+hgR7AzBmfoAcSHAH8ZMntlHOMJz9QZVIL6g6aLQLjolagRAGZa8@vger.kernel.org
X-Gm-Message-State: AOJu0YyQKb6iEHsKz95QnO4gvV2LHizeMVosPJVNBiFJUaYChHodEYSs
	/FlS44OmB0xF9mUpjQ04wg3yMg2tNdsnvvDLj0RfYxBaFhmqPG9gzchjpvvugjo=
X-Gm-Gg: ASbGncv2TkGZkeO+kf+5sERPWic2ixgIhupE1kubX92YC4Gz8usOg3Afi1EXT8SCdj1
	g+3CTjFiM1ZH7VnYABac3t840KQy11kgOe/287lomZGw+Qgt1dss658CKSOxuss5RWH2JfK5HUe
	1pjDVKTpNpa3YWXfSzAI/biuEj9rsMdKtrR7XUnwYSg57OtyMKvLc5RmIByEvSr9Ser61Kpdtt8
	sCb3PONwvO5F4pLDegi4ryeIM8XxaW9wmBMvNUA3zVWPPo+G93QMj6hpJX/6SoFqVGTcI3vflgb
	eTsRS6vQ
X-Google-Smtp-Source: AGHT+IF1pww2qqLE9zMCq4Z4/K+bkG+iAYWr1I2S2Beewnfd6QMcuan64k6kobi5emQ4TB2NMs4iTA==
X-Received: by 2002:a05:6402:13d4:b0:5d3:ba97:527e with SMTP id 4fb4d7f45d1cf-5d4185fea2fmr5584908a12.25.1733850612616;
        Tue, 10 Dec 2024 09:10:12 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:11 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 03/24] clk: versaclock3: Add support for the 5L35023 variant
Date: Tue, 10 Dec 2024 19:09:32 +0200
Message-Id: <20241210170953.2936724-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add support for the 5L35023 variant of the Versa 3 clock generator.

Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- collected tags

Changes in v2:
- none

 drivers/clk/clk-versaclock3.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/clk-versaclock3.c b/drivers/clk/clk-versaclock3.c
index 1398d16df5d0..9fe27dace111 100644
--- a/drivers/clk/clk-versaclock3.c
+++ b/drivers/clk/clk-versaclock3.c
@@ -1133,8 +1133,14 @@ static const struct vc3_hw_cfg vc3_5p = {
 	.se2_clk_sel_msk = BIT(6),
 };
 
+static const struct vc3_hw_cfg vc3_5l = {
+	.pll2_vco = { .min = 30000000UL, .max = 130000000UL },
+	.se2_clk_sel_msk = BIT(0),
+};
+
 static const struct of_device_id dev_ids[] = {
 	{ .compatible = "renesas,5p35023", .data = &vc3_5p },
+	{ .compatible = "renesas,5l35023", .data = &vc3_5l },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dev_ids);
-- 
2.39.2


