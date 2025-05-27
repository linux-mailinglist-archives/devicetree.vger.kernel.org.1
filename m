Return-Path: <devicetree+bounces-180780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1603AC4D24
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C294E3BF61E
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1796F25DB13;
	Tue, 27 May 2025 11:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="M+Iei9aX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE0E25A32C
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748345060; cv=none; b=kbVEKpSIDZQb2xHUWIb2FOyHTSKzBGRB8o8agrHJCdik8UGG8hZ6NvrGGH7z2BIXlLuQPpIOlC/LwO59qdtwQ6gfGqAU3rc8XqhoD8s6Dz+HSe0WkM9ASg2GrEuvFYj6GBBZ33Y1XU4dAyMRqbZAQDyBIBYlV9GAX0FJ2dj5hpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748345060; c=relaxed/simple;
	bh=PcZ3HrcegfnXqs3zq2KhUtyO7SNQPGKEOh8eL3A9+lg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YDWJ4QhV7XyiBWBmi6T0sWejH3meS3qEWIIhu4NIShLh8tkkTuayAJ5kho2cC+jegb4AJHZosr9R9DlCQ6jgErpXB0WifYitj5SUZg0gsNpgtlfJxjngM+7RRe7fXd6JSGK3Z2xPqxWblw+5y63/Zch1Xblf3zj6F8RVgoefZf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=M+Iei9aX; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-acb5ec407b1so541849666b.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1748345055; x=1748949855; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hDUY/udCFbCQ/CxzHCrSVeL89fSktFtkiZrjui4aduo=;
        b=M+Iei9aX+uPj/9YBtlwlzLDtUdKJgKpKQGWW5jWhq5Y+tNFOjLFDZJ+vTQOP/G09se
         I7vdHGsY8wEm2XFe5Erchvl1lL96HV7nBTjgbEMAfSvb6qhC7eJVVmqqwjQOT+oJAAWa
         ckongLEym4348QLaeyfgNUQaifMXNLNfcY09IniINPk85QJxh4HkvrQqxvuc9WOFq5Re
         N3mtmvSsmdHH8slxgmihNQQQzpb+ein65MC5DcIwC4zHoaCrx/OCoGnKNMNcBAFtsLjA
         7zqfCHcB7CEqjW/vpuzbi18EiQ+aufhz0UHmd9Kyplmoq+Y+tRQyVM3NlURTe8YEa9+O
         I73Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748345055; x=1748949855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hDUY/udCFbCQ/CxzHCrSVeL89fSktFtkiZrjui4aduo=;
        b=G8HdDbqjwCAk1Q0AROFPpoaxCdZPUDxThxtsbP2a0KNF7d+KqzPmwqdJ+Z/K+tJUHD
         nmmhLcbwOL0+MoWUdntg1Yle3O5RBKayvgVBWSLWcvyb5iaA4ao2eMz7w5anaTTb56UO
         mBa8C/RgS2xGp7bgAbvtRJNHMlzDoM6RdeYgcfvEkPn9l1FLcHNICmHL4ZN67k9Ukda9
         huzVch31/n2nsmA4shuCW56NBWFn3ZEsU64UfEBV4Z84R+BtWic/ilAIyBRkvpvXgm5A
         dWd9fnA09XuvwDODk2w7l5lc9KyQDRbW1bxZ0eX8m/8vuda+fFfYYuPiAbc3VCdk+3CD
         CQnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUe3hvBJqDoRB9mXji4zsUC/WzxlmUUoZJ7OjYpIXtVYuVmH0rSUMhHcl1M0J/sGMT0ld2yVpi7tkcG@vger.kernel.org
X-Gm-Message-State: AOJu0YxKr5SoysoCmFFk02VI20g0psXYeKKZE1Ir8hZc+ZVY4QC1TU7t
	wQ5ke1oTENEXEBrp35kXjksu2OWWlfD0L548WUN8l8gbEBPyP0OC3BiNbWjmRdKcrJM=
X-Gm-Gg: ASbGncsHiHCxry7TXda2LxSXmQ7sBBM4moKWukECMLhLO4IJMlxqFrRkg1HYJCyGKkE
	kIEA+eYeo2nqDpD4kMrbXOwJdsHKkq3s+WzJU/l0XSlzNhDqldvr4/8edyk9cYJoLeYHtx8EAiV
	WgCrxz2OhR+s/z2cVtPMfu1pxtFXNoPvOTJKz+UuenGlw3OpTtwh8NydfqXhIAmaBKWknJD6z49
	qdqTHT80rHKzAbcmguUeCjgNfdet6mOIGiuh+ph7l2xbDMrJw8KhvOIxBQwvjxWyIPG7mZ+fd/o
	YDu02GuUQfOSxaYFJVvb5ZANcVEq2HNL355/qCzUEt49uEfOjtECV+LjlPnv3h1ppr4VpaxPLGS
	G3M3j
X-Google-Smtp-Source: AGHT+IEapw+oDUNYJWzRpbqivOuZHluFTkHfFwaB2YzuwZtTgF3IVbvJeRzozPCVZmCAbTiyVocwyQ==
X-Received: by 2002:a17:907:3e9b:b0:ad2:2d60:24a1 with SMTP id a640c23a62f3a-ad85b130284mr1127859866b.11.1748345055154;
        Tue, 27 May 2025 04:24:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d438403sm1807297466b.123.2025.05.27.04.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 04:24:14 -0700 (PDT)
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
Subject: [PATCH v3 2/8] clk: renesas: rzg2l-cpg: Move pointers after hw member
Date: Tue, 27 May 2025 14:23:57 +0300
Message-ID: <20250527112403.1254122-3-claudiu.beznea.uj@bp.renesas.com>
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

Reorder the pointer members in struct mstp_clock so they appear immediately
after the hw member. This helps avoid potential padding and eliminates the
need for any calculations in the to_mod_clock() macro. As struct clk_hw
currently contains only pointers, placing it first also avoids padding.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- moved pointers after hw member
- updated the patch title and description to reflect the new approach
- collected tags

 drivers/clk/renesas/rzg2l-cpg.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index c87ad5a972b7..767da288b0f7 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1185,19 +1185,19 @@ rzg2l_cpg_register_core_clk(const struct cpg_core_clk *core,
  * struct mstp_clock - MSTP gating clock
  *
  * @hw: handle between common and hardware-specific interfaces
+ * @priv: CPG/MSTP private data
+ * @sibling: pointer to the other coupled clock
  * @off: register offset
  * @bit: ON/MON bit
  * @enabled: soft state of the clock, if it is coupled with another clock
- * @priv: CPG/MSTP private data
- * @sibling: pointer to the other coupled clock
  */
 struct mstp_clock {
 	struct clk_hw hw;
+	struct rzg2l_cpg_priv *priv;
+	struct mstp_clock *sibling;
 	u16 off;
 	u8 bit;
 	bool enabled;
-	struct rzg2l_cpg_priv *priv;
-	struct mstp_clock *sibling;
 };
 
 #define to_mod_clock(_hw) container_of(_hw, struct mstp_clock, hw)
-- 
2.43.0


