Return-Path: <devicetree+bounces-96804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B71295F82A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 19:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E4A56B22884
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 17:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774A7199221;
	Mon, 26 Aug 2024 17:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dyuXngi3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A5A199234
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 17:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724693488; cv=none; b=bVMYgUCvFXbdSUqyGFFLLAXT2YX/29oO3TN7A1Pn0xFhOO9FFSzXge0A+rVKmH49yLEuZW5IgoCS7bVdzVKWtXENHf0mvB/vNsrb4zPf8J28Fx1Oul2AyKz3GFvqrceaYNaStneWNfDV1VcOxlKbiGZtNxT10vh8v7InqOEXKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724693488; c=relaxed/simple;
	bh=wa8hgdEXE986caBdiKsZgJHWSe2gua1NABjmzw7rzLc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HLH6bF52QSf5LE9zwt9xgC92AE4/nleS8CFDjtOEwVpLBAwsSqMTI3oovdGLYR9A2Xm9r5eYNbrmtQlPyhlspPULOIU/Im3vV+eu/L0cGofvaI50/uADcktft2v4Xj7AHSrvamHyCButNC8ARt84wbrP0Nkuv6Ffmk+BCEdRiQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dyuXngi3; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c0a9ae3665so1545598a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 10:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724693485; x=1725298285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6d3SxVVUntGvoi8mj5sPmGncnkMXFV/48WyNCD8DSU=;
        b=dyuXngi3llsuw7p75qPhBCulUok0+5mQyYGwvyj/2YgJR9SACvav2RxSnIgsDX2QHj
         JBDG8Xg6HafJD6UUut/rmQZQUx7P2/LlCPkehh4Xfo+clCOc4n9enZ5H4IiJWMtYUEDw
         dvkW99ehnQBWmcLBsBAomy5HTiyyD9wjdGSz4FHfKPw1i6tOiQIgRwqgqV5OsMzUCpre
         Ampr++hyuYQtri1XE2xFcHDHxIcI8cCzYXyCUZIfdet1vOZe0vQV1m7uW8xdDDYJLat+
         DUTva1xh5USK6QOVK9FNj3V6FvhImVsxv8BeJAOgw+R5OzzRPUN82YAuo8e83DlOIea2
         RPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724693485; x=1725298285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T6d3SxVVUntGvoi8mj5sPmGncnkMXFV/48WyNCD8DSU=;
        b=Jrim7HsvKaEgvsENv9YOnvzACXz+HRX2+YWBRQobijhkxNvsJPQh0oP0nhHWuMEjpx
         B85Q2QqOVMq4oiuhmg9hLknPlGm6yh25DnTUo/d06r5m/RM9vukHsL4i8JHmpooFLnw8
         Y727GHYIzsTaiGKhLWL/O41wF7R36omyMAN1zj7O5ZkrFLyof6JgCrt2l/Cm9MbdGJFL
         FE8lJhge2uKmwrHiaSkREqUdV+8zWv3ctyFYAGhgyc0mWCWi6ZztiYwZ+c0NX/lJlo/v
         YxRTJUdm+ua7TuCas+oYyfFejR4GiNimUJYuR4j6+ilMPSo2vLA4BugMctt0tDnowvSC
         0DlA==
X-Forwarded-Encrypted: i=1; AJvYcCX0T25vuYh+lXsp8PCNPteHchb29uAav8MJlRjaRV0efo2doY+Cx1ygipFV0dXLko72bPwZ0I5WksrX@vger.kernel.org
X-Gm-Message-State: AOJu0YwcUJ5TEPgVEr0DO9sOZbfRxfoJeqXPjDA3QTn0wlh3gEOFjh3E
	MPhOZ3t7F+QldhNbzzr61eTyFt2gns2ylWERxPQUDPuPqujnez0P6x2KIEu7QA3l8ofWv39X5oZ
	U
X-Google-Smtp-Source: AGHT+IHiI9MK7LwJswgkZ/FL0mpPIWeqZWfzXau9hCH4FnmMjNmUY2ZaDEh3Ipy7eVyECcjBOCqahA==
X-Received: by 2002:a17:907:940b:b0:a86:8368:860a with SMTP id a640c23a62f3a-a86e3a4b1d1mr13656666b.35.1724693484699;
        Mon, 26 Aug 2024 10:31:24 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e548781csm446566b.28.2024.08.26.10.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 10:31:24 -0700 (PDT)
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
Subject: [PATCH 2/3] clk: at91: sckc: Use SCKC_{TD, MD}_SLCK IDs for clk32k clocks
Date: Mon, 26 Aug 2024 20:31:15 +0300
Message-Id: <20240826173116.3628337-3-claudiu.beznea@tuxon.dev>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240826173116.3628337-1-claudiu.beznea@tuxon.dev>
References: <20240826173116.3628337-1-claudiu.beznea@tuxon.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the newly introduced macros instead of raw numbers. With this the code
is a bit easier to understand.

Signed-off-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
 drivers/clk/at91/sckc.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 7741d8f3dbee..021d1b412af4 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -12,6 +12,8 @@
 #include <linux/of_address.h>
 #include <linux/io.h>
 
+#include <dt-bindings/clock/at91.h>
+
 #define SLOW_CLOCK_FREQ		32768
 #define SLOWCK_SW_CYCLES	5
 #define SLOWCK_SW_TIME_USEC	((SLOWCK_SW_CYCLES * USEC_PER_SEC) / \
@@ -470,7 +472,7 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 {
 	void __iomem *regbase = of_iomap(np, 0);
 	struct clk_hw_onecell_data *clk_data;
-	struct clk_hw *slow_rc, *slow_osc;
+	struct clk_hw *slow_rc, *slow_osc, *hw;
 	const char *xtal_name;
 	const struct clk_hw *parent_hws[2];
 	static struct clk_parent_data parent_data = {
@@ -506,19 +508,19 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 
 	/* MD_SLCK and TD_SLCK. */
 	clk_data->num = 2;
-	clk_data->hws[0] = clk_hw_register_fixed_rate_parent_hw(NULL, "md_slck",
-								slow_rc,
-								0, 32768);
-	if (IS_ERR(clk_data->hws[0]))
+	hw = clk_hw_register_fixed_rate_parent_hw(NULL, "md_slck", slow_rc,
+						  0, 32768);
+	if (IS_ERR(hw))
 		goto clk_data_free;
+	clk_data->hws[SCKC_MD_SLCK] = hw;
 
 	parent_hws[0] = slow_rc;
 	parent_hws[1] = slow_osc;
-	clk_data->hws[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
-							 parent_hws, 2,
-							 &at91sam9x60_bits);
-	if (IS_ERR(clk_data->hws[1]))
+	hw = at91_clk_register_sam9x5_slow(regbase, "td_slck", parent_hws,
+					   2, &at91sam9x60_bits);
+	if (IS_ERR(hw))
 		goto unregister_md_slck;
+	clk_data->hws[SCKC_TD_SLCK] = hw;
 
 	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 	if (WARN_ON(ret))
@@ -527,9 +529,9 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
 	return;
 
 unregister_td_slck:
-	at91_clk_unregister_sam9x5_slow(clk_data->hws[1]);
+	at91_clk_unregister_sam9x5_slow(clk_data->hws[SCKC_TD_SLCK]);
 unregister_md_slck:
-	clk_hw_unregister(clk_data->hws[0]);
+	clk_hw_unregister(clk_data->hws[SCKC_MD_SLCK]);
 clk_data_free:
 	kfree(clk_data);
 unregister_slow_osc:
-- 
2.39.2


