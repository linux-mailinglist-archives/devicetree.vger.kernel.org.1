Return-Path: <devicetree+bounces-119336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 209689BE050
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:20:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 509AC1C23279
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722241D9592;
	Wed,  6 Nov 2024 08:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jmVh954j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC7F1D90B3
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881169; cv=none; b=YN17mtqmZcnsoz1hK27hVxsFBavpKhGblD7ndTfsmCBSgSH4TTA7K2gxK2m7O2T1OcN47DW1Tx3aPAIxLw7nhDKfwBYJOO7mIf5wtzUlFkEOB+invIymgrEvYywdOuGfxYUmJKNISlNRURuOC2dTaLwvWaySul5gkKW4EugA6ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881169; c=relaxed/simple;
	bh=8UOlDm3vrSjRTc4vbWGP2PkIhWAkTQRY2So1hnpltTQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WSXWBjtEnSn8T261Gu78ZP9CkVydztQY9lnMs3hjOy2cEPWv4g9FZLz4VDpjuxvzmcHkWsr/v9SdoLqJel+UNmAbRWHUYApbDiWSryENNC7eeplixUt2oy6v/B2LZYeKxGbVfRvwszEmZflEkJMd0vNBPTVa1jFvsKI2BNr5u4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jmVh954j; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a99e3b3a411so105006066b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881166; x=1731485966; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+ke7NRgTssg/IEZFWgLNPKBw8NmV+vA1artHipjKW4=;
        b=jmVh954jD7M2GVDspV46DP3n+eTyxONuvgCAET/J8yAWK/PVZnydCyq1UMULQkDPqY
         IHmkCCbeCxpYf/oAHBw+Hu9VwXNJEYeJkR6NmlLAaAPcl7LUS5jmFtVYKoLWU4ZU38Ra
         b7gRO9gK+l0xAehVCBPMxPf5VJUxVsSwbHc4qhke8WeK6iCoJC0CJr+w+WFpn/lLqmaB
         9NexTqSK1uo9W7a3tbC5WALhSTdxGmUldVmc9GrwRkA8q+derdXQhn4KjpI0gw8f+sL5
         fYg95f0Gvgq4NV8UtUX68El4bLi4WVZC4c2bxCTwZr479g334dRBwtQaRCbLQUJbCmpO
         iFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881166; x=1731485966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+ke7NRgTssg/IEZFWgLNPKBw8NmV+vA1artHipjKW4=;
        b=Ldh45br3XUNyrm7eqChnPPztUo9BakQKvl80T00DeGTsd55V8XE5vFThv/RBnGPmeS
         K/R8fszBdMA/tqHrKpha2GgcXfJ/1DuDxCgTTtVR79Z06sukhkt1EDs5ipdE1etaSsWC
         PgaODnDaKaffEF9izTmwoOBomB5Zpf7O1MuMRmUgsb3+T7BRU13DH9f3bz6nvq/7kjST
         lmXxapCO7A0yTsK8ScADVvcxC8S1FKM/IjHSjj74ByXNajbM7fwgMIhS0saXT3Hx97sG
         T5robZSD/qSREA7E10S2jBKhOzSKvRvWBwj9UFlHwt0uyKBAF3HtdK3CXhoG0UAVdBMZ
         Cjmg==
X-Forwarded-Encrypted: i=1; AJvYcCXpgNXwgPT4zL3PK4+666UkLHVGhG25mkt8oSsLqREPSE2F0GxMpj0Jo6Xwu5/HAovtMBWdcN1wEZWm@vger.kernel.org
X-Gm-Message-State: AOJu0YwApLp/bnZ7L2kWzz5uOBvZYuuq2f3Cqouo3u/ILtgGZSXjsfbX
	mhK1fG82typmJhpiZcf89S3SXnXu7yjKVF+G9igSLdBYgCzOtZdOQz8r+aDqTo8=
X-Google-Smtp-Source: AGHT+IGsSrynXgwp9ybYH96pAnSvTf/jo28kUEGLKKl8GOZpqqi1T6VVn/a9MUUUoZoaN649GiICbA==
X-Received: by 2002:a17:907:e29f:b0:a9a:616c:459e with SMTP id a640c23a62f3a-a9ec667289fmr159795066b.27.1730881166124;
        Wed, 06 Nov 2024 00:19:26 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:25 -0800 (PST)
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
Subject: [PATCH 05/31] pinctrl: renesas: rzg2l: Add audio clock pins
Date: Wed,  6 Nov 2024 10:18:00 +0200
Message-Id: <20241106081826.1211088-6-claudiu.beznea.uj@bp.renesas.com>
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

Add audio clock pins. These are used by audio IPs as input pins to feed
them with audio clocks.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/pinctrl/renesas/pinctrl-rzg2l.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
index 8ffb9430a134..1190ca4b1808 100644
--- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
+++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
@@ -2086,6 +2086,8 @@ static const struct rzg2l_dedicated_configs rzg3s_dedicated_pins[] = {
 						      PIN_CFG_SOFT_PS)) },
 	{ "TDO", RZG2L_SINGLE_PIN_PACK(0x1, 1, (PIN_CFG_IOLH_A | PIN_CFG_SOFT_PS)) },
 	{ "WDTOVF_PERROUT#", RZG2L_SINGLE_PIN_PACK(0x6, 0, PIN_CFG_IOLH_A | PIN_CFG_SOFT_PS) },
+	{ "AUDIO_CLK1", RZG2L_SINGLE_PIN_PACK(0x2, 0, PIN_CFG_IEN) },
+	{ "AUDIO_CLK2", RZG2L_SINGLE_PIN_PACK(0x2, 1, PIN_CFG_IEN) },
 	{ "SD0_CLK", RZG2L_SINGLE_PIN_PACK(0x10, 0, (PIN_CFG_IOLH_B | PIN_CFG_IO_VMC_SD0)) },
 	{ "SD0_CMD", RZG2L_SINGLE_PIN_PACK(0x10, 1, (PIN_CFG_IOLH_B | PIN_CFG_IEN |
 						     PIN_CFG_IO_VMC_SD0)) },
-- 
2.39.2


