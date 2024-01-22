Return-Path: <devicetree+bounces-33689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1256836140
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 678991F2239E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D8D3EA80;
	Mon, 22 Jan 2024 11:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j08GBO+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48103E48C
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705921907; cv=none; b=iI90rJvMowjeGruHGjhPxPDQ6ToUl5tuHj6LK6zKgdieHMgDWHBsfoWo+umVyigbdzhASIbOimMxl4CPXtTfQ16UjUhEBHmhKuIpa8g8tRNAmmMhhOS2WvVcw7DGe0BbnL2QzgzRBORKRTscB2doAyGgkzZBCeqpyfCx6kZzBbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705921907; c=relaxed/simple;
	bh=P0pml+XvYXypPwvm13fUsxAbzg1yShpyAM0plENv8P0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VX2hQsK/Kw0NycpdV+iGdmeDySoTBTU6RXmKcK+8AOavcqVB4in1mNapjfI5jQuVKKWrNXxHoS2WoX9s/Cllsn2AjJs81iOhuheWfJyROxFJcxrWoQAnn5QRgvw1Cyw5eU/ghOxyXWsTsN2RabL9pULnljeOsBY5BJiaUZaVxPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j08GBO+H; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cd8bd6ce1bso29554941fa.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1705921904; x=1706526704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZsglpxv5Ruw+cmAq+FH/8gH/cxWxlJ7CUyURo/5TWs=;
        b=j08GBO+HdsEhh9qo0bkJ0Iq+yLSlU17x8z4tsHgTSLz3QSK4n1TXEKFSaZLpIIhT11
         Ciagaz+eq2hept+9BLQunqdMrB3HhMsFnFGIQb1LnLcv2guMU9voif9yadlm/AqilRTv
         n0Kb9fGF62aBOHnZ/lWJ26VOTTt61VbraAUFGdwIdmhq0UGAYSVl3lZ97U0v6Tl0IJAJ
         vEhwFy2RtsHKeZSWrP5brLIzCwMliwHwhS5c6Zt9VtG4pK2u3R0x3GIwe2L7fZ1QaL3d
         8BbPIjrzgVHeCuBPt94j+ACTU7ke/4W/nuj1wJPPsC1+sz+HEQTH5a8VsTpweOikXpVd
         dGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705921904; x=1706526704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZsglpxv5Ruw+cmAq+FH/8gH/cxWxlJ7CUyURo/5TWs=;
        b=rCGyJOjdTdDIGnW0euVR0X08Su+ZEQThW8+2WOOt4bFKKmYhH6t0HISHbv9VupPbNB
         NTxgJpl6GLljGYHBtWtV9on123Mwgp4CnLTwusETBquXG/5RR39bIKsQOJVh6OAe1Rxk
         AZPRmemor3coeWmWQUjor1sz4uMTKcLPurenAc1hPhosvqSLRc0/D4jIZeZ+uX5knndT
         DdVNYU52C94yH3TviK57JqZTEF5+Ymp5dHoQuoB+NmGiq9XBfw1DZmmuQkoLrmTYuVVV
         nFezzPB2YbyaqPD+9mMF8AEofqQFWpQTunIdCdJM1AY32LndQU1LSirBabmt4Mvuw3UV
         f8cQ==
X-Gm-Message-State: AOJu0Yxbo+MLaT/ySwHoMSxK1rGgErGFMtaErNBgO7SGEsG2xual6+MD
	k3ZqEyz5aIJd4TUmqWb1crKDdbS/Mqco4y7hKeP4pXPWMRQiF5I9t5NZjqLT16A=
X-Google-Smtp-Source: AGHT+IFdtngNav7jLN7NRbMBgpNlKLytDtSGZw9R5aAcExfwEd7H5jWK1DXLkRkagwmRGN3K3IIs2w==
X-Received: by 2002:a05:6512:3e19:b0:50e:e2e1:9cc8 with SMTP id i25-20020a0565123e1900b0050ee2e19cc8mr1209162lfv.117.1705921903651;
        Mon, 22 Jan 2024 03:11:43 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.135])
        by smtp.gmail.com with ESMTPSA id t34-20020a056402242200b0055823c2ae17sm14194241eda.64.2024.01.22.03.11.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:11:43 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 03/10] watchdog: rzg2l_wdt: Check return status of pm_runtime_put()
Date: Mon, 22 Jan 2024 13:11:08 +0200
Message-Id: <20240122111115.2861835-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

pm_runtime_put() may return an error code. Check its return status.

Fixes: 2cbc5cd0b55f ("watchdog: Add Watchdog Timer driver for RZ/G2L")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/watchdog/rzg2l_wdt.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index 4ab9e7c5e771..0554965027cd 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -144,9 +144,13 @@ static int rzg2l_wdt_start(struct watchdog_device *wdev)
 static int rzg2l_wdt_stop(struct watchdog_device *wdev)
 {
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
+	int ret;
 
 	rzg2l_wdt_reset(priv);
-	pm_runtime_put(wdev->parent);
+
+	ret = pm_runtime_put(wdev->parent);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
-- 
2.39.2


