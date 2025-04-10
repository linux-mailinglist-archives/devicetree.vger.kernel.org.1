Return-Path: <devicetree+bounces-165437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 271D5A845C0
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8190617D1D6
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF5128CF4F;
	Thu, 10 Apr 2025 14:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dyL5Zl5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05AA828C5CB
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294005; cv=none; b=qw6jQO43qLTYK/Uw3yHG3EV2KMYPSxN7b/HvXG840x1F+nPwTl5JLk5p4GKWR0mxZ1dbY8/wrXladuHuKglLWQ6akgWAK0M/DTIW0oh7COa/CbxJE6qlpQtfHNhg8f3IVIabHqAdH187blHIG4svKlsK9SX/4p1nusILCPbGAlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294005; c=relaxed/simple;
	bh=U9q+8HraNg4JM2K3asvu+3Dz70/97utwVQBUEVgctoI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ewk64EShWPsJZpNBQrdf6UKK1riQl3e4ItcNPM15e8xCgDTFnbGcqXXsFa4+6KUAJUY2Z8KE8yfMIZrQcK6N+cTN/qnaCNMHC0rjNUCafSrUhepp0CNM69EByxPkobg8QdDXcQyCPbnKtzldkubl93CLEySCHW890m2LoBhsDcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dyL5Zl5Y; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso9606145e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744294001; x=1744898801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzlWKmbplGkiGN2v7k/ekxq5IRTgVEaVq/S0RNAob/w=;
        b=dyL5Zl5YBj98FycXMpHoB4OXqWU1c5FJ5xlm4qw5zIwaUBkJ4g4XdNRi8bszuyNBdV
         z9GDAClWWZ1Y+Z6ZpnMBfY6cYpgK/zCKjDCZzglP7zcF/DAt+URkrAlR91pfqC5omLkA
         ARYnHE9WRaAI7B6w4F1J+hk3inoaCsAaXchYezctYzvKCtaAooBKsbz/zie5mSkwkF9b
         nSi3b/TKZRVeCDjO6V+aDY6SSvRhRNhMAkRQ+Mt5wNaqpXpkH7tSa/6UyzbnWcYqB33K
         /zmGhAbIjCdlNrcmdyrR/kHISfiaEfhQ6clICftG1wmfp+T4Y6lET0gKw3i0HKNa9nAD
         YV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294001; x=1744898801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzlWKmbplGkiGN2v7k/ekxq5IRTgVEaVq/S0RNAob/w=;
        b=TxSnYyorLD9vEu07UTbGrbN3q+wNioL2odLXUsv4mt+YSppXAxtC54mQEEldVjRiB3
         ZEswd8s6HKKytnhHGTH8fest5oRiRXBFDxHs99uAUloeyOUlNfpbOjZALSut+oaUR/t1
         beWv67RznL3HB8idWRNGRyDffcG/U/706l2XdcvzWmUytnep32U+aOmru+Xv95AaR+GR
         KK8b5vep1qUxT9sWGtafYryHiMKuxoJEN7ivZpIFqup9peuXaiP4xDAyslP6PyQAriuZ
         BDGGwa+GwqrDOmv54AFcWsXzlNw5/SE3VbMGJTpR10CX/dh2S7j8hh7I5cmmpRSJNuaE
         cycg==
X-Forwarded-Encrypted: i=1; AJvYcCV+2dwUGuEigvTzQiXC/QMBZJrIU759UPfsieG0i/FjnttQs/CJhPhI2j47OCBru5nRhvnVlg4smZVK@vger.kernel.org
X-Gm-Message-State: AOJu0YxQXZrWknVDsFynMR/SzyDwTj0GUtLYcrqC1b4+v/Ur3UNKe35n
	14zIpm26xvJrDRVvyBRB5zujZ2CHZxyFj79k1pFL/RwuYY96/UjY4G7Mb8KkAg8=
X-Gm-Gg: ASbGncuOxRBGcI/yi4QxryN06MIbOS/6X3mjjYzte/tguDpaXxzMcX2i12zshgOtzlA
	+Ms6oCEL+oKOTabY8uoafJFhYC3tmZIWdIJaHxYqiMk+/bZDAtCtYjCEHHo7moE6HaHGSm4xCnG
	I7QlPgCrRHbJlq/cghR+qejnGbO/V3XfB2GXze7iNsF37beaXomm4JaUdpjSuO16xLNyIKbKW3e
	ARzO0pFaUwP/TCBjdc7j1DL34guwWn6pqhqjuE8oeqJuDyhkRXS3nObpa6caq5gYvG2ETriObQ5
	swpgbw74WpZBDa0T4u1DNJluH5/Sy39ejXay3UXxGNsbA4biVOjA/KGpFHCBYrR/frfEXQ==
X-Google-Smtp-Source: AGHT+IHFIdqfR8VnAOPw2AK4/J46cf2SZb245hEBDTyrPiE7X84if8Bb9XtXir3NzJADmlsiOCSEgw==
X-Received: by 2002:a05:600c:258:b0:43d:fa59:bced with SMTP id 5b1f17b1804b1-43f3611175fmr5250945e9.32.1744294001198;
        Thu, 10 Apr 2025 07:06:41 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:40 -0700 (PDT)
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
Subject: [PATCH 2/7] clk: renesas: rzg2l-cpg: Move pointers at the beginning of struct
Date: Thu, 10 Apr 2025 17:06:23 +0300
Message-ID: <20250410140628.4124896-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Move pointers at the beginning of structure definition to avoid padding,
if any.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 2ae36d94fbfa..bf2453900f36 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1183,20 +1183,20 @@ rzg2l_cpg_register_core_clk(const struct cpg_core_clk *core,
 /**
  * struct mstp_clock - MSTP gating clock
  *
+ * @priv: CPG/MSTP private data
+ * @sibling: pointer to the other coupled clock
  * @hw: handle between common and hardware-specific interfaces
  * @off: register offset
  * @bit: ON/MON bit
  * @enabled: soft state of the clock, if it is coupled with another clock
- * @priv: CPG/MSTP private data
- * @sibling: pointer to the other coupled clock
  */
 struct mstp_clock {
+	struct rzg2l_cpg_priv *priv;
+	struct mstp_clock *sibling;
 	struct clk_hw hw;
 	u16 off;
 	u8 bit;
 	bool enabled;
-	struct rzg2l_cpg_priv *priv;
-	struct mstp_clock *sibling;
 };
 
 #define to_mod_clock(_hw) container_of(_hw, struct mstp_clock, hw)
-- 
2.43.0


