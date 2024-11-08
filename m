Return-Path: <devicetree+bounces-120180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE319C1B43
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F13C2283C50
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529001EABB5;
	Fri,  8 Nov 2024 10:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A81QYsmV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95821E909A
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063031; cv=none; b=i583grO5XPQvAPK+zGu40ghnmlgFOVi9CKbWjkD5uj51B8UX4mSikp45ML8lflbSd3QdKaoyeJvZyqR66mdFyAb96fqXt1VCCwqtfYNW7bOVhN4Pvkn0LL+tl/eCJfYtFNn4kRmGfRoCGMIfAVOyehaR4FjqjsER+p93lRLkMes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063031; c=relaxed/simple;
	bh=h/y23T6WXsZosOzfQNnDY+T32ZVWlwo2fUWMCoZj4Lo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FBWHSVmEff7eqLL2MbR7ONr/dGAOuWRjNtfGyCJAwbmub7BtvBiNsaGbW9erK9l1wPczjdzHyBvUdTOKyxbthv7QLtsIXgwLLUrunH3SzvSduvNWhZfkKGvhZ87LAqJQ9n53bzrtKR+O2TMnceq+RXnzbhciU5tMBDOkCxFZIm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A81QYsmV; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a9e8522445dso333329366b.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063027; x=1731667827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EUINzcxd/jCXeTMEdPSmJ3jqpY02TDO75OGNa1aC3GU=;
        b=A81QYsmV5wYG7J3JXFfonWCtIdvPYV5VFyOYawGMs6iObrxcBQudpD6KldaYHa19kn
         E6d4I0655LOKvCqNOVrBXot3+5zE1tdXUaRZOOeYuDnj/USzrZjRs03+GChqdk5pKZuZ
         TQp9oZ+GbgjHXbwaKWx+wb/FCp/2WEOZ6tW800E02lq7DOTmuIc+lc8/shO2B1dYMR97
         MwS4hqX6VzTjnWa1fBsGRq1g4PVxL2V4TZ65L+bg5ilxaypaLPWQ1HDR5RUPuxRqdhK2
         l7nA9iOGwauyritVI0sXOQILpVGX98fVB3QD9yYZR/2ytJ06zxuH4wWWH6mg+iC5gz4v
         yHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063027; x=1731667827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EUINzcxd/jCXeTMEdPSmJ3jqpY02TDO75OGNa1aC3GU=;
        b=IwBFxeWFvenIeSXNxIFr6XM5wHOYWOZB/do8uj4bZcx/94OLrq44exJrJO73TbYsRi
         oGS2ne8Gpu/xMRK4T3V81JN/RqBzfX5aEB14l8c3EY41zROOuSeUmDlGXYKQw5SMHUbs
         h+OohM8myebbS89KO6cSxm1JoaTaskKnruVNwDaRjc8Da5vX1szNwlPhwh2rS18MXGSC
         qPg5TKOR9ZDDly3nWPY9zInbkgTA7Bq5AP2EPc9CArpDf0DlH8RXUcZ7DGBCzHdKYleH
         g7c3IpUtVEOUqv06TfPbm+qxHzovR1NRQuUB0Q7LgQHvILpCK2nukrfBq5jpRWWe3zp/
         RATA==
X-Forwarded-Encrypted: i=1; AJvYcCV2/uEcSlf3WeiyGlIaqfy0U7Y7VXcwtOl5CCOkTAUAEDAGQ9B/kdwoEAnBWCG9TlmUngQlKnQmub1m@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0KETZDhTDB/8B31Kl6iKPSG0jkOaItZ2V5NdZ2I89nseoZh9u
	ypqHDaS7+QIzF+/kPGBQyI0qppGtDfkYrsH3fb0d6vnzq1aMPiigXwIp8LBl/TY=
X-Google-Smtp-Source: AGHT+IHa+tQzc4xAxHWtIFyR5mkaoQUPDtmy4x/74qPWFJq2UkKS0Y337B/HDHtOvTb+ulbrG5B3Lg==
X-Received: by 2002:a17:907:9603:b0:a9e:b5d0:de6 with SMTP id a640c23a62f3a-a9ef0016d4emr181814966b.50.1731063027209;
        Fri, 08 Nov 2024 02:50:27 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:26 -0800 (PST)
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
Subject: [PATCH v2 07/25] ASoC: sh: rz-ssi: Use only the proper amount of dividers
Date: Fri,  8 Nov 2024 12:49:40 +0200
Message-Id: <20241108104958.2931943-8-claudiu.beznea.uj@bp.renesas.com>
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

There is no need to populate the ckdv[] with invalid dividers as that
part will not be indexed anyway. The ssi->audio_mck/bclk_rate should
always be >= 0.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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


