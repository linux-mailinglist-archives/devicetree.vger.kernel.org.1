Return-Path: <devicetree+bounces-256336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 489E3D38B3F
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 02:22:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58366301AE38
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26C3285CA8;
	Sat, 17 Jan 2026 01:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="gJ1MHz80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D0227EC7C
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 01:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768612931; cv=none; b=DujhFOcK4wfjE+EKyP8Wti+fSF8W4BfdhVp9LFaEpM8Q4Wq+R54YNJn89wykoNo3ynO5FlpwY2E7mlkszB6EAd8ZcNp2jiS7NPUYO57A9qq6JwLmnbWjpcfCrHdQIU/ohmOC8Cm2oH0sRX9BdaKSebiCzK3u7klI6ZPYxJLooRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768612931; c=relaxed/simple;
	bh=0pyDOxIYiyKtDO5zBoCSbr5io67a+YIq5Io/RWNHqM0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jXHWixVsC7cPU73Nfp2vH+IZTXAB+vewXtajYdFqJ9qXuvwIkVVtAU462ID0746LVOdG9oZxuOf5Iq+Q5vj/NMflCVKeKQSoI6feklMF57kLEx90yzaD4v+slFZyAMT5XweAr6R3VlgeXEfhCnPJDz/veda6PYPxOPlVCCLW0qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=gJ1MHz80; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-11f42e97229so5850385c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1768612922; x=1769217722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Q0sRttI86mEpJh7BtqYPvvcOCP+5t2tb7f6cBrMGu8=;
        b=gJ1MHz80Pu9AGwPKuwLfUzF7dZWdssv6SwjrszmZkwxWdWq2p+XnYLFlZSP95Xc0AX
         qNqzTZ1LJt363tg5FAuJFQk9T6lHzIfpMk9sEGPQcAfoMG9GVbf0uI5KrEc7fcCTycCe
         n+vt2WY4k36JKraAc05mShRj4413eXxp3s5KLk1XwB55cIG/ACCinZ9c8S5oYMADJ6FJ
         pKsFiWmTQoNKrXhBc6Knaj0g2YF8/hjCGDMVhzJ9Vwty20BzCx76lzEZ/xVAfxoZsVQJ
         qRN/nKAc6gmP5+mcvAxYQeTRYbBWNpXQagoSIBD2okkncNHJ9TWuPld3KFa0H0fVtk7C
         as7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768612922; x=1769217722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Q0sRttI86mEpJh7BtqYPvvcOCP+5t2tb7f6cBrMGu8=;
        b=cK/o3diN6hXzycoqEdlHkHfhAK2DX3B/Mpf7ef425+2RuRjHeEtOMtWhDJHsIBghFm
         U31YKkH02wmEmMYDC45/nM3tKPANtL+rO1r/BhS7gIlrnuj0GSx6MgO1iPziDwAvyFx0
         XDSQHS/WD85UV09rkhRDTDjUALwvbs0AaNR3i2lr0lcrCCri3cerwJ4D9IRiedYN3IjZ
         sL1trsGWeo8vGlO8AIC2xK1pBhZ6nvqWCusavMCCfx+nwmCdXpVxy2bgWHTE720TisE4
         gzGRfGbjoDMxZsJFl6wEPMUpuWLRR1SmPHbSI6aTAgrDVYMU3/NjOyFnwzXyu+x6yAIv
         F4HA==
X-Forwarded-Encrypted: i=1; AJvYcCXArdjNuWp97GOxo+7sUlmOQHMhaEm8gAOjR5AYSsvS3YZEX7Fz2bnSc4xgmrufDD7m1JYUZe/8Pa7K@vger.kernel.org
X-Gm-Message-State: AOJu0YxMD7uePUlJC6xs3LfyzQIpgsF7Kx3h3M2EN0lzn2aLdbWdx6gQ
	f4E+Fp/3beE+Ry8zwriapQP83tI7m5+MSaQIGOqzpp7eyZ0vdqJ58e1j3BoN+FIk+IY=
X-Gm-Gg: AY/fxX7zHMGiUV7ylyzKdBZgS3skVUnTHdGYJtV/z7S2wyCDMa7pqxl+f+rL2sEaI3q
	PBBf1aulot/zR2tw+5j8KmVP3IBAv6S6wngMXWEQYdbVnJm59+l909Lswh6Xkpq9fsvd5gWRdeb
	EIY+2s+mwyxALyVTIBHqjLrbZFGnk0iUhI3sjQD7d3aawj7ZH/xafUsPZewQ50y02vYFI2weyZf
	FYVIr/h+zaHHiD6cLOVUBvaCgwZh0i9qhq1VjDMKSbjsaCyJpGDt0xyccTX5dHYCNRewHO4tNMR
	kVs+wkhLTghUPdObAV0MSpgQiX10E4u2yxbGtRwAJOpTBcqQshdu8SKvD+CuHYKgkVRLuhwdyAe
	qArNumx1Y6PHNmDLobfulHQZ8E+WZoR6GCsCOsV7afjHSWGi4MV94Dkv7akWYdbMfFuqytLOdHj
	ok6XAmIlWHnxo=
X-Received: by 2002:a05:7022:322:b0:119:e569:f279 with SMTP id a92af1059eb24-1244b3802e2mr4431118c88.34.1768612921745;
        Fri, 16 Jan 2026 17:22:01 -0800 (PST)
Received: from localhost ([50.145.100.178])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4977236c88.16.2026.01.16.17.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 17:22:01 -0800 (PST)
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
To: Mark Brown <broonie@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Subject: [PATCH v2 2/3] spi: xilinx: make irq optional
Date: Sat, 17 Jan 2026 01:21:35 +0000
Message-ID: <20260117012136.265220-3-abdurrahman@nexthop.ai>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260117012136.265220-1-abdurrahman@nexthop.ai>
References: <20260117012136.265220-1-abdurrahman@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver can work in polling mode in cases where interrupts are either
not available or broken.

Signed-off-by: Abdurrahman Hussain <abdurrahman@nexthop.ai>
---
 drivers/spi/spi-xilinx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-xilinx.c b/drivers/spi/spi-xilinx.c
index c4b70e95b695..9fb1da2fcce4 100644
--- a/drivers/spi/spi-xilinx.c
+++ b/drivers/spi/spi-xilinx.c
@@ -471,7 +471,7 @@ static int xilinx_spi_probe(struct platform_device *pdev)
 	xspi->bytes_per_word = bits_per_word / 8;
 	xspi->buffer_size = xilinx_spi_find_buffer_size(xspi);
 
-	xspi->irq = platform_get_irq(pdev, 0);
+	xspi->irq = platform_get_irq_optional(pdev, 0);
 	if (xspi->irq < 0 && xspi->irq != -ENXIO) {
 		return xspi->irq;
 	} else if (xspi->irq >= 0) {
-- 
2.52.0


