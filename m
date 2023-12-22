Return-Path: <devicetree+bounces-28116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A90C181CD55
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 17:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 231211F23C3D
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 16:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7333228E39;
	Fri, 22 Dec 2023 16:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Acal+pj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFAD25763
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 16:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40d2e56f3a6so12068375e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 08:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703264084; x=1703868884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2C5UTNIPG7mjByyTbN4UUYUJWv2TfPmtilLr3g/kHI=;
        b=Acal+pj5ltoXwBdUReQyg/omMeFy1jj5Lxj6mhz51FAs58aI/exFwygV2ItRqsW301
         6+vfgPxkEiNGz/weGDz4ovq0SwJtKWiCZdpgbfbPxQ2hknWsSXRxE53opZwlvKXqIslY
         4uzUrkALoOC9r0syqwfDwN8MW/7D9MnBArpr84cH/Ym27nrSN0UiQrw7woE7QjpEMSaw
         MPnMGcfaixVYLMM+7WqP+6rKknmcvgoczrvr9NezTvdnYWNjg88PzBw1WLqpps8sL2qU
         AjJycwSglELdYIpdGDjCi66QXDVxe9UGzPFkbbKJYKAaurM7hF3QM0gEDiSONVSyb6CM
         Epyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703264084; x=1703868884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2C5UTNIPG7mjByyTbN4UUYUJWv2TfPmtilLr3g/kHI=;
        b=efrdehzJnwfqKOx0wyEn3cdgnPl13FqAyf/bJsPwTbS0oFjT0Tw1zu+q+/7Tx0kPLb
         hJB/aSS8u/b71P7MS5oYeZF9lVxHBWFCkEZvNWV5KfRjAsN8Nqgll1hCiVjf+vrFbOpc
         I9WU87qQ9LdS33p3F6BgTXem95mY83sV/KLWmh0jiST0P4zgSMeZYSx/v7vYczRHqF9B
         J5K+CFpmoCydBfZ8jnoBGy7qNjwanGJ4T5KQccl/vmprQ6n6chh4C3J9UOB3quvKP25n
         3n7WiS4GV0Cq3kti1/F22B3lLCKo3pNCVDgAq1TBjRBFezwJM/ZKDQBoYCl+6MSimwY0
         DqNQ==
X-Gm-Message-State: AOJu0YyQnKnYaDoac9I1c/y/Uj0bBNGeQRcA973TF3yMjlC2A7gP0Bf2
	TitUObCm60cAGkLqw2eZnO08yZIl0hWtBw==
X-Google-Smtp-Source: AGHT+IEDtRq/ZQw8ts0TCzkxHtm3cLI7WebPXBaKkTQlRZdi99kRrHc6ikhQl7aJvQ9Z9sqp/hNTUA==
X-Received: by 2002:a05:600c:a686:b0:40d:39ea:1076 with SMTP id ip6-20020a05600ca68600b0040d39ea1076mr900090wmb.93.1703264083920;
        Fri, 22 Dec 2023 08:54:43 -0800 (PST)
Received: from gpeter-l.lan (host-78-151-55-40.as13285.net. [78.151.55.40])
        by smtp.gmail.com with ESMTPSA id i15-20020a05600c354f00b0040d378510adsm10138520wmq.1.2023.12.22.08.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 08:54:43 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com
Subject: [PATCH 2/3] clk: samsung: gs101: register cmu_misc clocks early
Date: Fri, 22 Dec 2023 16:53:54 +0000
Message-ID: <20231222165355.1462740-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231222165355.1462740-1-peter.griffin@linaro.org>
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update cmu_misc so it is registered early, as it contains
the gate which clocks the Multi Core Timer (MCT). This clock
is required early in boot, otherwise exynos_mct will fail
obtaining the clock.

Note this wasn't previously an issue as exynos_mct wasn't
enabled.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/clk/samsung/clk-gs101.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index 0964bb11657f..590119a25c18 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -2478,6 +2478,15 @@ static const struct samsung_cmu_info misc_cmu_info __initconst = {
 	.clk_name		= "dout_cmu_misc_bus",
 };
 
+static void __init gs101_cmu_misc_init(struct device_node *np)
+{
+	exynos_arm64_register_cmu(NULL, np, &misc_cmu_info);
+}
+
+/* Register CMU_MISC early, as it's needed for MCT timer */
+CLK_OF_DECLARE(gs101_cmu_misc, "google,gs101-cmu-misc",
+	       gs101_cmu_misc_init);
+
 /* ---- platform_driver ----------------------------------------------------- */
 
 static int __init gs101_cmu_probe(struct platform_device *pdev)
@@ -2495,9 +2504,6 @@ static const struct of_device_id gs101_cmu_of_match[] = {
 	{
 		.compatible = "google,gs101-cmu-apm",
 		.data = &apm_cmu_info,
-	}, {
-		.compatible = "google,gs101-cmu-misc",
-		.data = &misc_cmu_info,
 	}, {
 	},
 };
-- 
2.43.0.472.g3155946c3a-goog


