Return-Path: <devicetree+bounces-251182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC6DCEFCCF
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 09:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA23830380F8
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 08:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87DAB2F4A05;
	Sat,  3 Jan 2026 08:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PgXEpvok"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14292C0F6C
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 08:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429224; cv=none; b=QOIDiZzLaYA8LYE9PlTFQy1+mdmVn8nO2bBm2+iycf95HvflIfd2GfEpei6so6G3UVqTkJpKMoB/sF/d7K0RXdS25hjlxnE2FD3HAa1DuB5u8J+T1mVjLDozQU/w2ngMLsPMIi0ndGSsv96VIulJEmnkn3ozk6H3ZPo4VAVh3rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429224; c=relaxed/simple;
	bh=PC93uMu0rTtqYTL8EEurWx5EXMnuM4BeV1/KFTTmfBs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=paIEQgv5xWQdelbmzfHjm++glZuy+rB/OjP2OQJ8iWtON+A7PJ4BUZ8KOWkk3dTBRXtyHC7iAJbrBI5JFjFGHssiy4OGSuSvlWPIm4jyzkMexk2eVoc4J60ak/fdxuWz+9Pv8DfOvE1xyTbevALDimLTq+ruRTuAlJPyD+HrHYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PgXEpvok; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0fe77d141so143109335ad.1
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 00:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429222; x=1768034022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHyG145kzFXnOFjXe++Sub24U1Sr0jpUyn5t+Vf48Jw=;
        b=PgXEpvokEvj/gEAjDGNV/XiN9lwieYES3UBT08ebktFVQmuoYiNU+RN0U3DEA4Yywr
         ZVp+veiKgRqeDMfaGXqJPqF9E2VsHegdHexep5pwQ9XxY299Ws50AGqrEzlN+v7khEW2
         IBr9nihckKzuAM7xsiL6fz0cS5gJvHZF1IdKFKVI7kSoxdbSMIqTTTF4CZy5K29j30Gh
         zjaSl8GX7XOdO0gHgK/9h182VFAZuQYUdGQaTxPQ9kFfb+0NzV4BOGyshlxGqWyPhcl8
         Rw4y4rK+lMLtezn2JkDs3tAesGuRijikRPFOfmEJd8wymgQEbz0DiC+Bdpa3V5npFfhe
         qcXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429222; x=1768034022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hHyG145kzFXnOFjXe++Sub24U1Sr0jpUyn5t+Vf48Jw=;
        b=I5UnmMSMuBsksYJD5/KFQsBOwf0po4zhsZTO8uiZBTQnyaFUo0xzUZalcXK0Ytl9b5
         mT2ZWCI7RMgxqUkB/tuXBUlAHNzhcgaUWV52pqf+8x/tuI3udNgCMyTTP6gsHsnV02ex
         CGfgZUW3qOWNjGDJchqtPbvM0X+vRlrXIRziAQI31pOACn2A6945bkF1DkSPCSel9w6x
         LB5ksvIY/uiJzmEI5ibDsLYhFZkCjcR3jNZrhlYUdzIbm1gHuEQ9dFMfWJvELwYSA2QV
         junwsTvyriPOMm3Lhle+tAVFYBxFmwhb3Hq8bDJOxKBtG1CzWK0uS7yGbYZpdgXXid29
         8OlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVECkBhgYZRXHgoyjJASvdgypxZG9HvpkvPxZdcyj0zx83LoOVkvuA43Sq28a+bpl1jU2R/OI13Rmyq@vger.kernel.org
X-Gm-Message-State: AOJu0YxE6KJ8UFB622zlAc26uE7Q6CemVd18VxrFg6CgoG2qlNdHBSmk
	Ky+wpCge3hUsb/lh/R/U21xHitSKm2Wg9rR2BfaG0NVjuzAwh6JaHMSz
X-Gm-Gg: AY/fxX59fzAZLOzmYV4bASsBKuppA4BrXUHIqdlEH6sUr7vT138ZLaFyNwdGOqGiCDQ
	tiV1x32h2GB/tRXS6Xc70NuA8qxwqJRaWdXiZOT8i6UNx7ScM3nSQ6TvX4UazMzVJztbo10Mmq4
	0lc7Uap/JLFJipwd7zLneGiHKUEWGbWustEOct7CmjGG2FfOjgueUVdbQ0/N1mYHbyacOsAcfIe
	teuiI9W1F21cyEHVlCQVRDZMz64n/52zUslo72H3LvDOrZMmJF03Zj+DoxCC3C2AWMHW5CCberB
	Lmq8QgQlZK8/jn7iW3zyXgw9Ww7w3XTbIQ8Gm9tzajWGTVcqG4LC+NtHfYX1dhLd50SsOAGoiDk
	uD2oC4x1/Vp2artSTY03YHK3+MCDOpBquHfca43qgfbYbBGlqHyP72NYDx5oGx63kA6azkyPOs4
	H0p5u7pw==
X-Google-Smtp-Source: AGHT+IHxDotaAPgTf9hDSRmjhQO/IAis4W0EptEfWvNWpf1X8rcKBg8E34x8vTt2toQFaw/FLYg8Jg==
X-Received: by 2002:a17:903:1c7:b0:29e:76b8:41e5 with SMTP id d9443c01a7336-2a2f2830f94mr467517465ad.30.1767429221879;
        Sat, 03 Jan 2026 00:33:41 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:33:41 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Hans de Goede <hansg@kernel.org>
Subject: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt handler
Date: Sat,  3 Jan 2026 14:01:19 +0530
Message-ID: <20260103083232.9510-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260103083232.9510-1-linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The fusb302 driver triggers a "BUG: Invalid wait context" lockdep warning
under certain configurations (such as when CONFIG_PROVE_RAW_LOCK_NESTING
is enabled). This occurs because the interrupt handler, fusb302_irq_intn,
attempts to acquire a regular spinlock (&chip->irq_lock) while running
in hardirq context can lead to invalid wait context reports if the lock is
considered "sleepable" or has incompatible nesting levels with the
underlying interrupt controller's locks.

lockdep warnings:

[   38.935276] [      C0] =============================
[   38.935690] [      C0] [ BUG: Invalid wait context ]
[   38.936106] [      C0] 6.19.0-rc2-2-ARM64-GCC #2 Tainted: GT
[   38.936716] [      C0] -----------------------------
[   38.937129] [      C0] kworker/0:0/8 is trying to lock:
[   38.937566] [      C0] ffff000112c04190 (&chip->irq_lock){....}-{3:3}, at: fusb302_irq_intn+0x38/0x98 [fusb302]
[   38.938450] [      C0] other info that might help us debug this:
[   38.938953] [      C0] context-{2:2}
[   38.939247] [      C0] 2 locks held by kworker/0:0/8:
[   38.939670] [      C0]  #0: ffff000100025148 ((wq_completion)events_freezable){+.+.}-{0:0}, at: process_one_work+0x224/0x4b8
[   38.940645] [      C0]  #1: ffff8000800fbd90 ((work_completion)(&(&host->detect)->work)){+.+.}-{0:0}, at: process_one_work+0x24c/0x4b8
[   38.941691] [      C0] stack backtrace:
[   38.942010] [      C0] CPU: 0 UID: 0 PID: 8 Comm: kworker/0:0 Tainted: GT   6.19.0-rc2-2-ARM64-GCC #2 PREEMPT(full)  bd73c5afc1bd41f04ef9699c14f0381f835f4deb
[   38.942017] [      C0] Tainted: [T]=RANDSTRUCT
[   38.942019] [      C0] Hardware name: Radxa ROCK 5B (DT)
[   38.942022] [      C0] Workqueue: events_freezable mmc_rescan
[   38.942031] [      C0] Call trace:
[   38.942033] [      C0]  show_stack+0x24/0x40 (C)
[   38.942041] [      C0]  dump_stack_lvl+0x90/0xd8
[   38.942047] [      C0]  dump_stack+0x1c/0x3c
[   38.942051] [      C0]  __lock_acquire+0x5e8/0x9c8
[   38.942059] [      C0]  lock_acquire+0x134/0x280
[   38.942065] [      C0]  _raw_spin_lock_irqsave+0x80/0xb0
[   38.942072] [      C0]  fusb302_irq_intn+0x38/0x98 [fusb302 634bac905a09c450b54f88b96019accd2820228f]
[   38.942082] [      C0]  __handle_irq_event_percpu+0x138/0x3f0
[   38.942088] [      C0]  handle_irq_event+0x58/0xd8
[   38.942093] [      C0]  handle_level_irq+0x108/0x190
[   38.942099] [      C0]  handle_irq_desc+0x4c/0x78
[   38.942106] [      C0]  generic_handle_domain_irq+0x24/0x40
[   38.942113] [      C0]  rockchip_irq_demux+0x128/0x240
[   38.942120] [      C0]  handle_irq_desc+0x4c/0x78
[   38.942127] [      C0]  generic_handle_domain_irq+0x24/0x40
[   38.942133] [      C0]  __gic_handle_irq_from_irqson.isra.0+0x260/0x370
[   38.942141] [      C0]  gic_handle_irq+0x68/0xa0
[   38.942146] [      C0]  call_on_irq_stack+0x48/0x68
[   38.942152] [      C0]  do_interrupt_handler+0x74/0x98
[   38.942158] [      C0]  el1_interrupt+0x88/0xb0
[   38.942165] [      C0]  el1h_64_irq_handler+0x1c/0x30
[   38.942170] [      C0]  el1h_64_irq+0x84/0x88
[   38.942175] [      C0]  arch_counter_get_cntpct+0x4/0x20 (P)
[   38.942181] [      C0]  __const_udelay+0x30/0x48
[   38.942187] [      C0]  mci_send_cmd.constprop.0+0x84/0xc8
[   38.942194] [      C0]  dw_mci_setup_bus+0x60/0x210
[   38.942200] [      C0]  dw_mci_set_ios+0x1c8/0x260
[   38.942206] [      C0]  mmc_set_initial_state+0x110/0x140
[   38.942211] [      C0]  mmc_rescan_try_freq+0x154/0x198
[   38.942216] [      C0]  mmc_rescan+0x1cc/0x278
[   38.942221] [      C0]  process_one_work+0x284/0x4b8
[   38.942225] [      C0]  worker_thread+0x264/0x3a0
[   38.942230] [      C0]  kthread+0x11c/0x138
[   38.942236] [      C0]  ret_from_fork+0x10/0x20
[   38.969307] [     T11] rockchip-dw-pcie a41000000.pcie: PCI host bridge to bus 0004:40
[   38.969995] [     T11] pci_bus 0004:40: root bus resource [bus 40-4f]

Following changes resolves the lockdep warnings and aligns the driver with best
practices for I2C-based interrupt handling.

Cc: Hans de Goede <hansg@kernel.org>
Cc: Yongbo Zhang <giraffesnn123@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Fixes: 309b6341d557 ("usb: typec: fusb302: Revert incorrect threaded irq fix")
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/usb/typec/tcpm/fusb302.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
index 870a71f953f6..089722b52fbb 100644
--- a/drivers/usb/typec/tcpm/fusb302.c
+++ b/drivers/usb/typec/tcpm/fusb302.c
@@ -1755,9 +1755,10 @@ static int fusb302_probe(struct i2c_client *client)
 		goto destroy_workqueue;
 	}
 
-	ret = request_irq(chip->gpio_int_n_irq, fusb302_irq_intn,
-			  IRQF_ONESHOT | IRQF_TRIGGER_LOW,
-			  "fsc_interrupt_int_n", chip);
+	ret = request_threaded_irq(chip->gpio_int_n_irq,
+				   NULL, fusb302_irq_intn,
+				   IRQF_ONESHOT | IRQF_TRIGGER_LOW,
+				   "fsc_interrupt_int_n", chip);
 	if (ret < 0) {
 		dev_err(dev, "cannot request IRQ for GPIO Int_N, ret=%d", ret);
 		goto tcpm_unregister_port;
-- 
2.50.1


