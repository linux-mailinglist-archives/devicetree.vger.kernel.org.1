Return-Path: <devicetree+bounces-159734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2461A6BE29
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D7553B518F
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A415214A98;
	Fri, 21 Mar 2025 15:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rv8eMXBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323471DEFD7
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570320; cv=none; b=kwPZuUQU5IkbQG4UNcSWdjrAHfIZjNVRKRpUULXMThgF4NCXphhMvA/80hwft/1xuQfGTrpC6/kFPh3XS11L9gjEdIJUL/r+ENipOD1iJrssrokvWo2KyKSY47//LK2+LwSkX3Ue28pXIRb9gz8kPe6BlowKKvmX1YeNsOWjr3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570320; c=relaxed/simple;
	bh=Msfp5XPXlQWRA6OSK94MBACxh76YXKPDMkGV+ksBlc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UqCVpZB6ETV95M8aCJLey8phlA6SdFLeetG4RQrR6WHINHK+lIAol2PlSqIqhT4aRxyDVQ3ZZ7Wj4k1dQzAcWx/aqmX9qzOUzaM1GR1xsmspW6QIGbJ87hmBfCIxuXYkwkL+Ta2e+ZRz8dZJEE4HGKUjQEuWtrVXGWZIDB/tZkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rv8eMXBs; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3cfeff44d94so7396765ab.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742570318; x=1743175118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8oqjEMMafA14xwGBAA8P5aE0E7j2tKNWQP5nX11uxM=;
        b=rv8eMXBsp+rvQJ+ilgxRDioMmp6fLxONHXYir/ny9wR9JbYK0gYG5u6DY2xkd919T0
         7vmuc4i0Yjrv3vUTKKJsutwgh/d3ORXErNmFeGbM56UAL1s+vzGnng1iGzLrzi4ajxxs
         Y6Jfx1M/2WkzDley+NzcCy77H6icVVIK236Yu7bkrK/naIuNMofhyEcQE6kBfXEZha4Q
         gngYX+JEjrj9VG+N3pO0K5GSWsPLGTntD7RFUOzzIf5fYrZCPq8KujyFZwapX69nCDQ6
         IkovLKW5T+dIMQbNEY3XNow2uuXCXA6aXhKPuXcJW53t1vngstm1aU/omxx9dNuieTcz
         Ja4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570318; x=1743175118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+8oqjEMMafA14xwGBAA8P5aE0E7j2tKNWQP5nX11uxM=;
        b=NyNlGgKZI3O2YbPJdOYr65Y9MIncJYK4j//hDSJuHS0slZZFR/dghpkl42c3uRBQoZ
         GV5stX9O6ZTtcOU87Cpu8zR3uN/0ZoAvP5lplOagyCDRlHDeEHdNCbNLH9pMix+HkLq2
         ABbQ0FnZcS0tuelPK2b/FODSPr7ePC5dsPjn7KBt4Jyj2NbIOC1YXyTjwB/g1lNAFp4O
         8mJxLN9lBRsrVH5QLLk8H5h0VycbI2ez52ZqutffYWj/ko5AWAmzmp7kaa0h7EHKwHXU
         pFa/gCYCsCtDL8ZnRowjh8jou94WwGaddJAiOc5iIDrm/28vqhqaSoF1Q3iv6yM+LbTV
         EEKg==
X-Forwarded-Encrypted: i=1; AJvYcCVFtZpWUvvvr2P5d+CjSYwYtnVw2ldGLo62+9ysCqIMShdxFIcooxif4Ut4vyQbEBVF16h9l40lZCjq@vger.kernel.org
X-Gm-Message-State: AOJu0YwYCP27QeMFzqep914hZ9Jrex7YWyz8tPfrL8gdRrjWNoh5i0XE
	h9k8yn21SiJNjmeyxdo+KUnrop7/Jpt6RX07Egu/NkGSY2H5knuknPJI2GzTEzY=
X-Gm-Gg: ASbGncujQzafG7RxLhkUzxpKhJuvoZsXid4Xw47KwzdIGocIWRAmm/853ZI9v++JM8Y
	O148v5PvjDjqIpnLghrPwaT4QMugfIibkbYTtPyviBImKpocpaABmGeVPMgbRZ5Xpxqh0tL+Z7m
	OljP9y2Ccs98rv4tvlrgt4reP6F0dvWL1fCM0ztua8QiiAzJ6S9xZimzLfNwNKchX+136+1j2gu
	uFgsnk/09jzITvOEmC9fcCAMUwbQ5bnapdiYN6MzlgvKDFhOv6UY2Zafy+6qd8MDL3MTyUXsBF/
	Wzy9DiYNIPpfskS65ZSCv4c3llpVfha/CaRjsIE3+tHRP4d4VlcH6OrCyRT0GzjIyBczTs2AjwF
	Hu06QcYSiixIm+HmHraq6b6/T
X-Google-Smtp-Source: AGHT+IHxbdcOPqhKYJ0+FGJjjIoQPFJNqCEO48X21wDnTd2u/d1IQvQYx7rVdqkDuvFrmILGMVLeyA==
X-Received: by 2002:a05:6e02:144e:b0:3d4:3eed:2755 with SMTP id e9e14a558f8ab-3d596108882mr41447845ab.12.1742570317784;
        Fri, 21 Mar 2025 08:18:37 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbdd0a21sm475553173.41.2025.03.21.08.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:18:37 -0700 (PDT)
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
Subject: [PATCH RESEND 2/7] clk: spacemit: define struct k1_ccu_data
Date: Fri, 21 Mar 2025 10:18:25 -0500
Message-ID: <20250321151831.623575-3-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321151831.623575-1-elder@riscstar.com>
References: <20250321151831.623575-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a new structure type to be used for describing the OF match data.
Rather than using the array of spacemit_ccu_clk structures for match
data, we use this structure instead.

Move the definition of the spacemit_ccu_clk structure closer to the top
of the source file, and add the new structure definition below it.

Shorten the name of spacemit_ccu_register() to be k1_ccu_register().

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 58 ++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 44db48ae71313..f7367271396a0 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -129,6 +129,15 @@
 #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
 #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
 
+struct spacemit_ccu_clk {
+	int id;
+	struct clk_hw *hw;
+};
+
+struct k1_ccu_data {
+	struct spacemit_ccu_clk *clk;		/* array with sentinel */
+};
+
 /*	APBS clocks start	*/
 
 /* Frequency of pll{1,2} should not be updated at runtime */
@@ -1359,11 +1368,6 @@ static CCU_GATE_DEFINE(emmc_bus_clk, CCU_PARENT_HW(pmua_aclk),
 		       0);
 /*	APMU clocks end		*/
 
-struct spacemit_ccu_clk {
-	int id;
-	struct clk_hw *hw;
-};
-
 static struct spacemit_ccu_clk k1_ccu_apbs_clks[] = {
 	{ CLK_PLL1,		&pll1.common.hw },
 	{ CLK_PLL2,		&pll2.common.hw },
@@ -1403,6 +1407,10 @@ static struct spacemit_ccu_clk k1_ccu_apbs_clks[] = {
 	{ 0,			NULL },
 };
 
+static const struct k1_ccu_data k1_ccu_apbs_data = {
+	.clk		= k1_ccu_apbs_clks,
+};
+
 static struct spacemit_ccu_clk k1_ccu_mpmu_clks[] = {
 	{ CLK_PLL1_307P2,	&pll1_d8_307p2.common.hw },
 	{ CLK_PLL1_76P8,	&pll1_d32_76p8.common.hw },
@@ -1440,6 +1448,10 @@ static struct spacemit_ccu_clk k1_ccu_mpmu_clks[] = {
 	{ 0,			NULL },
 };
 
+static const struct k1_ccu_data k1_ccu_mpmu_data = {
+	.clk		= k1_ccu_mpmu_clks,
+};
+
 static struct spacemit_ccu_clk k1_ccu_apbc_clks[] = {
 	{ CLK_UART0,		&uart0_clk.common.hw },
 	{ CLK_UART2,		&uart2_clk.common.hw },
@@ -1544,6 +1556,10 @@ static struct spacemit_ccu_clk k1_ccu_apbc_clks[] = {
 	{ 0,			NULL },
 };
 
+static const struct k1_ccu_data k1_ccu_apbc_data = {
+	.clk		= k1_ccu_apbc_clks,
+};
+
 static struct spacemit_ccu_clk k1_ccu_apmu_clks[] = {
 	{ CLK_CCI550,		&cci550_clk.common.hw },
 	{ CLK_CPU_C0_HI,	&cpu_c0_hi_clk.common.hw },
@@ -1610,9 +1626,13 @@ static struct spacemit_ccu_clk k1_ccu_apmu_clks[] = {
 	{ 0,			NULL },
 };
 
-static int spacemit_ccu_register(struct device *dev,
-				 struct regmap *regmap, struct regmap *lock_regmap,
-				 const struct spacemit_ccu_clk *clks)
+static const struct k1_ccu_data k1_ccu_apmu_data = {
+	.clk		= k1_ccu_apmu_clks,
+};
+
+static int k1_ccu_register(struct device *dev, struct regmap *regmap,
+			   struct regmap *lock_regmap,
+			   struct spacemit_ccu_clk *clks)
 {
 	const struct spacemit_ccu_clk *clk;
 	int i, ret, max_id = 0;
@@ -1648,15 +1668,24 @@ static int spacemit_ccu_register(struct device *dev,
 
 	clk_data->num = max_id + 1;
 
-	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
+	if (ret)
+		dev_err(dev, "error %d adding clock hardware provider\n", ret);
+
+	return ret;
 }
 
 static int k1_ccu_probe(struct platform_device *pdev)
 {
 	struct regmap *base_regmap, *lock_regmap = NULL;
 	struct device *dev = &pdev->dev;
+	const struct k1_ccu_data *data;
 	int ret;
 
+	data = of_device_get_match_data(dev);
+	if (!data)
+		return -EINVAL;
+
 	base_regmap = device_node_to_regmap(dev->of_node);
 	if (IS_ERR(base_regmap))
 		return dev_err_probe(dev, PTR_ERR(base_regmap),
@@ -1677,8 +1706,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
 					     "failed to get lock regmap\n");
 	}
 
-	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
-				    of_device_get_match_data(dev));
+	ret = k1_ccu_register(dev, base_regmap, lock_regmap, data->clk);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register clocks\n");
 
@@ -1688,19 +1716,19 @@ static int k1_ccu_probe(struct platform_device *pdev)
 static const struct of_device_id of_k1_ccu_match[] = {
 	{
 		.compatible	= "spacemit,k1-pll",
-		.data		= k1_ccu_apbs_clks,
+		.data		= &k1_ccu_apbs_data,
 	},
 	{
 		.compatible	= "spacemit,k1-syscon-mpmu",
-		.data		= k1_ccu_mpmu_clks,
+		.data		= &k1_ccu_mpmu_data,
 	},
 	{
 		.compatible	= "spacemit,k1-syscon-apbc",
-		.data		= k1_ccu_apbc_clks,
+		.data		= &k1_ccu_apbc_data,
 	},
 	{
 		.compatible	= "spacemit,k1-syscon-apmu",
-		.data		= k1_ccu_apmu_clks,
+		.data		= &k1_ccu_apmu_data,
 	},
 	{ }
 };
-- 
2.43.0


