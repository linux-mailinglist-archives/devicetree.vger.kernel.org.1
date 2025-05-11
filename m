Return-Path: <devicetree+bounces-176012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA71AB28D0
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7283F1899A95
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83ADE258CF3;
	Sun, 11 May 2025 13:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="D0/ceyjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09279257438
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746971004; cv=none; b=a2l0eIKyUw+kDw9ERn79w3xG4uoHZv/+tNUu4ql96xERmrlWzblBCSK66gzIO+9UiS4hZ+WMF/XNrzPX4rQ/+su+DDY5sBg5mlDOVVeTlRoMvGt4/BYOWbjAsVuy48dP2V4wr/RpQs10gcs6qpZRaKgtNKE354LKlAbJv/HbwTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746971004; c=relaxed/simple;
	bh=DGrIKW6QLI5GXj0WJzMWfVKaiU3ubl+sUPYQLJ6Uq80=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GzQ9ylNm1V2BjsKa4Gt0iXmel4tH/8mbboo+O2rw38kjuXMw6gc7K0TvpCEz6sd9tE106fiZIU3otSki7fV+9iwWtr43Bpr/zH4CxvcOSc1uAewkhh/jikrzEN0543JOCGTCJjOvx0SUenVo1QGcUwslTY0Hv8XBbV181h5W65g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=D0/ceyjj; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22fb33898bbso42691175ad.3
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746971001; x=1747575801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYGn3XecLxKlXcXghuizRd0ORyv4dXXBBqocKLMzEs4=;
        b=D0/ceyjj/QYLGGdm+n7zPKKEr6+WNeSJD4jliTP0+tsdOMKIQgW9I3xlZU63U6euOF
         ZZG1Rsk7L2CQtpB0RZ8iktR4UqZlSWITCrqePgn+sWAGZjXzGAE6uj8BIh4AAdpCkmQ5
         gtZXLus6S1IhBF50FPZ1JSXejnPsV+JTjmGgFX2pJAR0KC2wZgz+TCA9jQv0yCS5cW1s
         6RPKLbNxs0a1jnRIh1DI+bb7Usd6BEfCpCX3mexoFL4ChW0iV1hv7ExjrKjsz61d5+Jo
         6BGLDzkXEEFYHKENrdr4ERa9aaN9SwmW62PKJOZdaChj7/L8Qz1ymGe18wa3XP7c4opO
         qbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746971001; x=1747575801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xYGn3XecLxKlXcXghuizRd0ORyv4dXXBBqocKLMzEs4=;
        b=PLd9zPUluJdAy2rCMh1o8Jf149OPg28/J8P4Qx7FfpB8xoB2Vp8aowmQTr+D/ojiyw
         tf4G0N9eoNews4gF3NaAo5e0As6FWcPhhoPi9qPFmCpoTsaflYKBdrDTe/MJTkzo65Po
         IKvzaeWclNbwLhPi34FBVsc8n6Fl5UOp7BLx6U0zHcPAjp86ot3syT0iWP/ZgGclJ91n
         Meb/ouk3C3qgiEqDQvGRWzBGNdf+hrwnn8t5IjUCerTeiQDV+6vtpNUb8LTtMBebm1DU
         mcT977JO+iyfe/EgTSTjaZKLnnJXkmhjUUdKT0u70I1lTuBpQF77xZN3wwDiJWNxtb7g
         2LVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZI4kTv+FmVy0tb4aQ8upsfWH799GJeQwriAlXb5b+j1AkJYjHa5ZShNhQQ/pfVLJutLCkv2MSgGK7@vger.kernel.org
X-Gm-Message-State: AOJu0YwBNmjKwiUpBqTXc2PzGWKGL4Ph/ZboHKmgfAcHV7VAlnVe0qJM
	zjjzKJXwop+4DMjJLy3nsQ96apeN9/gLR8rubkdmqWs3PNbdmQIR+hIjfdMzFtg=
X-Gm-Gg: ASbGncs6jDauklFE7sPUkP9XDBUxO1q2SN8u1GpfvzBuPLMdI3Vbftjs+iWzdnzMs0E
	FQ2tj7xnwVpwV6g0q+lxBziH8b/S+BvwrbVXYmR8w9+v3Upvl25u8KCUBfL6qgGYhBiyey0FVPh
	byuBBz7XfyTtxd2ZztJgN1i+1nrBY8TSf5irTzk6c2IBje6ff0DOiOUqknCcB05A13jjX+fMyh0
	MAA/3BkG0uZyEza97QEqXi5gOgrwaTjrkv6eIQJb8ZCMDU1+l0GXRIFASgaRdOd0HSPi1Gfo4ov
	9hEqDqZA4Jk6l3Cf1c+b4KEOwC2LdOUsrxTjh++KbzzIU3iJvVpJ1R5q2y1PrtcHm8zjY+wyJ/I
	OY9PXThwNhm3LmA==
X-Google-Smtp-Source: AGHT+IG52LyOtdqyYBdOZ0QKQPhVZkpzaGbfXrQI34jhYPtmLfmrXHBFBAebuBhiCsLhxrZFt4LIYA==
X-Received: by 2002:a17:902:e94d:b0:227:e6fe:2908 with SMTP id d9443c01a7336-22fc91a8448mr169477755ad.48.1746971001231;
        Sun, 11 May 2025 06:43:21 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:43:20 -0700 (PDT)
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v3 23/23] MAINTAINERS: Add entry for RISC-V RPMI and MPXY drivers
Date: Sun, 11 May 2025 19:09:39 +0530
Message-ID: <20250511133939.801777-24-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250511133939.801777-1-apatel@ventanamicro.com>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
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
index 69511c3b2b76..46a0909a17d9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20885,6 +20885,21 @@ F:	drivers/perf/riscv_pmu.c
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


