Return-Path: <devicetree+bounces-120185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B86A9C1B5B
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40796283C40
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5294F1F1312;
	Fri,  8 Nov 2024 10:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kN2Y67Z1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516D21EE03C
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063045; cv=none; b=uPV9OJccDCFJeQsoYLmXxZo5V3MzDOgyMjhyqdueEvIERf6p1/+0DfZi3U4agTUiZBsB8lPrnXWP7GiCwKf/KMbFKPqg9/yJ5jaKHP6gdRuMskHDbaUJPBaQCTp/COqDx6OLatWtKgDTmuj2wnEOBYKE8upWuodvnKMRXGlxbIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063045; c=relaxed/simple;
	bh=K6Cw19VzanRggQJ9ackg58S/cIHnDftQ+AAbWSfLA4w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Lsy3w+WfaIjeDrk4lneYP/e9+G7s4JNGXcCggSrdBTdJTWGvzfJuJA3WnioTWu4U+Y0/mA4ADe45I+c1mZ9l4t2C9AUDk6SsX2MDYjW9TjKIdlg3srYkcsM16LOJLyWyt64iUXCq0YihoM9GK8yDd3PV6RvYsSHDuIQSeu2Qgeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kN2Y67Z1; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5cec7cde922so2568409a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063042; x=1731667842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oGI8BLotlgYkbPf2kxGSbSSNn1fEysvNxJMS0KOJ8NY=;
        b=kN2Y67Z1k4AnfMFTdK0wWOQ/R7DltDdeQ5KhekuxahpyP9shQhvXSJOhsnOmzO6oSF
         R2Ii2CMdt7NZvKeSTC7xL8JAr41LnQ1XEA68fCrhRZnydP6Qj4VQG0vj5jXi8NpHO1Ke
         8t6J9EKB/Uss8IZYnbg06CMNBDuMclnnvd8vPOUqO93OWIdfo30eJD0gCOwpBRM8rlfg
         KG2NmCUkxJQ3Z/QbQgcjJsGOfk0eYPPoLeQnO+8bvI+KgiwL+ylQ51c8ihHqXFL9m1DJ
         HwFaloAqVp7NohURp7qIk1QvGVhnIzhK7YW2Nyc/mDvWguuxiSwpGx+9Pi8SNM4JXb5y
         y+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063042; x=1731667842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oGI8BLotlgYkbPf2kxGSbSSNn1fEysvNxJMS0KOJ8NY=;
        b=n+1J+0r711eKZ6B8YJ5rbrwVul7AW9kIzfWupSYOFlXdhte8riJgnZVBPaAH1KQkvZ
         yMPbPbXuJsg4ToMHggeH1v5wdT9cLlCgypPOYQdFsBcma8Ywu/WA35J9FCDO9E9hMDTM
         TFO6T9EaFVEEHCThHjNi/o4qFJHLQHsKkHAy+SLTyeGsxPwhLaUSaZ/EYmpYeihW+Q3H
         cWoadwhTTiEHdEODRZITj+I10rxLTO0cXTLaKQlosWRZszBSdUxhufB5aiPrv4UhBia5
         RzEieVKBy0Od/dVFoRvghD6UyS7gBdnRAmhlnd7nOYnFDwAP1cEXWAt5YrMpflLO+Pkx
         ysrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfY01RDN70bnkLo6Ql9nK1tDcgQ2hewgv9X7K11tzP/fZw+ADEfDzlSExQfqwj8SpXtbrs+MCbZZZV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwlioj3qTFf3MuiXFF4YvPBlcsCgWxQVgAuTp79oICOQkwxkD8
	UAKVTeSX+1OfQ3Spm6pSyRqj2buCF/GmYDgKRyh0YErTEL+wDKf3t4W6CmaRyds=
X-Google-Smtp-Source: AGHT+IGs/OQqKoJK1pwx5fwra0tyGy3QmPPNa7cuyW1FS4OzMCdTq2C8v+8ndDd64d+x58RAV4CJrA==
X-Received: by 2002:a17:907:e94:b0:a99:f746:385 with SMTP id a640c23a62f3a-a9eefebd439mr210008966b.1.1731063041624;
        Fri, 08 Nov 2024 02:50:41 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:41 -0800 (PST)
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
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 12/25] ASoC: sh: rz-ssi: Use readl_poll_timeout_atomic()
Date: Fri,  8 Nov 2024 12:49:45 +0200
Message-Id: <20241108104958.2931943-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index f230d63339e8..aa175803867f 100644
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


