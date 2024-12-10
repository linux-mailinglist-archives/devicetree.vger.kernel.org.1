Return-Path: <devicetree+bounces-129381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1639EB817
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E5EB168623
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A264023A564;
	Tue, 10 Dec 2024 17:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hDi+eEZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF83239785
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850622; cv=none; b=TpwsI4LO5ibRTKe5sFmMZrtgyxXQlapCRWmayroT9vSUCj2coGTsIOzaGoNM2ByuiACdHA2+vY0uVAnkg/2KuF89Qtw+NEsxxwLGLxzG1XFwwcaBuR439qgOwXcA1Q5SbikmKgLwjxSIz0ks598Cd448ndlIGaKpfDA0iOl1g0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850622; c=relaxed/simple;
	bh=hgummav4gWlxydCCaiYlSrENU1T64Eunf3Cfp6+7rSU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e5h6EiATP504UMk4PKbSmenqR0ooNlUHh8ltN7H9Uwc+qo998/u3wBmNA/80bRACXELbYAVocEdyJ6+8+8+WxGQrzn5/Ln7KfuP6TFzZx0GmURFoGyjdOZZaweOulLFq6VKLmN3rsmHb1fPs9UMhRGWiJndpWzkPtH3WLHCLSJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hDi+eEZM; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5cec9609303so6813636a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850619; x=1734455419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFuKmapnbE9+QOXBiNESOVZ7AOkqywZ/u7IM8EV36Uw=;
        b=hDi+eEZMHKYaStvYGNqdq89LdNEds2TOOG3WmHMR2G5bGIw+1r7JQMrwNVZfDNGpQq
         67ciFOKnp7z+LRoH5r1a22banVTgRw05K7pEhUj7MyX/rloEGEncZE7eGcVfzXAEdjU1
         J+ZeOGFMmxO0i3FyoB/bHDuRHEfDrxwiSKLKu0JQXTDNFLSyeeI6ZceIYCG7hxfxoKQf
         ntMm/dLiPvrjDIk8TD+QvRLDjd53E6RhInc2wHnOa3GfkiWj5wCWA7ZL5aBMm9SZXWk8
         8TXzRDFkHHXW4WvzkIFKH0Ra45UICMoqR1uvMS9K3cBpe0uCRXP7uhuZepJJWNnMIWzL
         nt9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850619; x=1734455419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eFuKmapnbE9+QOXBiNESOVZ7AOkqywZ/u7IM8EV36Uw=;
        b=G6U8Xhng1NnXM/eOGhAKYvpYzI2g5GnyEPp3Xta8JT7AU3j4CHbUm2zy5qtgDAB0mX
         jkiN84736kpxRSo80WkmbRFGquIR5/pFSwSljCc6PnjV/74mrCKAqwRuDfwR/TwrN/92
         VEs8CayyFXDWfQoOyOsS/HRAwxSBsVgvExu76OV/KBr8nN+vE/crMX0mNcDxnc/b3gsp
         ASnf6MEB+nUwK/RGnu+oGPq9c2Cj9DpEwHNC+NLcES7/R8LAETMmumKIltEFsDmBVzOw
         bO1z1SFK5X3AjnjkR6jAtdw01uaco31RyliDa0318vi+v/zVEs4UIs629wGqIevBhIp1
         6jeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHOvAG5YfsYvgfQ4O2zs2mXMcP7KkobNfXM9DuLzvUxW9fgKVnBl8PPosQQezozVov9OeOlk9J04VD@vger.kernel.org
X-Gm-Message-State: AOJu0YyIZ27Qa6ithRr2kfRxNJs4esDpE2w7Vi/yWYWsbTr44Z26ewPp
	rLeoTgqLQTF1j6ihM75Qnxv0M0YrR/DwH7UDkxkA4PaJn6OySJ5Yfypp2RS5LzE=
X-Gm-Gg: ASbGncuGtO+BP/DsiGhcB+gkv09azbFOHEK85wyqTZJhxckOJ8zya2lHQaotcEr5cNd
	avfj5uWcG91jfhwVnKlQzEcx8yFWwndsuZauTIHde/DaXiltAv3SgohdJdE/dukW2qq7ob5XT8K
	Me1cDuy6vNE+3NCdCoDR0Bw4TsNY4eSeK7X0WNmB8HU5c7wl2Tc9oY6dYpWV28njRvsYRfn970Q
	Y6LrtGAyRnxYhN4YE/Y/PV64uyZDW0CWJMwOnEywMh2kVSPVVJM5TZHeVUNyWbVbsm46e1Yxnbt
	zrO52Nq6
X-Google-Smtp-Source: AGHT+IGIek6OPyyjZZjrXkuvdN81VR6DHl8mzdwNbzCCYx8cbaECzDZswIN2k+lpO7iWi6HMxuv6jA==
X-Received: by 2002:a05:6402:360f:b0:5d3:bab1:513f with SMTP id 4fb4d7f45d1cf-5d3be6c4046mr19223495a12.18.1733850618930;
        Tue, 10 Dec 2024 09:10:18 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:18 -0800 (PST)
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
Subject: [PATCH v4 06/24] ASoC: renesas: rz-ssi: Fix typo on SSI_RATES macro comment
Date: Tue, 10 Dec 2024 19:09:35 +0200
Message-Id: <20241210170953.2936724-7-claudiu.beznea.uj@bp.renesas.com>
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

The SSI_RATES macro covers 8KHz-48KHz audio frequencies. Update macro
comment to reflect it.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 178c915331e9..35929160a8a5 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -71,7 +71,7 @@
 #define PREALLOC_BUFFER		(SZ_32K)
 #define PREALLOC_BUFFER_MAX	(SZ_32K)
 
-#define SSI_RATES		SNDRV_PCM_RATE_8000_48000 /* 8k-44.1kHz */
+#define SSI_RATES		SNDRV_PCM_RATE_8000_48000 /* 8k-48kHz */
 #define SSI_FMTS		SNDRV_PCM_FMTBIT_S16_LE
 #define SSI_CHAN_MIN		2
 #define SSI_CHAN_MAX		2
-- 
2.39.2


