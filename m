Return-Path: <devicetree+bounces-162709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEA3A798EA
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BEFA1890DE5
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F441F8753;
	Wed,  2 Apr 2025 23:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="21th/tS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798551F5822
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636890; cv=none; b=TGqIn8BW87M91CrmWlq2NmzZcp1vCeMmqTu/Og3X7ti5ZZ4iLfVLxukRGGFmL1KFK8Ov+wEnEABY7GP25x8z1pLd3TFlAbVZyBLjApNP22OYdpN/MRWXdSl6pcYv8FLDE/mxzlxY05Wc9HUzkxbUxfKVJJN6p1m5xxXEkbdc+ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636890; c=relaxed/simple;
	bh=ybEIMl+QUKadqWELK4Gmy+9k+si2Cgc18MkjtCiGmP8=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=jGriGL6cdgPBJCsMjouuRfSab6YXTqDqCgE5x5Csub+EYgncnP9F/z8Qo36gzU+JIx4P/ZaBUrBzywR408nAOhPjo18Z8OsLdrrC1HQhNjUfeqJgccRxM8yM6UWzsCeLk9+rbgmv6WPyT3omcNnMfloQL4dYCfdgy5kALcj2mL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=21th/tS6; arc=none smtp.client-ip=209.85.210.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-736cb72efd5so244041b3a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743636889; x=1744241689; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=igB5EzbZ4UddujnhN5pTR462QEE2CggaY13KiAdG+kI=;
        b=21th/tS644a9Q/tsOdV+XBf+z2xo87d+KHLOe0IYRo9GJdjZSDQHdPNKM6A6MWddgY
         ITpdDLu9Sey5x4Oy4/AXyg1X+CY5fwGKvbEEZwY6BVjBgHw0ohNvRZ7aNyeN3qWM0p4g
         FeGW7yuo/h4k/uSGBS0aM4lcs/SvewZvLyHRxHjWPZxnV4qP6zJKgUDEetN9X5Ldb74E
         +lvsqOWQgW1U+Hnk4wp3Hrz7bJ+EKNurT1o6gQk/ZXXwNwCR9XQ4jw5Vp6gWNaEvXLzo
         idj8gEIRDEqLio2twqU+mntQzFwDusnBkerT/WsAaKkRkdENnr8Zlcx8YioaeyNX51yO
         RUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743636889; x=1744241689;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=igB5EzbZ4UddujnhN5pTR462QEE2CggaY13KiAdG+kI=;
        b=OAoUrWqJ0C4RajdoDy/PVLNLjd1nCJogUV94ZyiWDc1G9zeQrGp3Vh00mCgn8gp/wo
         cuGVB8HwrwY/IxfDwcy8Kowt8+1Yif4q0iZY44mUyJuhXbi6mQh/WbxNY+JdWDxXWU/k
         eTYlqS6FJrKxz+/2J/gTxxLwJmaNJLTPsUn8e0RbUctBgss5v/42vl1Z3Es35R2K+KRn
         JujyWLPoUr0hQZTRN7Uey3DJFB8OvkTsKmBiCZJ84nnS7iWpRgyvc7nckzLyDXS0NKDR
         aGx4D3KZfNwGLK5m5K076dRDosRZj+mM5jsnoYS8kol0+jptpHlNJuhkixV9DsnaD8pj
         8NHg==
X-Forwarded-Encrypted: i=1; AJvYcCVGT5ypOZsq9wwvCrJ18Xzj/wyO3C2oRXBjUPIA7QOul79UVxlkLDxx7iphdwOX8q2F1zV7QvSf6Tp8@vger.kernel.org
X-Gm-Message-State: AOJu0YzDSktQBYgptubLDFttIqB0R9fAeHo27XYDRtCHbmabz+befm3a
	EGrvAnPnjMdmoX94go36gbdz3pxFfimE9GIiariFQEXV1PlC1pcdxNKmgVVp5GAlaVFo+02DOzO
	LeDw9LI7rMvGE0Js7v4b2cRA5Tg==
X-Google-Smtp-Source: AGHT+IHliF72RhoVlooK9L+c1Y4iuJGgr9wHIupvklzWWd4gEqQfjkuZNyDHtoJev6b5CUsHoC8Btppiv9aU79bLH+M=
X-Received: from pggj2.prod.google.com ([2002:a63:cf02:0:b0:af2:3436:98b5])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:2d28:b0:1f5:93b1:6a58 with SMTP id adf61e73a8af0-2009f5b912cmr30610075637.8.1743636888966;
 Wed, 02 Apr 2025 16:34:48 -0700 (PDT)
Date: Wed,  2 Apr 2025 16:33:54 -0700
In-Reply-To: <20250402233407.2452429-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250402233407.2452429-4-willmcvicker@google.com>
Subject: [PATCH v2 3/7] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

From: Hosung Kim <hosung0.kim@samsung.com>

To allow the CPU to handle it's own clock events, we need to set the
IRQF_PERCPU flag. This prevents the local timer interrupts from
migrating to other CPUs.

Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
[Original commit from https://android.googlesource.com/kernel/gs/+/03267fad19f093bac979ca78309483e9eb3a8d16]
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 drivers/clocksource/exynos_mct.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 96361d5dc57d..a5ef7d64b1c2 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -596,7 +596,8 @@ static int __init exynos4_timer_interrupts(struct device_node *np,
 			irq_set_status_flags(mct_irq, IRQ_NOAUTOEN);
 			if (request_irq(mct_irq,
 					exynos4_mct_tick_isr,
-					IRQF_TIMER | IRQF_NOBALANCING,
+					IRQF_TIMER | IRQF_NOBALANCING |
+					IRQF_PERCPU,
 					pcpu_mevt->name, pcpu_mevt)) {
 				pr_err("exynos-mct: cannot register IRQ (cpu%d)\n",
 									cpu);
-- 
2.49.0.472.ge94155a9ec-goog


