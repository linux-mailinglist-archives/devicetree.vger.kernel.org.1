Return-Path: <devicetree+bounces-177094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8990DAB66C9
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 11:05:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 796C97A6B3F
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 09:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E72C2253B5;
	Wed, 14 May 2025 09:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jtUDPFa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9E2224240
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213467; cv=none; b=fNhcY9wyov1eW0fI65qEl6KeUDYscpPHqVNyKMmrCSt/bR11JMC/I6miOkKmHitgjWB7RCRGaLvD40o1iJIFOPR6YBy13YBHZh8nMdznjqtfJ0t+pC8nZwpIcc2XRldTLVj4CdcODR1rf+19U3xXz3c1zEfuwyDLjyGOfA/J8y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213467; c=relaxed/simple;
	bh=JnHdWEIPeM0wK2Ula9jh9MnaUM824531+Pq5OYIHFp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k/MCb7a/LCk4aWeogbhdKrR4sZUpdJxHFDjE5edpoWg+0gzb4i5MXBTluLfqUmYyz/nY8kR1W4ZMkr7BAUslkoUmqXRniYMkA7+/U6Mvow1ilirezNcfrmCju8oTGR3+aDxUuq4rg432NuCpEHOlx/blG2XogzMNeyFq/jVUj9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jtUDPFa/; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a20257c815so3595378f8f.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 02:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747213463; x=1747818263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7K4j572MT7sI790Ze+eK+i3Uz5b16gmlTqgWUGftrXM=;
        b=jtUDPFa/9Ql69jiYYVOviU7HYphSdOgrCUe+jrgzlzBI3DsL5reLSyvmAYj02UuQWl
         dTSujW6NhFwoLVU1S+/sqvYAKAFHx8jYRlpl+21r2meNs3a/52PvCqWkysXdLtUS9cea
         E/Xfv0sd9348LKvdcnHBTTALf2xU/P2eNPfq7mx6IvWp8l043q2P+C3wOGsKaC5szH9Z
         RdyL1HnUAUM5lHPux6WCw1yW2qJsPogGWhBCn1K5WY7IjRtxjOBpC6t/sdyjIzUoDrdA
         L1qvusUJkBobl/S8V9mVeFi3ZDeGv2SGyDdLAByntSQVSEcmn1ee51jhfSGszs1vM2AC
         wosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747213463; x=1747818263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7K4j572MT7sI790Ze+eK+i3Uz5b16gmlTqgWUGftrXM=;
        b=E1trfWTZ7pCHL36W2T1DFl40Am4PyZnb3BRms7irKGTqodOuvD2R9SfOzglEWqYZ1q
         g/xRJhl1mi5Fj0let9TrItIlbMuvd4sGZorjEIDSdhVGCSrz9toaFTOGtpw3sklEgV2c
         bwbTFSvMg8rx2xXRUmPVPotGlJO8xD24+jRv/PNYsmjest477Oir/ky38HzOoB2E9sfy
         rK8Kw6f13lO3KMF19EVlZPI1LgEH+mpozVntgSriwxu1JMYRsySwHk1H/JlqYT20qKPR
         DdAWidg7/+Xs/BxQFaZLg2Ql9GNIJj9oTO41Iw8TmozQDDoD5gXIXWZ2VWQqy4A5XLP1
         yvRA==
X-Forwarded-Encrypted: i=1; AJvYcCXy7WO5x10gXeM8QOwcPSqDrTZHS17NoZS9NMy3D8Lqoz2v5I0zuqBxgRP7ycVFS5m4C/rx0pSpBkMU@vger.kernel.org
X-Gm-Message-State: AOJu0YzmJTubKl4MrrliLEkOrEMZv+FzVX7hsP0Eh3dS+Kl4yfhEd+U5
	cM70q0M+0hYLS3ur11JV3DPqJyQEibS16bDxQuhoxmV+GV5QaV/pReIee3pErao=
X-Gm-Gg: ASbGncvIzZnHDyb6Estggs91EYC4mgzI0msSRc9vBgB+9hNJVuZGqVzy/Q0mU+tjC9I
	p5juw/1xjYV6YeTn2cfHxvOyzOg0QMluQB3CXd+5F2DN/BcRypWCBfZ5Sxr2W0xpFw0xsOudtmB
	01VexMCPZ1t+C2aJoGvsL42VZshS/4ArNlzsz/pMpvdr06G0/kDPvVkZQmvMgSIV07VJdRWA9rd
	J/h+hVNL+Z7N27C4qtjletUAB4HNF/xkrh7botVnnYxDaEtCn3PSEFbeGCMirtJ1eOIxl7Mn99Y
	mKt7i8EppOTzY6jGoAvx3sCLQ5Kkczx5Djtv0D4eBFSvMTE/jbfzpV/hd8BU7rc6lI2uq7fz5lq
	byI2c
X-Google-Smtp-Source: AGHT+IGdaeJMKgGTg/Sc7hL1ltOR8m+B42VrjYSEhJIqNaP+mgKdctUxgZHq2QuUEOmWT9ML+hI28A==
X-Received: by 2002:a05:6000:2503:b0:391:3049:d58d with SMTP id ffacd0b85a97d-3a3493d7b80mr2348215f8f.0.1747213463319;
        Wed, 14 May 2025 02:04:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57ddfbesm19286561f8f.10.2025.05.14.02.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 02:04:22 -0700 (PDT)
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
Subject: [PATCH v2 1/8] clk: renesas: rzg2l-cpg: Postone updating priv->clks[]
Date: Wed, 14 May 2025 12:04:08 +0300
Message-ID: <20250514090415.4098534-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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


