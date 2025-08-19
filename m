Return-Path: <devicetree+bounces-206453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71051B2C555
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:23:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B41831B65712
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CAF343D6C;
	Tue, 19 Aug 2025 13:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LSPYjr1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7822343205
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609427; cv=none; b=U0FJ0y/08sD/5jLPj/BcF17CjXbbXXNhnjAyj40e/RHmdcO9zQMowEYdCE7H4lS5QXuXlYtCisyYclayUZmQT5FotqbEqDZoo22UyM+iDTb/4vOXJnPa30iiE5oOeCEOsMlX/JEr22byxMPr2KBE8ONXTF4VgXcLHE00GQ9J7MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609427; c=relaxed/simple;
	bh=ORjrWSJV9aCCGAusfNEVPPkAuUkckxWAi/ugZ/Z4HPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EepIdr8fYuFZ3X5GHU811b49fipVmqjo0ae0Q8ARabDAsCrF6k9OOzPUTFxS+b4jp3X0MvAKmETQJ9C756FuwXCxHHhgUe+LTJfyGdrTrolzClSCtPvgk/wwsUZ5O5vs/CY1Hqnz0wxRCseNokY3MHvSLe7qinoMGMaKio4Cl2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LSPYjr1x; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb7a01426so92304966b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609424; x=1756214224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ul4oZAmMUIisCohsZ+bnfu1tIYQt4ZmQITM62Hcbbp0=;
        b=LSPYjr1xfIF8lJhSpH5hP6W1Utkt/cf3/0A2opTlqKTmmoIiG8uoTPBLgGljuNc5Xe
         7isJg7ZxMoVLT/jnhcVx5381AiVbtCurg4eglwrI23t8kgmvjTX3f/4xLSExounzufeM
         sVv8cWqNl1PK1wgTh2xLknR+ouQh5b7t2GsLrGTFmZ28oK9JEUDknz21MZtz9iFTqHgK
         p+V3+Uq/e+NXJbMwtIOEUygNQaFFtMa060HTl4m8+UpTp86BYA6IvmgRuEj2EGQMLWrD
         wqbY7cjsEsOJ2hFjiud8MwZcT86aMgUxOYo94tVYvlZ0P5ecSti1VvQDGWGr5OA92kg8
         2xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609424; x=1756214224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ul4oZAmMUIisCohsZ+bnfu1tIYQt4ZmQITM62Hcbbp0=;
        b=n7hxTBCA0+NltIABcWnY4n7baU0NhnbptIjC7lPhQmZVcM5WPOMOIs7mQP+cY/TMxk
         EClB3TpV+8yvH94ROl3Ro3AKn8YyQ/7lMEQDb2xh+e4MU3IT01gg2TzpQ95l1eUNGFsa
         1bMqYyiyQfvrqRVpkVMbp0SBjHo6T8/iS9dWicwgqHFa7hJnfV4xNn9KkBDgU9MPF7ed
         qH7bd/AEijXKQmAs6LhRiBd3ZY2w56VBDSljn9JURWBls83c8S2t8T61XxEF96sm2KCV
         aFyEuVXqoIz60WDUXudwDh/SCqDLd0tNkCUvG72PPR/QOcSj5m/xtbAHqmqmqelwsl7m
         mjXw==
X-Forwarded-Encrypted: i=1; AJvYcCU4WRfYExeQIMDzYjafEhD/H0wezwkIhpyymZqoyUZru8c08OcKSKu0rocEsOIXdl/sq110e82h3C81@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh2IE7EaRgX5G0J4eu+0a2HYciS5eNYnDCx2q8rAzANn89nPZ6
	bbu3JSL1gMeKHOkJ0E36t9h2+rB3u7PQuuTDXur5Vt+y+Ggq9Hq6p5baWVM34K2kB+4=
X-Gm-Gg: ASbGncuZNpLcvk7lVy3CuiDGj5+uLNUKaEFjD07ZLsB2wAQJj7TDfITaNCwHKl7j4SR
	N4JxtEH5ej63yIsMS/xaVPSyYuSx/kkWFES8OcomYa9inwZKFdL6wtibtmb0I1JSbFRHJoPAgZ7
	ducHL2hCgzqSf3Batzi63r1qpQllArrIYbtY/aSFsLwKtWf/QeRjpJ5BE5aHv/Ribfz3JW17Z4E
	ZVPQREILvBn2cPhYtRtQy79/2XdUYwK2xNPfooTNTb7K4ZKT3xgSeRrseChabT75VF5udWtw/0B
	/u4YyvNZ9Amg6+ex1ue4GRAlpnjauuDjOT026X12xYq6qYxWBQfM+QicuXjwEqCEnpCOpeftks9
	NDfseBC0iV+Ha8x9weTKILiJkrOnKm78VeFiEkKE3RvKL
X-Google-Smtp-Source: AGHT+IHIEZ0cqAuQ9z2NxnVy2zmkSoGqZVpGMt4PSnkN+/AzbQ7kBspgtZUPvFrM+aYznnjNvgIxIQ==
X-Received: by 2002:a17:907:3d03:b0:ae3:617a:c52 with SMTP id a640c23a62f3a-afddcb63ca0mr100010466b.2.1755609423877;
        Tue, 19 Aug 2025 06:17:03 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdcfccea7sm1005948066b.67.2025.08.19.06.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] arm64: dts: ti: k3-am6548: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:55 +0200
Message-ID: <20250819131651.86569-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819131651.86569-5-krzysztof.kozlowski@linaro.org>
References: <20250819131651.86569-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=741; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=ORjrWSJV9aCCGAusfNEVPPkAuUkckxWAi/ugZ/Z4HPI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHlGHslltHets9pe9QRd/Nka4ehFvGyWO1fzw
 3Crv5EMFQmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5RgAKCRDBN2bmhouD
 1xnzEACSo5uaWhdcpZ3vxl4F+ufrZhnxwghg1RpSkqDbNjA14v/O14NJ0BplGA1kN9H6teg0/tD
 45eZc5/jrsjOU2ePK4/mzmrVErEppjEpBNeiWcPc67j5nPnt2RZOeJEDoFNq+/QPZB56FRbVooT
 8jVo6FZiqWhTRQDrDBasWAvXwW2J+vY3KmturJdMyvmaTUlvE3jS+vS36IqXmXbH/ZJ3wvmMK9m
 No3A9cORAdHIkilGC/8fh5lo2Ss2IUPbhGOQptgHDdGUimDF9S4piGtE3ZUCGX1RA8LzSD+wE5K
 rsc+TbXc1scsxMYLhEgb/cKHNLWKg6eIFZcCcp7HSEHLPBBf26kFQAryE1O8xglgrC0TkY08dHS
 csk8/K3o2iOkIA+nEF3ynmMLPTYj9a917Qvtfoq0XbVZMzQ50wDpj7EdWcded7k97bPrb5iQw/j
 mL8M20Cs795m35cCeBdFKtBwgeqPVs/HTfUgN8LAQYbPFOtzb0ixnuJppGmzeKobrUT/tFIeCQA
 IxdroEfyAMgsQyru3AGY20HMh4Okr9J43LRAYPrHMChOJ/TssH5/shCRQxX9ZV3wc9M88LQvZbv
 uWW8cDEiUGIJx7MhidAnsqA/6WAKyXN39bFNt62VNYMVWZxHmwVbf+nYllcHCN6pjShEEVuPnzN Mcg5heNDUIFaX8A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts
index b829f4bcab69..adf4da7dfa2d 100644
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-sm.dts
@@ -145,7 +145,7 @@ &main_spi0 {
 	pinctrl-0 = <&main_spi0_pins>;
 
 	#address-cells = <1>;
-	#size-cells= <0>;
+	#size-cells = <0>;
 };
 
 &mcu_spi0 {
-- 
2.48.1


