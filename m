Return-Path: <devicetree+bounces-163441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D223A7CE9F
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 17:32:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D350188C661
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 15:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D1821D594;
	Sun,  6 Apr 2025 15:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H86zqTQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4624A24
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 15:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743953569; cv=none; b=cjKXjE9DQaBHB3VgvowZzEDRsGbECfDW2VSsX4npadcuk9l7y739PNbVaPLYLnrwIxnu9eP8GZZxJ5I+yG48x48K6ex+Mh52LuMuSlobZNyEf+6/VkMK7j/ZyRWQWhMcTQKnIMHoWO3VINC/lH5SqblObrkOTfcwKMRZBYMIB4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743953569; c=relaxed/simple;
	bh=RrDYVvXGMrS2RJSeE/ouGc3RKfdBBgDdwl6sfUfy4Fs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=cIN5+I2CeP2ZvSK8QA7Ym4A/bCW4PKDEcn+OIKywY+ZS3Uwz2UImM2YOSYa64anLrDA3Xs2L23/cM1o08qd7y3YS4T3pAE5rNHLjFSzu3PIuYfNsoeiSl/DvbPmi1/el53dHy8gM2XJZBeu3qdomYQpR4DBMPpJMxt00owseSzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H86zqTQ3; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5499d2134e8so4320793e87.0
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 08:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743953564; x=1744558364; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4CdrV4Ee8NZHiWicfEBhecLPl2Fi4hX+Hn0hDWKuVUI=;
        b=H86zqTQ3W3BpLm4W3pKs1/dbDMUwXhqp2GQMWwl6bJhKNXQ/t6BiABcFxhOPm2Aa5c
         NTsfT5LRavx1Utglwbv+CVkqO6dzAcEfF+jG8hYuuXEYeFHBWKloyViBW9VvwYorTAUw
         C9GnR12xFYGfcitRuUBz5WLk5snaVUfVoaJVmFV1IfWgQYD/LyFshru3vDuVupIs6n9N
         F4WvqZ4/ha8mezxFsI0SeeNZ4A7tMrwbnowgSFXnRyhTp25mtBlfy+9eQiwtCYhgVYtU
         Jw2olVpJGZuJIyr/RvKsEGwACbxSTmRZXDnQ8XahN55ghxfnhsjDxbjGctBdYiwwkGal
         q0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743953564; x=1744558364;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4CdrV4Ee8NZHiWicfEBhecLPl2Fi4hX+Hn0hDWKuVUI=;
        b=uew5qKnGS8R5xTtEbX4Yz2AQfhnyQjbFNaaHDe2nhgJwu2xifGQH6bGoG2HCIiIOXh
         233SJi5yJXKm+uYMHPibzrchyXqY7VC9TMqExDUPIE7jhCIgAaqseSHOGmYGJxwmYTIO
         L2xi6SA8XVIoWiuoHEPECUcxHIIM51qitz836NfKsJgJkjsuohfwntIvB4fYt/jlGjHt
         zm2qV/NAQbUBynMOPeTXCOZoVvHnXATn2ZorzwFqw57omy4VAm+bYH/PvghwAhhNieyh
         Z/1gBuKP4w/keOFgHaUhS8tBeIA/+WYosA20myCvwsfvRWza3TAx8vbZSNZ9p3vpdHdQ
         kDww==
X-Gm-Message-State: AOJu0YwTL1Ckb6fmU+W5GxSh8cqXi+7M+8OS6dCfEGxAri+Q+A8H4wal
	89YQob2GrRgoYxgNn8UjauNCeydNlJSwfnaT1QwpypJE9IVU5Wk1ZLD9cK3kUZk=
X-Gm-Gg: ASbGncsTu5lXYWQ8Ginb/8c9cgMifSSuUHtFnJH9FQxkMt8fG6gI2vVRe5jvoLnagRZ
	PUfNucrMpZlQrNcsPtgns1ydQfWfakXpE8t8hf0zTmcIHdj0+XxAlBw9GeUl9K9JmRNIOtl9SL+
	X0x/exlnx2ioL36mKB/kUrK05m5DCioYLyDGRHkFv91SwNBqXvm8GDf+z2/qVjZ23r1YACfuGIz
	2N9v/87rrOeGY7u/pwOnME8AurUCPXn4DXTdHSHmw66uRPW7qhaAEWFeiZYmodOEOBXDJlmWNS6
	33hZuGYIT8gEIaC7JZ+eoOQQXbQIrSCJO5sGfd9fvEgGLCoPTdqYnN8=
X-Google-Smtp-Source: AGHT+IEMHKYs50VUiFzJJhPb55V1nqrOulEUzIjHGG1eD8uKA6HQzfi4EyS5Z1ub10c0zQJ8J/mcug==
X-Received: by 2002:a05:6512:118d:b0:549:6451:7e8c with SMTP id 2adb3069b0e04-54c2984805dmr1640715e87.50.1743953564304;
        Sun, 06 Apr 2025 08:32:44 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671fa8sm989747e87.218.2025.04.06.08.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 08:32:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 00/12] ARM: bcm: Add some BCMBCA peripherals
Date: Sun, 06 Apr 2025 17:32:40 +0200
Message-Id: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJie8mcC/3WNyw6CMBBFf4XM2jF9WEVX/odh0ZYBmgBtpoZoC
 P9uJXHp8tzknLtCJg6U4VatwLSEHOJcQB0q8IOde8LQFgYllBFaXdD5yXmLqWhpILZjRssTtp3
 TUgmj9FlDkRNTF157+NEUHkJ+Rn7vP4v8rr9k/S+5SBRIJzLStP7qan8fw2w5HiP30Gzb9gFLA
 zCzvQAAAA==
X-Change-ID: 20250327-bcmbca-peripherals-arm-dfb312052363
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Olivia Mackall <olivia@selenic.com>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-crypto@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

This adds a bunch peripherals to the Broadcom BRCMBCA
SoC:s that I happened to find documentation for in some
vendor header files.

It started when I added a bunch of peripherals for the
BCM6846, and this included really helpful peripherals
such as the PL081 DMA, for which I think the most common
usecase is to be used as a memcpy engine to offload
transfer of blocks from NAND flash to/from the NAND
flash controller (at least this is how the STMicro
FSMC controller was using it).

So I took a sweep and added all the stuff that has
bindings to:

ARM:
- BCM6846
- BCM6855
- BCM6878
- BCM63138
- BCM63148
- BCM63178

ARM64:
- BCM4908
- BCM6856
- BCM6858
- BCM63158

There are several "holes" in this SoC list, I simply
just fixed those that I happened to run into documentation
for.

Unfortunately while very similar, some IP blocks vary
slightly in version, the GPIO block is differently
integrated on different systems, and the interrupt assignments
are completely different, so it's safest to add these to each
DTSI individually.

I add the interrupt binding for the RNG block in the
process as this exists even if Linux isn't using the
IRQ, and I put the RNG and DMA engines as default-enabled
because they are not routed to the outside and should
"just work" so why not.

I did a rogue patch adding some stuff to BCM6756 based
on guessed but eventually dropped it. If someone has
docs for this SoC I can add it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Pick up Krzysztof's ACK
- Push the BCM6858 DMA block into its own simple bus.
- Fix GPIO node names and registers on BCM63138.
- Fix GPIO node names and registers on BCM63148.
- Link to v1: https://lore.kernel.org/r/20250328-bcmbca-peripherals-arm-v1-0-e4e515dc9b8c@linaro.org

---
Linus Walleij (12):
      ARM: dts: bcm6878: Correct UART0 IRQ number
      dt-bindings: rng: r200: Add interrupt property
      ARM: dts: bcm6846: Add interrupt to RNG
      ARM: dts: bcm6855: Add BCMBCA peripherals
      ARM: dts: bcm6878: Add BCMBCA peripherals
      ARM: dts: bcm63138: Add BCMBCA peripherals
      ARM: dts: bcm63148: Add BCMBCA peripherals
      ARM: dts: bcm63178: Add BCMBCA peripherals
      ARM64: dts: bcm4908: Add BCMBCA peripherals
      ARM64: dts: bcm6856: Add BCMBCA peripherals
      ARM64: dts: bcm6858: Add BCMBCA peripherals
      ARM64: dts: bcm63158: Add BCMBCA peripherals

 .../devicetree/bindings/rng/brcm,iproc-rng200.yaml |   6 +
 arch/arm/boot/dts/broadcom/bcm63138.dtsi           |  79 ++++++++++-
 arch/arm/boot/dts/broadcom/bcm63148.dtsi           |  64 +++++++++
 arch/arm/boot/dts/broadcom/bcm63178.dtsi           | 112 +++++++++++++++
 arch/arm/boot/dts/broadcom/bcm6846.dtsi            |   1 +
 arch/arm/boot/dts/broadcom/bcm6855.dtsi            | 127 +++++++++++++++++
 arch/arm/boot/dts/broadcom/bcm6878.dtsi            | 120 ++++++++++++++++-
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi   | 122 ++++++++++++++++-
 arch/arm64/boot/dts/broadcom/bcmbca/bcm63158.dtsi  | 150 ++++++++++++++++++++-
 arch/arm64/boot/dts/broadcom/bcmbca/bcm6856.dtsi   | 138 ++++++++++++++++++-
 arch/arm64/boot/dts/broadcom/bcmbca/bcm6858.dtsi   | 127 ++++++++++++++++-
 11 files changed, 1037 insertions(+), 9 deletions(-)
---
base-commit: 8359b1e7edc722d4b1be26aa515041a79e4224a3
change-id: 20250327-bcmbca-peripherals-arm-dfb312052363

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


