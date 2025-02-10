Return-Path: <devicetree+bounces-144665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DE2A2ECDA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E2031888712
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC4E2236EC;
	Mon, 10 Feb 2025 12:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P8ae7rQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2655C2206A5
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191926; cv=none; b=cMo3pWDZqoWBYfU/mpPyMpyN/tZzg2coRTPHW4jBWa/nUCg4Xe4GzdkcTb2O1FU69FLTlOqs4FKXaQXMFXwE1X12TpqeDexgnGUNKBez3wf91LgqDuHreq+PsfrQUaO3o14gxZx//Sw6E/iyKdqAoR26xPpAwmwZaaDPBHVKh5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191926; c=relaxed/simple;
	bh=Lpe/i5C+5b5vZQpv9IAlGMgPvHSa+dmXip2VQoCAS0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NFHS3nD8rRz1NIqyBn47rwZQ984Dhro0JSxgPY0a5cbXKyYOhCnZAQjCxl+HOj1s+hGHUhGTyM/MxGBz8csb05qri6ax1DlR1Mmxdsw6lECbPAkYYkczEobdPB6PDniZIk43LzMtkIPvL4PKJwrUze3hIMIVw+HFa1t3BItQNFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P8ae7rQr; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab7c14b880dso180664166b.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 04:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739191923; x=1739796723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYPmCXNJ61WHCfUsNhpxuN9G44+VJ9mze8mbSqmqrmI=;
        b=P8ae7rQrhLXqSrf+iW4zq87i+o6WOmdPeQUQyzn2Kmi0c4pZQ8tUg825eDvI8nUHrP
         K9M58f0LLqn8tVgrXyHdYpBvnxGZoYBhu5H2nXUHKKngjqMGJQa3Xyb0edp89TYmKliX
         JSqRvxxCLaJSYnqq2p8Tp+WXGedkJQbeLMGcJRKJV5vpNvIIJmFhvmc3vqP9iA0BbYr4
         iEPQIZvs0BIfoi5XpBbS6Fw2B0m697IZ4aZRQlDL68lMmnhdbudKjUViDG4n3GvQVdUS
         If5a98F8eUtiW5mhm0AySPpD7Kpv2RIFVOOwYKUsPVT76JeIBhxuLahMNWl9hBTl6NaX
         nGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191923; x=1739796723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jYPmCXNJ61WHCfUsNhpxuN9G44+VJ9mze8mbSqmqrmI=;
        b=nw+71OhYnByHkaHiYbyvxkM/0A0+Z3JdQ1172IfDr55gPXkUHU4MYAElMioqL9OZSl
         ULfZHArc1tfo8VbWP8XuHMwPnY/QXnl5VjrXfqF6quLAWxIQAslitIXUcR8K+Qj56PsL
         OXbc6XLcPG6XTszfEF6nedxkQ52p2a2r+ckGFfWPJDbZa6E1GquF8gsG8JfxT13kZA3K
         b5u8Az1g5V+srBF7E/AJXYbXKOIHSN5f3gd8kEiq6NLjh+W1Q98a8R08EITeYD/tB/gK
         xWTUoacGWjmBiW0xJAYq+YudCYPMq/ChIrE+S8LDW3IXYTCbjxHHi9d8lqLUL5HhbMsG
         Mifw==
X-Forwarded-Encrypted: i=1; AJvYcCWgqUXUHZG/iOGZ5D+mYMEn+aihWTH09lNj3NuXputabts7jRvpjBY2KeOmEHAVx7IRrAmA6u/nZJkW@vger.kernel.org
X-Gm-Message-State: AOJu0YwxnUiAOpZk84vb5rZmjp+rXV2PDXW0Hvsc5HjJz7+xd2666qDL
	469kvVQHRNGtZNaL3ocrJNzVlwhI9jfAFpTt5eZlOfNY4vM/8POSt9pL1a4hl0I=
X-Gm-Gg: ASbGncsR8ri3ZMEdcL6aLRGBvBDTq2R8SY8Dg5aIVeepYpZH55Y/N+iUMMH8wcsc9rL
	9Ot/mZZasI/9GKUBk3+hJ0XGiOu4yQEkCi5izNbvHb7QdR3smYhN7Okh+40kxfPZE9l7RI2C0rU
	FO351FU+e3OrVFQGsVH0vKZjHwVNi1x79ZYftzCW4uWtlJPnotU3WNl+lMuKa81jubRVl336YEn
	Hh2PurCuFfoFUY0jsFSIShgVK7LSNrpSGZRxpGUYzatxQLnznQ7V9vNPigdKrFP1kBelaTNJFVx
	KI8lPPUwH3eywifpSWyax0kHctByddbxhnSM/igefPciQFR5GQ/VX6+mD5lJ4QucZCi3e/Fqc+s
	=
X-Google-Smtp-Source: AGHT+IH+NgzE2gbAq1itQhugXDlHXIYig8ArxGegZBDP7bul7fijUmgra+TzZrMkLOQO6b5p+6Fjqw==
X-Received: by 2002:a17:907:6d23:b0:ab7:5fcd:d4de with SMTP id a640c23a62f3a-ab789c50af4mr1427309466b.50.1739191923425;
        Mon, 10 Feb 2025 04:52:03 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7ceae3a3bsm85819266b.129.2025.02.10.04.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 04:52:03 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 10 Feb 2025 12:52:02 +0000
Subject: [PATCH v2 1/3] arm64: dts: exynos: gs101: drop explicit regmap
 from reboot nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250210-gs101-renppt-dts-v2-1-fb33fda6fc4b@linaro.org>
References: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
In-Reply-To: <20250210-gs101-renppt-dts-v2-0-fb33fda6fc4b@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

The regmap property for syscon-poweroff and syscon-reboot is unneeded
here because the poweroff and reboot nodes are children of syscon
already. It also is deprecated.

We can just drop it to simplify the DT.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 813f96089578..e78dcd506a5c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1400,14 +1400,12 @@ pmu_system_controller: system-controller@17460000 {
 
 			poweroff: syscon-poweroff {
 				compatible = "syscon-poweroff";
-				regmap = <&pmu_system_controller>;
 				offset = <0x3e9c>; /* PAD_CTRL_PWR_HOLD */
 				mask = <0x100>; /* reset value */
 			};
 
 			reboot: syscon-reboot {
 				compatible = "syscon-reboot";
-				regmap = <&pmu_system_controller>;
 				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
 				mask = <0x2>; /* SWRESET_SYSTEM */
 				value = <0x2>; /* reset value */

-- 
2.48.1.502.g6dc24dfdaf-goog


