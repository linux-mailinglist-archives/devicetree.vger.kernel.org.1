Return-Path: <devicetree+bounces-165050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D735A83323
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 23:18:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E35061741AD
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348E1214201;
	Wed,  9 Apr 2025 21:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="mzDFC4Aj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2986B215043
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 21:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744233471; cv=none; b=BWd79SrW6YmF+5gFj0jx8JoRYlzdkK5ll1qypedb20IKPvkxTSs0L8VLeZUdtTBTeSvaBAd9s1uQB81DgGjDJK79BTPyrXkYWlqAxGFufMd36+ptjtDAP4VqWQYCwzOpI1hV+LXcxELXjDpyRbsduBEqO041l8XUdLl0RARUNgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744233471; c=relaxed/simple;
	bh=LS7YZ++WbsdVQE1UX7G+UOQmXOkD2lQl6Z+x5E+PHkw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EGf9FW3t2zFQESURyKypYjfOJx8AQPcPjUsg/lFH3lDIhsBfdXo1u3Qe/rvzynslBiIC7fajjPakfF030etUvWy7SToeP7fbYY84gR9Gpqi4P4DzyoCLzMwVbZcPGMCA+ilS2ym7pR+iQ64T94ouk+fywWnCbypVaCJZLyNbvJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=mzDFC4Aj; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3d46aaf36a2so1505465ab.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 14:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744233468; x=1744838268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/Ujt2BqpTFQspxt7ElIhz1eo1LmzpQ0jjYgAj4gQFw=;
        b=mzDFC4AjlYQtRvVwGt842osF35O+N/YmB/9rJOOu/OSBbVhaRENYZierNc9MQu5dTR
         SCfYGpr2dBv+81a7I5nubVWf0ePd/rwj30X79KLoFRR2IlZ0xFFZys7OJKMVcRxtlFw2
         7Y2q/tDEKI4lxAGGSu3F09WcRSkMIzJJCBqzo/j6eG81/xLvHDm82xs7yvht25zY8cYI
         e+lnODCqbbvvzNjBjQE9RAz2sRUYN78lkka2JKB6Ow47agZAJDJfIEmtJM5JRRejpDxA
         lIgIw8lZrz+WlimLGalu4Rjx89f4xdGajTwn+g/dMcUeZArFd1kvT2JVvlRysK8NzZYj
         KUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744233468; x=1744838268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/Ujt2BqpTFQspxt7ElIhz1eo1LmzpQ0jjYgAj4gQFw=;
        b=hPMgTB12msBsI+kAd5wtE3Iyp9+Fwtamxoxinhg2HcBATjhG5IlHWHo32qp4PJ3TNY
         qy7+jmTwIVifJv/cPMt9UF6H2GFPOeZ1gRTWJZT4iI/rtrMDg+PKABrdTJe0XCFyX0dt
         OMDr/rRn5kkZ2bYOKzEJuDDqCST9hX5RuVv0pRYyQ842h/JRqtKpkQtjxTDhTKunzYNg
         ELi41QuuxhqbVYLPxwCYcN3Pq5dKMLnQdA3Wj4MhSHHDZmRG+F0ePQB8uxfx5VNzEKfi
         jnV3p+jNtsMN4ax+lMFEFHFAL/s+9NZefWcIHumvuOQwjHxwxCCFuTZIgDE4Obvkvmms
         cn4g==
X-Forwarded-Encrypted: i=1; AJvYcCVGkdhqsruZ5b7U8j95UPAT+l7+p51uZpDQ4pVh5wGtbtohH/t0Yfq21UU7jZ6dQ7fyH2hEOVVlWn8n@vger.kernel.org
X-Gm-Message-State: AOJu0YxDnHdJVsSbLfknPjFiEBWK4UsJ6G911vNTy7C43eLPpnVVzog8
	B4FssTMnJVotksl6XysjCvKKzFq9U/sYIE+ArMAWzVtdEzOZ/VKH8QKoAKOEi50=
X-Gm-Gg: ASbGnctiy284KjSMl7u+3BuqZfmAM57jNfVkg3qWAWf0eENqzPIAEzcn4EkHiKPkc+3
	Mkyon60JmbPOLGJgItI9+oZloAvq4nn8l0/jWgcK1yhQIDSsdaAsbQu8fONST8WE66+UpIHnZh4
	7+NHAd9sD4HSy+A7aJbd3nCo3ZTku5S0+RFXZX6nPGBtggcqOxEpTjMlmWpGQLfsytYjKYAcwKk
	1g/2as9APVzgv1ZJVYR3xjI7v+rtMypHnjeOSUHx4Rk1pc7Po5XF60+Vfs+8vNIGwrsQgoHvaKx
	VKSTDZt7RAgZ+grYbncdHo7lrENUmAOpcyxS1MCkOR8kXhp9nWZjk5AFI3dgmypetlgheleIaTX
	PXcwO/wdBoYpmrw==
X-Google-Smtp-Source: AGHT+IEA351OHRV1gFr2V6hEs8tVqEYmZ8Jl/cV8rxcpoeDrDqiVZAMMDJF5x+pEwEG48cVA0Jzrbg==
X-Received: by 2002:a05:6e02:308a:b0:3d3:f040:5878 with SMTP id e9e14a558f8ab-3d7e477abafmr8500765ab.21.1744233468227;
        Wed, 09 Apr 2025 14:17:48 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf8e91sm420735173.6.2025.04.09.14.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 14:17:47 -0700 (PDT)
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
Subject: [PATCH v3 2/7] clk: spacemit: rename spacemit_ccu_data fields
Date: Wed,  9 Apr 2025 16:17:35 -0500
Message-ID: <20250409211741.1171584-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250409211741.1171584-1-elder@riscstar.com>
References: <20250409211741.1171584-1-elder@riscstar.com>
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

Move the definition of this type closer to the top of the source file,
after constants are defined but before objects are defined.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 5804c2f854071..8a8d228b46c3f 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -129,6 +129,11 @@
 #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
 #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
 
+struct spacemit_ccu_data {
+	struct clk_hw **clk_hws;
+	size_t clk_num;
+};
+
 /* APBS clocks start, APBS region contains and only contains all PLL clocks */
 
 /* Frequency of pll{1,2} must not be updated at runtime */
@@ -933,11 +938,6 @@ CCU_GATE_DEFINE(emmc_bus_clk, CCU_PARENT_HW(pmua_aclk),
 		APMU_PMUA_EM_CLK_RES_CTRL, BIT(3), 0);
 /* APMU clocks end */
 
-struct spacemit_ccu_data {
-	struct clk_hw **hws;
-	size_t num;
-};
-
 static struct clk_hw *k1_ccu_pll_hws[] = {
 	[CLK_PLL1]		= &pll1.common.hw,
 	[CLK_PLL2]		= &pll2.common.hw,
@@ -977,8 +977,8 @@ static struct clk_hw *k1_ccu_pll_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_pll_data = {
-	.hws	= k1_ccu_pll_hws,
-	.num	= ARRAY_SIZE(k1_ccu_pll_hws),
+	.clk_hws	= k1_ccu_pll_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_pll_hws),
 };
 
 static struct clk_hw *k1_ccu_mpmu_hws[] = {
@@ -1018,8 +1018,8 @@ static struct clk_hw *k1_ccu_mpmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_mpmu_data = {
-	.hws	= k1_ccu_mpmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
+	.clk_hws	= k1_ccu_mpmu_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_mpmu_hws),
 };
 
 static struct clk_hw *k1_ccu_apbc_hws[] = {
@@ -1126,8 +1126,8 @@ static struct clk_hw *k1_ccu_apbc_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apbc_data = {
-	.hws	= k1_ccu_apbc_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apbc_hws),
+	.clk_hws	= k1_ccu_apbc_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_apbc_hws),
 };
 
 static struct clk_hw *k1_ccu_apmu_hws[] = {
@@ -1196,8 +1196,8 @@ static struct clk_hw *k1_ccu_apmu_hws[] = {
 };
 
 static const struct spacemit_ccu_data k1_ccu_apmu_data = {
-	.hws	= k1_ccu_apmu_hws,
-	.num	= ARRAY_SIZE(k1_ccu_apmu_hws),
+	.clk_hws	= k1_ccu_apmu_hws,
+	.clk_num	= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
 static int spacemit_ccu_register(struct device *dev,
@@ -1207,13 +1207,13 @@ static int spacemit_ccu_register(struct device *dev,
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
 
@@ -1238,7 +1238,7 @@ static int spacemit_ccu_register(struct device *dev,
 		clk_data->hws[i] = hw;
 	}
 
-	clk_data->num = data->num;
+	clk_data->num = data->clk_num;
 
 	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
 	if (ret)
-- 
2.45.2


