Return-Path: <devicetree+bounces-76804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC56190C08F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A7F2B232EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1031B5588F;
	Tue, 18 Jun 2024 00:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rq2edSdo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C405B1CFB9
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671072; cv=none; b=p5+thYC1WZVffawmcJZ+0NJROJYlJO9+1fB9Qe07G2XZfTkX2JKZcgfLVxZtIP27R2TShwSVsnQvlVWc0Uft1T5Oi4VzhMZbClPUOOAzrJNuBiin8EXMAFj7aqDh1ew6CMkxPkDRcV1V1uq0HS2uAkgi4EAohyf5agzHW+rIs5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671072; c=relaxed/simple;
	bh=idQsCXTRSpteqMQ/ApU8QqN2v+CejLFr+G+P9eZMvmA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i+sY3CFi+86w5lgPwFdxWu972oLFkAHQJ0keMeSxpcBydxXj+EHruQ8fx1LeNMbhbUsQENFRcclKn1FeXqr2uAk2BHrFzBlMROczjtogun1pfJ7F6iX65LcsoSukpCVdyP1Nyx/k56R6WkhAPWIj8HJWl9hQVIpXHph8GUyMdBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rq2edSdo; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5bad217c51aso2685822eaf.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 17:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718671069; x=1719275869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q/EO8T5rRTkiZ8LbuFbhP2DGGAGyuLlPjhaKm+CoFdc=;
        b=Rq2edSdoPiP/PVPV51jRdJNi/JGzv7NjujvKFSAc+VlJ+kg6PifKAO8X2a9+FyTjhi
         4x6OQFQ5qCmlFBdwTeR9ItFl/tLIW+liY7bmPnCtja4v9HyPwVukt3tUPInsORSB+OAV
         44rBSezwB+ijG2u7TWIMczkBlCJb+ecQ+T9bcgP7PG5btvUsOYqjqmQ1UH8japLMmIRL
         CA1hSYfdiqfUd6HYLBTOsCfhhQHy3XScL0YXmbMtiqjtHp33Yg56dLLVj8WIRTrrQHNi
         65Kj/dOkycuJp62P4sAaJIBrYwzb9ucdrSN2PIVCs+Rwz7/ejZqZ8OeFkMHwgwbIPoqQ
         sj7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671069; x=1719275869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/EO8T5rRTkiZ8LbuFbhP2DGGAGyuLlPjhaKm+CoFdc=;
        b=coIPplD5EjihNPMNLXAETWXP7pc0osj5t6ZoGFGaLZTtcCgY7LNkc2El11nUp6MKwD
         NNrYljRvu5DHoDEnEDX1eH5lYBGTmCbvYMx29ur92fYB2jpw/7M779S4P6LCPyu+ZImU
         UeJX6xCwddR9SccsVaIyPFhL2aUIFs42eRC22zXSrlLxh+J9uaIqWQ15R/n9uEHC8yX9
         9EjmOdgBRT0sh2RUg9gduCr3XSkTch73jOK72ZuRBM7GHXpgh0qp9lTrlFZhrpgJkCSX
         jnY6gAdinvCZdfiN7MeqowPbXKHfgk9ufw1PHLa5OaDNYIQKAbaVILhCnOi0wdZd85KU
         Vzsw==
X-Forwarded-Encrypted: i=1; AJvYcCVRGm/9vtE2E0E6MSCGCGtydOp+w3fEraBrJAPMtC3sX/azmhYZ2rSj6Sn6lF1uSIfNhrM93L5/MWua9Lx7Sj7xWfNvoIPa5EquZg==
X-Gm-Message-State: AOJu0YzDZSexD2ikSrrDilWG0Kp89f49+YvJO3Vu09R0SROLWUXe/yZ2
	K6mEVRTCr+5IDf+hEqenKcRSzUobCsAbEQ11Nf00wP7BvPK7kXnJnA11LHCy9ks=
X-Google-Smtp-Source: AGHT+IEcoB3JmFJ9IpjpkDLM0gXNp4DcLepn0oB2jv35HwAPRgPQt+5YDdLNa1XcS8JrDiT3nZnRlg==
X-Received: by 2002:a4a:7651:0:b0:5bd:c2b0:f599 with SMTP id 006d021491bc7-5bdc2b0f7d3mr5945744eaf.9.1718671068698;
        Mon, 17 Jun 2024 17:37:48 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5bd5e19a4e7sm1320770eaf.20.2024.06.17.17.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 17:37:48 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: exynos850: Enable TRNG
Date: Mon, 17 Jun 2024 19:37:43 -0500
Message-Id: <20240618003743.2975-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618003743.2975-1-semen.protsenko@linaro.org>
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add True Random Number Generator (TRNG) node to Exynos850 SoC dtsi.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index 0706c8534ceb..f1c8b4613cbc 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -416,6 +416,14 @@ pinctrl_core: pinctrl@12070000 {
 			interrupts = <GIC_SPI 451 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		trng: rng@12081400 {
+			compatible = "samsung,exynos850-trng";
+			reg = <0x12081400 0x100>;
+			clocks = <&cmu_core CLK_GOUT_SSS_ACLK>,
+				 <&cmu_core CLK_GOUT_SSS_PCLK>;
+			clock-names = "secss", "pclk";
+		};
+
 		pinctrl_hsi: pinctrl@13430000 {
 			compatible = "samsung,exynos850-pinctrl";
 			reg = <0x13430000 0x1000>;
-- 
2.39.2


