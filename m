Return-Path: <devicetree+bounces-121519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0609C7166
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1501B2F275
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BB3420371E;
	Wed, 13 Nov 2024 13:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fK3gTN7j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6143D20265A
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504963; cv=none; b=ZYnFh0t20QatIaRgBRCbfqjjjjPIUBRPWdm0dOhpJTfEPHnlzWY/r2TB7M4Jc86g2gpKgv8Lb1qhpqIKa8TjDRQzzdD73VSlkg9p9PRqXew6rFgxSD+4C9Rbkf7ZTNWuaZQFkuBF2FpMKZICiKzOYu8BivsP5pC/xHpZImOUhHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504963; c=relaxed/simple;
	bh=Sz1PAChDcM9B6CCJvpuwCd6OJsVNXMcyHPYNhDbm9c8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NYhUrmGeVEobgq4aKEMadwC6UYQqSMlBonxiNeLpcOjFLMShcXsSFYt3O282eAOYVQGuy8QcYN6V0nqChYKuEyULq2WIEirCLN6mGMcGY1eU+5EO6xx/ThAKIyYQeOtY512POhIftTC0ZneY9CzZYNx8NbVdywMNYTG0ne5ie7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fK3gTN7j; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4315abed18aso59275725e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504960; x=1732109760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AaN72J9oCjuJRB7FXPQLRWlL5CXlKXSOkEeKQxWmO0E=;
        b=fK3gTN7jiIIAtO3rkYMWViQ7kwSobDSblhvVDlndpe8/9iBB8nAKVldreAUVzg+SvA
         jKcupWdRqJOsqZo0jrgpnYR3AxsWnylOhulll5e/7AgSkuEaoE2S23U1Qa5LdZcNufjB
         H06/HXplKzimOfo3qluFqCrbOFUzTwYl3MIpVBKCkghTZS35KjrTRK9vjBSy6RxKMrWZ
         zjxmHCHQMy/8SBP/jjgGJpz6NRvWFbisVKSILQxHj3V6Bvd6vgXsJSlQuIsgxyXcCrNf
         aCYLHETVCdvlZa42tE32LP2ieOw97zYs4XNnQWm48SvoeVSjQBCQYEoE2lQd2YTbH59l
         zQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504960; x=1732109760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AaN72J9oCjuJRB7FXPQLRWlL5CXlKXSOkEeKQxWmO0E=;
        b=XUUPRyshPT00LIbP0YVJulRZlv3vAbj4/fWwKmUzW5L+gS81T0pUtxz9xsQnIGZoFS
         pt3dT1jjZEBFvPAuxuVcrqU5krwokuV7RnAaG9/tacl/MSLZpXTXI2HfznsFsmgmMbcX
         tl+v6UEK1Nxhflx0pXmyJ71m1rT2unoIUJIwin4jV/6u4vkG7HIbe9eDAp6bGBdH7DP8
         6/Fd1kuNQUSij3LgKopH8DrCr7344mYirDfKkJqx7cHy6qJBapUlVtiDxMMnnGx7vQon
         P2XWTunAVzu1wYsk0teHgxKuhlb3lShAiFOvlv672erwcT9ARUoXYDPGwl9FKfbbMfi6
         H1KQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFzDdcUIhLJsMzJnvXfdtR7oStDHsrMrJVYlgX0eW5TFGetZ2KjuYg9EDKJUCBncjB+BdiQc1Cq4Mr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2vl0zqMSMlyaCx79dQh6HQf2/8hkPSCbkN2Div9abt0j34Tsg
	YI383jOFtouG9PL0YtSm1j/SYwCp2YIbbOLEGfWzHwlgqHK9weu3CRtRYTIIsJg=
X-Google-Smtp-Source: AGHT+IEMrNnWePZLL6c2pl45w1yaF9tt+h731CuGi4h+iBycfvBUpWEwqJT5WVYgqo485BsTWQsP3g==
X-Received: by 2002:a05:600c:4f43:b0:432:d82d:6a6c with SMTP id 5b1f17b1804b1-432d82d6b43mr9287205e9.30.1731504959807;
        Wed, 13 Nov 2024 05:35:59 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:35:59 -0800 (PST)
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
Subject: [PATCH v3 07/25] ASoC: renesas: rz-ssi: Use only the proper amount of dividers
Date: Wed, 13 Nov 2024 15:35:22 +0200
Message-Id: <20241113133540.2005850-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There is no need to populate the ckdv[] with invalid dividers as that
part will not be indexed anyway. The ssi->audio_mck/bclk_rate should
always be >= 0.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 2d8721156099..b4439505929f 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -258,8 +258,7 @@ static void rz_ssi_stream_quit(struct rz_ssi_priv *ssi,
 static int rz_ssi_clk_setup(struct rz_ssi_priv *ssi, unsigned int rate,
 			    unsigned int channels)
 {
-	static s8 ckdv[16] = { 1,  2,  4,  8, 16, 32, 64, 128,
-			       6, 12, 24, 48, 96, -1, -1, -1 };
+	static s8 ckdv[] = { 1,  2,  4,  8, 16, 32, 64, 128, 6, 12, 24, 48, 96 };
 	unsigned int channel_bits = 32;	/* System Word Length */
 	unsigned long bclk_rate = rate * channels * channel_bits;
 	unsigned int div;
-- 
2.39.2


