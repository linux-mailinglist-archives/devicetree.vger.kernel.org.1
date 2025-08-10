Return-Path: <devicetree+bounces-202982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0B5B1F9E7
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 14:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 591F73BBD82
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 12:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280CE262FC1;
	Sun, 10 Aug 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="YbKEMTE8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2A625F994
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 12:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754828513; cv=none; b=ttzjlYi+jJh11QgQAPiZdAx9RhMVYTzsZ5Inxt2qMW3t+KN5ANmXl5AqCdEbQwXksQgwyFvTpJ1LSd6edCOalBX+GuAALfT2td8eib7PVtVjLO+l9Sh+OyDAZQHgLXucaCdTWlp+42WTCUmuqpn20dFnVVR/OFdbAQ3AIjYjAQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754828513; c=relaxed/simple;
	bh=WZSwcNr+pcS2CFvCJqEO0bTLFx2Y5UNax5ZJ2og89Us=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FwUqLX0+hgNP3rh9qt0FW2RVfxLacDiqCYjf+iQha7DI05uNSR4XsSukuXeyM/EswxVjt0fLn7uKvpEzqwLuLLEQ5T06bWjApPob0w3IxMUNvysENzoPKjZ8aAZyvxoY6ShBMoM16puC57V8zOiAqw2RUhdQa8827aFzY5+5UTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=YbKEMTE8; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6155e75a9acso5569233a12.0
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 05:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754828510; x=1755433310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IdKoLiN4BRQR4DmjNDMMqfI3cdNQZlmAjUao5oPGRe0=;
        b=YbKEMTE8gIFdGyrqJDxqYur0LPFpXattN2f7+5jnXvTdloPFNqZn/mo9FJjYO7rScZ
         cwPavncIccB673ocrJlCz2NVyCCXlZVVfAOtY8YHPIxoxvooWPz6rD6IMeCteT6R/9ye
         ch+Qh1ciHgDEs1AHNR+oZpwpku7CwizYTk1jhGWIZs54ZgZ9juqJuX2wIAeUaRLpzN+j
         GwAsV04FvuuXA5qyyzHEeHzb4ewQA2gPPgPJhB26qT/jsW6iGo0CevqBttADXfaUfoCd
         4OkoA2t6JhnnnmLBrxpi2/F3vvzfWW1IDELqx0iOaNhTGMh5X661S38klfkZbASwgmrD
         lKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754828510; x=1755433310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IdKoLiN4BRQR4DmjNDMMqfI3cdNQZlmAjUao5oPGRe0=;
        b=Y/+NksM6yqAdoRodb1bjkrk46XfOt/8MiK45CMR3jduE2YRJCGNs2u2KpJ+dYCR5o0
         zmvD/erLTaC5td63dx6EMzJ+NTBxJAcifiyW86mc2AtUOSna3hItZjjmImPQ8HZ+CCQF
         pQi2giU42BQUX7VsswgWdqvyKv7oVzd+zuB1CQdVT8kC8TaqPjTwQoOUu8oLKvA1DbGZ
         X0FD7l5Anxy7APLFoL1wqGJaB/9k1GIdZ8YMT/gxbL953Z0nD2D2ohAq+ltOIX1G+AEe
         JXyQXYUZh0XGfgWfIdZNP8YvPp6muKX3/VqFmSMPrMcaIo5qFxxn0fa6h0nbWKcHx/If
         izLw==
X-Forwarded-Encrypted: i=1; AJvYcCUhE5kabhv723xtx/sdYUNUuuds3ZkI7pwhmsFAvnlzQmsjimTD+Tpw2wEHsKjgmmgBpfIDO/GcRI2B@vger.kernel.org
X-Gm-Message-State: AOJu0YylwJhe6BHWBZL4KLPBcZ0V0F4b171GdN5vOXzxuvgfkect5QcJ
	maPzbjZDZBK31XYffxPssJG0MvIkFCyYPrKO8m81O7OZ+q07ijtzJm7j3dgLwkk26nI=
X-Gm-Gg: ASbGnctUGxu0pN4JVxfTr9JQ9GPCZbs7U8kfgds1xoaXNruME0YWQu7/MEJm5Rfa0rG
	EEtvz35fEc8F8C4e/nHjdJINjHPnqDN9GvjEghhaBCnhMZ4OjyB8MK0m6Vcfvh4MXpQAeIlrWD7
	9M0VijxnLnHa2illBVQ+tV4kEqKXSTq/gFr0DqbgybReLdMiDYrvgUGveKg18jQ8Ub+lvwefSf4
	FNKjFDA0TQ588J9fTlMztNFvE5M5fjpVvKxiXJTY/Iw79OfS+pqqXp7ZAODFLtaf+cdGzw3pD5b
	1rySggm3HCGNaSv9y8LBKfvV5sR0myZOCjWPB99FsyrzXPUvSfju2EmQ0HWfWSWNdh9dyoy+chX
	GEWHIcwJayw07gSgZ0EcNfPG4/Ejgp4hb+Ga2sNFQ7pDoYN06CZUp
X-Google-Smtp-Source: AGHT+IG1VR8s9CUfGvRNrN+MgDdRWdkJbvcTgCrAzRGDjCO8ytytK6dbDH9qosonfYZ+QdH1pck48g==
X-Received: by 2002:a05:6402:13cc:b0:617:c6b1:70e4 with SMTP id 4fb4d7f45d1cf-617e2bd993cmr8435556a12.15.1754828509709;
        Sun, 10 Aug 2025 05:21:49 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a86758fcsm16611897a12.0.2025.08.10.05.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 05:21:48 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	niklas.soderlund@ragnatech.se,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 4/4] arm64: defconfig: Enable RZ/G3S thermal
Date: Sun, 10 Aug 2025 15:21:25 +0300
Message-ID: <20250810122125.792966-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250810122125.792966-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250810122125.792966-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the CONFIG_RZG3S_THERMAL flag for the RZ/G3S SoC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- collected tags

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366c..540e85a0c676 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -728,6 +728,7 @@ CONFIG_ROCKCHIP_THERMAL=m
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_RZG2L_THERMAL=y
+CONFIG_RZG3S_THERMAL=m
 CONFIG_ARMADA_THERMAL=y
 CONFIG_MTK_THERMAL=m
 CONFIG_MTK_LVTS_THERMAL=m
-- 
2.43.0


