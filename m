Return-Path: <devicetree+bounces-121520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D109C70E1
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A7C928A101
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E74A22038DD;
	Wed, 13 Nov 2024 13:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TQNmhHAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485432038A9
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504964; cv=none; b=m2oYygaXQnTK5dXp+YaQ2pKMTCNbKoZuVD/DsQzYge+prqVAuLcCzPfypUFdvXOuhaIKkbni3qbFwmilcCHR66QcCBIOGk79EKIaw/+B/5D+cIqYLCszINLauGFwdCQPrWnStGZ8dskcEuTqlidi4H0dwi97ny66q4nB6dWZYUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504964; c=relaxed/simple;
	bh=/F4tAjXWBbEZnhKoW0PkXLQACERRTVgrP2LoplpSZfY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i1ixjLexh1OoGI7Co2iZIuJshwsEXNMlxYeVFaJQpi6R2SSyQsmjNzy7ibL7UbXOl88sbWuAt8VTAXrU4JVym6ZT1wiVCMSSmwZ98b1oQ4LBidIxdyv2mi03CdHATqj39/S4qclIKESJ8YL5Rv2Vayw+8pdp/YHAv1Gs5YxUI/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TQNmhHAC; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-432d866f70fso2374495e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504962; x=1732109762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1FycoWm9/X38NSEgrZsMhWo4rCq7Gq3VfkCCUdfLyYY=;
        b=TQNmhHACH4vAH1Me1V4CuGWACRWaW68hW49wy9qcrEp4rlUwaO8O2UQIiHoSHKJDz+
         2sc60LjO5cp2UiQPJth5IzuXUCYWOhg6YHJip4pq5vevF5HX5J1R4uM/sD+JC7tDDLvm
         c5bO7l0T6Cp+SuIdqjXByc2gYOUnSYtpbhzdBRPz1gSo1uAhV1aHh0SIhgEZSWoLUJ5t
         A/nSM7O5WNwGvTPyHlMRVJx+ijAcTd7jLNPth9NZDySGXRr3oBl3lAU8p2HuDcA/Jy7b
         fO45wyR2uYY/Rj5TeCWmGYzu3M4laM2n/SSWKQKGv//1cpoBQL74DBMwEP7Mt7OPtlue
         w94Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504962; x=1732109762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1FycoWm9/X38NSEgrZsMhWo4rCq7Gq3VfkCCUdfLyYY=;
        b=cDvs0f/Itv7v9xP98X26fcGCuCpAglq2YSvnMuHMc2veFZN9Mxr35HFnJvSwK/wbr0
         wwFhvCcWQkWB+lF0PAlfai+ykrSAooMDc8HYphqXx1tc3kauhwt1g0M3HU1w4iAIJsJ4
         HI6+3tw0WVnw7ta4fPcYtEMxNWnlaM8c2F6WPh/b2cXHCn9OvmMPUS9svdElCSjXvvIx
         +h6ygxGnLiM9iJY1Pf8ES5m0ST1Q8ZZ8XA5ylxyl31U0XK9YYwjNPYq4pdlMi+vyIeDt
         jXR7o/XeDesaoZHMCsfxJZrIsWIfdZ6wkYHEG0hjGzsKlv8KSCu88hVjJNnvk+Q9xrXN
         pfog==
X-Forwarded-Encrypted: i=1; AJvYcCWY/PH0dyhr6zrXXtsYiAO2lAk0cdB5PV7AP+aHJQ+HrW4H3Yevf7he/a4cVgNmzba3gcNFbVT5sncM@vger.kernel.org
X-Gm-Message-State: AOJu0YxWFJDrLHD7xCNFbF/p0+PrZd9UaCcZU6SBy1DHLjhgpyG7Rqmj
	TZRB6vPRXKT22mMF0ZWn1FwfHn+8gqfKVSAs9yNRTUKnkTgNBzctyq/G2BRByCA=
X-Google-Smtp-Source: AGHT+IEv92yaQ+ofcsCPULdq5+LkFnXxgiZf2xmIfOkdQK30lk3F5kOjtytiBE0A/SgbrxV9z4uXIA==
X-Received: by 2002:a05:600c:1c12:b0:431:5d4f:73a3 with SMTP id 5b1f17b1804b1-432b750606cmr185260445e9.18.1731504961857;
        Wed, 13 Nov 2024 05:36:01 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:36:01 -0800 (PST)
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
Subject: [PATCH v3 08/25] ASoC: renesas: rz-ssi: Fix typo on SSI_RATES macro comment
Date: Wed, 13 Nov 2024 15:35:23 +0200
Message-Id: <20241113133540.2005850-9-claudiu.beznea.uj@bp.renesas.com>
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

The SSI_RATES macro covers 8KHz-48KHz audio frequencies. Update macro
comment to reflect it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index b4439505929f..a4d65be17eb1 100644
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


