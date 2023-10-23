Return-Path: <devicetree+bounces-10877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1E77D2FA2
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12B532814F6
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB6414A81;
	Mon, 23 Oct 2023 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oIfulWeS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD214295
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:23:03 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE71CD78
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:23:00 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso26938465e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1698056579; x=1698661379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X82FS37MpATKittBab30iZpigNPQeNpIZ7vC4jhKrjE=;
        b=oIfulWeSARbFBk5Tn2nGzAEftSL4CgvfON24Xo+SOvu/LySpcOe+jLZ6ccebBcYzG9
         zeEFoIVlVK+fr27H+vdzzdlnU2cEvT4BIm6glYWSBfjoH6ja7oHPryMB0TNRucXhXpEZ
         N5SqdOcLieansqETjXiOLitCOPaUog/MIzeF078S1i3v6XqNuthw7BXI0EZQGxKH6cjF
         7VopqMbhfKFkSFBVnDvYnBT5fx00ClgdCsnfSUIjv0/G5631Dj5h5EOzuZPOWOljIhIx
         MTzG8BbY/F3FyXItqvUDzg8ZQsMD09Iw4wamPYaCtX4XjUY/juadb4b+W/miCsRpvet2
         9CYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698056579; x=1698661379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X82FS37MpATKittBab30iZpigNPQeNpIZ7vC4jhKrjE=;
        b=W7Ovp1lI26JDoOJPBdJ6hkrS5eMAjrFa106brfG+qsNNY3LoArnguIPoMDlVCOFKol
         hTazwqfLfP6tK8xV92VoWcpMb7saj0xlH8BFxNEETVuDZ7tIK5kQD6ZyviOGw16Sa6xw
         VcKbxvVbuaYjvg62GEqJ46mbxR6dUHqQGgafZL+PhFttT9MxYwtYwRoR37FppMtd61kT
         XwxTbRAmHkHVWnrzkSEGFnl2rd28e0CnOtVy4CdAlNxkXbsMQk61OuaQOg4d7S6P2rFx
         cqBf01zNWiiByMkVkKSnUAi2qD09bYAAnPSi2Do0rmvxQxgBEBwQYoEWOKlEczCa0ir5
         jPaQ==
X-Gm-Message-State: AOJu0Yx7ifWrw7GLtJ88KjYXwKUyjaPnWaof5CMO0lFVBME2kZzqV8sL
	bD4MXC9Kvc1OednqUJBjHb5Y+Q==
X-Google-Smtp-Source: AGHT+IFljXMqxHrslhD3f5aaczqeFQBtBIQnWV+U2sbvpYvMW9byaeQIqLPtr2IOqZNiNuJ+/np7GA==
X-Received: by 2002:a05:600c:4f86:b0:408:f9ce:56c5 with SMTP id n6-20020a05600c4f8600b00408f9ce56c5mr3226751wmq.24.1698056579471;
        Mon, 23 Oct 2023 03:22:59 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.185])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b0040596352951sm13593275wmf.5.2023.10.23.03.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 03:22:59 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 6/7] irqchip/renesas-rzg2l: use tabs instead of spaces
Date: Mon, 23 Oct 2023 13:22:22 +0300
Message-Id: <20231023102223.1309614-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Use tabs instead of spaces in definition of TINT_EXTRACT_HWIRQ()
and TINT_EXTRACT_GPIOINT() macros.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/irqchip/irq-renesas-rzg2l.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
index e5e158bf028d..ce50745bba87 100644
--- a/drivers/irqchip/irq-renesas-rzg2l.c
+++ b/drivers/irqchip/irq-renesas-rzg2l.c
@@ -56,8 +56,8 @@
 #define IITSR_IITSEL_EDGE_BOTH		3
 #define IITSR_IITSEL_MASK(n)		IITSR_IITSEL((n), 3)
 
-#define TINT_EXTRACT_HWIRQ(x)           FIELD_GET(GENMASK(15, 0), (x))
-#define TINT_EXTRACT_GPIOINT(x)         FIELD_GET(GENMASK(31, 16), (x))
+#define TINT_EXTRACT_HWIRQ(x)		FIELD_GET(GENMASK(15, 0), (x))
+#define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
 
 /**
  * struct rzg2l_irqc_reg_cache - register cache
-- 
2.39.2


