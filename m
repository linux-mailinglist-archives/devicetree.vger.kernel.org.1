Return-Path: <devicetree+bounces-96803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8312A95F827
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 19:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A3D11F23760
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 17:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA1231991CB;
	Mon, 26 Aug 2024 17:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="bUW8wJz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40121990D1
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 17:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724693485; cv=none; b=Kz8sqtapAxIe9GQdy4cLyH9esy/0qmemJ5Mwbd6E0cBRhRhdq023DWktKMCqH6nfH+8mjTRtAeSr0SIVZTMBDV2anpXqGsQiiKQeIXeitW5I6jrBkgJIFCVYttRvGfypuHrhjBh11Ydx14U8LratyUJd021XNR7uq1Pu5UICNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724693485; c=relaxed/simple;
	bh=QTmsTIDi7cKHIzyRh0s31HScPPVZAg2pITfHlR5Hw1c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hM5Q7z0/n3IGz6W811pEayNWHFe+Z2QgDfT7Pj9e787nKUmp4Hgsnb+CsfdPtyGTsfT4Vvmz8sBYsqY3msNlfy+8/okwtvoyX9OSXGfoc82+eh0ouYxI4+9MqbnF8aY5/xNASxFzSvnURSarl344Dke/L19mjMRmvjhGypG7zdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=bUW8wJz1; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-58ef19aa69dso4920654a12.3
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 10:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724693482; x=1725298282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=biOUpzjklUMw3DeHF9ZmoaEFGQg/45j+i/IYEf+/2DU=;
        b=bUW8wJz1zrX7dPe0/eoqW/d0gxEG0Z0dt2Yl1t7EhnpvaWm+Si2YW6lbTqzdTejivU
         MhaU1Fu1MX6I6Sxq3WTt9GiQeJqN5Ly08qYy6UbDDnZLO/ES0F209Bcj763LK+hWqRkx
         eK1Zs/WFnPTjQL9xoEfePGXKuSHUY7ZUvC/fhtT6YlWCzxD6ydz13SwM+7R25q+HqH7Q
         Zr1sn1QRaE4olMnhLC9KzWlJMqcNOosCAdVc/oCKcakfQZNBintCaGEt12bTvl6m5tfG
         9W+sKGzijiNB50bW4zGlyK0Kj3uGAd+wyuvg63khQsEdl5MEtjAqTk+wiWhqq2bzKAUy
         z42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724693482; x=1725298282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=biOUpzjklUMw3DeHF9ZmoaEFGQg/45j+i/IYEf+/2DU=;
        b=KdfUwKfSUMnRdYPE/6uD5YK1N79uMGelIfXVoUNGumGJ/hSawacr1HzEeXdOGQOzGa
         ELd+SUNsA0pihWJ1Ci0XIIvWkVTZ5X/OEHUIbZWKgD+aL4MO9SlrRXV5uKQhLHge37Gh
         wPla0rHoOiBUCc7gfTHBlD02DZWjy46lXBpkXxkgpqxTLO1/bb/55tckS4153f1VvKbo
         xhN44QDZHeOP17NAyY5uyIDZzKo1AxU6I7muK3y5LWTCH9iK5+3Ao/7ute46G82ysjc0
         LTvdW2hzHfB/uwF0X8TZJcVcf6WZ6odyaQPA1aJRcuAdVuPdKGTEvvrtp9dF9mHn20yO
         xytQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkRcJwf7VdOWuwutbYiv42tjisrjw5YVXcEJ7v3vALyx1VLLoaZUt6U0p7jT0txcJEHG84+Qdwku34@vger.kernel.org
X-Gm-Message-State: AOJu0YzKA9KAU8ejcK29upyyeQBadzbdrBCof2rO+uZQjvSniShKtwqS
	23HthRDegeT6Yi2rLpuWQkuFVagyh5EgwdTc65Vr0hrXuRtUPW6MYf2UnfvDOC4=
X-Google-Smtp-Source: AGHT+IHerndDsRmrDan/43wV4cMl++NdUbzuQbGoEd/HEOURC+hfMLYMkk8BUPcq8vD5t9RBTqrNoQ==
X-Received: by 2002:a17:907:6d20:b0:a72:6849:cb0f with SMTP id a640c23a62f3a-a86a54cf6c0mr651740866b.62.1724693482233;
        Mon, 26 Aug 2024 10:31:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e548781csm446566b.28.2024.08.26.10.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 10:31:21 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: clk: at91: Add clock IDs for the slow clock controller
Date: Mon, 26 Aug 2024 20:31:14 +0300
Message-Id: <20240826173116.3628337-2-claudiu.beznea@tuxon.dev>
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

Add clock IDs for the slow clock controller. Previously, raw numbers
were used (0 or 1) for clocks generated by the slow clock controller. This
leads to confusion and wrong IDs were used on few device trees. To avoid
this add macros.

Signed-off-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
 include/dt-bindings/clock/at91.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/at91.h b/include/dt-bindings/clock/at91.h
index 6ede88c3992d..99f4767ff6bb 100644
--- a/include/dt-bindings/clock/at91.h
+++ b/include/dt-bindings/clock/at91.h
@@ -55,4 +55,8 @@
 #define AT91_PMC_GCKRDY		24		/* Generated Clocks */
 #endif
 
+/* Slow clock. */
+#define SCKC_MD_SLCK		0
+#define SCKC_TD_SLCK		1
+
 #endif
-- 
2.39.2


