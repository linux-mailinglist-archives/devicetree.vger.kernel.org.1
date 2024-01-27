Return-Path: <devicetree+bounces-35734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A683E892
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:37:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 681ADB22E44
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D31B10E2;
	Sat, 27 Jan 2024 00:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lTrpy+zU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0104B210A
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706315831; cv=none; b=RiFGTUrEaMZp43lglHnv0R3ugOAmVrlodu/DUrmGv0OSwJs3OtvxOvLJvPa5bhuxOV2XvlomFLslvEx3PYoq6a3kYaejrQma5lw47L3l0MXT4O8kgeOi4zd0DO+F8aRTp2fDmNDq/cKdNNPRIU6c7i8IDmuVcmlzNpdoZapZVrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706315831; c=relaxed/simple;
	bh=26vfIBZ6/FeUBNB7UQejl5tGj/Q2g9dqknKuLgD78Lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ax2i/63c5iflwRzs5qHEMvTjCN5WieFKY1uZx6aZR4EItqZAwV3WDGkXtRts3TvzJXehwNS46aKqcQCyTuzfg/3CtwqvqjoaKI7dUqT4kDGuUVe5ZA1Zpa8HO8YIi9yZm3+f9k2m7XACMDA5UmTFVcnZCr60do2WAQn+/sIXfSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lTrpy+zU; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso81814366b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706315827; x=1706920627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UWKLkucSe2Xo64gIFBssH+CIGBcy5ZlP0k7ni0x+YY=;
        b=lTrpy+zUzBcVmE1uFNFdJ0FqZsBvb2YOwicCRyMyqn7sRxkuTE9NFOWAttOO8sWjcm
         8B/w1rFU6rTpPbcfgVKqdMi/jT2BsGzoxJVXrqm6q6xu8SrIknM/CSVSr5Cr8wO7S9ZP
         laQfLTANWr2sTcIJG1pXZHJOa0d/eYDcTxM5gj7SfYORcevO7jar0VA3tcEipfev5nqG
         ezJEU0guTgrMycCHo91o5SmKIC3jhMJdhaKjcvD7YwvzwafP0LgjC82BeGSATL+m780I
         AynL3yUIjBsiTdAMcZbmGlhd8Df+34BOnzTtOmeMlGD4Ku2ILzBPXzmtFw2793B5qrOn
         Gxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706315827; x=1706920627;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UWKLkucSe2Xo64gIFBssH+CIGBcy5ZlP0k7ni0x+YY=;
        b=Ta4hxvo3pSMUXiCwfqLSF1G+OMQ5M8fwNHHHg0sYMgWxwoUQcLr5yjsyQjRMpBdt8Z
         vQQvNQLhxs2ZP9g7mjOSUm+CMbpxR47ye4J4sf2L75kd9x/8ovTIGgSE37M8SpS7p3eg
         rV8ESRVtiNic93ScTXTfbsaq+oe7ir5SjCqMPIk699zr/vC1yaGvJ7/I/D7PRvexGLsc
         fPsM0tzTEz1aCN7ncz789VTYhhZXPBVUJ0HNhe45XBe5WqD/W7ZHKwa7K/KHRhxR546E
         27ANCaUGalijqPGV58Qmo9XHPo2aAHy5jz6sUiKt4Uby+acQBTz+L2owf0pt4YzwCJKe
         w0BA==
X-Gm-Message-State: AOJu0Yw7IlFZq1xYV7D6KUFS+m66yPxfHyZtPyANC/a9BdRfIEVrDze5
	ldMgpSKF1u6iYwl7wn+nlGCxot1hY8cuuvRUGu945NTSrQ6lEEKVge2aF/WpCNs=
X-Google-Smtp-Source: AGHT+IHrJvGINoouX99TOJLFVbc2X2mducvsgZcrMKi5L3PaChxPSsCgcCZPPJqp5nR9OF0/geaoMQ==
X-Received: by 2002:a17:907:1006:b0:a35:2841:2ab7 with SMTP id ox6-20020a170907100600b00a3528412ab7mr227213ejb.39.1706315827009;
        Fri, 26 Jan 2024 16:37:07 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id vi1-20020a170907d40100b00a2f48a43c3esm1152235ejc.7.2024.01.26.16.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:37:06 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] clk: samsung: gs101: don't mark non-essential clocks as critical
Date: Sat, 27 Jan 2024 00:35:54 +0000
Message-ID: <20240127003607.501086-6-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127003607.501086-1-andre.draszik@linaro.org>
References: <20240127003607.501086-1-andre.draszik@linaro.org>
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
an incorrect pclkk in the respective node and instead the two clocks
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


