Return-Path: <devicetree+bounces-129390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 930269EB7A3
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BF97283EFB
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D16586354;
	Tue, 10 Dec 2024 17:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BY4gWM0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E0A23D43E
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850632; cv=none; b=pP1A2l4QWri3B3lmL26XgWbYAmmLd9W6Pi3Hb0pTCQ483H9/iO+9L+FKKroSn6eigveo03FYW3TX7df8hx18wMZJ2xp/yfOn7BQttjUzqiaEDdcj18+0Ycc8cWE0dKe+5zF2cl08PtKvJZzq3B8C/zQyO2VpQcuzU77hTgbirbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850632; c=relaxed/simple;
	bh=cnajpc59mzRLWDYn+TlQEWJ18Tzqm1CRjbROQ6JPtZs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DIhyDMC4ko6l9oPcag4mirtTBeQXvHmYeDmbokAHV9XZMc4O5mawJKA+lBrC4F89OG8crRdV0ffxalbT0ycojLDWATpnakIemmOpAxaHPbShASMpDNsbqXKgkVGfCkEZZ040uHz6LM4y/+WyqFQtvbfzTP2Sv+e48G3ir4ycSNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BY4gWM0a; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d0d32cd31aso6838983a12.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850628; x=1734455428; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3F8PzVf1JVHBMdfZjuuSPBsoTNCHuDc7mT2swoePkeA=;
        b=BY4gWM0aRKGmRPNfU/t17wSV6WCBMCbALqJIZ4xdnA62ORaysTgl0Mq1WJUkC/jvOe
         EtqPV8SeIsWUpXEHMdIo1c8ASje479H3/71wwqGhO3lmhIjeJ7y9U2kCThtRAxUGo+Y5
         9pl2SuPLNEF42r//twOOg5LRgNgar9DFo2waWQUjstF0PZZ8ZGD5IEaQga6RYBzS8aI4
         TuRFpVgkOT4HlZLzfo0mAsTMy5HkDY+bgcScK9oLG2PgCRL0EZphfkwVUSSU+n/Janrv
         ygBdWpp2fy6pVySIZmTqxnk1/CtHuq3Cc7tAAXkiQ9QZ28GURU+2nZltLA2fgy3btaMr
         0umw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850628; x=1734455428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3F8PzVf1JVHBMdfZjuuSPBsoTNCHuDc7mT2swoePkeA=;
        b=mks0P9Czpq6WGxaBHkIoYYdug31vqa7kh1oVClvJOPRPdFD3u94b92YNQBIt7aj3R0
         EoEeQqsOYl3ZHeNfRk9xE7yGosVaamDG4ewEPL0kxCsjRS6Fr0ldsDiSYqGDVNX8bNC0
         I0Rpa2tX/tuJR9kL0iVK43kcsDb1BOMvLSFcP6igF29bvlG4reOvVY+dIBAzIndJVw5O
         YMZHS0aV4kSsgcgsTWemCAqs6eOLBCuu1Z/VV4v2fQZ3vm58EF9Zvv1A1JDhqSB1ioKt
         pGNi5iXSOXCmZlf29kMgcncyJDjfv1t2naOwH+BYkDyYG2325xPGQh3c7Rr3z/arXVvG
         kIqg==
X-Forwarded-Encrypted: i=1; AJvYcCUOqG4j9KK+TICJSmum/r0JOqH5hh1WUDNBguRfBHmK0NKCGFObWzOB0zuczbZtFxnC9gI0ELBUastL@vger.kernel.org
X-Gm-Message-State: AOJu0YxUZPh2nGFeQKyp7L+pCsPQlfQVxw2IgtHaj8jyCqpLIDnxUf0W
	ufO+G/sfMq9kgIHRAV5VsWg975QMrIBMLJdytZ1sq4lKulhmXIGEOy4dMOkzjl/qYnQbvW4mjGC
	Q
X-Gm-Gg: ASbGnctI1mB+jnyE4v89VO7qZ/y0dARkPzM1wNd+/S+oGi1Py9BBQ4qfbMKUJ1jvmc4
	V08nUCCdlomDjPAjctIr6fMEkk81QrDAJhH3hvaPyUd5MjzWiZcprmIUgheM8Tq45V4CqVCLJVH
	YPjfasIo/gFwmbzeipEzGYYsmiHCVhYnME2Wh8K8oTVxMeF/wcgChVQSh4kj9dHiHUSOS1qQFhJ
	cWT/nYB8b3ulUDn/H3iiI0eE4ftIjO9a3/8r8x1XFTJFO55UUsXIN/QGGieRs8dyfeIQvgztBA9
	OhQT+HzH
X-Google-Smtp-Source: AGHT+IF6mILseNMfJmIB9ZOyimXPXPfxpdkmjbt3WuqKLQbtoG5tgiV9L7CF+aAEAjMF8dRgPTsU9A==
X-Received: by 2002:a05:6402:42c6:b0:5d0:ea4f:972f with SMTP id 4fb4d7f45d1cf-5d4185060b8mr11381588a12.8.1733850628448;
        Tue, 10 Dec 2024 09:10:28 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:27 -0800 (PST)
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
Subject: [PATCH v4 10/24] ASoC: renesas: rz-ssi: Use readl_poll_timeout_atomic()
Date: Tue, 10 Dec 2024 19:09:39 +0200
Message-Id: <20241210170953.2936724-11-claudiu.beznea.uj@bp.renesas.com>
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

Use readl_poll_timeout_atomic() instead of hardcoding something similar.
While at it replace dev_info() with dev_warn_ratelimited() as the
rz_ssi_set_idle() can also be called from IRQ context and if the SSI
idle is not properly set this is at least a warning for user.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 1a98f6b3e6a7..03d409d3070c 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -9,6 +9,7 @@
 #include <linux/clk.h>
 #include <linux/dmaengine.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
@@ -307,7 +308,8 @@ static int rz_ssi_clk_setup(struct rz_ssi_priv *ssi, unsigned int rate,
 
 static void rz_ssi_set_idle(struct rz_ssi_priv *ssi)
 {
-	int timeout;
+	u32 tmp;
+	int ret;
 
 	/* Disable irqs */
 	rz_ssi_reg_mask_setl(ssi, SSICR, SSICR_TUIEN | SSICR_TOIEN |
@@ -320,15 +322,9 @@ static void rz_ssi_set_idle(struct rz_ssi_priv *ssi)
 			      SSISR_RUIRQ), 0);
 
 	/* Wait for idle */
-	timeout = 100;
-	while (--timeout) {
-		if (rz_ssi_reg_readl(ssi, SSISR) & SSISR_IIRQ)
-			break;
-		udelay(1);
-	}
-
-	if (!timeout)
-		dev_info(ssi->dev, "timeout waiting for SSI idle\n");
+	ret = readl_poll_timeout_atomic(ssi->base + SSISR, tmp, (tmp & SSISR_IIRQ), 1, 100);
+	if (ret)
+		dev_warn_ratelimited(ssi->dev, "timeout waiting for SSI idle\n");
 
 	/* Hold FIFOs in reset */
 	rz_ssi_reg_mask_setl(ssi, SSIFCR, 0, SSIFCR_FIFO_RST);
-- 
2.39.2


