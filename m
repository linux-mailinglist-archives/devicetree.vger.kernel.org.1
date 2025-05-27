Return-Path: <devicetree+bounces-180779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC6DAC4D20
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23D5B3BF380
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F0225A2C4;
	Tue, 27 May 2025 11:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j3+vslsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29113C30
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345057; cv=none; b=k8ZwJvh0g4re4rkhrwdCHFYGjzP5vtYtN1x9wiZ3XnnB/wq0YtR4w6RzWNlCU3OoQ75FeA23Y7NlldGn1F6Qy/EA6UlzQ+sTvNdrVmU9Jn2aA6yqq20t8e78gaTi0lPrRf1bnhYYyZONztGmgiLGynmJg30fao1B9u78VU1ZTuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345057; c=relaxed/simple;
	bh=ySv8MiicG70yIYdWD/VWDHOvRt6DoXeDwWbcOVt2NPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ryLzdEaG2d+aE/oppDYxjf+Xyx6lVRVfZkf0nUTjn8qBD7LaPlA6NsbBvYdaZSeH+C1qV0B0ivsnwQ17LgaWvmg7XfdnmKhSYcG+uI+0HEz9gB3RFYFJUwIfp6dw4BC3NENT9KpEH8SZjG3UWGLLOtOfZyWWDjxt4Mm7kBanCfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j3+vslsy; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-60477f1a044so3269014a12.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1748345053; x=1748949853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9jQMddyz/b9XXlkxpzbvlzuW6mWfFvIUAfUlht1RCuA=;
        b=j3+vslsyH1dtFNBODGdVCCgWnY3MUxuhLPYUAaGWlBHlt5ChsZ53g7hABUkP0piTub
         +HdNhwBushnodlSCxAqfFXZasHfgNgxB/TsUIySrGl5Fce2GlwlifXZHJAcXspGXhQgF
         iS5eN1GNAAfxFjAmyGqu8Si+35YipzUJb1ZHBGtOEgLOwdIYjKXXfa1c2Hnf8T0h8Kew
         O2QT7d5rEwEhCUNE8Ke4eIoSL0p6aq7BgQG5FZCfx51lTqcloS/Q2N15e2P8YoY62FWe
         SALGWm7tz7NkQViI3A+UjE0Sr8chvrGeIOI1ujq37/cagkG3SxSWUNfUXNEApluz5Eos
         LKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345053; x=1748949853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jQMddyz/b9XXlkxpzbvlzuW6mWfFvIUAfUlht1RCuA=;
        b=Hh/TgfAX++8bgOmKBA9yTf9Nyqb9ZcOoJJ2z4uyI11YW35J1Wk9h3drdkPTt37EEfs
         YHEZyEdbHAC95zwcAhiT9uENZu3Q5Wb7AyFMjzMoCPQe+1Zyjq5mxmPHI/aIys+HgC8f
         lEnNkZEPGbnQfTSJPNgfXnb15VMw/ihNGO2YTYqIL4O30lKIcT4bymIDkkkaeCA3lecD
         qOqDOdd9WxPPQGjRVMtzRMUqH3qQiw0X0uJ9FnHwluPOsHBN3SpbyidZDI5HZwrNMXP8
         oSjOZ/XHtOhPiq+f3AZGrwXRIuyzYEtWh4uSmdDiBsUDPBuOiR5v1OltqtS5093napA+
         j7NA==
X-Forwarded-Encrypted: i=1; AJvYcCVxHsmkOQC+RDbuqKbwtOemnFQKN5u2NrJoYgoZjibOATAlfN7nD7eJqeorPrLXnRndxEUJ/7ILquWF@vger.kernel.org
X-Gm-Message-State: AOJu0YyucpZFB7lhgT4pXbewZrIqQCQLE6TXUsFu9v0oTqpbGYyZH18A
	g1p+/wmSyluTxhRJlt4iz/8ZELX8vYrOjQMepZgzQv+LPR1BZLlE7g30g/2clCN2V2g=
X-Gm-Gg: ASbGncuts0P5/fi8q19elpjFx7PWcoM+8DOLkSMSRDf9rb67PULGHxjxKVqDcPXt/rk
	vr/MQCdY5ZJvFfTiitM29XUNCcbPDLfN3ypaSfk1Jq6gg+ujPKRJFBbSio6n6yGYpdOjZ1D+iFO
	qU9besqnmGACcnlpfDqigxfq+wSEH4ANX7/zVN128VHuK8M4r6J49lkftpCUcrr9gf7bVxWbCL1
	kkOm2nfWa48dmRht8SU88xTOlZlYewGzYSpngBDM5lVLeOd+5RBsZZb3UBWeviJtnkAm8XVBZ9b
	Yg0xp6iMnRxlSIuGfrpvs/wQ3edrTxGodtrRsod+A7rMsGlX+5TRiKlfFYTRLyzXmF5kIFZuYX+
	QW7//
X-Google-Smtp-Source: AGHT+IF5akmMqw6CEUbR/QQ6FymHHooQEWDKvO6sDDOO00kXHdchwWD6GzRsG/MefjnDhLywbLaIOg==
X-Received: by 2002:a17:907:869f:b0:ad5:a203:b6ba with SMTP id a640c23a62f3a-ad85b22bbb6mr1281210966b.43.1748345053131;
        Tue, 27 May 2025 04:24:13 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438403sm1807297466b.123.2025.05.27.04.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 04:24:12 -0700 (PDT)
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
Subject: [PATCH v3 1/8] clk: renesas: rzg2l-cpg: Postone updating priv->clks[]
Date: Tue, 27 May 2025 14:23:56 +0300
Message-ID: <20250527112403.1254122-2-claudiu.beznea.uj@bp.renesas.com>
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

Since the sibling data is filled after the priv->clks[] array entry is
populated, the first clock that is probed and has a sibling will
temporarily behave as its own sibling until its actual sibling is
populated. To avoid any issues, postpone updating priv->clks[] until after
the sibling is populated.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- postpone the update of priv->clks[id] as suggested in review process
- updated the patch title and description to reflect the new approach

 drivers/clk/renesas/rzg2l-cpg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index a8628f64a03b..c87ad5a972b7 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1389,10 +1389,6 @@ rzg2l_cpg_register_mod_clk(const struct rzg2l_mod_clk *mod,
 		goto fail;
 	}
 
-	clk = clock->hw.clk;
-	dev_dbg(dev, "Module clock %pC at %lu Hz\n", clk, clk_get_rate(clk));
-	priv->clks[id] = clk;
-
 	if (mod->is_coupled) {
 		struct mstp_clock *sibling;
 
@@ -1404,6 +1400,10 @@ rzg2l_cpg_register_mod_clk(const struct rzg2l_mod_clk *mod,
 		}
 	}
 
+	clk = clock->hw.clk;
+	dev_dbg(dev, "Module clock %pC at %lu Hz\n", clk, clk_get_rate(clk));
+	priv->clks[id] = clk;
+
 	return;
 
 fail:
-- 
2.43.0


