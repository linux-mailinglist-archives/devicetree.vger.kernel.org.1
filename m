Return-Path: <devicetree+bounces-159447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3772AA6AEC2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 20:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC1D0189AD68
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 492B322CBE4;
	Thu, 20 Mar 2025 19:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yu1y5WOp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9880122B8CE
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 19:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499904; cv=none; b=AUoVYUAlhqbEy6C8kVwrGAKG39KwJ5qPDusgNCXxmtQ9OjindeHu39rzwqcuKrqqiIgdbaRpYWpFfDaW58icrarYO3A5NUBqG1Hv5H+kdnNb21uIckcHKbkc4skOkweMht05/2M3jPATb+5dlHEtHeOw+G3c3OUUCL9i9+Ju6AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499904; c=relaxed/simple;
	bh=Kk9IOSp5FpiJPK6DAw2Z9Z0TfklnPeKukCwW/BwUYxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BVBBDTxbRhbd0pIJacpH+APCfsOzaPw2PSqLSen/h4EGH0nMDz+olRykTCDkOR04SRQwIDPvWrhSGDpxj4LFRf+Lmnvp/a3NrQaUfXwo2OfFwP/HaxqNKOnQIyklGnQQNx4+MH/NfmnEwxhJsaHapo1/qTRrCioC6U42xZAHzGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yu1y5WOp; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-85b515e4521so38230039f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742499902; x=1743104702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9/aOcBOjeqmg8r4cUHY2uYIdNBiCau+sheqrs82fvw=;
        b=yu1y5WOpzZnIqGGwMA+KtLkVKfs9tMSk4PiQZeFSw07UnmUABVxrSm3oQB5xuwnLW0
         V04T42sLqo6U2r+Vvb8S+AhvzozVpfyqpWs9DfuiVHHD/0f6c1KDRcYQvDnw7OFeiih+
         i29BSYeMew2w1lSuyA6034HtVdKJVoaM6+Mllp32Ygu2OGlXegmidsg8LX1zSd9FgD6/
         /UMzrPcu7SCiVumxlVS4w1+SUNGKhsxDjC05BqpLKT45Q7gN1voXNMjdYQ7+ORYlfHA6
         cYOSNS0lX8cYkIOweHPY38zUp9MgRZnGdQI9dN8yFKG+F36IGq/ODlf0eI/dKQigCvPA
         4Iaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499902; x=1743104702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s9/aOcBOjeqmg8r4cUHY2uYIdNBiCau+sheqrs82fvw=;
        b=kvA1GT5TarDM6eDC9xC4WgfdUK0UkZyJguZ3gdzoaUypViXGarrVrskGxQ0H8QWzM4
         1M62clt3yUV5V7h2nPZeenSnjoVbnSVmYB6CSmgS4XXXRGeywHoODw5cvb6RBDL7tojl
         ukukat+ifXOUxfSxUsk+D/G1fX3PtN0F53cvofdDvb4AO10W/q1kHJskat37SlEgizFN
         SE9qUgenLWK+KQo63hwDC1OU1dU8O2EHmBGJpoLB+Sb4RkHqdJzd/IP7Gx4o6QcLrnjL
         dGGxBaXvUQSIWdxuHSyNI5ItPTfF4OoRs6hLLSrrOLZggES1V5HA6vMsFna8SFd2ghO+
         9hPg==
X-Forwarded-Encrypted: i=1; AJvYcCW30tJHhSFYR1e7RfWRWgZKNvOqYcBtppqTF4GLbjNLeNBK1qXy7vvYBjFaFTFSz1DwrvgSvM8eTqAw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7TCtKccL/Ge88Etth2FV5/L/YK+D+ArrOcxl5JY1dv5KmiVS2
	6xw6EDapVhLAFrzevQTTuoeSl9vE9rm+EP+MH/2bSidVvdfcniQKb/oYUMU98DQ=
X-Gm-Gg: ASbGncv1y4DwuM/rYyF7B0OdMMB7WdQb915bK7pmAspAruCQSr9HLFLJz/Y59Q6tGOQ
	joeTJx13V3boht0Vwv3I0ckaL96r9V5RgDvqMY+GBw9x+TMHI6VIyDCSxDPzXZvRVlsVqJnG0a9
	jeQ4VoZ5ZUGp8jFVMWijgb+pLOP4DO+72KeI+QSMs9G6+a7Qtlvx5RhgfYhXkKtuTXzTG+Cga7w
	OTb+IHgSxMIOtChnMT/IyV3WKG+/y1fOZRnwc9jO02QWq6TWV2lFVzIoRayxJ/ZbEyO2ZPt+SE3
	LiorzDzdwgwU6xAk7Y6Z+NS66IKfJtGplINpYalXQpK4MGKfDuO2PtDEGv6At6bOKu7vHAml+Xw
	TmNUewlFNr2NxQUAm9FX/uQYp
X-Google-Smtp-Source: AGHT+IEn/CMK8E8Bfq7MKT35OdTEokXRont9vMOJAD2LBb5xAxo4GeZ7v5aoXMHZf7pwpyUAenlrYg==
X-Received: by 2002:a05:6602:298b:b0:85b:3fda:7dbf with SMTP id ca18e2360f4ac-85e2cb4607dmr58946239f.9.1742499901514;
        Thu, 20 Mar 2025 12:45:01 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c40fsm8341439f.32.2025.03.20.12.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 12:45:01 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] clk: spacemit: make clocks optional
Date: Thu, 20 Mar 2025 14:44:46 -0500
Message-ID: <20250320194449.510569-6-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250320194449.510569-1-elder@riscstar.com>
References: <20250320194449.510569-1-elder@riscstar.com>
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
 drivers/clk/spacemit/ccu-k1.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index be8abd27753cb..17e321c25959a 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -1830,6 +1830,10 @@ static int k1_ccu_register(struct device *dev, struct regmap *regmap,
 	const struct spacemit_ccu_clk *clk;
 	int i, ret, max_id = 0;
 
+	/* Clocks are optional */
+	if (!clks)
+		return 0;
+
 	for (clk = clks; clk->hw; clk++)
 		max_id = max(max_id, clk->id);
 
@@ -1903,7 +1907,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
 	int ret;
 
 	data = of_device_get_match_data(dev);
-	if (!data)
+	if (!data || !(data->clk || data->rst_data))
 		return -EINVAL;
 
 	base_regmap = device_node_to_regmap(dev->of_node);
-- 
2.43.0


