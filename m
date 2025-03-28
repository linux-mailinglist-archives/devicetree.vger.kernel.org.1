Return-Path: <devicetree+bounces-161723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7457BA751CD
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 22:03:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C4B53B2A31
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 21:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D361F4C9E;
	Fri, 28 Mar 2025 21:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="cXaI+LZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CB31F30AD
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743195768; cv=none; b=NIoD821ujvVrK8eZ5IEN6yeHUUZ3HJ8adPeiOXuD7L9Wpa5w4LbD5cSQZPpaQziCGv5uydBZSjPTtrWAaqN8uag3/m1j8MPnWS/eOgrQogVAmfd69CzU/mgfLBZcCfFmTfpQb0qf1aSqjf9Z9V5JotgixpEt3Kafvh4MqXzmQ2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743195768; c=relaxed/simple;
	bh=W73Khioo6n4aH3dJXKfZOTvx1lMN/9LyAeMHDZJ+yK8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k6vwdGS9poTZBhXHI14zrFTvjOogmWsRNbiNQueSemgZZRbvLpGMwj54l3est+UH4D5nkWgS9Mag9XHHLDaqKBN8d9KiwPX0LrIhYZ0PsJ1hO7qPkhwsNIT3kc4ThbgG6tElyf5qvnBQPhFvky+6jLVSqzUJQex3s4vRgeDmIH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=cXaI+LZN; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-85b41281b50so74700839f.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 14:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1743195765; x=1743800565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rerGx2TveORsLjDrW3hkWd+yAs+YmYyP0wNHZuEm2gw=;
        b=cXaI+LZN7Fnwc/AaWOcpChEIvFlw/zYC0jWpMNDh/c2zKebmwLFUuqYeIPJpsVkdxM
         N22oukGPaW2euVrHE0i1NvbeGQgQJPjNMcLARQQchS/7usAkcC5ZzeZ/JYuuM6j65Tvh
         nF3DWXw8bfKYnJfgubUcwOuOzYA16br1gAm+1Grq427GnI3mJjJbDva9hvehHnQPlwg+
         npo2nGkf834Jz3PiWI5qbnqctJw6IMpfnLhPleRtRg+0Q7fqXjqxLC9ClORKJJhQ1axa
         YUpQIe9txZmhYmuLjoh6P7u1rxtBIFv5KZxQTk0PVnTxWdPnmFHquwwUc2ockAx8ZxJd
         MzHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743195765; x=1743800565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rerGx2TveORsLjDrW3hkWd+yAs+YmYyP0wNHZuEm2gw=;
        b=rF2wEbfWO2OFWjGx1EA0OWoHuRW8D7NgYV8UozVaMLtZX5WIQFtTsiNasK9o56xDfN
         sxGXKPCPhSzuuayZMs2HGWkCDhESTo4OfMhR/oOqyGfv74ovKuAW6QRJC8STBMfI8Jgs
         Od7glBgmFcrbIRAPVjzpVW3pDXoE3GmZk22Xps9b0SE7sLWEDK1ASeBZH1XWjhCeKSs7
         NVoplw3te2CEzcDB8qY2vSaDTNv5U4QgJtW4xzrvQRalihQujn/7Lsi5m7ffzzgXAN+5
         KAKNlx3bB62hSvHxivq84np9WxAniFWf9764JRY6oSPJl8lNga7U0M1Hxb6GxszroWQT
         d2Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUD4kXK1AP8SbsDB+/gfNxeGBvHGAJ5TOJnCJIgtAg3F83aRw/fuJzNfRuMCbFWZN9xyGWyWzCEjprA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx5WZtxZHc4P5ClS+gc/espp33BARFrRor4+kcrtFajpv8sBXE
	3D/LeC+8db9gXIV5HoYS/8loV10TXNyCT0aoby6+/Rt69mlqrMi2dBtgChT3roc=
X-Gm-Gg: ASbGncvtzBMqVWtMNWlp1aCPRbnq/YiUGA7hNhX40fCdGeYVlrxHg2l7slTUzPfxjQo
	l0IF21+L5oiqnbqTBH0FGtkt2R4kOVGOXBk+jNerhOzW372jlXrcbvgA5xaMsf+FHxH0lMDOgnf
	DG05vGS5miwEcrE7DAy0MIwCa4DOXNlhYLjzjngy29tjnDmwo28DtyiwFyzs7C5BpQ0m/90VtAq
	Os7FdKTjCQZ9DvreRn0bg94krOnXTjgD9k5S60EA6opWeCmBXGHStYwk310uhIRETXIdWjKMuri
	AvScVgLLKMNJSOU2+q9tOjUatgE2TdAmvjJkmAoU+op7NBPl8AK352MuW175ZuMzo1qF6M5wBOW
	AgYpxN6MDyEFAksyrRg==
X-Google-Smtp-Source: AGHT+IEkrPw2Xf+zBd0lVIv6FoNOsOZlQH+aK8mKUSksTkEV25RH9WtQ+nDLN/BB4g7AYZH94fGGSA==
X-Received: by 2002:a05:6e02:152e:b0:3d2:6768:c4fa with SMTP id e9e14a558f8ab-3d5e09fdbf6mr10526775ab.21.1743195764543;
        Fri, 28 Mar 2025 14:02:44 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5a74286sm6769405ab.39.2025.03.28.14.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 14:02:44 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
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
Subject: [PATCH v2 5/7] clk: spacemit: make clocks optional
Date: Fri, 28 Mar 2025 16:02:30 -0500
Message-ID: <20250328210233.1077035-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250328210233.1077035-1-elder@riscstar.com>
References: <20250328210233.1077035-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are some syscon devices that support both clocks and resets,
but for now only their reset functionality is required.  Make
defining clocks optional for a SpacemiT CCU, though at least one
clock or at least one reset controller must be defined.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - Comment explains constraints on match data

 drivers/clk/spacemit/ccu-k1.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index f837d2c2f31fc..6885fea81f6f3 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -1821,6 +1821,10 @@ static int spacemit_ccu_register(struct device *dev,
 	const struct spacemit_ccu_clk *clk;
 	int i, ret, max_id = 0;
 
+	/* Clocks are optional */
+	if (!clks)
+		return 0;
+
 	for (clk = clks; clk->hw; clk++)
 		max_id = max(max_id, clk->id);
 
@@ -1926,7 +1930,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
 	return 0;
 }
 
-/* The match data is required to be non-null, and have a non-null clk pointer */
+/* The match data is required, and its clk or reset_data field must not be null */
 static const struct of_device_id of_k1_ccu_match[] = {
 	{
 		.compatible	= "spacemit,k1-pll",
-- 
2.45.2


