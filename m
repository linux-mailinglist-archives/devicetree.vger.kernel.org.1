Return-Path: <devicetree+bounces-129069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 609C59EA9AC
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 08:32:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 694D516955F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 07:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4240322F39D;
	Tue, 10 Dec 2024 07:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nNRq3IaS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9555B22E406
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 07:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733815947; cv=none; b=BPysB7HM1JjAVnU5UWejhK3U1J9hxctKUysnDoHMBJRYXUMjGV/7+MGLD94FfIAOLMKq53yaYNPN1Qe/wqj6h6jCeTgNS9aTxT5I7vWO2HKCAa6ZYYf68F72IXTQ3u3/BhGsowG6EpoOkYsde3scQzRSewa6+tcaXClYBHSR2a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733815947; c=relaxed/simple;
	bh=NOfDh6XWMXA3bQDZgyXinaVUDZBBis7f4DQlXXXEj18=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vzbzty31P5/xCf15Ye6vFMIib5Dg6ZvW/sZXkxwa+uIeFXssOJkkt1U093d+v4/yBLqPjibDFdVvJ7H4SMj2oC5tUNfT1VDTrbWiNMxg1qU4lwC8jy6BYP2R0b97e/P+/8TjTrIAaYh92D4yMKKDCyp6/fBbkIHXjToNZdc0TSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nNRq3IaS; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7f46d5d1ad5so4068810a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 23:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733815944; x=1734420744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oIYaaljMW1uOvyE52JKpg1mRNjsi/3D4cn4UsNQnmlk=;
        b=nNRq3IaSCDLph7zpnboRZ1+zFRDvhhk7V0FKhrFDr39iKyHno9vLzL+r4PWE15tXP5
         IS+2L49n+YGoPTZVK8axS49mFkGdK4HKUHbn5e0/Kv6RRj3DtKUH2L1Aq6Svrn8djXkf
         D4W7pHiLAxgjJMivWGHR9LiwWR5ZrgazL7Ar4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733815944; x=1734420744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oIYaaljMW1uOvyE52JKpg1mRNjsi/3D4cn4UsNQnmlk=;
        b=ThEGPC+0eV546Kk+obQ6rTv3uQh+3j1YRJNcQEArxxYiISTESvVKqp+yja0uqESKXv
         iyyLxGbQ3i7+kApv2IRFfEWlWRrF+yKIM9qdIf+VQ/0RUlW2iJMwRyPzhPfvzjd+X0ML
         9W1Pk4HUWFxH7Pe4cny/8DAmGqMNLvC0kWe6KoKux+Qc8jCD/I1fBNDS53qwvAh6TS3i
         GmR5M4glRJgy0hoTNJM500mur36FGOVaPlEDo+G4zw0Y6cDHGt/waWbZ9I8jJKNpvv6g
         S7oYktkjO+ecceZKXi9VWq/cG5OadQVs3auci0cTf+daZfs15vUmq3TtJiP+t9xJ7PzB
         K6UQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqh76CzDVWu+7hGmjT20a3mOC/eZUYem6+OfUSJJ0J8ZQfuBUeaTGJ0bs3sRJOmp49m5+L4VMdcF8V@vger.kernel.org
X-Gm-Message-State: AOJu0YyD/+3T8CdlIPv985Q8yBI8cefwAM1kt+IlMerQdLud9c926FBO
	DAo7SfVO7acnmI4GajW+oTwctShqgZ6ecTidbr+8nHKG3nWbpn7oJsLSP+X2lw==
X-Gm-Gg: ASbGncvq7aytT8qyuSsFgfG1Rda2IYFC7P2q33Oy/bL2M3JeJ8M3zCbqGHZns19muC5
	ixPiWYhutwtchNpAbQynf58DEK8o96Apju710rAtTOKV/A2AcllWXQBGQCZLB9HpZlaLdeNU7d0
	og4oNISIH/7GG58ujr6bmlNjZSDMWs0mJoVeIei+ZOWVjNA6oKijOuX7Swx4/EjFDXfB2aaItpR
	xcuS+RpvhQ0JPMOxDTumj3+vy9TgjzDx11o42krZzlGo/xRUKHVYigrz9yT8jOLGqI/B96+
X-Google-Smtp-Source: AGHT+IEljjpPjIkRAq9lZ+wjZ9Q+4usk5mFRZZW08ysh+jkDMPJ/btZlL9SUPYyzmbG9svkENmEq7A==
X-Received: by 2002:a17:902:ce88:b0:216:55a1:35a with SMTP id d9443c01a7336-2166a0097c0mr55964065ad.30.1733815943958;
        Mon, 09 Dec 2024 23:32:23 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:89ce:2db9:f7d5:156d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215f8f09146sm83693295ad.199.2024.12.09.23.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 23:32:23 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Chaotian Jing <chaotian.jing@mediatek.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wenbin Mei <wenbin.mei@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Andy-ld Lu <andy-ld.lu@mediatek.com>
Subject: [PATCH v2 2/2] mmc: mtk-sd: Limit getting top_base to SoCs that require it
Date: Tue, 10 Dec 2024 15:32:11 +0800
Message-ID: <20241210073212.3917912-3-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241210073212.3917912-1-wenst@chromium.org>
References: <20241210073212.3917912-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently the mtk-sd driver tries to get and map the second register
base, named top_base in the code, regardless of whether the SoC model
actually has it or not. This produces confusing big error messages on
the platforms that don't need it:

    mtk-msdc 11260000.mmc: error -EINVAL: invalid resource (null)

Limit it to the platforms that actually require it, based on their
device tree entries, and properly fail if it is missing.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/mmc/host/mtk-sd.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index e2c385853eef..1bb7044f4ca1 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -414,6 +414,7 @@ struct mtk_mmc_compatible {
 	u8 clk_div_bits;
 	bool recheck_sdio_irq;
 	bool hs400_tune; /* only used for MT8173 */
+	bool needs_top_base;
 	u32 pad_tune_reg;
 	bool async_fifo;
 	bool data_tune;
@@ -587,6 +588,7 @@ static const struct mtk_mmc_compatible mt7986_compat = {
 	.clk_div_bits = 12,
 	.recheck_sdio_irq = true,
 	.hs400_tune = false,
+	.needs_top_base = true,
 	.pad_tune_reg = MSDC_PAD_TUNE0,
 	.async_fifo = true,
 	.data_tune = true,
@@ -627,6 +629,7 @@ static const struct mtk_mmc_compatible mt8183_compat = {
 	.clk_div_bits = 12,
 	.recheck_sdio_irq = false,
 	.hs400_tune = false,
+	.needs_top_base = true,
 	.pad_tune_reg = MSDC_PAD_TUNE0,
 	.async_fifo = true,
 	.data_tune = true,
@@ -653,6 +656,7 @@ static const struct mtk_mmc_compatible mt8196_compat = {
 	.clk_div_bits = 12,
 	.recheck_sdio_irq = false,
 	.hs400_tune = false,
+	.needs_top_base = true,
 	.pad_tune_reg = MSDC_PAD_TUNE0,
 	.async_fifo = true,
 	.data_tune = true,
@@ -2887,9 +2891,13 @@ static int msdc_drv_probe(struct platform_device *pdev)
 	if (IS_ERR(host->base))
 		return PTR_ERR(host->base);
 
-	host->top_base = devm_platform_ioremap_resource(pdev, 1);
-	if (IS_ERR(host->top_base))
-		host->top_base = NULL;
+	host->dev_comp = of_device_get_match_data(&pdev->dev);
+
+	if (host->dev_comp->needs_top_base) {
+		host->top_base = devm_platform_ioremap_resource(pdev, 1);
+		if (IS_ERR(host->top_base))
+			return PTR_ERR(host->top_base);
+	}
 
 	ret = mmc_regulator_get_supply(mmc);
 	if (ret)
@@ -2951,7 +2959,6 @@ static int msdc_drv_probe(struct platform_device *pdev)
 	msdc_of_property_parse(pdev, host);
 
 	host->dev = &pdev->dev;
-	host->dev_comp = of_device_get_match_data(&pdev->dev);
 	host->src_clk_freq = clk_get_rate(host->src_clk);
 	/* Set host parameters to mmc */
 	mmc->ops = &mt_msdc_ops;
-- 
2.47.0.338.g60cca15819-goog


