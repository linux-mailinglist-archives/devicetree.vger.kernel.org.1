Return-Path: <devicetree+bounces-165436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C2DA845B9
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:10:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 201BF3B149A
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDC828C5B0;
	Thu, 10 Apr 2025 14:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AI1DkBSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FD7280CFC
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294003; cv=none; b=ksbBY/+kb+doezWxWDHkDetdiA+DHCVIMOPjqzYiwB4AHMpcLSGfxKDoxq9m+6vR/cH5JjHn7eqb53GoiF9mEIVGaQqRPIoqLa3xFw4fUn0HokgBQosExRbtDIrTPFnTJzyWfq5NZcNd5USA0e+pAX0kkVMNyKBhI4dX9svwDa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294003; c=relaxed/simple;
	bh=hbP9+zw0Fcw1ISRojomtfQ9Ytr8BAnXkESaQRO8oXIY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jJ1N9F1++pbzAlPVz7FVD0KLRnadekWxnzvTdtcgqSCCAtHW1FapjlESuzu09OxTbMtgBg551ANAUAxA9+gbEmUxRgBdNwadjunRjb2LY1SzAogfall4t3xOyyhOrxPlsx9Gbs3oMxwY4r9jt5+A0ih01yAo0rm1GFFvC3Mci04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AI1DkBSq; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3914a5def6bso460000f8f.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744294000; x=1744898800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7A/GRyhOtG3bO+YzatmKCaSfgKvP9KmL+6FQr6d4sI=;
        b=AI1DkBSq9+1MUrWQGZv6I8wJuUzBEfPaJcNfo+O7hJLspydBw2lfo6JytSpPMKqI3T
         6gGmVZOpq62YUYZMKsfKSBz/B8SIvvBGjqdJE8YpmWjVQIET49+dPg8s122XV04U8Vm2
         o0aUk0uVBcktqxundlvGZynLuTn9GFgby807pvWghLypJ/l2JOOGhOLSXD77T3hzyV6C
         2FQ2wCjryTiWYqP2SSaeQmmWPQ+f4XLYXVgtN3hic0ElWfMA2fIfRjOolJydCZn/zABT
         Mjh/mNqTBrKtyv3G9490V0ERArZz7CEHBweL3dvPYFnigf4NOwAyjZ65vBKBN7cEeVT+
         NVSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294000; x=1744898800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7A/GRyhOtG3bO+YzatmKCaSfgKvP9KmL+6FQr6d4sI=;
        b=e06mMGvkTUw/QQ/y5q5HULskcyL3kpqMJ9pz/ZhvND7Ed7spZT9QTc9FvRCNeWa4zc
         XWwMNxzeAJD/eY9Ewx6FQBNrR7vYrz5W6aAHkNXvEvggvL7DpZQo5Clam6PVqwm6Hi0p
         SVFOOpT9QuQ4N/xE/G2NzidtgwgZYlD4E3ORKnxMfX03eiVlcOasBFnvfS6WW3TPELAX
         BcsV8ssPTujvbnYGoaHdlpjcDn6z2ddit9sHpiw5rS6IzaUTqo74anWzRvXpl0vq/PYT
         1nTD0ofAIQI/Vbhwznqju6CCfhALqg8AMGLFBijhgdNg2YJSt9XiGqKC5/B9TpL2g4U/
         wmBw==
X-Forwarded-Encrypted: i=1; AJvYcCXWVeaZFPd4340KlVwnXQPEtZlIN9y8eXhavfWQE0I0nuMMf8f8YDgbHQoc6nRhX0jMYze1J66e+uSD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz668dzV9EdwT2ecUGv1mTazm+nRGsmz4rriNvVV8ISxyYtdDgt
	77BNzX2nqUyaN9OulhvdSxK3aOEuDKM6lFaBC4GB9EwBfSOJq4wT/5VnyeOryT0=
X-Gm-Gg: ASbGncsy71AGrkdjwP11IF/Ef/JY7GUhdFFW2elnoiYBUqQRBy5lyK5sn6t7gmLQrlG
	3BOc/nNHgKKy89T12cA3VxHPfXSEwnuG1NvChRxvoJVY80YG2BJrqteKZ6wcQI1q947c2GqHPuC
	YUmolqxA+Kw0BpXlJohkiqWMJPElDDZ1yIuIL+2cS/r4fI8UeQGi1Tu8KP8H0jkyn+WMp6fS2xm
	SEH+Z/UBmN8mhC3mLXbjvU+qfs++tdhJKlNnEgJFHMuzr5Noyv5oz0sGtNPjJauppT2wUUqGaZY
	uZhGPdVxftbn9/AOEG6EF6PX/FDC3PzBzK6m50GhK58umukvmOSiaq1Q0h8jUEcthDhFhQ==
X-Google-Smtp-Source: AGHT+IHHzYrWkYVJB2jd3EaUVrf89hE8xWwgx3sxtfVkK50L5LRAbxgU0L/HY6E/Eihy7Wd6XXe4jg==
X-Received: by 2002:a5d:588b:0:b0:39a:ca0c:fb0c with SMTP id ffacd0b85a97d-39d8f496e01mr2596448f8f.28.1744293999580;
        Thu, 10 Apr 2025 07:06:39 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:38 -0700 (PDT)
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
Subject: [PATCH 1/7] clk: renesas: rzg2l-cpg: Skip lookup of clock when searching for a sibling
Date: Thu, 10 Apr 2025 17:06:22 +0300
Message-ID: <20250410140628.4124896-2-claudiu.beznea.uj@bp.renesas.com>
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

Since the sibling data is filled after the priv->clks[] array entry is
populated, the first clock that is probed and has a sibling will
temporarily behave as its own sibling until its actual sibling is
populated. To avoid any issues, skip this clock when searching for a
sibling.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index b91dfbfb01e3..2ae36d94fbfa 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -1324,6 +1324,9 @@ static struct mstp_clock
 
 		hw = __clk_get_hw(priv->clks[priv->num_core_clks + i]);
 		clk = to_mod_clock(hw);
+		if (clk == clock)
+			continue;
+
 		if (clock->off == clk->off && clock->bit == clk->bit)
 			return clk;
 	}
-- 
2.43.0


