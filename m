Return-Path: <devicetree+bounces-166886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AD49DA88C0F
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C60DC7A88B1
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A611428DEF6;
	Mon, 14 Apr 2025 19:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gJfqfxuw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E8D28BA89
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658246; cv=none; b=ceIZbhqR0yRz2TKRykMtqtXCPWbOm2k9xw54ltfpEHx2vbHhL1CJEA4zlrUQHyW6zXPUEV9wnnYS1i400XlqoYrDudujD3luMzyvxCgnes4J2AwnNolErjNCoTqhidPzjg0Ung7qebfEcf4slX+TPIsoE/pYdMpu+vm2mzlwbwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658246; c=relaxed/simple;
	bh=EAW+HDTqn4JOg/LwTabgEKzUOriy6DOvjcW5MZPwhWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TgFVBJ3wvjJw9KBP6WDLXwU3oy3o1c/Ud2286qx9U/Q03MoUprvdKvvzbVzxJwXvpiSuJd3/o2k4pN2M4AA+EdEzikJizLhxSvyqoApBgtLvwIMJ//5hCThOt4sM4dGSnAwonqptfAy3B1YsctyvxrU19d/egXdhQqSSh6PTXUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gJfqfxuw; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-85d9a87660fso407896839f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658244; x=1745263044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQupJEb/nO7YYkb/BsP/LHrq8C6tspApeBZ7h7HnR4g=;
        b=gJfqfxuwowCWsuKqeuAdkMSHl9bb8j8JZm9q4bFVYmzeyjqsV1AC+lVzKfWTOZXgnx
         t/QV5zuJ65z5pBd+GJTh7kPD8dQvIabPvOBbOCKrD/xIPZFaZcSCOwdaUP6mcbW2Z9km
         FOD6ZGCLJPltcfBiSzBt7Thvk4MPQVU2VZcMCFC66fraPhW5h2QzqYl5yHxzUaSvk/Jy
         0FKlCVh86zTXbkl9OV+Ene4wK9F66jp7wryNIWYl9affzYaa+sOuTobe1i8kXfjqINZU
         /QRnwkCec5BcYogPKHZVoIsy+2fJSiTXY5m2/ct6toJqp/IAithIxfwZnuh5p7QtGjOL
         jmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658244; x=1745263044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQupJEb/nO7YYkb/BsP/LHrq8C6tspApeBZ7h7HnR4g=;
        b=X0N/Wakh6R54OVeoUp+lWma2kn7bADhFmkQ84hvrYv6VVxu4V8qVextddHGTsuyy0a
         Nk2bUbzLJyQOTxZTNp0aFYSRlz0tfROWuhgQ7YgrMKOjeO0hTuo0UM8BhJU3q27nh9r+
         RYRQUI0Ddr3spMiN6iXqy31Gl+PXIFbCh+e6JC/GICHwsBbRxKtj3B5bKU7PtvTxk/on
         uZ2xazmdNwqBf/opdGfZ5g9eUZ+gQcMpuyftZwgwMPQkgCB1s5kvVY2yQm/oXTYFhwpa
         njXKsLej8jQ27Q5kI/Fm5buxuAtAUo1GwMWNBh+S7B2aqNBr4pz5gQ4o1mPgx+aetY+Y
         r3lA==
X-Forwarded-Encrypted: i=1; AJvYcCVcTtEZoZmAIfaGu+BLOx88mt6XDPQZlCy1lcUG4kl2hMLcuE/2zs21pX8quUEh0UJtv7uLfSQfgSEe@vger.kernel.org
X-Gm-Message-State: AOJu0YxTQcseLkquOZMGzDVtc3/Z4NZaIdY7VQyjiaYm7xYsJIkWH0tf
	p+G1WKkuSwuHNcfJ2FYFoLItwKXXloaKR0IfdaWlyF1CjhPey9Kp6iw+yTE7oWU=
X-Gm-Gg: ASbGnct7S6Xa4ufex3k4ME26MRuwca+vTy5I3si4DLKA5cI4+lkiIwaSZH3vrhVkTO2
	V9OZaFQI9nKCd6TD3EO6sowThOwZ86ANZRXUiSdswD1NPhOnG9Sg0RURIFS9fS7QLuGrHGSs1Tb
	QDa62IewFpgzpNo3+OLyaPBNHlwCmbn5WtvScqYlWnOiMSx3NXKwNFVTSL9rprVH1yuVuQ9ht7V
	EmWCnVbNlSJZDCe5y8wO+K4CFcEScH4U0H05iWHTXxsoUwteOGIAPZxbQTm6uQgEwt2l3rrxSXS
	qU7KeQx9OAdUJADAHrq8aZYyHmz7wEx+Zs1eIN62uqGn3zTdSzdXJ4GjJF8b7ZWt6XScv6KwUin
	Gljs4vIjgHSl99YSXWhJqHt78
X-Google-Smtp-Source: AGHT+IHzgkKPo3rteT6o1FQjeZVctNmK9CtfxtQBm7TMKIVPM8zC+qltuaZQi09FYGKSfneN1EH7HA==
X-Received: by 2002:a05:6602:4145:b0:85b:3885:1592 with SMTP id ca18e2360f4ac-8617cc32960mr1403266539f.10.1744658243876;
        Mon, 14 Apr 2025 12:17:23 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:23 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/7] clk: spacemit: rename spacemit_ccu_data fields
Date: Mon, 14 Apr 2025 14:17:09 -0500
Message-ID: <20250414191715.2264758-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414191715.2264758-1-elder@riscstar.com>
References: <20250414191715.2264758-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "clk_" to the names of the fields in the spacemit_ccu_data structure
type.  This prepares it for the addition of two similar fields dedicated
to resets.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index a55957806db31..4db91c1b1d280 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -130,8 +130,8 @@
 #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
 
 struct spacemit_ccu_data {
-	struct clk_hw **hws;
-	size_t num;
+	struct clk_hw **clk_hws;
+	size_t clk_num;
 };
 
 /* APBS clocks start, APBS region contains and only contains all PLL clocks */
@@ -819,8 +819,8 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_pll_data = {
-	.hws	= k1_ccu_pll_hws,
-	.num	= ARRAY_SIZE(k1_ccu_pll_hws),
+	.clk_hws	= k1_ccu_pll_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_pll_hws),
 };
 
 static struct clk_hw *k1_ccu_mpmu_hws[] = {
@@ -860,8 +860,8 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
-	.hws	= k1_ccu_mpmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
+	.clk_hws	= k1_ccu_mpmu_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
 };
 
 static struct clk_hw *k1_ccu_apbc_hws[] = {
@@ -968,8 +968,8 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apbc_data = {
-	.hws	= k1_ccu_apbc_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apbc_hws),
+	.clk_hws	= k1_ccu_apbc_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_apbc_hws),
 };
 
 static struct clk_hw *k1_ccu_apmu_hws[] = {
@@ -1038,8 +1038,8 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apmu_data = {
-	.hws	= k1_ccu_apmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apmu_hws),
+	.clk_hws	= k1_ccu_apmu_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
 static int spacemit_ccu_register(struct device *dev,
@@ -1050,13 +1050,13 @@ static int spacemit_ccu_register(struct device *dev,
 	struct clk_hw_onecell_data *clk_data;
 	int i, ret;
 
-	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->num),
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->clk_num),
 				GFP_KERNEL);
 	if (!clk_data)
 		return -ENOMEM;
 
-	for (i = 0; i < data->num; i++) {
-		struct clk_hw *hw = data->hws[i];
+	for (i = 0; i < data->clk_num; i++) {
+		struct clk_hw *hw = data->clk_hws[i];
 		struct ccu_common *common;
 		const char *name;
 
@@ -1081,7 +1081,7 @@ static int spacemit_ccu_register(struct device *dev,
 		clk_data->hws[i] = hw;
 	}
 
-	clk_data->num = data->num;
+	clk_data->num = data->clk_num;
 
 	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
 	if (ret)
-- 
2.45.2


