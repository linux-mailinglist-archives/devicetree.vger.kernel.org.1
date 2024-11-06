Return-Path: <devicetree+bounces-119337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 060339BE056
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94467B2160F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D5D1DA100;
	Wed,  6 Nov 2024 08:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hNZgi+bG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD5E1D9663
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881171; cv=none; b=FfKXWZXmQAECmifYh5GJtnGsBE4m6FPkmrAork0qDqCJDY9lSrbUFbOoDSrkKFbajfyllbRepVJ4X6ju4aC8FFqmsc3aTcHowBHWw6aSpe8oOZ2iMR74VF3n0h75qVSYWl3lZRsNCB/bFoDDpiODxR7jABMCsL20dslf4WDILpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881171; c=relaxed/simple;
	bh=6Ek26qUtvIoWKsxi8HkRm9I/Gw/NRLrsEUyY6zbNxuc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IflXt3IiQA7qDeHXI8C9RpL3a62a/4SGBnLtCcTGGqTeBoiwtQ9hG6SFKmI8s8hyZlG7SAlPkfdrILvUrBywZxh6DLxnzkN8jX/fZGi66S0ZPrF4X+VdOHRtOQBPlYw143L9cKJbvJLh7YGUSojQamwkxZp0YQtOo85aaNI7zx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hNZgi+bG; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a998a5ca499so844983666b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881168; x=1731485968; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GoHBduHOLQEZ092SAmR3uOPzxwP2Q2RiiR6ikyLer2I=;
        b=hNZgi+bG3GRZ2d8TK2bcdkudPI9U6TSplIbxxVUTv3fiTZAprsJ1bsf0NyKpWKdtg4
         +P/V4qjgWSI/7q8PVRZfgoUu/8786PhZgKWzS3VzbwsQwVGaI27pmXp6OisgM5lhpar4
         a1QSor7JNBKQHlJiXisNXIwGv2DfWJFB/NRKWn5xGK3yTQD0b2KRnpsUD2q/DylkKIxy
         CjmLBo1+dBojk3mZH00iXQES1EoTK5smM/E4jYyF3t9MH7tz3PRklzUne7luaM6oiUWU
         zljNBSBTI9s7QB044QJl/US5K1poKumZAF6oT5xwl8lGaNFFRRXS91tCmhMue/Kit3m7
         +6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881168; x=1731485968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GoHBduHOLQEZ092SAmR3uOPzxwP2Q2RiiR6ikyLer2I=;
        b=DtoJd0Bi8KYKAx847RNZeOJr1R+9fEYill9jX6azSbD25l/FQsLUX1sdZxiV7g4IEa
         LbgT/9y7Kc8nkM8LC3ZrQ4IrBlkmSr4Oba6ciC4kryg97U6bWnDrGENmgm4Bb4hS6CPu
         Arp/9RfgWXz2efcB94KiutVTHJdoufG1AcZbcQMvj8LX9tX1cbnRk8D7Yb5IoMoEWGJk
         H1F141LFnb4rknF1OFVIhEXIM3ikoB36Tb7SIYgyAHha1rqrfAoIwg2BVG2W725dsqNq
         Be0GD5mYERulDnW99xOxQ7W2LjFCjsVEUZjlmGzo67aOMMTZPT1qmzabRoIgUKKXBiP/
         8j9A==
X-Forwarded-Encrypted: i=1; AJvYcCVmN4uMgTO62n4u2lVhu31wSAfL5MQU3FbopPadM0mbe9V95lo/hfOpFZ0qTC72mgWsP0NvGHpADFFT@vger.kernel.org
X-Gm-Message-State: AOJu0YwN+Np+qUrgBfBaFOp3bI/HyuS+Cnk23Je1W/3folAJ9RSZ+3c8
	5nG00uyAwBFh2XBz0SG1EwZ3EHQQq9KwJA9iFQ/iMB8AD2TOKr9UtUDoB2U2qHE=
X-Google-Smtp-Source: AGHT+IGh+ma/pDYE5JTblKic8FYEZIZs3cBVq3pZSkJNz2OYaJhHpAd8lsJ304fSaLV+gwT++zPF+Q==
X-Received: by 2002:a17:906:c108:b0:a9a:a32:bbe4 with SMTP id a640c23a62f3a-a9e654910a8mr1772430266b.12.1730881168184;
        Wed, 06 Nov 2024 00:19:28 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:27 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	stable@vger.kernel.org
Subject: [PATCH 06/31] ASoC: sh: rz-ssi: Terminate all the DMA transactions
Date: Wed,  6 Nov 2024 10:18:01 +0200
Message-Id: <20241106081826.1211088-7-claudiu.beznea.uj@bp.renesas.com>
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

In case of full duplex the 1st closed stream doesn't benefit from the
dmaengine_terminate_async(). Call it after the companion stream is
closed.

Fixes: 26ac471c5354 ("ASoC: sh: rz-ssi: Add SSI DMAC support")
Cc: stable@vger.kernel.org
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 sound/soc/renesas/rz-ssi.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 6efd017aaa7f..2d8721156099 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -415,8 +415,12 @@ static int rz_ssi_stop(struct rz_ssi_priv *ssi, struct rz_ssi_stream *strm)
 	rz_ssi_reg_mask_setl(ssi, SSICR, SSICR_TEN | SSICR_REN, 0);
 
 	/* Cancel all remaining DMA transactions */
-	if (rz_ssi_is_dma_enabled(ssi))
-		dmaengine_terminate_async(strm->dma_ch);
+	if (rz_ssi_is_dma_enabled(ssi)) {
+		if (ssi->playback.dma_ch)
+			dmaengine_terminate_async(ssi->playback.dma_ch);
+		if (ssi->capture.dma_ch)
+			dmaengine_terminate_async(ssi->capture.dma_ch);
+	}
 
 	rz_ssi_set_idle(ssi);
 
-- 
2.39.2


