Return-Path: <devicetree+bounces-168590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E045EA938E3
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 802CC7AC112
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216301DC075;
	Fri, 18 Apr 2025 14:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yJjm3nfG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232F01D6DB5
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744988052; cv=none; b=PXE5NT5r4D5qW3Qld4UYLr5sh5vnWVpOGm+RwFMFNwj2bf5KRXZsGYd7QqRWlr1WbTCXJKYT8TZIeEE8b7//2uGZdOYKVcT9crylNAQigYiPyclGNh6V9kmu2G8/CYCqxxI9B8IOaKpEqpl8fiFrlVghMTlmuEuOnQQGmbblOSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744988052; c=relaxed/simple;
	bh=pcYI/mBPHAIWHl1kcIeUbuno01L8luoMXUN7kqO9X+A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lL6ZLWwosYl7VYK+YHs2jTPH9l0fuJxTc0dHL3auNoWnro3RtBApFyaoP4L7BaMT/UdaB5/m032KkMj1S5XNMnncoS7lX8tlU5mkuMZ7mSBFYbqaYVpXJ410pdg2cjT4LGFqOW+TLLEXBZ4iYXzpucjYfV7QSjsyjHLP4qoRWw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yJjm3nfG; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-477296dce8dso18122971cf.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744988049; x=1745592849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGLQrJG9/WVjMRDCZD5X9MgDJzulV+jWlnrfByD2cXU=;
        b=yJjm3nfGGFwCMhLTbM9QCdFKam47oKexNPthQejTVZCObvifVhqvEGpyyfOxfacI7L
         pOvtpELsUfeEjNRkJ2UuaQuCDKMKkawc2XwBRFIkfOHKcLPEOoH1QbPb4VoPDZ65c810
         m6RPritvZgWn7MkTq/odQF8MiNiYj8KUYYTAfz7LESSl6UyOWN6/caDzdnRbeUdCeyYv
         nRz6mGP8UlQfh9jmZJ6vfooeLz5apxa6gq3gcqz0YyJ4py/TBFXj8X2lw5qRb3WLGdnk
         lJA+LhM4KWWwrlo7laYz0i9EDLaBYp56twahWCKx0vIkAf82gyJHyRQpWq0NDDMLHeQo
         bKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744988049; x=1745592849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGLQrJG9/WVjMRDCZD5X9MgDJzulV+jWlnrfByD2cXU=;
        b=aN4eLJb6mgjGcOs6LIJX58ctXOspjau6IE2c8qhYihDDYHmpZVT1kroA+1B2AjKlf3
         yfia/NBMRGJp8+lO6M0ofRjCEHjJ1twWg9SR5diUu8XHq4BbnpD4IDS/F9kku0aVLBYK
         8gD3Kh525CjyXK3aqD0MNJ7YhlLH0n4z/X+RLp8I2pxx0eA3eRhX8+z/ssK9kSvMrmz/
         ndqi77GXKx4AottRUjheqgGelhhbo13uufEu3s1i8W7XoCy3S0g7zkqS/rIpKrDJztj2
         I4ESdDQmIwG9Q2rnHOeW4+L8dh+94Al9aGsix8D55VwU364gPesNFHmOV843VPtFO9hf
         GETQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZMze0jqwGwpzPngVzl0dTJi6qMQy0FsD1Dae2+u+75WT1OnXC0IqdoCrSdEacIqShrqydpbcNEHFO@vger.kernel.org
X-Gm-Message-State: AOJu0YyHgQwBlOnEBwTeIJ1q41AN9eHpgOz05oGJXxceuMhssGqaXqIk
	Uj4150yGe44Yxsy3QYJ7ygVZUsUZL9xczGXySkSQzT8Ehoxo0jzttvrvTrysaRk=
X-Gm-Gg: ASbGncuUvwDuul5AU3J1PyBYru83Loso/EhX9N5iJBjnv1cajeClB0DIzZNOys2DMCP
	x7vkh4KHYbyNrYv3bktR0uzrQvVGTAtxwBdLVA3FjQRQocLbJvGq4L4glkQUq5Wu3fwR/B0or+3
	RSPrUHiHcomcsd/Y+I7GfOIfA0mAy8BqbOQPYymN47nts081AlJBwekBCSBzGvq6lPDWGJ+3lFq
	TP3GEocdcbJbvyt40KHr+eWHMz2OWJsez11t/9eCOzxePCs16JjdPYxMBfI3zB7qE86V6JUdwWu
	b2fei6Mwmo5u7wMiNFooDf//Kwom2aobCZ1VnMYUrE7RSWk0O4qqKn2kcZDKSfAVAIsqKPHM77Y
	UJdm1c6zzITsIfA==
X-Google-Smtp-Source: AGHT+IHEqzlEJZsM9ibzpxY3pVimq3gvrY9lGtxVp45evTuL1ehJDJBIbt283Y62JHB4YPt3Xe3sXw==
X-Received: by 2002:a05:622a:1987:b0:472:133f:93ae with SMTP id d75a77b69052e-47aec4cf703mr39891641cf.48.1744988049055;
        Fri, 18 Apr 2025 07:54:09 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9c16ddesm11329201cf.3.2025.04.18.07.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:54:08 -0700 (PDT)
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
Subject: [PATCH v5 2/7] clk: spacemit: rename spacemit_ccu_data fields
Date: Fri, 18 Apr 2025 09:53:54 -0500
Message-ID: <20250418145401.2603648-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250418145401.2603648-1-elder@riscstar.com>
References: <20250418145401.2603648-1-elder@riscstar.com>
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
Reviewed-by: Haylen Chu <heylenay@4d2.org>
---
 drivers/clk/spacemit/ccu-k1.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index cdde37a052353..a7712d1681a11 100644
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


