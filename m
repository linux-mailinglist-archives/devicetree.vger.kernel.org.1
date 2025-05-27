Return-Path: <devicetree+bounces-180781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5231BAC4D26
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:24:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA4473A9D4C
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CBE25F980;
	Tue, 27 May 2025 11:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="b9ZgO6Jz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9623C30
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345060; cv=none; b=evtOyErl89h15YyaYErET352fPbmG+VCEpTeYAR58TFmQBZyC3Vo6OyDD40ZwUp/3ROeRHEp6DjYcf3EWUyI7EJlrxvSAFfVt/iwROcS/ck4uYBbG5OzfNJ+Jwucu5v3z5jLljt7kFeYqdsRNEqHe+wz53zYRqR53MpqVjn6rJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345060; c=relaxed/simple;
	bh=MsMZDrWBfRsJ8ri3F5X9GfYhbLKkobKeGpts2PRqUWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HNlwFCNtHig4JyZH354E5PchPez+TAvFkqnoNpOLzaB4yBns40dSM5d4GlcotFcp1c8D3F5zc3pU0F7qhC1+KRtp616+GWRzr1xWwxBivMjZiLbLEF66S7ZWw6NHtgjSnH3XWag/s/wyw/btXDkmxDYVLHZy2Tms5dVK8AOM6X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=b9ZgO6Jz; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ad5566ac13cso466830966b.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1748345057; x=1748949857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPvUg+/2vxleBwi64oJRAvieyH+EWPrUyLqwj4qbi9o=;
        b=b9ZgO6Jzjk1B+yKJfVCgTNJ3B4L16OkK7MyvBR9ZWrFjKjI2+Upsh/oIITgSaXvno8
         REKpq/kwSyg4jsZfqsjJHMK26CJyl+h6CejnNBughjbAKbyiXKMZEi5TgQU5Qp8bXUbE
         Y0/b2Dg2kftkkkm5JO73Al7DjS4prrl0Ts0cHT4RZLQuiZDxrkZFEGCbON6PYJm8KKg6
         nSayNy6vxSv5JhKVwoVQ5MF20OTZkTBoOnNZRNlanE7XUEePx9uXQqfS2gPeOG5VY7h8
         TdMIbsCXqdOiOSyp6K7WBaqNaaZFj8jM+wcSZfbwNRqpIfN88QCid4EVfa4rSfu+PA2z
         FvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345057; x=1748949857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPvUg+/2vxleBwi64oJRAvieyH+EWPrUyLqwj4qbi9o=;
        b=LlWHkgqDUJflN1qVQEAV0dVvCw4a0xcoodj/k52y4zjx0NdGcBgzIqxC/e4d55KLV5
         BBFNXcVOCK5ZDwKoDyrnMOf6BZU+L6Q9lwjvu/5BScu6I7ALyRezelUI2YcluQwmokFy
         7SNPkxljjX4CkPzU/929g4vYYEeJ9yY/u51GeB1OZpkdqL/IfBAnv8qecMVBNCDxZ2f3
         i/IsMwTVl0b+QLR0hQ5SoX0br99e+n6rWR/tJAT4AcXBAaP3++ZKZ7/1vZH7USfqCyOQ
         WxHjZvzNPIN208B4CD2cWXHTYEyQZ8D+6H3a11/KwGTKxDjyAHiyhnnyfGvfBcMCpCMI
         Hvig==
X-Forwarded-Encrypted: i=1; AJvYcCVLD9N7t9nLPQFc0/0wWlyt2LoRmC3z2p7lmhFDwI+FrsFOwyivcruXmM9/7qg7/ukpiRdCcZCH9KUd@vger.kernel.org
X-Gm-Message-State: AOJu0YzXrksdvMYN13FJZzz/OL2IcPmGv51Ro2XYQ3LRFXi6pV2QDWG/
	3XCwjF76miuDo8ysL1wNWZSBdRO5QCWH+v4IIqwbxw12Tf7WACDlW37gHshOUQ9U0tQ=
X-Gm-Gg: ASbGnctCus3ofyuL6CnmZaKr5y9PI4pO/ux920s8vUv2j2sUhsi5nCOOCLx/ZuF2jTh
	xIHtZSY5q5mTsT7BxC7+bfH2igeKQmCMdYlGvJMx2vu2WXFud+FYlZgSRLkqvSBXHzB0xi0U6uf
	eEZANDdrLS523ublO6HVB3bwLZUwvGZs1DiDMZB3arVrYEnUlG3IKcdN7TK2/qnz1NSCQbg4nt/
	VYKap8axxzSF+L/38vVOk0GR5HWZ8LDdobdiO6B7sgcgps0hlun3H/7uSUdAK6sL+ixgWZq5ATF
	GLinv6x19uBx8dRziokkQiS5OrSwviP+RxejQbVwPBoG5vTslv2XOhLjxZ3nMrmC/w0p+wPLdHa
	Zw3xc
X-Google-Smtp-Source: AGHT+IHY/Diz9puiJs/ElNjkdoO617cGIM4jCQEt8psWKPrvmezd8hjozaZ6JtjNtQfnjY/BaJMwFQ==
X-Received: by 2002:a17:907:3e06:b0:ad5:27f5:7174 with SMTP id a640c23a62f3a-ad85adbbbf7mr1178556966b.0.1748345056522;
        Tue, 27 May 2025 04:24:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438403sm1807297466b.123.2025.05.27.04.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 04:24:16 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 3/8] clk: renesas: rzg2l-cpg: Add macro to loop through module clocks
Date: Tue, 27 May 2025 14:23:58 +0300
Message-ID: <20250527112403.1254122-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250527112403.1254122-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250527112403.1254122-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add a macro to iterate over the module clocks array. This will be useful
in the upcoming commits that move MSTOP support into the clock
enable/disable APIs.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags
- s/for_each_mstp_clk/for_each_mod_clock/g to align with the
  review comments and the discussion here:
  https://lore.kernel.org/all/cb0d43138aa443578dcfdaab146bf9215cde9408.1747927483.git.geert+renesas@glider.be

Changes in v2:
- none; this patch is new

 drivers/clk/renesas/rzg2l-cpg.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 767da288b0f7..e5ad80f35cfd 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1202,6 +1202,13 @@ struct mstp_clock {
 
 #define to_mod_clock(_hw) container_of(_hw, struct mstp_clock, hw)
 
+#define for_each_mod_clock(mod_clock, hw, priv) \
+	for (unsigned int i = 0; (priv) && i < (priv)->num_mod_clks; i++) \
+		if ((priv)->clks[(priv)->num_core_clks + i] == ERR_PTR(-ENOENT)) \
+			continue; \
+		else if (((hw) = __clk_get_hw((priv)->clks[(priv)->num_core_clks + i])) && \
+			 ((mod_clock) = to_mod_clock(hw)))
+
 static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 {
 	struct mstp_clock *clock = to_mod_clock(hw);
@@ -1314,17 +1321,10 @@ static struct mstp_clock
 *rzg2l_mod_clock_get_sibling(struct mstp_clock *clock,
 			     struct rzg2l_cpg_priv *priv)
 {
+	struct mstp_clock *clk;
 	struct clk_hw *hw;
-	unsigned int i;
-
-	for (i = 0; i < priv->num_mod_clks; i++) {
-		struct mstp_clock *clk;
-
-		if (priv->clks[priv->num_core_clks + i] == ERR_PTR(-ENOENT))
-			continue;
 
-		hw = __clk_get_hw(priv->clks[priv->num_core_clks + i]);
-		clk = to_mod_clock(hw);
+	for_each_mod_clock(clk, hw, priv) {
 		if (clock->off == clk->off && clock->bit == clk->bit)
 			return clk;
 	}
-- 
2.43.0


