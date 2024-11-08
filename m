Return-Path: <devicetree+bounces-120177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC469C1B30
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:51:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 338D1283A6B
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B101E7C30;
	Fri,  8 Nov 2024 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JYHpwHmO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925211E764A
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063022; cv=none; b=IaJyEPe9COZLRr0Xm1AROg7mLFptNjTJfuCK+Hzf+c8NZCOATlvH2C6PHvVGg6bBxDkmSaeTaUWUtyIzNnUw7mtt/3n7S1day4m+oERB9/XrM1cl6csHsxnmcTqfBQKorTE8qNIobQZDyY3DooIllJGkyNq4qBH+3bEAzXszYis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063022; c=relaxed/simple;
	bh=gcbLp0EDuhXnLWcMfm7HepHAEOi/ma1whorW46vYLVc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tYWtC3fI+kDptgOPQ79RHLl46f/v8lbbjQGkd4iJFjgEhZ6Fv2WJcuhvQHR+0VK6mC+fFIcSehXf5bbjl06Pp4eQJ1hopuUB4aUbiyxJNGzRGOTRUo6XKaZ1tCLqnDGCb8xjY5qa2EGQ+fOIR93wBlY4YXlC6nsRP0K6H/yVR/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JYHpwHmO; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a9eb3794a04so275713666b.3
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063019; x=1731667819; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E9TIDVBXswiUE5qwMC9ASUWD1mYCqJbFdA9aImOCUio=;
        b=JYHpwHmO3Xe5Xq6eoP1qTEBV7R7rLrulFoSaktZ4tgiwRFL5uHzOnjbUv77xFH75ac
         35hnxHCV4NyfY1VN7Gl1Bj4Hq4cRGkG+8MsbIgPoBaQWq+fLQ2RPHGdD2xlOMjxzIY86
         gkTyhl3r8C87BmzeAxOsi9iHJdtyJKxConxafdIwYRv8eOPVeScM1PUz1uDrDIL/8wgV
         Nk6A0FXeaFGV9jT7F0VnUDdPUTb8+dFKfVRRnDUSPEyRzPTjM+kSbt8gNUmgaofHgoaY
         8Ve5W1USshjgDvKkBKDdO8r013QGy+CPEyYBiZeDTnDtekW8eYdr+UbIDBMhqDKU+v0t
         Peuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063019; x=1731667819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9TIDVBXswiUE5qwMC9ASUWD1mYCqJbFdA9aImOCUio=;
        b=Xntc5wxShER6EeX8aBtoAn+d+5Xtppd/Ginvkx8szzRP9228GSkRbTyYiVn9FvQoPL
         dtnrh1YeGiI97ddTssz/opV9ab9zW2cbuxKQmiKNNnZvSE72/Rhkm5hJCMATTZx6ozde
         bSG78P9QkEiaDgKtYq6rXFwAgWVhMPVanXuAC6vkYqgd8AGcyIfO93BacPdRfSYVaBpW
         V1YmB1L0gD0+qjv2MwL0mKY1eH+vBgxXkEAr+UH4fhDR/dz7YjM1t3RNDV/1vudAIVw5
         QVJzWuLKTIoTNqvY6VlgFn4I6pYnkSZfv6NnnomxXs86/8LUGdJnnZPYWrqPFb6Un9J0
         o9tw==
X-Forwarded-Encrypted: i=1; AJvYcCVOIws5hc4lHg5k9x4d+FqoBZXY5MMn7gFhQfI2aNUeQ/Wtm5XXaXq+JKtYA89rkxE8uJXmS4B/CB9k@vger.kernel.org
X-Gm-Message-State: AOJu0Yws2KNMfSoTKeXhfSMe6uzUe7muXPzHzuRBHzxJBqMQLB0C0ODO
	MKlz5Mh1WFVVNQ26KAlDXYhE8gf2QQuUJpAvvB0YI91PFTfTlDe8lpl+eiwzRlI=
X-Google-Smtp-Source: AGHT+IHeDcoAe/sAQtrD3IXuJOZe9XyJNaWHB16C9eW/o6XJaPaVjTfxbe6gh+mYzP09cZuV2+uATQ==
X-Received: by 2002:a17:907:6d04:b0:a9e:441c:f729 with SMTP id a640c23a62f3a-a9eefced5fbmr221846166b.0.1731063018920;
        Fri, 08 Nov 2024 02:50:18 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:18 -0800 (PST)
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
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 04/25] clk: versaclock3: Add support for the 5L35023 variant
Date: Fri,  8 Nov 2024 12:49:37 +0200
Message-Id: <20241108104958.2931943-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add support for the 5L35023 variant of the Versa 3 clock generator.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 drivers/clk/clk-versaclock3.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/clk-versaclock3.c b/drivers/clk/clk-versaclock3.c
index 1398d16df5d0..9fe27dace111 100644
--- a/drivers/clk/clk-versaclock3.c
+++ b/drivers/clk/clk-versaclock3.c
@@ -1133,8 +1133,14 @@ static const struct vc3_hw_cfg vc3_5p = {
 	.se2_clk_sel_msk = BIT(6),
 };
 
+static const struct vc3_hw_cfg vc3_5l = {
+	.pll2_vco = { .min = 30000000UL, .max = 130000000UL },
+	.se2_clk_sel_msk = BIT(0),
+};
+
 static const struct of_device_id dev_ids[] = {
 	{ .compatible = "renesas,5p35023", .data = &vc3_5p },
+	{ .compatible = "renesas,5l35023", .data = &vc3_5l },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dev_ids);
-- 
2.39.2


