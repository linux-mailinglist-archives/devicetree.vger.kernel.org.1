Return-Path: <devicetree+bounces-131403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FBE9F3124
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 810051887F90
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB3C205AC4;
	Mon, 16 Dec 2024 13:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KHwFWOen"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2ADB204F98
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354390; cv=none; b=O7HgOW0UBr7m03k5/QZHm0LcYwZrXhxstU6cGyHE8jTqOyNa843U0r84kM9G9LoEoBp/Q0UGsqPvYZKPK2M8KsTJvzDl5iipLezXVz3Heic+gfuTsiRRPZu1h9AstgXjsd2Iz+60NvYorP0tJkNPNYhTuCUDrvaLHUACHBoAeAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354390; c=relaxed/simple;
	bh=YTG75k2LxS3WGXYLT9uGMaRTbZQtpHTdS3On9mOaeeI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rnaetpFRGpFTYhhX7W0BqhuCX8rMD6A5QKkIMMZ3rW7a1Z2O+Ni2EWXOS6TxvGGeiNILs9la1cc3jxPOjuVf50P1XGaT9WOlPoVuOnSewUBcTge2tEvfgbxZbJKnWJkKqvRU3Om4RrT3VK+EkOwsHV2NjQNPLlungwJSWSc3VaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KHwFWOen; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ffdbc0c103so37073311fa.3
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734354387; x=1734959187; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xGJf6mgKz68EpJgqnZRJBLUTpVwxCCOu9GDs7vuZ8Ys=;
        b=KHwFWOenLRtKuBbnPOZeFwsbKT1/x14w1YFS0nb4EHAnkgpDjOCziKyNe+FKnEV6L4
         zXTjrO6XVvOu6Yu1SqZ6PBW8FPYxiXq4xmgwSktGcwsw9WFrprJ7vSuIZ59ag4LHzfof
         vUIizHScQizuH1kgO7cVt9WW5H8265omRJowfjQCcF2AhntWlW9ZxaF7ISfvdcHjN+hI
         iqreOOFASkLOhmrikXMrqJomL9feAAhLupmUBEUBI76jj+9P/tPsmttKgcBvvnAavJbd
         BYtTklYV+PeQKRxQy0pVzkvFp6tf+qsdsOrCPdn0EzPKhwqrVIlmtPLA8l0mtex7VhXt
         79BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354387; x=1734959187;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xGJf6mgKz68EpJgqnZRJBLUTpVwxCCOu9GDs7vuZ8Ys=;
        b=VzcPOPOZLUavSuJKo8L4V5mGMorcpTRztPLsBt5Kl0V7gsbp410pbwJFmAzfuQsAY5
         NSB5Njdq7NGhyc2O3LnVWNA/GEwigfmhe2/obtiYJvrzrv9RXmqnH4C4dlem3KdIjedF
         58q1alnGZuim4ZWNv/D77eYuaXW/5WsYqXUtjDoDVjT8wquoyRsSVeuJsZxolCXLOSZF
         Q124GFrpLr4MDIzDaxCFULt6iveT4p8ydrhFwxOw9qbkuw4NifNVfXx9XIELNMPdYWdg
         hb0ZHcox6Y+y+X+P8cwJnHhiXWrnwHhhdG9pMxYPC9n41G1+GXKbohhv8jHXmtt9I9OJ
         HNmA==
X-Forwarded-Encrypted: i=1; AJvYcCWfJtPrLazSSaCAv0E0plikVzicNaQ9HqK27wvXymfwuMT/0VITbuq9y5WKyTZpJe6vXfRJmbyHk+mv@vger.kernel.org
X-Gm-Message-State: AOJu0YyQsVPzK/gXvSpbK9GJ5DXdCAK/lJkz4AWZ7Clj1YC2XxCHS+kh
	b1Ajp/tfX3ihPgljKeBCwTFPvlBSYTzykNtgKsnuTMj9B2v9AqbelRqj69OVXf0=
X-Gm-Gg: ASbGncvj41u64cROCsW+w4I7aPha0aMsRIb9C/Q7x05XY6uKXbmrH5VzIDs6vWGXT7K
	q5BYuXxI2lXsuYvzyeqydjyaNfrlbBOFBg15JU7MAA0O/5zmyhhC/+kWpMFjxoKb1FRtyslgDYy
	yZQICGPb02fHwyxnSZ96BdX6t4mSRIHyiVwgM9wuB8PpWd8pyksxgM5b94+mIH2TEze8IHofDOk
	jwRIobojZPSxUmxuD6ITHx02EFjpWn/B7IW40O/V04xjC1+hxfbdUraPOZwqeeN3hWJChd7t25p
	IbcvrFL762kcuLrxkXD/aUOUH4f1S7a47ovjbQVE
X-Google-Smtp-Source: AGHT+IFuuKkCg+lpMd0qLaMuI0DMbS5P6PzhltgK7tRQdBAky1HMLQROca2LzneeRNPwr+cYhlZnlw==
X-Received: by 2002:a05:651c:881:b0:300:3a15:8f2d with SMTP id 38308e7fff4ca-302544e2d4emr48536271fa.34.1734354386438;
        Mon, 16 Dec 2024 05:06:26 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab960681dbsm326648666b.52.2024.12.16.05.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 05:06:26 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/4] Google Pixel 6 (simple) framebuffer support
Date: Mon, 16 Dec 2024 13:06:25 +0000
Message-Id: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANElYGcC/x3MTQqAIBBA4avErBMciZSuEi0sRxvoDwcikO6et
 PwW7xUQykwCQ1Mg083C51GBbQPL6o9EikM1GG06NNirJKhRCe/XRnFWznty2lhHwUKNrkyRn38
 4Tu/7AfHAZxFgAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series enables simple framebuffer support on Google Pixel 6 and
Pixel 6 Pro.

Even if simple-framebuffer is deprecated and DRM should be used
instead, having it available in DT is beneficial for several reasons at
this point in time (the phone uses an OLED display):
* energy consumption goes down significantly, as it changes from white
  (as left by bootloader) to black (linux console), and we generally
  don't run out of battery anymore when plugged into a USB port
* less of a burn-in effect I assume
* phone stays cooler due to reduced energy consumption by display

Since Pixel 6 and Pixel 6 Pro use a different resolution display, this
is the time to separate them into their respective DTs, and provide one
for each of them. There are other differences between the two, like
battery design capacity, but they don't matter at this stage due to
incomplete upstream support.

* dependency note *

Due to the renaming of the gs101-oriole.dts, this series will conflict
with any pending patches touching the same file. I have therefore based
this series on top of my USB series from
https://lore.kernel.org/r/20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org

Please let me know if I should do something different.

* dependency note end *

For those who want to try this out:
The stock bootloader disables the decon hardware trigger before jumping
to Linux, preventing framebuffer updates from reaching the display. We
have added a work-around in our Yocto BSP layer for the time being
(until a proper display exists upstream). An alternative might be to
port and use uniLoader from https://github.com/ivoszbg/uniLoader, as
seems to be done for some other Exynos platforms.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (4):
      dt-bindings: arm: google: add gs101-raven
      arm64: dts: exynos: gs101-oriole: configure simple-framebuffer
      arm64: dts: exynos: gs101-oriole: move common Pixel6 & 6Pro parts into a .dtsi
      arm64: dts: exynos: gs101-raven: add new board file

 Documentation/devicetree/bindings/arm/google.yaml  |   3 +-
 arch/arm64/boot/dts/exynos/google/Makefile         |   1 +
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 269 +------------------
 arch/arm64/boot/dts/exynos/google/gs101-raven.dts  |  27 ++
 .../boot/dts/exynos/google/gs101-raviole.dtsi      | 297 +++++++++++++++++++++
 5 files changed, 335 insertions(+), 262 deletions(-)
---
base-commit: d454191ca68125bee218d1d67d6716d7e753dc7b
change-id: 20241216-gs101-simplefb-8aae80278ed7

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


