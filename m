Return-Path: <devicetree+bounces-129382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AA9EB815
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 354AD1683C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A0923A560;
	Tue, 10 Dec 2024 17:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EGQjxsQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164F723A571
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850625; cv=none; b=n3Qn2Y8JnZOSS9QPEyILLoADfTRAciqhP1T5zX1y5QjdkkkK3aT9K7qLtJrJT3zjIObxVDJScORnWRd/VEqpvpnvY9jLA6NhFnoJ/utnA3aKMoXRzGdFg8S0Ar9wt+QYZBpgMJGNXDHEiseC/5G0+e2OOjnEn+Lo3cqotq7xfG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850625; c=relaxed/simple;
	bh=RalPxCPilUWbjYvZHpa4B7ebOphri7Uk5DSwxD2axvs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jm8K6BhCnBG2BEXuSFXZeKBAgjKmccUNZLhgXiu8wj1psMl30VulO6WdFQaQ15k+KXANSEqPNcHia3np4+eYHdHNadZD5MwoWuIZT7bBxKKikeO1AWEnSKykD09WEtGw3+EelD3b5f1OZO8l33QcFIMrcKwAa+WYr9Lr4oO/gFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EGQjxsQc; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5d3ea065b79so4488985a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850622; x=1734455422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=quo1xBiWZKYYPo7MUB0R0AMbPr7YypV5dW0W8isrnRE=;
        b=EGQjxsQcO50WGgYmy6Zfh/+57aYcCdg7phDM3bX4pHrdJ37AUoYs2w6rYlD3P/XnRK
         vbL4L65+v1Vs8/KJ6KMpaAyDEC3qzyhLAgeaE8b3jPpr5Sp0/bkbIKVdJwAWc8tRUM2s
         e176Of272Zl/+1F40fo8kkusiwXkwbrKNL/BAsJiIYuXe2GcdgzbDM1m0h0F6nroiCsZ
         joj7pJLA3cycvZ3GPh0FWXDgEcNH1zATjoJsy/jd3R4HboJBtquK5AAXIz78ftY6qrsr
         gOFAOI3bx1NzbuB8EsLg2Q/0peDZCDQLDozqftozXP4vufrfhcgScr5Var4YdT3at6Xq
         Qu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850622; x=1734455422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=quo1xBiWZKYYPo7MUB0R0AMbPr7YypV5dW0W8isrnRE=;
        b=E0zpic3XFdQ1beqCYM17cm+mlyRJHOtA/sSyaS2hg2HeaMhYhN4k97UJFlY93NK5UT
         fzfn/KixpPL/q5WnbtvOh6mSIOBxXEdJlA98NlPgLY9gS/6/H5z5kGvPVAEZYgaaA8UN
         e+0EQeFoS1fgPBoENOIHXDjRW+YRwUU2zHyfVrNaHN1RLP/xg6N7sIRgSGHiMIF1BdQl
         BUQUmnss/O2ZHqEUPhUFbcRC8oNRq6ucwg23iYoYKSLmI7/0Bo1ujhOpxVBgK1qG7yju
         Y29glfJqmKMxPbYhdVfwPlGoxAdj0eoDvJrZGYpnmuhGeDvLVduwbsS6MZGwKjobbUKZ
         7cxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPFWPFCuTLJDNwDBcZvoufnFScOaA/A6OFhHd7qAmb0x3pfN3OcS3fxiOiHOIF2VRnpGKhNkGUQjhE@vger.kernel.org
X-Gm-Message-State: AOJu0Yymk5T5c5qaHZSez2o3/4n3A6WBtqsNeatukPD5RY9MIsjVfwVL
	ek6spkOox9m2i6DlAnFzeK4E6eqvFlLsxHPy5hxO2oncEcplbuAmvFaTqPPEiUI=
X-Gm-Gg: ASbGncsJ6YM68rSQad4y+1tXKncRUfX4pxjUlrSwqDLnSvwnG6JcJf3lw2HOMN7oibR
	NcPXn4FuWRvoCgIFfZaQvj1rZ+iBJBrZrjAfpww+nYitHkjQu2dHL6LtyAfIeusa4NfFe3MWnC+
	q4B4OmwarjJUzMQrOhwrDaK9sluTUgCUfNIiesfAMzD+h6lIi96H2IefZERSz35qHWf8rWcirxX
	3x6XA8ixIncTfad3ooYAHTWtp6i/tZvizb70kzs2FtaubiK4uurjuUaEznJppqSIGGtV5beWmMH
	Wf5BQQGp
X-Google-Smtp-Source: AGHT+IEVq5G+gawrHiPzQYVclV2UevSYSlAdxNYl7RmLq5d6hxx+eXzeCUIVNOyKC/W4oWQ1f5HO/Q==
X-Received: by 2002:a05:6402:1cc1:b0:5d0:ee52:353e with SMTP id 4fb4d7f45d1cf-5d41862ed58mr5867285a12.29.1733850622148;
        Tue, 10 Dec 2024 09:10:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:20 -0800 (PST)
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
Subject: [PATCH v4 07/24] ASoC: renesas: rz-ssi: Remove pdev member of struct rz_ssi_priv
Date: Tue, 10 Dec 2024 19:09:36 +0200
Message-Id: <20241210170953.2936724-8-claudiu.beznea.uj@bp.renesas.com>
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

Remove the pdev member of struct rz_ssi_priv as it is not used.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 35929160a8a5..b24c323ee05f 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -99,7 +99,6 @@ struct rz_ssi_stream {
 
 struct rz_ssi_priv {
 	void __iomem *base;
-	struct platform_device *pdev;
 	struct reset_control *rstc;
 	struct device *dev;
 	struct clk *sfr_clk;
@@ -1043,7 +1042,6 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	if (!ssi)
 		return -ENOMEM;
 
-	ssi->pdev = pdev;
 	ssi->dev = &pdev->dev;
 	ssi->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(ssi->base))
-- 
2.39.2


