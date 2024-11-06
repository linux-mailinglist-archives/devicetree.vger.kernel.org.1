Return-Path: <devicetree+bounces-119335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBC29BE04D
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C18D01C22A19
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72AA1D90D9;
	Wed,  6 Nov 2024 08:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Cztf4RAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D521D7E43
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881167; cv=none; b=eSLPgtSN2/u6M8eKDf1EwZkATFETqMRCVA4q2frAeBMHxBYFiAw3KcwLkJHgrGNvshib6+1tDgVZ1FhONrwpjQwHSBeXa4aRCYr4sbhdXCHAQdz68qQlnoTLaRGoaIhiKjEAOHsMpFZTFx2JbggsWjBEdlxhPrk9iE+4oHLboNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881167; c=relaxed/simple;
	bh=ezou/sUeO84m6Pbsno+iPPVK50t8DBnB/7+REwh8n3w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p2hj7sz1SYuHIZKv1jGJBj6zXkbf34HDOgXmKNF6V2i5PqGlCt8cGy27F67WEDEOXYPttf7c7L494iyZJ5KDgH2m64Gq1gyFEIKkH2h2T676UmKbBNLggKRgMHO1D0zUG+6ert0amMq1e5bHyf9ZpF+L0pOjlWh8IETBsWc1NX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Cztf4RAV; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9e8522445dso661963666b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881164; x=1731485964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z8PJplAj6BtFAbLsdC8Eyhh6kOprA91oDhfaq2lH0Kk=;
        b=Cztf4RAVILDvlTIr3EvU5LSdii2HWznjYLJl9lfT710JNBCXCAPWf27LD1sQ/bLVdK
         CIyDlq95b9LTbGz/emnuTFdvqbtA8wAlGgKL6fBu0p2EUJ6CMBGfjFDJTTNcKZ/34AIn
         C+ubnmqDDG2Wy3/weYh/GiJi1rio8c/1GJuh6xtjfU47LcFfW8XGNFaCxmAX+nzOoIm9
         HRdvonzW7iTzH3077xrWyk9uBYkxVUwA+kqwy6v61SuSrYqxI7NY1W83+If/M9z+JgFp
         b/l/XGXgqO3qIxgoN+n5gzE7G7FQ2zBIVpkXMlyR2bITfcer3on39fCB5EjAGstQ4p/2
         g4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881164; x=1731485964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8PJplAj6BtFAbLsdC8Eyhh6kOprA91oDhfaq2lH0Kk=;
        b=lgh5XZdTbxkM+iAtFoAWg2UbT3pn9pdGV/Fo03oSeK35qZh/zhFM//tZMCQvaux5+o
         8ltGjCUmAOh86L4e7p9iCi5TpAGsF7jSCACMYBUxXPoYvaEqk/kNtU85bF007sWkpl66
         x9WP1xJczD4xR0Wvlbg8irSBSDAFPUxhOCA1m1zo7t1vEgLJUcAPJ6ayBN82+E4u0iaD
         sgC0KJNbTpKt2Xo3W1EnonNq+iJkjtp5fg+37eeIhumfGqBphmgZxYqPB8G6FxdZmFXo
         5RlOyo8E3X3VuT9pfGw5Gy6DouUlert+z+KDC6VCW+Obs2ViS215w9uI+Fb5kRZHIVEX
         UpLw==
X-Forwarded-Encrypted: i=1; AJvYcCUPDTtw1AE36Y994nU9oNagT2whcHM10MUMePgh9z72jvZG0X7NCFEXaXfnjHrb1StDRXIusmfxBq0Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx/mahfR3+D72UKPRh2OF+grNEWIovDVwIIaD69ImrdoqcIqCb
	M1LPdPWXVmXT7KmJjUqVX9P3pOnDoiuvmuyh4DJPBFbv9gEbVuX/HCry/8UM39U=
X-Google-Smtp-Source: AGHT+IFB/yilN2A9rr9tyTuVx/XGzqUm+PgC7mEHMgDPVnIg+6PoAyGzKyboc/+QMnJh+sxtq1GkWA==
X-Received: by 2002:a17:907:2d0c:b0:a9a:714:4393 with SMTP id a640c23a62f3a-a9e6557deb8mr1859922566b.23.1730881164026;
        Wed, 06 Nov 2024 00:19:24 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:23 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 04/31] clk: versaclock3: Add support for the 5L35023 variant
Date: Wed,  6 Nov 2024 10:17:59 +0200
Message-Id: <20241106081826.1211088-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add support for the 5L35023 variant of the Versa 3 clock generator.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


