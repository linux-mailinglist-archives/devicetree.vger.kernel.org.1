Return-Path: <devicetree+bounces-237443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF11C511BE
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E54811896894
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED4D2F60CF;
	Wed, 12 Nov 2025 08:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J/e9vXeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A6F2F5318
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762936159; cv=none; b=NzojY7EQ6Na6p/zcigxhZXprGl+VPsLH2GfERjDfNl1E7Io15bXN9UZOvoKZeLT2LzZTOv4vTVfD7FOhUM7b3XbEL8ds71fGSngwMI4e8EhLlJNoPkw5AIn5S7ooaP5r73t0mfFf65P55Po7HiqvAv09FVdlj/ejAWk9L0ihynA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762936159; c=relaxed/simple;
	bh=/pSl/oshIgGZZ5UojmE7NZi7LX3/HS9nWv/b7bm1yIQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GkY6GNubckO2USQLK5oA2X0DmkFQlFnyjoCmqJ86KJ+FZFALNMYr7bpz1OHqlScxgSrUEBCszJxWv8SWGmnEi5Ts2/65sBHh8xMCWX03lC0vQ2/pDZD9dPeOofmd+/I0cdAi21I8hB5x8Z8Jnt31d6ZFnKYGJmaVFrIeS+OxTZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J/e9vXeZ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso3503525e9.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762936156; x=1763540956; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZHjf7jIZnxtsxZp2emdUV+gnCb68DhjnRQYjjOEpq+E=;
        b=J/e9vXeZU694C7QeQSr0T427StWNm174XH9SeeS/noRWZeYwE5kN3r78yfmLfCxvmA
         vFHkZBMl6t+3rTS6OTvkm4TQKGHXCX1nkRfV37QBhsimS/lVgmn2n2zAsROOHq+2keQ8
         XuiqzoCJe63mcDQVeiOpAmqlKlOMCF8oIfuA5Iddm2KbHFjFseHKn1q/sKpPkzeri/3d
         1rlPszF4frNwTsBlkLzn+2KWkyYKvCpUIz0tOJ9ycjWN5Srh2BF3l6GRTNAe8qIYzZnr
         xU/3kyAw5zF+8nd0OfVHR+lNzc8zmdVeJb4xOLyUIjrYOWYntcyLTt9IPUDhwGtfOQ33
         gXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762936156; x=1763540956;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZHjf7jIZnxtsxZp2emdUV+gnCb68DhjnRQYjjOEpq+E=;
        b=D+mT7rgJa5Av+QjeFpzGRW1feLrjtDiVxdmcfcc2XtWeGvyJgFvFF6HRbvgbSIqT1q
         pKc86yWi1UetQ9Qky/8z8yFMGFW1osmeuopbpTyV5rqbKeQQ4HzokyPfXg1d9m69lAwX
         04b3kkZXvVADwLCBEVSSHTBQ5cTOZOmY7r58a9wcQiIVrD9gs9Gm3EhSdIma0fTB0nyY
         RCtoGl1IQMxHa3kePOEjUSq16TV1gyh8nsT/k2D22KeiwwJGfU2/JojfdbReC4Ke4Mla
         40ip8B23KmNdqoebidMiFRv8suRGXIQlqyXdUI0FCBmm08FenVydUov7UBXW8xP1z/cU
         lFTg==
X-Forwarded-Encrypted: i=1; AJvYcCXkn2m+NLRV5/jr9EERdy7OISn5WkjBKyzWqL+HgbU0UF2Gi91kHzj0Z8FyIYMSRuKBTCBojA06+3iz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz387YRb2jkBWPG95GtC3N6iVfXD2h+ANUKPjCsH72j5LmWLTmt
	NmpGAGdsPAnsji1NyNOSGXtFA0Jd/We0RMyCA0dO76JAJTHES+wzD328xSDNsgj9qd4y2owIZ7U
	07uur
X-Gm-Gg: ASbGnctHR0hfhQH7SBJjGAYOWWtd3RVXyIYqCw0NudngMXRvTyJmKs9v8Dffc3aLMYk
	tfiGdD+5O1nVtPC+JgNdNlmDwiIUjsjx38SyWILI3NqAlvQCzp6DzgLjTrK1NKAqZinciyN7r5U
	e3cc8KEJ6woXCQVQ0wKFmZdmgAX583fSAJGVtagzanZRiy+ykFQEX8qH1z9OnQW5HjDHjrhIq/1
	aJdWtCg8nkA0b0DvtJwXEe376CaoJER0rST5ZO+Oi0WB+db8RU0uqW9NHlaeICzfmIkTYUJOx6o
	5BTz+pYPU+8uDEP087MeSB+GbUMJ+AfXuisa8fTtnREM7IOn/ZYdnD04AZX4PtDHWzIrdHtnIRc
	y+DSka/dUiYPC1PZqFXNkURqISIZfggc7EEtdkH+oTY/sEsPYcXDNUcumMoTJtyKybgnZQOHfus
	awr8VeL8fABC1eR3pXWR62ck4G8l/c6A6nlJJM8dCwu6q30KRaTBG1IDtk2suVYvXJLwY=
X-Google-Smtp-Source: AGHT+IHMFuV13oHLomlsN36IUFndxfrhBYzdbMd7xr9GK3XGTbsPAlzk7x/twn8UPGjcB0CfYJpACQ==
X-Received: by 2002:a05:600c:c493:b0:475:dd9a:f786 with SMTP id 5b1f17b1804b1-477870be153mr16131355e9.40.1762936156234;
        Wed, 12 Nov 2025 00:29:16 -0800 (PST)
Received: from ta2.c.googlers.com (17.83.155.104.bc.googleusercontent.com. [104.155.83.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac677ab75sm31571428f8f.35.2025.11.12.00.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:29:15 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 12 Nov 2025 08:29:07 +0000
Subject: [PATCH v2 3/5] arm64: dts: exynos: gs101: add OTP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-gs101-otp-v2-3-bff2eb020c95@linaro.org>
References: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
In-Reply-To: <20251112-gs101-otp-v2-0-bff2eb020c95@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762936153; l=965;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=/pSl/oshIgGZZ5UojmE7NZi7LX3/HS9nWv/b7bm1yIQ=;
 b=R1Z+JLiXPWLMgVafAqh+YxTkJcvlF+ccSnLeqflAeZ3Ttx/LZtnpqjWgaPkjDW7swQcPDVzoX
 +LgNAN/4E3WDOaOJv39p6v/i5tN2Ua4VMj7GcXteu9NW5JKmTxD3K2f
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the OTP controller node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..4be983d4e291b3afe3530fbea0163f70c1a74671 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -571,6 +571,13 @@ soc: soc@0 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		efuse@10000000 {
+			compatible = "google,gs101-otp";
+			reg = <0x10000000 0xf084>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
 		cmu_misc: clock-controller@10010000 {
 			compatible = "google,gs101-cmu-misc";
 			reg = <0x10010000 0x10000>;

-- 
2.51.2.1041.gc1ab5b90ca-goog


