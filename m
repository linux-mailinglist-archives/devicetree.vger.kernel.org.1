Return-Path: <devicetree+bounces-127224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 039F29E4E8C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE2882835CB
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24A51BE86E;
	Thu,  5 Dec 2024 07:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uoWM11E7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B141B4143
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733384000; cv=none; b=HtsHJ6I6fmSM23cNnof2d0UIsps09zjlTe44LHmCJhlGbERiDoz86tG1sffWIp+vePCfBoovgtGXqlC5uashuzSJJLzhHFPYETRSQgdPbEdxQQrIN4Y1JRafnRdPTWEHBsKrLSItO6R4uhLBAhC38Gnbz4xdKmqCosakYPI9PEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733384000; c=relaxed/simple;
	bh=kjL8CHF2jTNzGFGAJHP0ju9sbOFLoVxrk7RH0N2gvDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WsceVEZyBjaZOuQdZJkNT/QhTxfMtWDfMGZGqS8eZp2KqEFP2V8KRag2dDHiCOVKNtrIAreppHqg0b9sgsZTDQPnYGyB8IyHQRG6XzbuzCJmTLWABA3AlgI5jATkOSd1xcpU5mhx+swuk7vmNyqKBJs4D26Mr8jte0nta02nrZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uoWM11E7; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa51bf95ce1so107976766b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383995; x=1733988795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=uoWM11E7/U8RpE1L8G4I7wfk5bojKhIWnB6k+eBrRGKLoF59RYKuP9R/pIL84j46+5
         l98GN2wMPvTts/0J43fDO2xdApr62/uxi0VBr/Qq2hQPzWQTq4NuWDGUA4GRFGC6yWgA
         iO14+UW6Gf6dtXDeQwHi76038kQbcgUc5/4i4it+yuottwjWLKavZwcy6cISV8unRflb
         JPXOx3ZdTuDizLMxHXKhLU6HayWcjo2jU3enxp6z7I7m974GuNXQVXqwKotwqYgeYDsa
         6PHjxCi+oNAh2UpSAoF+TXhQbGUmA2LO30Lyo//mqVjaG7HWrbu3OsW/j723Shg42+Fn
         K6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383995; x=1733988795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=Iq96N8/Ij/xWGdFi8gspq05WU88EqgfOenoo6GOYJ8gh+FQq5lNxM8mAT03XbCBNeE
         wW4shf6gZcEqCEY8qFk8N0vF6iknJUoZMqumn+XZUyWsi3P10ArFudDFDecrq7um6Dbo
         /y4uQHjlxFlTSQkz6w8PkhM5G1jRstiu87R1rwS5p/YTvRwgl7dTmuaw74ARmC5MiAxG
         afUh2/GwyLvWJW69xrsP00mTKDvq6kkQ79I5ySehT9ItNhSO36Fr5jJ8bw1IRNFzeBrk
         MHblqg2KbT5CcV1wOZjVdSDoO6ISt7c0zpmfMIBIuXRLM39MRE1vga3iDcocb6ip4ONH
         1DOg==
X-Forwarded-Encrypted: i=1; AJvYcCXexfoHRRVWXkShtKMnDTV9PHennLwXwn5c9FQOUkOOURxi8gu7/27AFdKeFOrhsWbWdYwPZGkvosRf@vger.kernel.org
X-Gm-Message-State: AOJu0YyeO4LZw+0w2hQLiE12BPdsLNOkaPElXjJs3rKwRqS+LVMd7aFz
	ar05IT1+SVAx25t+dLLWd7xXm1N0jpOPj0DrAKDoKDXIDJtOZu1ODptf8BH/ENY=
X-Gm-Gg: ASbGncupWdu/OtmKUV8ybR8/nubWaMQE6147T/gKCR4CqF7R7rSJr7k33Rea/IieBjB
	vbEmFpfOQ3Jc6hmTEgC2d+HeI8jHm+DjvZpc/nqT6TrHxjZqnkM228EhxhsNQzV/+K6TccnMKMq
	IliSUUFg6tmbV7DKbXTFUAV6ZCNUhe/+FrQ6YirhIDTQ1oxa57VvFN9DHG9y8PJjGEuuTIKLnc+
	e0S+K0mhBpCRSN1ciI3qwJXAs2XkLTDOB+a1sfsZKtpykhcaGOojasXkvrTJvjInTmOgG1Ib+E0
	B/YO2W1Vjnz6C016d9Jn+5i+/tqlTo/YXg==
X-Google-Smtp-Source: AGHT+IFgMUVAtmrSp5P0iX/M3Y79q6BO4G1fv1/OVbYNaTflw37THP1LL7lHyOBI+yL2Eg8TsZ7fqQ==
X-Received: by 2002:a17:906:3d31:b0:aa4:9ab1:1985 with SMTP id a640c23a62f3a-aa60191ef15mr658488966b.51.1733383995541;
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:15 +0000
Subject: [PATCH v3 4/8] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-4-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

This code's intention is to configure lane0 and lane2 tunings, but for
lane2 there is a typo and it ends up tuning something else.

Fix the typo, as it doesn't appear to make sense to apply different
tunings for lane0 vs lane2.

The same typo appears to exist in the bootloader, hence we restore the
original value in the typo'd registers as well. This can be removed
once / if the bootloader is updated.

Note that this is incorrect in the downstream driver as well - the
values had been copied from there.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* collect tags
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index ceae4b47cece..2a724d362c2d 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1510,8 +1510,11 @@ static const struct exynos5_usbdrd_phy_tuning gs101_tunes_pipe3_preinit[] = {
 	PHY_TUNING_ENTRY_PMA(0x09e0, -1, 0x00),
 	PHY_TUNING_ENTRY_PMA(0x09e4, -1, 0x36),
 	PHY_TUNING_ENTRY_PMA(0x1e7c, -1, 0x06),
-	PHY_TUNING_ENTRY_PMA(0x1e90, -1, 0x00),
-	PHY_TUNING_ENTRY_PMA(0x1e94, -1, 0x36),
+	PHY_TUNING_ENTRY_PMA(0x19e0, -1, 0x00),
+	PHY_TUNING_ENTRY_PMA(0x19e4, -1, 0x36),
+	/* fix bootloader bug */
+	PHY_TUNING_ENTRY_PMA(0x1e90, -1, 0x02),
+	PHY_TUNING_ENTRY_PMA(0x1e94, -1, 0x0b),
 	/* improve LVCC */
 	PHY_TUNING_ENTRY_PMA(0x08f0, -1, 0x30),
 	PHY_TUNING_ENTRY_PMA(0x18f0, -1, 0x30),

-- 
2.47.0.338.g60cca15819-goog


