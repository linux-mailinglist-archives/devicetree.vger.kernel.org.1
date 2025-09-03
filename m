Return-Path: <devicetree+bounces-212255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34617B422AD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88FBE1B280D2
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC01312830;
	Wed,  3 Sep 2025 13:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbCt9QwN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426BA30F526
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907813; cv=none; b=N5wWqa+w1G+Sx1kN8f1wJceqaGJCawivPbnov9eWmt8pDUpRmaap7ojYc2EDvBrpqlB2C4+++5Q7IQfqqQ94SRONmdQK6t/11Yajpc8l02Rmamb+M0Sls4GbN0wa6EQDyXoXwe5Pd6UKEEOn+65yjAqwAmGCr+bk1WR3G7BBm0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907813; c=relaxed/simple;
	bh=dz7gQjCygFQTHCpzStxcsEQEHazG0z97bLLdbPJU1cI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UKGo8S0EEDrhit6NYcBVg0+mH9oH3aoYcQh3MPPlUZ0wu6D4Ug5IrCb6skfPvABLOHUfusovpdEhxUQOL2oFXb3/OO/JjRyQ398zdlTyajkLO/VuMJc8Wv9EvqD5wJcZ3mq4UtSH1Z5NrougwFATm2pKkZu0FaFUzN+/rrFw3eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbCt9QwN; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b883aa3c9so25295025e9.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756907806; x=1757512606; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UYuv3IrS7IPuMyikGmW/lennhceiqK2zrsQcCIyLu+Y=;
        b=GbCt9QwNqPh1zBRtVaheAtuNrRo8B1bIuw+9aZo28tskobvempbkFwJkVGCRPEyroz
         +4d2YeOut4IztKqcjFgBovxJfTm8yzEUnS7F1peemX2iFNGEzCI7vbtjUcTJncZVeW5D
         yKpKbcbDxf+3IYsrIxmwXM8Q2z3UxO3ycd2jSjVfHq/P0QaDTHIfkqycBxkFfv6ws1Be
         XDrOr0LD0El8ja5BvNH3Q1Ld24WknaLtFVuxxO0uIlSL0QKevog97dBEQpkCwAuPO8i7
         HXHvM1huNXkcSpDfwLfD/EgE0vA3xsplKDheXK74XR13PjFm9Tonv9TKKQgbaAxUsduF
         Xazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756907806; x=1757512606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UYuv3IrS7IPuMyikGmW/lennhceiqK2zrsQcCIyLu+Y=;
        b=PEgHJ4UiF1iHJcprorteIOclUiV+28QHTusf89hCkk6ePI0fQOw5sle9aXLj4Apnd2
         27Lt4zSjER6kCZQaTWsNoATl+XwMZIyWgZf+tV1BfAtgO8SbPJymKjpXcZ98csvwmUYc
         o8ewht4yGl7j/5tyEkBMpGYl6L6vV5h/Mx0BAv/dKMb+T8b9n8zAsFGOQWGrCqbZmd2d
         CtNyUgzLHr/Sv1xrV5InMgPiYkP2VUJnhSBked8xvp/QcvRVvVOBUXVhY4aYzQpdSxuB
         x2Dqhnt6rBVSbwUPycolgeehe8/TMuE397pvfXr14wWz+SsfsCS8K7omiSCq3geLFKMk
         YCrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhE5VGwGoWicLSLNlPXx0T0wQMY5I1rgT5GfgzZY1v8kKy/Co3m8IlB30/fpCpnsbVpST12PyNGCNf@vger.kernel.org
X-Gm-Message-State: AOJu0YwhZeYXIusbs9Sw5ufKd6bUVdo32owMHmFO+g5yg2YRstGQudkz
	D/u/8Go5iOjR85v3njNl5Iu+MUL0RmoI+9MGxv/SE06ipxQy+I5GjyLB0YV4f+F4Jm8=
X-Gm-Gg: ASbGncvfR9h/gykbu5AMbnvVgDsqx6tq8I46R8FN1wsqU52Q569/9VrfO1D7OQuPhB+
	SnTMsjg8cXVNqxjPHF1FM3e7nNlRRt8WcyLk+phHaSkmXyGGl8R7lTVOKj9XHfz0T6MLejIQ3rr
	RLSeNjDWiMQ5Ksze80m3FYOv15HLtQN1sDxmxuA5mCUpQoEF1RbCAnflK16dpaawxhCEZvQTW8w
	TqMJgXQwDtbojUxxQVQnUPq0XsOQX0JhxWffMitH5N6cVAYrY1GXMmeIkEqNEIYt3S6ei3q/Qsv
	9fBWXy8BlPiTtjA0kx1Yy/36o1vuL72ERAu1u/mof10VlqDCw61hjRg550fEBTwmtVKLFZYohFb
	U5wspNSP/fFd7MxVvv4r/NhPDIEeqUP48pHBB2Kqj7z244XdyGnFuLVZnqCVP83l2KegaOgtBHZ
	6RMVSwIdVn2+1uejUoxZd+DrU=
X-Google-Smtp-Source: AGHT+IHYANMgRYGXdNHs2QyGL8QnX2/Tp8baR9s93U+KQIcT5D6VPk22Vpiz9HHftpfRlLtqh7LR+Q==
X-Received: by 2002:a05:600c:358c:b0:45b:9a3b:34aa with SMTP id 5b1f17b1804b1-45b9a3b36d5mr60145985e9.16.1756907806344;
        Wed, 03 Sep 2025 06:56:46 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b87632365sm197257135e9.16.2025.09.03.06.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 06:56:45 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 03 Sep 2025 13:56:41 +0000
Subject: [PATCH v3 4/5] firmware: exynos-acpm: register ACPM clocks pdev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-acpm-clk-v3-4-65ecd42d88c7@linaro.org>
References: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
In-Reply-To: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756907802; l=2606;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=dz7gQjCygFQTHCpzStxcsEQEHazG0z97bLLdbPJU1cI=;
 b=LnTHfH04YTaRtLtGrKsu0l2tPiCHi5kfhymeOk52FGnp5MzLrMabP6gJe0V4GjgInvVmxXtUf
 XE+PInRBnXoA2tDMR/QaB3Bf4NEDZH1HPg1Gifx67K5mHfQZQODjRKi
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Register by hand a platform device for the ACPM clocks.
The ACPM clocks are not modeled as a DT child of ACPM because:
1/ they don't have their own resources.
2/ they are not a block that can be reused. The clock identifying
   data is reduced (clock ID, clock name and mailbox channel ID)
   and may differ from a SoC to another.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/firmware/samsung/exynos-acpm.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/samsung/exynos-acpm.c
index 9fa0335ccf5db32892fdf09e8d4b0a885a8f8fb5..0cb269c7046015d4c5fe5731ba0d61d48dcaeee1 100644
--- a/drivers/firmware/samsung/exynos-acpm.c
+++ b/drivers/firmware/samsung/exynos-acpm.c
@@ -177,9 +177,11 @@ struct acpm_info {
 /**
  * struct acpm_match_data - of_device_id data.
  * @initdata_base:	offset in SRAM where the channels configuration resides.
+ * @acpm_clk_dev_name:	base name for the ACPM clocks device that we're registering.
  */
 struct acpm_match_data {
 	loff_t initdata_base;
+	const char *acpm_clk_dev_name;
 };
 
 #define client_to_acpm_chan(c) container_of(c, struct acpm_chan, cl)
@@ -604,9 +606,15 @@ static void acpm_setup_ops(struct acpm_info *acpm)
 	pmic_ops->update_reg = acpm_pmic_update_reg;
 }
 
+static void acpm_clk_pdev_unregister(void *data)
+{
+	platform_device_unregister(data);
+}
+
 static int acpm_probe(struct platform_device *pdev)
 {
 	const struct acpm_match_data *match_data;
+	struct platform_device *acpm_clk_pdev;
 	struct device *dev = &pdev->dev;
 	struct device_node *shmem;
 	struct acpm_info *acpm;
@@ -647,6 +655,18 @@ static int acpm_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, acpm);
 
+	acpm_clk_pdev = platform_device_register_data(dev,
+						match_data->acpm_clk_dev_name,
+						PLATFORM_DEVID_NONE, NULL, 0);
+	if (IS_ERR(acpm_clk_pdev))
+		return dev_err_probe(dev, PTR_ERR(acpm_clk_pdev),
+				     "Failed to register ACPM clocks device.\n");
+
+	ret = devm_add_action_or_reset(dev, acpm_clk_pdev_unregister,
+				       acpm_clk_pdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add devm action.\n");
+
 	return devm_of_platform_populate(dev);
 }
 
@@ -746,6 +766,7 @@ EXPORT_SYMBOL_GPL(devm_acpm_get_by_node);
 
 static const struct acpm_match_data acpm_gs101 = {
 	.initdata_base = ACPM_GS101_INITDATA_BASE,
+	.acpm_clk_dev_name = "gs101-acpm-clk",
 };
 
 static const struct of_device_id acpm_match[] = {

-- 
2.51.0.338.gd7d06c2dae-goog


