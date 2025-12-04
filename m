Return-Path: <devicetree+bounces-244214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCE3CA27E4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1C89302D665
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3AD30DD31;
	Thu,  4 Dec 2025 06:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PgfAGVmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541612D29B7
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764829036; cv=none; b=HoMFBxCMn/OS/EK6hbJzv/RbZDCrYmhINJBTx78FXpf2f2JZ1+JxrN9Vi47U+yGML8f1iTTthezNH3iIM6wY2Z+r5urL0P/i5kAad3sZLa174k8FpIS9ai8eXevS5A1rg2CyIWq5qEmoCNGOVVu9zhxXHlvJzgx/RucYA/8OSOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764829036; c=relaxed/simple;
	bh=uBzb5hn8RwRxDCS3Rfjd1ySeo8/NB82z2Y70tDhB9tc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qkjhO8NJzzb7inA6LcmiuPf7iRBJwdkwr0kG9Mv+MpWKjedu9h5Lu4g+iqMg12vOIijP/obwfrGi1FA3BvHQHrMQTu3bsJ+c/TqkQB9TLh38S3qyZzqwMFUsgQ0KQWvC9NP9MYqpV2jHknH9mp0S85Gl5Jqd4g1bqKF3XYCtjDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PgfAGVmF; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso905772a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764829032; x=1765433832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDV4ueJ5OUHwsY4jMIVfrhYRT+0a4XHLxBIh9+KCo7E=;
        b=PgfAGVmFCm2cl4ESqWNRWEBmC6sXHfsz21I/xPctdrFnA6kWasg+71OM4WlApeXBLa
         Q2pQfsk/80lmgU8M5kBfSeOJe4CAi3wFSzQdmNnd+uNTsIX3TbhUW/GrJtc6bCdFdWyH
         vDkTnq/rfF1B5Ya37nBoQMwZsA/ELtVgluq2A8CD6vnr1RpooVtV9ttFST1FYDADjj8E
         fcy+IERsTceE37q6NCUXJvcEPlZhi1NGuUn4rmM84ogtay41NLMHwbwubKBIwO1080RL
         GKEpmeFlmyHiiGnrXvHKNeY+mt3lptTvajnyn5yKvB/DJ90GfKizjYiqdpUcvwU1Ux2E
         bH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764829032; x=1765433832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wDV4ueJ5OUHwsY4jMIVfrhYRT+0a4XHLxBIh9+KCo7E=;
        b=ANg4apmtdryoWrbc5MYi6w2ulIHZZ751tR0uSXSbBq7ixplaM3BbzNmI4qOk+1Mgtz
         7Ha5n3SLtfUCdZywfowQ60ACR/C/UD26ARteVHkPujaTpxpQM/WarNln4hdTQcNc6nRC
         p1GbO2TSUk1lpdQe0XM0Go8HZoOdpmiRXNDOVeaKJaGkD2UQQHiQLSGwJK3NgQehqzId
         6gp9GEk/hNurTNyAVv5nCXQaKMlrVWlGWqSiqiP5ShxYjtkHb+9cXtoqp1PA4myuuY/H
         f9tQBYADs4HM5Ol8p23oabwxTvITM1ZQooSl5TKtpzBEBoXoSf9GTmWtYooMzCrUhbxF
         iM2A==
X-Gm-Message-State: AOJu0Yzv9yZvoSYuY4sIkbBOHEhQrRniKH9oo8a8WAXpnEcnS2IIwDnN
	IxAOZcO8qMYBAEAj8SWN8o9T29L0AoB3ZpaNsz+9Z/zD+LmQHRrhXhJP
X-Gm-Gg: ASbGncs8V16vINncQtpaULeoBrrggXHX9oqE+0hkPqwIplCjtgAcUAazrszWcTGX0I/
	VyFhBHLlIBsR9gKxSvOnp3ecT9nBVVpyWZz8KJV7yiqEvxTHKHgXSw+F6jDrQSid1QT9UlERWk5
	eggWOYTgGarGHX0S34+SuUtxNLimcS21O8nNFe557bsDoQw64rj0/YYTdSuvPasukWz/aQvB2s9
	zLNd9PHrC5is5qr91w9qDQychTcwm7c1CheT9kLI/liN+lLAVIz+dFxj15WBqxTAlEfNmWoiSkV
	Hn96G0qerTneFGxyx5MV6j8VP0vjemAikj5wN4EHogsMBV5gPJ+5wzLVg4ZnbL4z16nQdl0j2iZ
	fRw0NKchw7Iwf4CuPquVVRV9cri3HK1L7HCL0j2pvcVvUciOyJTTsB9APLSULM9vsPUuwKw5ykQ
	4=
X-Google-Smtp-Source: AGHT+IHjjOps7OFhIOvLIknNQvKPCH2qAuahzZ5Rpu+KEg83rMQ1MpF/A+ajRn484dw3CkB2Jg5bjA==
X-Received: by 2002:a05:6402:1eca:b0:640:cdad:d2c0 with SMTP id 4fb4d7f45d1cf-6479c49b919mr4308385a12.25.1764829032448;
        Wed, 03 Dec 2025 22:17:12 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec2d8csm490159a12.5.2025.12.03.22.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:17:12 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/4 RESEND] clk: tegra20: reparent dsi clock to pll_d_out0
Date: Thu,  4 Dec 2025 08:17:00 +0200
Message-ID: <20251204061703.5579-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251204061703.5579-1-clamor95@gmail.com>
References: <20251204061703.5579-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reparent DSI clock to PLLD_OUT0 instead of directly descend from PLLD.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/tegra/clk-tegra20.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index bf9a9f8ddf62..9160f27a6cf0 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -801,9 +801,9 @@ static void __init tegra20_periph_clk_init(void)
 	clks[TEGRA20_CLK_MC] = clk;
 
 	/* dsi */
-	clk = tegra_clk_register_periph_gate("dsi", "pll_d", 0, clk_base, 0,
-				    48, periph_clk_enb_refcnt);
-	clk_register_clkdev(clk, NULL, "dsi");
+	clk = tegra_clk_register_periph_gate("dsi", "pll_d_out0", 0,
+					     clk_base, 0, TEGRA20_CLK_DSI,
+					     periph_clk_enb_refcnt);
 	clks[TEGRA20_CLK_DSI] = clk;
 
 	/* csus */
-- 
2.48.1


