Return-Path: <devicetree+bounces-241983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0CCC84DF3
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:06:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AE3D3B092E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F196E31AF21;
	Tue, 25 Nov 2025 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k1czExDw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D0F3195FB
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072382; cv=none; b=sGZYTulf4Ej/MLfmbMnstO0YQf0B5VC1AYaU7ODPXpH4i/U+ZbMchclgaeY0ZZPqvb6/OQmULxK4GiOh+z2jVv19GaUjgAJrJYCUV1LQko0myEvOrHOxMQjTi+hxHA6rvv7pFigMUJwXBRCO92gqcHtwYaGLnn1LmSq7Ukvx57s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072382; c=relaxed/simple;
	bh=oSxMov1SESrAgpKKZcLn4WtxFn0hZta8BIUSnqu+iNo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dstdwal63XO1voV9T3esX6+H7BV+TRCv/RBolCxu/vAPjT3E+pL/iy+ZZjCXWWFgjw8t/79cpDu5I1CZjjPeNcWRsOArl348YPVY6ydPgs+JROnOqJvwl2SENhv/deOMHKHn61+AKxow2t8J92/GgFE1fGcpmca/7O5eg04zduE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k1czExDw; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5957ac0efc2so5692218e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072379; x=1764677179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQgVO7SUdIDltP6h5MVysIssYHMNX5v/mXvkkoKdSwQ=;
        b=k1czExDwJZmYSaGUoDNF3wafP+LkiTmWpEq3eJgODWVtvNp97tx3MXr8Dw5vf6OFSl
         bHyItokgSY/CTT4BbDg/x6WQJD2cZRKZWdCWHtpNLdIkQVYNFCoSbiw08KVPOkXOwthW
         xMBtUwy9U0m27G8BDMqRKnz/Dp4HLQR9iiGMDOeW5mRkUNoqoZlRH+ss8SFEPMtUlX01
         nkfe7MivbEsRLI8qUDPeMP+zCB8ORUVtmo9aHOZYoj+U1Z1LJER2HSOonSCzChJvR17u
         wI2RD7lIOB9XB5QJciVWKRyxxM2stn6KGi68VTBIvJ6qYUt8tqgSjUreKp1qYxpOM1hP
         yfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072379; x=1764677179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MQgVO7SUdIDltP6h5MVysIssYHMNX5v/mXvkkoKdSwQ=;
        b=ShaVQf8mELpZaCj/tz87NIofzseXGG7MNdYXVG7S2anL7YgfwMXrdgm3g/BFWlDcFB
         DFxYbJHeUHb5ZzjymEBlU7z8GIJfrRzDT35Mym4ORAc7nWZevo/Nd1JcK8sT47Vm2rmb
         eFOqxe7/uSm0yqxpEpJAoz0YFAFORuBtjthJEtaui9swjC72tZo+eF9cr4NSzvr9zUQ8
         4tIhUgOhiK7ha+xnL9Z4T3o1oCdnMlDVtFbIsgCF4Qqyuz2IiOEF30IhEwe9ID9HJyR7
         mt36+hAcmikM764vdaTB9L4KexW2rRKaTycwwQy1hyywfhqDWoHgZsE8UmR4PPHlsvH6
         ohGQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3phjIhNnq3a9KWoTwqwk1Ddw5RvcuEfXRlX4AoP8NBKQ3xo8o04oqDiQ96C49E5Ij84xXAHCiOxH/@vger.kernel.org
X-Gm-Message-State: AOJu0YzV/YTskCbX2ao0coDb4JFHy4MCy1KS3aJlsnJrXucZcU7eGhjO
	RTPw6mRI2k6vmfE5ywyytrxwJk0GYeluI0Bh8B5YeRe4Bgoop96Rqztw
X-Gm-Gg: ASbGnctH7SXMKCWLBVTGG8xRQPZkHdkLVmgVmP69C5LKnxWPcfMIYw2CcXlxBYi/M0Q
	tdTZuKmxhJDBYlZ8sQIK9TTGa99GKK/sx6Lmh1uKUglFIa9EIO1nDGwqZR6GzeuNs4eBMW56KUn
	SuGmCqmTKde55pZ38uXZoOI8it/7AK4h4HVRTh5g158tFF6TpBBxltH6ff7+iuvWwN0yYH4tA0u
	JOV3pt9KBIeE4FScbOPI3IUUFq1dwytNtMZV5xZNkXaS5V1+h4Q/tNh+1+O0Ak1QXt5bd1x+hF7
	dyARvYxCCMe7r/YP6crptv4JEdxG8ahNEN67imD1DBFoT5tgBEjNgFTQquBjvhGH191Uhy6dJc6
	vqKyrOJKrqlXEhfiIOmLO+RPZXa+bfF42Pyq6bJSukXMitmqV5A7e8HgZqQCsGLBU8f2DyakyeF
	E=
X-Google-Smtp-Source: AGHT+IGtM1PyFoR4RY0zhjHY2chTLDIVD6KPz0Yfdd6DO6DZabktBNfX2NguAOJht6zWvGQbtOixQg==
X-Received: by 2002:a05:6512:234a:b0:594:48e6:26b8 with SMTP id 2adb3069b0e04-596a3edd5e8mr4793046e87.39.1764072378784;
        Tue, 25 Nov 2025 04:06:18 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:18 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 01/12] devfreq: tegra30-devfreq: add support for Tegra114
Date: Tue, 25 Nov 2025 14:05:48 +0200
Message-ID: <20251125120559.158860-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251125120559.158860-1-clamor95@gmail.com>
References: <20251125120559.158860-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Lets add Tegra114 support to activity monitor device as a preparation to
upcoming EMC controller support.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/devfreq/tegra30-devfreq.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/devfreq/tegra30-devfreq.c b/drivers/devfreq/tegra30-devfreq.c
index 8ea5b482bfb3..fa83480a923f 100644
--- a/drivers/devfreq/tegra30-devfreq.c
+++ b/drivers/devfreq/tegra30-devfreq.c
@@ -963,16 +963,22 @@ static int tegra_devfreq_probe(struct platform_device *pdev)
 	return 0;
 }
 
+/*
+ * The activity counter is incremented every 256 memory transactions. However,
+ * the number of clock cycles required for each transaction varies across
+ * different SoC generations. For instance, a single transaction takes 2 EMC
+ * clocks on Tegra30, 1 EMC clock on Tegra114, and 4 EMC clocks on Tegra124.
+ */
 static const struct tegra_devfreq_soc_data tegra124_soc = {
 	.configs = tegra124_device_configs,
-
-	/*
-	 * Activity counter is incremented every 256 memory transactions,
-	 * and each transaction takes 4 EMC clocks.
-	 */
 	.count_weight = 4 * 256,
 };
 
+static const struct tegra_devfreq_soc_data tegra114_soc = {
+	.configs = tegra124_device_configs,
+	.count_weight = 256,
+};
+
 static const struct tegra_devfreq_soc_data tegra30_soc = {
 	.configs = tegra30_device_configs,
 	.count_weight = 2 * 256,
@@ -980,6 +986,7 @@ static const struct tegra_devfreq_soc_data tegra30_soc = {
 
 static const struct of_device_id tegra_devfreq_of_match[] = {
 	{ .compatible = "nvidia,tegra30-actmon",  .data = &tegra30_soc, },
+	{ .compatible = "nvidia,tegra114-actmon", .data = &tegra114_soc, },
 	{ .compatible = "nvidia,tegra124-actmon", .data = &tegra124_soc, },
 	{ },
 };
-- 
2.51.0


