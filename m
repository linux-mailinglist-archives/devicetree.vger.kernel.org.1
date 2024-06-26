Return-Path: <devicetree+bounces-80438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E08919869
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 21:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDEED1C21808
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB6E19307D;
	Wed, 26 Jun 2024 19:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tM7Ucryg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68944193064
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 19:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719430998; cv=none; b=aCH5fFWPeVZq1V85YzlMr/dMxC9WQ0N5AuyVN2LP4OKGU0ClgCSeVwLQ9cr0fPJYWNuhP3021sr4xEoXs1/oD9gbMHOOUqsdMcSF6gkwgips4fR9Iix+sFLWz5K1sQU4nDVD/OQQ/QwBBw+uPd2fWmBv1C+dSOqW2MJRjqVQz/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719430998; c=relaxed/simple;
	bh=APPE5dKRkNonvKUqWSiryKOGNpOJlvFzK+dcKt1+dBo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mbp9ZBwiqOVEUgjPRO6wK53+IjA7mBKhoDbts9k2+TG8w9y7FMbx5AZY3QDxEBEYiQgsuH5As9qZSF9oVUlMHg+gCSVUOrqjvWSgKvX2XXaoGrppll8JPfHNGtIpUgxAHs4DfR8j8aLVggPZi9FV8Htln9TOqB/Q5BPryqXXxtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tM7Ucryg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52cdfb69724so5341924e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 12:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719430995; x=1720035795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vZg0Dan8dZ1cJlzdkxx9g6a64AyosFvjL+3niLEIVTM=;
        b=tM7UcrygseR6YravsEJUDH6ROi9tj8d/3rgQKffuTpXjVYjiwDxNlGLGNWH4jkbxhT
         p9EfsQQ35gyfBPEGanIrQsfWa8dPpTdAzlRwz6T35Vr8LHutFNZb5Q6CiKcLO7lMeT2I
         G9SujYGsc84gRZkpdqDq0upsGcPgPAeWqOLf0h+PA87yM2tyYaqCKqm8RdcR6KXGgqSg
         /nhjPdjrhx0e/c+fdwaHZ7NgXzmHtOqCchsG1vfNTD6umpK+yOPWlZEyTHoKCVJTIRyS
         zNOBsv3iDJAFkqFxIB4GSof86/ueTxKYEXmNEc0h94TqkK1WK4HU6X8i7M+44pLzslW0
         l2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719430995; x=1720035795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZg0Dan8dZ1cJlzdkxx9g6a64AyosFvjL+3niLEIVTM=;
        b=Y+W7GUrngMQrjhOMM/yR4L+owHzAXSNZNVzhUs1jk+DyeZHTPbT7sTtsGzD7tuKLac
         XzdPuSyoq75DDE2C0L6PLGnBmelsWyBeSPGcLuXaMZ5JXfADcMCaAClvbxjo1PE6l628
         tWFJNchi7u04tupJp8d65s3lUWYzj8DRpwOedmuyVPMQnDcD2hy4WlqSKiM2LofXsAQ+
         su+QAut7jOhSY7SyF4P3GCfJ2jRVAsglCVL1N6QJTHxmP+NM5YnTPvx+K2b12ESEkF/b
         ZrSVLQ+EvrJUakK/VfFxMCd6HbPr+5giPEVTw+B1vqN1YLX1DkoTFvRdzM1ybtOQ2tU4
         v2lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFyivj11bhJLBvqj4+Skq37gnRyyk7pCJDZFFERk0vXytgKW6j1zNzl3kD/tdUpHioPCzgZM+vBDBBClvjg6kJ8jpx5+SjElS1mQ==
X-Gm-Message-State: AOJu0Yx70UiCQCH4N7l688P4rZstAKtLXyamezdpkTB5iNSWNfEb3zAK
	n+30LtyawpuVqpwv4imY8vMgOpyDdW05nOU15nvz2XDC+KBxewCSYxx6jXGzzMw=
X-Google-Smtp-Source: AGHT+IF5TBKDZODftqTmo/Y2LCMw2rq2sjADo9zE73i9eab9HhHgjvgOrzapHeP3tI3ZKFHbYrq1dw==
X-Received: by 2002:a05:6512:3f0b:b0:52d:215a:5071 with SMTP id 2adb3069b0e04-52d215a5162mr2982937e87.62.1719430993614;
        Wed, 26 Jun 2024 12:43:13 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:24d9:a20a:2de5:8eda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c837eb2bsm36728905e9.39.2024.06.26.12.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 12:43:12 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 3/3] clk: samsung: gs101: mark gout_hsi2_ufs_embd_i_clk_unipro as critical
Date: Wed, 26 Jun 2024 20:43:00 +0100
Message-ID: <20240626194300.302327-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
In-Reply-To: <20240626194300.302327-1-peter.griffin@linaro.org>
References: <20240626194300.302327-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The system hangs on poweroff when this UFS clock is turned off, meaning
the system never powers down. For the moment mark the clock as critical.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/clk/samsung/clk-gs101.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index ba9570f7a5fa..85098c61c15e 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -2846,7 +2846,7 @@ static const struct samsung_gate_clock hsi2_gate_clks[] __initconst = {
 	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO,
 	     "gout_hsi2_ufs_embd_i_clk_unipro", "mout_hsi2_ufs_embd_user",
 	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_CLK_UNIPRO,
-	     21, 0, 0),
+	     21, CLK_IS_CRITICAL, 0),
 	GATE(CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK,
 	     "gout_hsi2_ufs_embd_i_fmp_clk", "mout_hsi2_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_HSI2_UID_UFS_EMBD_IPCLKPORT_I_FMP_CLK,
-- 
2.45.2.741.gdbec12cfda-goog


