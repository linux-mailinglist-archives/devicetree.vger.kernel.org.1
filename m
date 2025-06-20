Return-Path: <devicetree+bounces-187996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27766AE220C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 20:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AD953BD9EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 18:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D41F2ECD0B;
	Fri, 20 Jun 2025 18:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lf6cyZD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98A92EBDCF
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 18:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750443468; cv=none; b=Cm6g1hNsL7Xd5SZQocA+XXaGeIAHfjHCKYuLsdGX53Gr2Qv+EtlTf9pXa5WlLGiHcXYIqK8VynBuaIybV2rAQNAtPYuCb4yBglRPgIAoPsg2op5eiTApSW2z56RvCDE62sTpm/tAyj6Hd/HAO/ZvHOBFczw76Abg4PPhmnMdKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750443468; c=relaxed/simple;
	bh=M0nny4REtUZhhIQOIJ8d/6AAG3bKyfZKLTfcSkQpEvE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=XwF5YmGs86dD4nRwgdIrKFPJ35qInCerkC2ce6tXo9L3WhrsSgPgbr5KdQbxv/hmuavMlzyTLksVvJSL1w1IsM28mZP/7fZz67rGxZfnRDaJYJ4LQOLtWRh/IdiqZMkxXYpuB8VN3BmKjgK/+xgGwbTIdrCS+/KzqEWQ+g2Ovgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lf6cyZD0; arc=none smtp.client-ip=209.85.210.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-7489ac848f3so3182105b3a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 11:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750443466; x=1751048266; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=j/s7oEmyKauEAHgwht1yQk0tIZg1WwzoDzyegW5BYz4=;
        b=lf6cyZD01do3iImW+w/Mv5+NkOOiVtHVxayLg3nZeEYOMzySTdRPXFoA2NAYMtx8W8
         gSa11UviQu8c8O6RtHoys5x6/ATPTDVsLBSaM4yt7SDJNeBC6BD1YLXNImVJftpNFWc6
         Q63VzrI6Qh42kcYhPKuxKvqsjojKrtQCheGQLfdQJxHNQ3EM6/3qI3w2mNjYnoLFIjPW
         +G0iTqnLata2PfwdE4KVgw7K/b9TSne946zw5gkUo4A4DJrCECIJ7PqBJ1xL9aCnlIVW
         h2FqRrLHKILTG1AP5b5j1wRCJRh3uwyE41Lk4xZUry2X88xaE6dH1jvarRHeS6mNcmX5
         2bHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750443466; x=1751048266;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j/s7oEmyKauEAHgwht1yQk0tIZg1WwzoDzyegW5BYz4=;
        b=cDC0LJSR5zGc5YTXZ6akm9Tgln/XSz/7tC5aJaAqVA/FoK1SauSIkiufo1hhBOS/Yj
         YjXZvYB65xOISSsTFCPG653miIN0wI33oR17uSVXesx26k/sfCZOqOmwZZOcZkJBXRIA
         hoGcBitHBhzgy0iJ/gyKkUw4rnMLxvF5gaoFXZNgtcq3jgSgIGBuiVhk+REc1S2td1Z6
         7ahucDwcOApj7vPOJ4i1DRGNApXXE15d0OqxGrnJ1lcVQ0NM0k3aTa1TLW+XBj1oCKOy
         Pb85pnTXGl5rABuPk7evMxq9NVXTia4Nbey0J6yuORxstwM46wJDhdC1zoyGVx2iA9CR
         4AaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWosXMNV/VX3dsPRcTolw6Im4ygQ+OH3Mi8BwdujqZENPz2hAZeHROgmYIWxVylsnS4xidnE7FZVWUX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4BBe/zmc2XIE4vGe8tVkMUwDk9Cde9rdt/UjXpx/wlY2CWRDX
	LRs0UI6E3hj8CGZhu7DaW8Z02pYwcDruDqHCi3WT6qflv4xtNN5ml7MKb70ogh7SaOFMqmuIFrn
	lasZ62cu5TscEUAExgzJnljaGltEA4Q==
X-Google-Smtp-Source: AGHT+IHoiuIPOX5cQFNIBafAR41PjPYk18rc3/O/j6tqRVu5p45znC4S855hKfUC4szgUQ9hnGaEGhg3C2WZ1qgdT6c=
X-Received: from pfrb30.prod.google.com ([2002:aa7:8ede:0:b0:748:d81f:a79e])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a21:7702:b0:220:658:855 with SMTP id adf61e73a8af0-22026d72b49mr5784487637.13.1750443466155;
 Fri, 20 Jun 2025 11:17:46 -0700 (PDT)
Date: Fri, 20 Jun 2025 11:17:06 -0700
In-Reply-To: <20250620181719.1399856-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250620181719.1399856-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.50.0.rc2.761.g2dc52ea45b-goog
Message-ID: <20250620181719.1399856-4-willmcvicker@google.com>
Subject: [PATCH v4 3/6] clocksource/drivers/exynos_mct: Set local timer
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


