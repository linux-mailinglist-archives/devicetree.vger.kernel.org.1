Return-Path: <devicetree+bounces-162706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90046A798E1
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6F8E188E0F9
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317A41F583B;
	Wed,  2 Apr 2025 23:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="G0fjEFrr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818EA1E4A4
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636864; cv=none; b=NAwKHsLbzbc+ZJ1XL2w/VfQCOpoWHzO2F5octkFnMXewJeMqOh0iFXaTkq0yXpN1u32lVoA/mIGnUArkVhbg0cieY31MKy2jrO/OYHaIPz9epMzJ3I8TQAq1bK1OZOC1nlKlrZM3Az3E+IFjxQTLi6G+SzZZFi5JQLbOwGAIUq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636864; c=relaxed/simple;
	bh=aZvczYfKaJF4cNqcRzosp+W7t0cH8E2U2PIdZ7jOXF0=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=sCqSSJ48bf7N8QEAwDKPncZCZjJY2OZ1a/vR7phG/5vavO1coyIUkihlmTL2ZpB2RLFee7Boiv7z9egwuO8csssU/JP0S6ybmVtBzKPBxZoY3dHhzDEgvcRB8GqPvzhF9glD3OpXWlMePZqxsuQHJiDKZf1Z1GT9IsUbfi5Mo+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=G0fjEFrr; arc=none smtp.client-ip=209.85.216.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-2ff6167e9ccso376586a91.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743636862; x=1744241662; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Uhm3xVklIWTKuMJm0mSzjGk571zlKSg++5EFQ/Jj698=;
        b=G0fjEFrrewe58o0O/dIPGFRJ2Q5DJPwfvc7yh2BlwCoKldlMegeoETlTRoUZO5LxuE
         BSpb8p0VQjz3pV1qPeSi3Ftfy/527wf2nhRIRZa59v/4qMT6VvI3Jbq1ebD9QI8dp18M
         mj4WdsAHKit4Co2BQ4vPTGIDm5gFVWsugefxmEynC7AyBTR6IcsexiXIAdvgC1gnAWPN
         3e5RaZB6rBCbtWyta27xrVkbqbma+NSQQztWsBXBxAT3AlOIYPXlefXRPf7gbOE41URL
         MRDAA5t8nIpPG92h/M/tUciCnL2SVk6f7A+NlKuHHxdnEg3W+FYC+BJyohRZvftPsJck
         ZzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743636862; x=1744241662;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uhm3xVklIWTKuMJm0mSzjGk571zlKSg++5EFQ/Jj698=;
        b=KUawckLpUa7z6ya3fMq1+z01HiCWbQ4tdQWAi2mwLoCO7V2oDq8dUO75f9Yd+OrPTX
         jTtsFEmNWsnWtglkNFy2tJqDTL/O/KTgNWl6yVaNoi+aCa8W0Z9Xsh9htbzB/noYdE+X
         PkUNzt5dLdjfHNNeTpyfzoPGYMbpMgEh3RSzQo4R93dzQ35mhCYSSlzo0QbzVk2KxWAc
         quAJWSqnIt5Ijq+1fGxRlmJUU8Hw12/nbGzDJTeOdo/15FmOfZIei4qHuM5pZ6BVSeAd
         MqzuUkhq8XnUAacL596zordCPFYkU+5yWblImNEdJmv/J+/ZK5Zz5jhMFI8q899OHA0Q
         r9TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSdBWgpifja9Nz9S8xHbI3wVHHjd92wBLry9Goq2DwyIsvVgZJif6HaYQj0Rsj94+UfA1t6ZpJXuv7@vger.kernel.org
X-Gm-Message-State: AOJu0YwJtNqxjUpKDlCtUkPWithoflXW7eCEPFluNu6yA7DhqqGkDMXO
	vsP/DlNyvjlWDb6ohV9U/McuJ7fciVrkgSQdza92k1+ONOh3k972Z6lKR6OtmPYrFzT1y2psz5F
	GqPO04+1Mm45K8wPCk+9Na+8Sww==
X-Google-Smtp-Source: AGHT+IHt2tBE/ySgcrK/aC6qisiJrm0y2T2ylyFoUuqW/+VzNsS93Xv/9MgD55Nz7V6Ag3uAgbyOVnY+ensGH6+wQbU=
X-Received: from pjyf12.prod.google.com ([2002:a17:90a:ec8c:b0:2f9:dc36:b11])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:4c0d:b0:2fe:b8ba:62de with SMTP id 98e67ed59e1d1-3053215e814mr25102035a91.25.1743636861828;
 Wed, 02 Apr 2025 16:34:21 -0700 (PDT)
Date: Wed,  2 Apr 2025 16:33:51 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250402233407.2452429-1-willmcvicker@google.com>
Subject: [PATCH v2 0/7] Add module support for Arm64 Exynos MCT driver
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This series adds support to build the Arm64 Exynos MCT driver as a module. =
This
is only possible on Arm64 SoCs since they can use the Arm architected timer=
 as
the clocksource. Once the Exynos MCT module is loaded and the device probes=
,
the MCT is used as the wakeup source for the arch_timer to ensure the devic=
e
can wakeup from the "c2" idle state.

These patches are originally from the downstream Pixel 6 (gs101) kernel fou=
nd
at [1] and have been adapted for upstream. Not only has the Exynos MCT driv=
er
been shipping as a module in the field with Android, but I've also tested t=
his
seris with the upstream kernel on my Pixel 6 Pro.

Thanks,
Will

Note1, instructions to build and flash a Pixel 6 device with the upstream k=
ernel
can be found at [2].

Note2, this series is based off of linux-next/master commit 405e2241def8 ("=
Add
linux-next specific files for 20250331").

[1] https://android.googlesource.com/kernel/gs/+log/refs/heads/android-gs-r=
aviole-5.10-android12-d1
[2] https://git.codelinaro.org/linaro/googlelt/pixelscripts/-/blob/clo/main=
/README.md?ref_type=3Dheads

Cc: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Donghoon Yu <hoony.yu@samsung.com>
Cc: Hosung Kim <hosung0.kim@samsung.com>
Cc: kernel-team@android.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Youngmin Nam <youngmin.nam@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
Cc: Will Deacon <will@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org

---
Changes in v2:
- Re-worked patch v1 5 based on Rob Herring's review to use the compatible =
data
  for retrieving the mct_init function pointer.
- Updated the Kconfig logic to disallow building the Exynos MCT driver as
  a module for ARM32 configurations based on Krzysztof Kozlowski's findings=
.
- Added comments and clarified commit messages in patches 1 and 2 based on
  reviews from John Stultz and Youngmin Nam.
- Fixed an issue found during testing that resulted in the device getting
  stuck on boot. This is included in v2 as patch 5.
- Collected *-by tags
- Rebased to the latest linux-next/master.

---
Donghoon Yu (1):
  clocksource/drivers/exynos_mct: Add module support

Hosung Kim (1):
  clocksource/drivers/exynos_mct: Set local timer interrupts as percpu

Will Deacon (1):
  arm64: dts: exynos: gs101: Add 'local-timer-stop' to cpuidle nodes

Will McVicker (4):
  of/irq: Export of_irq_count for modules
  clocksource/drivers/exynos_mct: Don't register as a sched_clock on
    arm64
  clocksource/drivers/exynos_mct: Fix uninitialized irq name warning
  arm64: exynos: Drop select CLKSRC_EXYNOS_MCT

 arch/arm64/Kconfig.platforms                 |  1 -
 arch/arm64/boot/dts/exynos/google/gs101.dtsi |  3 +
 drivers/clocksource/Kconfig                  |  3 +-
 drivers/clocksource/exynos_mct.c             | 73 ++++++++++++++++----
 drivers/of/irq.c                             |  1 +
 5 files changed, 67 insertions(+), 14 deletions(-)

--=20
2.49.0.472.ge94155a9ec-goog


