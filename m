Return-Path: <devicetree+bounces-120189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 574879C1B70
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87E8F1C267B3
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D47D41F583B;
	Fri,  8 Nov 2024 10:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KamFqlYV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B5A1F5821
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063056; cv=none; b=h45X16dz3iQuU/HrCoaUeB6uHS0kYMxL4vq1Dz3FMrCNJKcWXuMsp2ols6IjyUbdYmP2Y4uNajLHmDEwmweIRx+jZDE6AZv+nB/TrO33Wa7ksbkKa45JIpaK71RLujFrhWoiE1yak5xdbrocxKKgUTdQoP8HymdH90u2ZMoixmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063056; c=relaxed/simple;
	bh=2PCe0KPg32gqCcVNDQNhmzPO/yYVoFRK2EiIUxDhWkE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZIx77WnEyf8q2/Sa+H7Ro9PdkF4BmsIo/77eNm+R2GK28xL2WIypV2W0+ZYi+yDWNmMrlIPGmSZsUxAXdRYD1wFPMYkqbGLwXCzPDzS4/Y2xNvtgXcJGOPpqCewmLGQVTCpWatBagggn1WZzQ6eQ+4q4EQG/67kvfrCG4zLVXzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KamFqlYV; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5cef772621eso2200803a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063052; x=1731667852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmXGRhaJRnp01BXYlkVN8dDsItsXKSTOjtaKujO1eXw=;
        b=KamFqlYV9JlAW+XHxAl6rRaYQcLltnlvvdChnHEPdIDryzoZgfpW1rikgD1G2XbXPz
         8zcG9XmpqzAztxSr6Tlmf7k82J1n3z2mqY/gq/3OJdA83BY71mt5lkZGaXhtF0nJOogk
         +VJcBsLd347llcisAq1STTOff5j1gSocziQeVYyNZdVp6VS1nbmcyEtgAIbtbM25gK8d
         Y1QqISNPu6ZTyl2tM0FJGowtTMf1/YSKEpGgIE+A8QFf+sCJsKdh+eyeJqYGpmR/I8zL
         KlVIeBmyBb2JzTi6WKiuOL2X43IW4D3AziFYU2rDGDTPpVfPF5Aieq2hSThU/bzFgBYJ
         Ugsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063052; x=1731667852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WmXGRhaJRnp01BXYlkVN8dDsItsXKSTOjtaKujO1eXw=;
        b=hlVEZPIszJl9N86CWsim9DaXdYgWl6kl2g591626g84CXy1yx5K5nX6jA5GZIwBthT
         LOZJ7RjiNK5jahNuVwedRqcoLBhHEtLtJEWYSDYqtIKwZ634/49xP7ULEA/jq1Goe7la
         YvZAPzgJ/OTz79gux++GhS6s6nwnxRaBmM6GLe/VjkqCuYJgp/LXKS3Z7zkTfhHiU93I
         1DblE6DrI+WrsqB8kyNSirhkXxjfspM8VZKlgbExEzZUr2jbhcS7QK72dIkpBAjpWmFw
         XrQq9R6pcWfBxxbP2taeqySrFCVJeSPOL7A4rV29Eewf7hJoQuWT98YPip74Sk/puxMb
         Zddg==
X-Forwarded-Encrypted: i=1; AJvYcCXqT0ZVmN2C5W41erFIC82DA8Aa6kCLEWmOkHLDbR4BRF/Lmjq91FfgRsI27CfAvMJIf4SsuvwinY0M@vger.kernel.org
X-Gm-Message-State: AOJu0YzFocCiiqgGPVTVerKvyWK9b373Kt2tfm0etqVwQtMXMdqGudve
	zl6xD02RMfL5mVsa8R3zyDfbEokxOXBLps6HJuwE2+bDW5CBBa7H4EXjvoIddKk=
X-Google-Smtp-Source: AGHT+IH0r5miaDDJh3qcrxQ3YOXZk9cffFGfj/2dKrk6beHOdzL6PXB1jZMLS7FCEfSw8jKUBbjkGw==
X-Received: by 2002:a17:907:6d0d:b0:a9a:61d:7084 with SMTP id a640c23a62f3a-a9ef00234b8mr199857766b.50.1731063052126;
        Fri, 08 Nov 2024 02:50:52 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:51 -0800 (PST)
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
Subject: [PATCH v2 16/25] ASoC: sh: rz-ssi: Enable runtime PM autosuspend support
Date: Fri,  8 Nov 2024 12:49:49 +0200
Message-Id: <20241108104958.2931943-17-claudiu.beznea.uj@bp.renesas.com>
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

Enable runtime PM autosuspend support. The chosen autosuspend delay is
zero for immediate autosuspend. In case there are users that need a
different autosuspend delay, it can be adjusted through sysfs.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 35172630be8b..01e8b6a4e8a8 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1140,6 +1140,9 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	}
 
 	reset_control_deassert(ssi->rstc);
+	/* Default 0 for power saving. Can be overridden via sysfs. */
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0) {
 		dev_err(dev, "Failed to enable runtime PM!\n");
-- 
2.39.2


