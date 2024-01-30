Return-Path: <devicetree+bounces-36614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD7F841FBE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D635928D525
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D643C657BC;
	Tue, 30 Jan 2024 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SSCKTKop"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF2B60B97
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706607513; cv=none; b=heS6CF6SS72f8TLRC/JFQ5WKA+EpJ77sP/WedJ/ql15QZlg4mT7tgUY1QSIeLVzgaPvZpWc9X6mvuGNAvkps1x2M3bt6EenwiASaAeC+f5LzEj/z/Urygrfn/pBS6EZuJPEeTecL54FQAxELkqhFvui7sMJtexZl3zepQ9kNrY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706607513; c=relaxed/simple;
	bh=VJi9wt2ttIi50NSnSzxGbUiXLYP3vcXYzxcUWXWEWGA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZFZzqPcjBAgb87CvHWM15kSMC+b7Yojiwx53zNl63xX1WJ822WAyMWX9uACOXHMoP/XDm69lf4cjq2W1NwmKllXVYxvPKR0LDPs4v+sIa0579sCM7hZ0WDst3MMpdsqyRe+Azl/tNIzITcnqDiGgLvHm2esALWIQ/bXuuVfz0CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SSCKTKop; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55783b7b47aso4454872a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706607509; x=1707212309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZk2SdLQMZocjryQ3lzHBmDN2CyWaX4eaN62+3uup3Y=;
        b=SSCKTKopuZ18CYIq93LhFIiBAMqz0BBXBG28J/LdpZFxtrIMnA/O+UQhuHWgZ6D4da
         fLtgerbXj9lgxBVghvDhfqFHW5UkciHTkTTSSpT/u/cSmyek9Vn3FLoN2CCuXnNk28tI
         VXovOUeAIQCXMwCWg/obeSZDinPhQrntIZLezcXuDauy5zE2hTkvPPbLACAuapSVoqCa
         k1HmF3cru9EXF35+d32DAF/kRdNfMa1Y2hNQWRMohpWkX6f5scQZkHvWU6qt0N9YR/vT
         spc9IiK7oMCgluMG1QHLMcjVi6jjOwnZ8iB5AbosLfFDYkrqoOKUGFKzcsglJ4RKkv46
         jSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706607509; x=1707212309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZk2SdLQMZocjryQ3lzHBmDN2CyWaX4eaN62+3uup3Y=;
        b=XsBQW2THuB2HGA90jZbAEZnXMa2pr/X21D+d74x7uORheSIJmrZEybwO/L2wWCZ7AX
         GMmZeOn50X663KSdMN+QENOUfhliHLyAJloFzD6R7L8QTKDVwhD9+h4/BbbPfv989Sqp
         SQg8LCDfnZKc6b0kKH6YLR9W96F13Yd5d3/v5LqlUv6lVfsXl36/kU6G0fei+ku6aA3w
         hdS+RP36yLyIYCxFfWAnInEHvozA+53QAPTRJvyrF2ug5zYN1iVIUNXYRYgT+M1FG776
         yG+wPPeeUbygeDjUPFmdYLGimVJ39wp7hVCXj4Z52w3qJBDJJkSC6ffl3iwV0zLZ1wNd
         qaRg==
X-Gm-Message-State: AOJu0Yxcly3waDTCD/WWtUQhYfobhPg2qCgaP6tCCHdpgeux6MMNTaFp
	6Dyw2qmrjjqqSH2yRxr6EsjVtEcn+OYlt0+AcY0LpgKnflAJMjK+B4epW13F674=
X-Google-Smtp-Source: AGHT+IG7IkqQTnuQtM1dYTaeZBlJz5eiTlvg8bHz5Ow9hYGMah/7/h7i5oV1q8kNWB+W5AGHnzsrgQ==
X-Received: by 2002:a05:6402:79a:b0:55f:2aa0:caf1 with SMTP id d26-20020a056402079a00b0055f2aa0caf1mr2164556edy.17.1706607509358;
        Tue, 30 Jan 2024 01:38:29 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id q10-20020aa7cc0a000000b0055ef56f4575sm2281225edt.39.2024.01.30.01.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 01:38:29 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 5/6] clk: samsung: gs101: don't mark non-essential clocks as critical
Date: Tue, 30 Jan 2024 09:36:44 +0000
Message-ID: <20240130093812.1746512-6-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240130093812.1746512-1-andre.draszik@linaro.org>
References: <20240130093812.1746512-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The peric0_top1_ipclk_0 and peric0_top1_pclk_0 are the clocks going to
peric0/uart_usi, with pclk being the bus clock. Without pclk running,
any bus access will hang.
Unfortunately, in commit d97b6c902a40 ("arm64: dts: exynos: gs101:
update USI UART to use peric0 clocks") the gs101 DT ended up specifying
an incorrect pclk in the respective node and instead the two clocks
here were marked as critical.

We have fixed the gs101 DT and can therefore drop this incorrect
work-around here, the uart driver will claim these clocks as needed.

Note that this commit has the side-effect of causing earlycon to stop
to work sometime into the boot for two reasons:
    * peric0_top1_ipclk_0 requires its parent gout_cmu_peric0_ip to be
      running, but because earlycon doesn't deal with clocks that
      parent will be disabled when none of the other drivers that
      actually deal with clocks correctly require it to be running and
      the real serial driver (which does deal with clocks) hasn't taken
      over yet
    * hand-over between earlycon and serial driver appears to be
      fragile and clocks get enabled and disabled a few times, which
      also causes register access to hang while earlycon is still
      active
Nonetheless we shouldn't keep these clocks running unconditionally just
for earlycon. Clocks should be disabled where possible. If earlycon is
required in the future, e.g. for debug, this commit can simply be
reverted (locally!).

Fixes: 893f133a040b ("clk: samsung: gs101: add support for cmu_peric0")
Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

---
v2:
* collect Reviewed-by: tags
---
 drivers/clk/samsung/clk-gs101.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs101.c
index 61bb0dcf84ee..5c338ac9231c 100644
--- a/drivers/clk/samsung/clk-gs101.c
+++ b/drivers/clk/samsung/clk-gs101.c
@@ -2982,20 +2982,18 @@ static const struct samsung_gate_clock peric0_gate_clks[] __initconst = {
 	     "gout_peric0_peric0_top0_pclk_9", "mout_peric0_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP0_IPCLKPORT_PCLK_9,
 	     21, 0, 0),
-	/* Disabling this clock makes the system hang. Mark the clock as critical. */
 	GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0,
 	     "gout_peric0_peric0_top1_ipclk_0", "dout_peric0_usi0_uart",
 	     CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_IPCLK_0,
-	     21, CLK_IS_CRITICAL, 0),
+	     21, 0, 0),
 	GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_2,
 	     "gout_peric0_peric0_top1_ipclk_2", "dout_peric0_usi14_usi",
 	     CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_IPCLK_2,
 	     21, 0, 0),
-	/* Disabling this clock makes the system hang. Mark the clock as critical. */
 	GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0,
 	     "gout_peric0_peric0_top1_pclk_0", "mout_peric0_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_PCLK_0,
-	     21, CLK_IS_CRITICAL, 0),
+	     21, 0, 0),
 	GATE(CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_2,
 	     "gout_peric0_peric0_top1_pclk_2", "mout_peric0_bus_user",
 	     CLK_CON_GAT_GOUT_BLK_PERIC0_UID_PERIC0_TOP1_IPCLKPORT_PCLK_2,
-- 
2.43.0.429.g432eaa2c6b-goog


