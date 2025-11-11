Return-Path: <devicetree+bounces-237254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E28C4EE48
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 16:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 50A064EB812
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 918B836C585;
	Tue, 11 Nov 2025 15:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZZp4HGLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC5F36B075
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 15:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762876598; cv=none; b=kse9BQeJ6OcjhOamgluh6ZPt3WHMqH0aZP0/LWESsnrdXLGSkQaxckojifxlXIorC/Z5jnmthqq3jSqnkfMBx4k1l4WiPZ1wxAqCjrLYuq6uREnJoSg21mWf0DWh6cA3lwBi1IXJT90JwLVvFw5yZ4YU+GT7eH6ghOF1y1y+Fsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762876598; c=relaxed/simple;
	bh=I8gVSNxw2aOO4ZdP0s2HcOB6Vs9l7ZVMP8y4tYKEw8M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lo1q8fmYk1fXzaMBsA/jPSrHmQ/2nFbrSOXUlYUDu0w7Yg6fZNY5yToTGJfLyDqEfmi/zm9bYMnmS5WZ3z42z+A09kfkZiexTYlI0QaCOnQM0WMZRYzUmFVjuU9Sj2ZOQ1ioT3J32kRAykaDQpthGD3MCldpNwvJCLlZVLacQTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZZp4HGLR; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b2e9ac45aso1903820f8f.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 07:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762876593; x=1763481393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l76VTWaL5JNJWQVkhMGxzjJJc96x+kz2NkszPplq7c0=;
        b=ZZp4HGLR8arYZ/gfY2EfteuDWGLseuOpxdr5xLQS+LZODQkb5OhycKOE7yuk6Ooxg9
         gVuYiQ1sHdNa+aDZDTJmytTPQAntLpSm573mF0B/jPUblne9Z2uECHQdces8FK0Zy9e9
         pUVAQFZ7ENkd6WCcOqDVNpuTrmHIVNoKqtVY0av9x/Z5+xOWxnT1ZF1ZY/ltux+OQuVc
         lj4uyqxCIJhG/hFOHEy/QyU3RTy7kH6wiSqbiDh4DTzeHo1MG5le69BgfW56FzkpIdtN
         nOs34CPd9YWydBKDYvaoj0+c8eDibFrowhNibKZ/+mtwaaemNjLhkd+KEj/QyA2diVuJ
         7rQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762876593; x=1763481393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l76VTWaL5JNJWQVkhMGxzjJJc96x+kz2NkszPplq7c0=;
        b=JiyXX1f61ofvmWiPu3ZEQNvEEZiS3NacP/oI1zAewcH96Lq1ZReHQ2k6eoVRffKp7A
         mHa4REQDM3UTqUsmf2ap+Fs/fZE/iaQLS3v0c1PeeRLrKBg7BcT2DjcPpjQ1Q1fp017m
         geOgE83omRDnDVFQwyR7wiH8o0UALFMy/pm1mZPQ5xGtKmBfF3OyZTpeO0cBwz0KWUkv
         /iY4LTSz/RLrAeNJklgRfhvojoKU1oDh5DmIswFgexwJPQToNgIMA56BE/xhbrUV1n+2
         wtH2gokoCOGFctZEoVE17y+O9i5n0Qkjd3innH8+pQ5R1Mn1ErKRQyL1Dt06ItCJwlUF
         8ppA==
X-Forwarded-Encrypted: i=1; AJvYcCXaDpUuTQWFcQqCtsTQNtG0ZNhfAzjBk3HgtgQJQAWNhd8yhgHerYv+R5KxQIo2cMxo+IBBpffFcQF4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0KffW7VHJz/c6UB80bgMvdSow5r4HMHTEPcwMlfh7RZkO+6NR
	juFDj1Tq2rYNMH3Q9+l3UFHnlvD6SjK+YqwDBV5/1Y5JDd900DJWOnp5
X-Gm-Gg: ASbGncv39cvXBpZ0MLiG+ad7N35AsuPo2XQkihCi4gn0j106eTIQad3R+wciI+XP3NT
	uQv49S3CLzOxqohkQuGRAzTdRgcNtkzM+ECH2KSRyY2sEe7IFgvDPj5VsZTIkhRWl6MyihWhnZf
	UEYN1cKnNOHgs/Rg0swso8tjacmDMJyd7xppM2LJlJBqt6LYG7BVtpDlcSm1mQo8ATHW3NMtRT7
	tBkNSjCtPtC+3P0Y/1M+UWOr7ZD0NS1CNnbuAg7p8Py1VkLejrMOaE+wCsUcxtlfWEBNpAufjZD
	wHIBygzVHKEZn/FaILm7Qcysnr98mCjXcVybZH8CMPt5FPHIOvlKiprCXIskObckx6nJz4C6a7w
	sCgGvy66aSc1DMk4bZayDOn0U/MS134zmNe67TyzjdtoDyG7JrZvcpglRctjO6TzZYXY+GBwwja
	PXXBrPhq9APs1FY99ciY/gv+IvNKr5bw==
X-Google-Smtp-Source: AGHT+IGrlsOxD3VvyhNqHTYmqSwZXcEDRU2mam9V5xs1eNPMUgYcK58098Bm6bZZtgLeXYdOtcLo1Q==
X-Received: by 2002:a5d:5d0f:0:b0:429:b1e4:1f79 with SMTP id ffacd0b85a97d-42b2dc6b007mr11397434f8f.58.1762876593479;
        Tue, 11 Nov 2025 07:56:33 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm28676766f8f.19.2025.11.11.07.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 07:56:33 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v4 3/5] clk: en7523: reword and clean clk_probe variables
Date: Tue, 11 Nov 2025 16:56:19 +0100
Message-ID: <20251111155623.9024-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251111155623.9024-1-ansuelsmth@gmail.com>
References: <20251111155623.9024-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rework and clean en7523_clk_probe variables to make them consistent with
the rest of the source. Also apply some minor cleanup for pdev
variables.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/clk/clk-en7523.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/clk-en7523.c b/drivers/clk/clk-en7523.c
index b040f0f0d727..d98990a157d3 100644
--- a/drivers/clk/clk-en7523.c
+++ b/drivers/clk/clk-en7523.c
@@ -700,25 +700,27 @@ static int en7581_clk_hw_init(struct platform_device *pdev,
 
 static int en7523_clk_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
 	const struct en_clk_soc_data *soc_data;
 	struct clk_hw_onecell_data *clk_data;
-	int r;
+	struct device *dev = &pdev->dev;
+	int err;
 
-	soc_data = device_get_match_data(&pdev->dev);
+	soc_data = device_get_match_data(dev);
 
-	clk_data = devm_kzalloc(&pdev->dev,
-				struct_size(clk_data, hws, soc_data->num_clocks),
+	clk_data = devm_kzalloc(dev,
+				struct_size(clk_data, hws,
+					    soc_data->num_clocks),
 				GFP_KERNEL);
 	if (!clk_data)
 		return -ENOMEM;
 
 	clk_data->num = soc_data->num_clocks;
-	r = soc_data->hw_init(pdev, soc_data, clk_data);
-	if (r)
-		return r;
+	err = soc_data->hw_init(pdev, soc_data, clk_data);
+	if (err)
+		return err;
 
-	return of_clk_add_hw_provider(node, of_clk_hw_onecell_get, clk_data);
+	return of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
+				      clk_data);
 }
 
 static const struct en_clk_soc_data en7523_data = {
-- 
2.51.0


