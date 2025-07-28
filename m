Return-Path: <devicetree+bounces-200156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BA0B13852
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:54:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B89423BE72B
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14DA25DAF0;
	Mon, 28 Jul 2025 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="OQ+xphiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8682C25DB0F
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695894; cv=none; b=IssUE83V+ArquhNEehbaBioqfw14ZSz43RS3XzF6F5aWUoDfAZ6Y3flL302YNfUORURGfLf0ZNkmGvrL/xHZFO6q+VGe8LM6qfmgsgBtdI3SVoE3IKBfoCaflMQs95DPPgb8L28VPaPXSuVPijMe59YRv1KS3wAH2Ng4Si5nCrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695894; c=relaxed/simple;
	bh=BkvhWSTnjiIWMOiaDZEJPElgPR0D+BhOKMYO4PPRBxA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kf4A/x29rkKVLb5ZoB+4VCf6iq5+vFMLdC7rHiY2r7sFOHGO8htNU8WadEUOIwQlslrZKvZ7pjRBf9VzEzj7pd/XaMQXGOtf7tW8mI60kkk4Va5LPCehxilSkuXYE2dHfR6NsLuYmh7dzLePBKB5ej+WJmGhynb3aJMHZi09MHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=OQ+xphiu; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-313910f392dso3085935a91.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695893; x=1754300693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x549zkWeZBn9yckX51psel8f2gpHv6i7OmNEj/3BvHk=;
        b=OQ+xphiukz8x0QDClcE1KNags9bZfbkyI+HyW8ZfgLHQzcIYmUME3vsKa348RFPem6
         C8qPbFEvmedn1MhHtaaR7e9m0+U1Ss0Axs422nT8j4QIRHXrUcdbymt7m9hVcaZyXM0S
         gyBM4I3yXVNLzif7EtzwnAB2A/HaOj36HIRzmXx0CW+SFvtEX3a2UtktTq5dXAV9k7Ig
         FRgX2PfGzXArxzr4wfBdF7akOpQMx+2YcewmJ0HvmIm8HC8njEJH8NdZPvS9xnO4/Pbl
         bH27VKv6XZsqnH7+im+3U/GFh5N9GoEal67bLpTk9iKLHQR32Tu2cvkUemZbzw0/HuOG
         IwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695893; x=1754300693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x549zkWeZBn9yckX51psel8f2gpHv6i7OmNEj/3BvHk=;
        b=CLNNdADk2V2taajerTXzGOvXJJGCgseCcEYiHNQOVUy/bFzEo0zPq/273X8tDKY0Z9
         iZi4EpYafed2emcX3+jj9Zch8c4BwRstaWDDWxv2k9145IMWSQdKkNkUBVLyW0Bb8+7V
         VjILtm20bZprSjOZkScYR8Ja5g2mWmpqPX1FX+vlFCKqWx012yoGCy+JBpfIl3nd36Uu
         CVIW96QjT5RU7j66cJLNAsyRNu0WixugzktcxXWEN2izxaxWRC/GeHOX3tKRhTQgx/7Y
         mOsaC4KnOp/KqIfglpixvhMxrBlF8HQLpk7QdzFO9IawI6AT6mnTwSyXwI9WBtI7yfF5
         O3Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUa+9j2WVYpVFCmmBEUhkZiOHOO2u2ub38ThNHeNC9vKlUf+H4ZQlo9eDmGmqwatfAfTJAwjpH5xCtq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywst0iH4D9JRiFIT4SghPwFDSvsA7gEN8785Kno7qhNsUDRn7us
	bYK6zflouyYT6yqGtoQaixaeJviTPdmuT/nT6MY62BkbUvvf0dnH4l3CgReB8ZsuQTs=
X-Gm-Gg: ASbGncsCXJ+wD5D57bVe5hC8aje3B1y4BAARjFQteu9KPoIoX5bcHWq1NcoumNevy6S
	7Yn4gnJkN3hWfoPP9AxwWcelBHPfRaPWB7L2WRCh1IfF90q9PgtJH1blVO4b68HPSHphHfY0d8l
	jJ9BaQELkyolh+d2kZuLCUJ4ZP3AvgYQvDCSF9uPBT7OkztCCRp3xsUvEgiaa9dt01qwSqKhb9I
	9FLkwZq6KVVakp0i5dpMuc2/Z3z6pJFH91ZVe6RIhdg8epwIw2QeyiAadQ83GbvOjhq3nBIYSqi
	8o9U/WsGa/dJ3gf/i4RNBJ5T99/aILC8nS/cEpiNy3uu4Pf135LrSgpH9teL9LYcarRIGGZzHVD
	Ey15w7Ud9pot8zaRjoQ2wmPzIz6WxTpZsAgq/JBOXnAtBY1/eDi/lDqPimWAP
X-Google-Smtp-Source: AGHT+IGSbo27hBN363qDwsNMdhMoZk2PtIESdVUuOULrb8b8ZFITrd8ZdG3auXim/8/7RPtqAB6o6g==
X-Received: by 2002:a17:90a:e70b:b0:31f:1744:e7fd with SMTP id 98e67ed59e1d1-31f1744ea0emr283600a91.31.1753695892281;
        Mon, 28 Jul 2025 02:44:52 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:44:51 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v9 24/24] MAINTAINERS: Add entry for RISC-V RPMI and MPXY drivers
Date: Mon, 28 Jul 2025 15:10:32 +0530
Message-ID: <20250728094032.63545-25-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250728094032.63545-1-apatel@ventanamicro.com>
References: <20250728094032.63545-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Rahul and myself as maintainers for RISC-V RPMI and MPXY drivers.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 10850512c118..ad6404e8292d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21395,6 +21395,21 @@ F:	drivers/perf/riscv_pmu.c
 F:	drivers/perf/riscv_pmu_legacy.c
 F:	drivers/perf/riscv_pmu_sbi.c
 
+RISC-V RPMI AND MPXY DRIVERS
+M:	Rahul Pathak <rahul@summations.net>
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+F:	Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
+F:	Documentation/devicetree/bindings/clock/riscv,rpmi-mpxy-clock.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-mpxy-system-msi.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
+F:	Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml
+F:	Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
+F:	drivers/clk/clk-rpmi.c
+F:	drivers/irqchip/irq-riscv-rpmi-sysmsi.c
+F:	drivers/mailbox/riscv-sbi-mpxy-mbox.c
+F:	include/linux/mailbox/riscv-rpmi-message.h
+
 RISC-V SPACEMIT SoC Support
 M:	Yixun Lan <dlan@gentoo.org>
 L:	linux-riscv@lists.infradead.org
-- 
2.43.0


