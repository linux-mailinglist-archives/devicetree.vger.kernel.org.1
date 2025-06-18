Return-Path: <devicetree+bounces-187319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C8ADF874
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 23:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46B471BC00B2
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE47F265284;
	Wed, 18 Jun 2025 21:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="atN0USnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467ED262FFD
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 21:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280948; cv=none; b=Hb3GtJp4SU/2duKB2o9yUVP+pQiGox/r0d51qZrtry7mUInAz8UZtxklLg3lOcx9q1MeNM2umGr8dZtrFzggk9g2lausHGCzqakc5vqdzB3Ig60C+WpoS04h2ohPcv8f9WLDFNMBDZbyyxDkvClDmkHtV2+zS9dkStcNovpfD7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280948; c=relaxed/simple;
	bh=M0nny4REtUZhhIQOIJ8d/6AAG3bKyfZKLTfcSkQpEvE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=hwmvYTfthQFiG3eSyyMleBUNqAXrJrNUZAYUWPlhb5BQIpj1KFOIgDNnzs7itvSl3Ow51cOcUVKXg7b2jU5MzdSUf3AvGD81qFYsAoGUKx+taE5Lmxu69r5yO4LGh6cGbHgYW+AI1TxcUltyaED52FkJRfv2c58Khf0e7EGvvzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=atN0USnl; arc=none smtp.client-ip=209.85.210.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-74834bc5d37so128528b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750280947; x=1750885747; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=j/s7oEmyKauEAHgwht1yQk0tIZg1WwzoDzyegW5BYz4=;
        b=atN0USnld4b5AxHb5rU+xdesBsnWytOkgjfRtmi03cuKXhTbzcQ5nHv/Nfdx6W+Tu8
         KZ1jiN8/jiax+qh58Na/tT4NFDvyP59yso+y7n54ItGaWLHw0Plmx7nLYafOat+3HCrM
         8Kx5giHbW8HRawpw7R0mqmx6h4b+Hrh3TXkRjwi8nrYaJmXKxCKrx9GCmqIW4GbAKQlf
         NzsHXOgVArX/6fGyw0cv1OVTfVkfwXKItusv2snPX4jU49/iIEJ2WrN2iqGOgY1MUNgR
         lGSfHtA2f3mFVgvsxoNjN8ZjYjRiOfzzsAHZT4mHdaqfX72W5LohdU6ODEZrEOgZHt6w
         ksbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750280947; x=1750885747;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j/s7oEmyKauEAHgwht1yQk0tIZg1WwzoDzyegW5BYz4=;
        b=OTc9B/Zk00oZ+GMvbdfg2SBWvyxK8EFvahvCAJXfVFhv19HSPPfyVPzYlb8nV9wpOe
         LMHA13IW8rVnwwl6F9vo1ZkhtzvJuMM1GpyLmCi3nsIV5Rkb5IqzJH6ow1sy8f8xTnGr
         uiirA00+FtEFSdF2YBKeQPVTNlXlluqlhOrbspqw5cN1DQWG0V/YQfG2Ts7pG3QjudFG
         b2hPPvBOYp2X8/tJABuHblMnzGOUpLFv5N1Ly/PZvQQF0mh4vpCcJeXc4uabJbU0ccEy
         HK8GRJjwJb7d8zN2iRs8hfBOqfXcEyVllvO5k0Lxh13TQYzFKn3Q1hazalLNVukLz0aC
         iawA==
X-Forwarded-Encrypted: i=1; AJvYcCWYuE45vAtQMNIMi5Nqt0fr9BlN4cJgyKxZphJF3HyVXppGVlYNwWZpJCysD4uV8rWQSIF3VA4ocnU+@vger.kernel.org
X-Gm-Message-State: AOJu0YwXgMGmmjkU7u5T8tsdXbgzpiNNJIrBWai7eMJXSaaw6uqrhBEo
	pMQd34snUINRaijcax0925PV2dyUiZRsCNsd/2ykeZgq6bGNqOJ0cv1/cLyD8JcILRFcfenWDs4
	4QxjVgJIx6cM9t6cmDdqA2FmibhTZ2w==
X-Google-Smtp-Source: AGHT+IE4wAa1uushSqyIX9OxwMbbvMZIhYwycwsJVo+y3iWpXe65Hsxtzoc09JZEPg3XDw2ypEIRNrbYPoxWDj9ezfs=
X-Received: from pfbih12.prod.google.com ([2002:a05:6a00:8c0c:b0:740:b0f1:1ede])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:4f88:b0:747:ee09:1fd2 with SMTP id d2e1a72fcca58-7489cfcb1d3mr26921054b3a.12.1750280946665;
 Wed, 18 Jun 2025 14:09:06 -0700 (PDT)
Date: Wed, 18 Jun 2025 14:08:40 -0700
In-Reply-To: <20250618210851.661527-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250618210851.661527-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.50.0.rc2.761.g2dc52ea45b-goog
Message-ID: <20250618210851.661527-4-willmcvicker@google.com>
Subject: [PATCH 3/6] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	John Stultz <jstultz@google.com>, Youngmin Nam <youngmin.nam@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

From: Hosung Kim <hosung0.kim@samsung.com>

To allow the CPU to handle it's own clock events, we need to set the
IRQF_PERCPU flag. This prevents the local timer interrupts from
migrating to other CPUs.

Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
[Original commit from https://android.googlesource.com/kernel/gs/+/03267fad19f093bac979ca78309483e9eb3a8d16]
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Youngmin Nam <youngmin.nam@samsung.com>
Tested-by: Youngmin Nam <youngmin.nam@samsung.com>
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
2.50.0.rc2.761.g2dc52ea45b-goog


