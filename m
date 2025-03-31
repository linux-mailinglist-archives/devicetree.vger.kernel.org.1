Return-Path: <devicetree+bounces-162129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D7AA77125
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 01:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4C4A3A9F7A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 23:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7FC521D3F5;
	Mon, 31 Mar 2025 23:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="TMTU89ds"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B41B21CFEC
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 23:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743462048; cv=none; b=KzwHjiAcKFV+nixB/vYBf5TG+Zg+4CypJBKOwxMLv8xqrvJ17gz3Yt3TxGjFTnHww9+dby9UdlbIB2WBk+Xt+4Wl1acR7cmeo1qyFs7sIpE5PBsUtiLkGV7hywd4JiaK9xOUg+0fPzhk5EGZVcbrCl2kvW+TtL+ayICpFfSQzvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743462048; c=relaxed/simple;
	bh=wY7+t4WrhnKpBLOfnJZyc9U97jJxjRqmIAP9fR9lAG4=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=SeoBaGJu1nlFn8us9aUTnXjVOcue0O26MRUXYYEI+k7OGlQRRgMUKZVaZdmFe81aYXWN5Eoz6EAk8T9HBtcAgfnEAdfKSpON0G5bXTbUlblOE0PrmzwL/L1boTDsmeaiT5Mt06OFxgHrRRT3i/xzfssXp2fLWpqKERyEcOyYCq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=TMTU89ds; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2ff7f9a0b9bso7645746a91.0
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 16:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743462047; x=1744066847; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=rNxanwBhZtQZDwmjxM/W4Nk49HxAQJthjw2/nXfZ67g=;
        b=TMTU89dssJH4scHpaZuMNnTioJUQzdhLxS9C/zdUxUjCFT5/leU3IOatJv7I3KIQDq
         4qsKKxTo9HtycvMw/3RzbJkO9f/Wl+stQOgv2VOaRw7HQy5KgfqPeI/pTq/A08MTUxti
         77K8y2iRnLDrxfIBqPfbuUnGKS7AtfRDW4ehbq4kA1apaerKNQKhHW2Bmpayai4SFNMu
         9PunSGEVLnhjsbL2WX9P8gky6jUnVfhXMxIqcOkcJG3Bwdor3KrCrYvBwPCFvu33r/TQ
         z4YqfiBJ0ncTLy4ou3Gn3P1QG3AfYfMBTDDzNQloh6c1qSgNHr/kGYN1NNRyxciUfWrw
         PtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743462047; x=1744066847;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rNxanwBhZtQZDwmjxM/W4Nk49HxAQJthjw2/nXfZ67g=;
        b=adukN/bphYvjVEjnT4ojZgbVj7dLTmFdkOnJ+HnAfV5FRjYRLQSxf6AmNKmsvV1Whs
         MGqjxktI9tdqR0a8kmr0OAosO6Lk0SZAEwnyw6bYZJGbB/Dq9WrD7rHCbDKRO4MJhe2G
         N3dFQPKUkZMORlVd7zmC4tif0Z7ktmOm+wHNMt4+clhnIn+Xk69COn2K4c8Umbu/DZ2f
         Ektx4XRsUd5uRgM8yMBLCMdFVRPChn7GjerFnMYoNJxHoeA4MLl8mw/cNa0DTbW6MktX
         ujMHXC6kBUrYrM9b6M9GBDU2stvNbiJjpKEAMnSrlDF86N6/J3Q6I10m1s7y+8QdHr7W
         tOrA==
X-Forwarded-Encrypted: i=1; AJvYcCV/0rD+G54akmliUdv7A3Qv5Lu6pXjOf9xMO3qE43cuV1J9LScOSITDWr8LeOdtVfw842A0TDoMicrR@vger.kernel.org
X-Gm-Message-State: AOJu0YxqxwXfMHGE222ZFyQXdyyspmXhvkGDS0MCM36adg7+rXKgYlDZ
	gI0VaYum5UhnTujr//vs9nhyvdyUeIgtzDjcE1l5E+K+aaKZ5D/aimOPRJhwMEo/T7Tk5iJL/3N
	1Wd0qznykESkH1KRTVaMxdeN8qw==
X-Google-Smtp-Source: AGHT+IGJF8B4sxZb6LHBqCORBrMjWxFGFtbVo3ixsesEJYQP3zIzMH571Rnw1V4KCZ3ejHSwrtmuRTWbQo8qDLDw2/U=
X-Received: from pjbqi8.prod.google.com ([2002:a17:90b:2748:b0:301:2a0f:b03d])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:3bc8:b0:305:2d68:8d91 with SMTP id 98e67ed59e1d1-3056094bca9mr1574788a91.28.1743462046748;
 Mon, 31 Mar 2025 16:00:46 -0700 (PDT)
Date: Mon, 31 Mar 2025 16:00:24 -0700
In-Reply-To: <20250331230034.806124-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250331230034.806124-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250331230034.806124-3-willmcvicker@google.com>
Subject: [PATCH v1 2/6] clocksource/drivers/exynos_mct: Don't register as a
 sched_clock on arm64
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	Donghoon Yu <hoony.yu@samsung.com>, Youngmin Nam <youngmin.nam@samsung.com>
Content-Type: text/plain; charset="UTF-8"

When using the Exynos MCT as a sched_clock, accessing the timer value
via the MCT register is extremely slow. To improve performance on Arm64
SoCs, use the Arm architected timer instead for timekeeping.

Note, ARM32 SoCs don't have an architectured timer and therefore
will continue to use the MCT timer. Detailed discussion on this topic
can be found at [1].

[1] https://lore.kernel.org/all/1400188079-21832-1-git-send-email-chirantan@chromium.org/

Signed-off-by: Donghoon Yu <hoony.yu@samsung.com>
Signed-off-by: Youngmin Nam <youngmin.nam@samsung.com>
[Original commit from https://android.googlesource.com/kernel/gs/+/630817f7080e92c5e0216095ff52f6eb8dd00727
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 drivers/clocksource/exynos_mct.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index da09f467a6bb..05c50f2f7a7e 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -219,12 +219,12 @@ static struct clocksource mct_frc = {
 	.resume		= exynos4_frc_resume,
 };
 
+#if defined(CONFIG_ARM)
 static u64 notrace exynos4_read_sched_clock(void)
 {
 	return exynos4_read_count_32();
 }
 
-#if defined(CONFIG_ARM)
 static struct delay_timer exynos4_delay_timer;
 
 static cycles_t exynos4_read_current_timer(void)
@@ -250,12 +250,13 @@ static int __init exynos4_clocksource_init(bool frc_shared)
 	exynos4_delay_timer.read_current_timer = &exynos4_read_current_timer;
 	exynos4_delay_timer.freq = clk_rate;
 	register_current_timer_delay(&exynos4_delay_timer);
+
+	sched_clock_register(exynos4_read_sched_clock, 32, clk_rate);
 #endif
 
 	if (clocksource_register_hz(&mct_frc, clk_rate))
 		panic("%s: can't register clocksource\n", mct_frc.name);
 
-	sched_clock_register(exynos4_read_sched_clock, 32, clk_rate);
 
 	return 0;
 }
-- 
2.49.0.472.ge94155a9ec-goog


