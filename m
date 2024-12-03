Return-Path: <devicetree+bounces-126568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 308869E1CB2
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EB19B2D0AC
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9AD1E6DC2;
	Tue,  3 Dec 2024 12:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RuoXPazS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3D51E570A
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228037; cv=none; b=BfzOgVrQPVjy9cXqdnTmwggbFvBporeuS3OT8VHMiE5+EXnVR7FlkkuBIm8BEh2ipZdf8mdvmZHNSpYDfJi8sNYqwCkHaZt4WZcqggY02uHF9/PQ9kHWq87TjonmPIOMV4fnSVXfW47hl9adGiWtoKq8idkfFEpiQYJ3zPPDeEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228037; c=relaxed/simple;
	bh=kjL8CHF2jTNzGFGAJHP0ju9sbOFLoVxrk7RH0N2gvDA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ISW+wwaE1M0b6/71atPgKXAFk/RgnpIdaXe4C2n4IP2WBFuU2mjItpwvtPz+omffsOB+Q+XlYm2gd0EqSpJkymVwWj+IZoJfuIyUhdBLMWcXPpd2OPyPjBqQ+mDseM3iiMOPBck+tK+FjY3u/wvvFXxspfLL1q04q5JgQ1gtGvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RuoXPazS; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ffc76368c6so82688371fa.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228033; x=1733832833; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=RuoXPazSHo8A1GjorIbjRRQfC8ftFZrVA/mRvfPY99IJ5up/ZvjLOjTifqvWimKYky
         ADifuFKGMsm+WWaZlujIoBHoo/dyvNesNLd7AYpD8c96Jc6jCOjfhS7SU2D2Qh9EapvX
         2s3aMxRW5ZmgtPU48uIhhrRvm2GHWOmlLebbGnKX89LupoEQaLaELzZqiSl0zGkCuRbP
         EagurIVR53DmyP4SrdSRypWM+q+p/WZjdK4ttubcoXWNMluOSlHMgzxrkwJzTrOlOplL
         Hd7ayYVw5aPPDF/Emul06Iax3jadYO2NOZkBq3gS/a4xyVGmYshswhQu6BvkYj5YxRXX
         99sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228033; x=1733832833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=PTX2KQw7Fl1Ps4bwiJm440fIehnrETH39DNdO54m/7tuYBO/AX9Ad3KUYh4ECekAY9
         5UvYvn2DrFyzTe3drodyBmOgVPMSWI2xD08pB3DyZX0INGDfiw5ZvnjpGhFt/G/HzMPB
         127Rr0I4Jqaa2IqtqInLnjOHFUfAISc2efsJPMP6Ys4Aph8VwOJ6uIoC7wS2YD8nEiof
         eQZ4q9xXhP9MJvZB9POwriNuc5TXiQ0vykFbY0ZeV5+hdbYQSVOFvZSmJnBuKwRx98Ee
         2DbmTR/DHqDWU3yHZug+hbKUurEwbbWDrH/pPLtWQWP3bQQprXN3eUgglc6yOoGFwJqK
         gTPw==
X-Forwarded-Encrypted: i=1; AJvYcCXLRFLMdck6D+w3Xpx2aBug0XSDmWKWghww+ox7UL494rJ+GvC1pHTZPdU/ICQMRQtIctoEVMjmS1km@vger.kernel.org
X-Gm-Message-State: AOJu0YzBiMt4AoVv/0nyddf04G8lx8A+fy/EQiqfIgqCRtkmIDZBzQEH
	WjDJJHOIKL4a5XIoj0SKLkNrdZx+ZWwwic1KbTifOZ/vBpoRlNjza2xJmUG6hYw=
X-Gm-Gg: ASbGncs8es23awZq+V1WPi0GRY6dKHZMTMz84eyxOc8hhXGDI5RD0G457i9PgyixoW4
	rjsufHz8kt3X2OVoRhgtKi5QKJ6GN7gsVTPLnhO/yKfy+eU5onhMpQMKWefcY/tJII9hoLuXAiX
	w7HFzJQniBOxWTGQoZfCGu4YrkHb8qxDAIc1IexhcGN1VRDZMZ9JNeYM/g4gOu647HcgyXYgcTc
	ZXRhDoOh0xORn2SIUenFDiQvpljhpDXNtf54mr/tuwoUCGEpbblCK7vZ7tI/GyQ/TW73iaXJ9He
	P7r/hkqNfEkhAMOPbxXR1gRDUXk4fLZvmg==
X-Google-Smtp-Source: AGHT+IGgwyjBJkS8A9AXx8hnLtvyrGDGaqK5MFnxCflHlyNqWU5j8V8iVeDiiMrTGSbUFmaLqW+/tQ==
X-Received: by 2002:a05:651c:b24:b0:2ff:d133:b54c with SMTP id 38308e7fff4ca-30009c63bf8mr20389271fa.11.1733228033208;
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:52 +0000
Subject: [PATCH v2 4/8] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-4-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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


