Return-Path: <devicetree+bounces-184602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE38AD4BB0
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:28:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9B24170DE6
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED67522F742;
	Wed, 11 Jun 2025 06:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Uu+uBohp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7824022CBD0
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623179; cv=none; b=ZLZCZjG/CSvk2FDmJHmsD1m8MuXhYiVBgK2YcaI+CxqI7zxVl96ECVWVoVvAyFN8B5/Tpm8O0WhYD85s4R+uz8S14gE3/nBcFmfskFTLlYuZCcK0q1YG1mN4JS8FkwSEmz6D6bRbtCXL4a+4QeyxB72VRGQBeOy9HGd+woVv0W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623179; c=relaxed/simple;
	bh=hR1n8x0Puv7CTZWZxD0bA8wGkXIKo6DifapRtybNFHY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rEEGTJP1GZRpZsU84zMbnri/WfJpNSdx1VSth/r2Jz0s02vkbC1DHbOr0SOYmchgMSV48J+CyQpEPxjDmEkxGBQoGD2vtCw7O4k+0hFvXreqhUYJF6Pkx8R4ij/hgUJHQSv0IweHk+vWfdSupK3zIaStK5KdbE97C/oejEKcuGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Uu+uBohp; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-235f9e87f78so57742355ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623178; x=1750227978; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2ugGpXC4o/CNHHmtI6Ytb/JDD4uHU55rBbbL+FpeXA=;
        b=Uu+uBohpwjzphPE9rzlGsE8JsFoFTE4976zPzsLwAi8Goknqv0ZijLTY4lAveaov4N
         PGaSLm/r01w56mLagiXxSufJCsGcjO8Vidg6WbqmoBK+JjGD3JZWtG75E0erWEWYoSqd
         p66hoznAJCWBoNKmwn4bz03X8uNjrGxte6Z4/RpqaQANVRLXZl4tNh4WVKnDI+5IsO+W
         UrF5+bMXzhLqO8V54rSsJK2iSEddGC9Qub5i+Es+wVN98B8fw2onubNbqAWVVFWaBtzN
         84MSqrRbqoGfRWTRZI75btmnhWJmQqXw7TEJHF6s+pdyqbi+2Sqoda2hLe6xeQ6AUIbq
         1nRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623178; x=1750227978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t2ugGpXC4o/CNHHmtI6Ytb/JDD4uHU55rBbbL+FpeXA=;
        b=RElWY6gTmi91M2bZJGP+1V4bhWETsCjE3e57Uz6UO6UtCeCaW+bnfm0etsjODmXPs/
         moAtjNrJOsJWUIYYHKcHqbB7J19JVdcO3xwrbUyMUq2lKisw8nQK1pOTVTDoMNNBQWQz
         MOeacCQp7ri/d7I1nqJ7TEADmbGU5/CN07NUrAnx2HNYGSSyszE+nZVF03V4ClkBw0HJ
         sg3c2bFBGR0HSLa/Bk2TXtGLtNLVj4sLdexBLdEWbxH6thFmFmepi2oO9NhpsAEqpXkS
         cHmaoQhwRP9/JPGLALqmtkXgBDdWcP6imzXLYYFKuhLmBHA1aG5P5uoFPVFjfeFahnWS
         qNfw==
X-Forwarded-Encrypted: i=1; AJvYcCXzIA6eSiKfzQg04EVlY+wbiAiNs3lP73XumKGobwkNhLnXYC9mg+ACV+AtmcveeeHp36Zn1lD59PfW@vger.kernel.org
X-Gm-Message-State: AOJu0YyC+7cMlMMMijQVabZ8z6lFqHk65+hCm0Pqb+x90E/xEfVP7Qeo
	oZ8wzPtjSyHKdkTzgh2Dsk79B5BIBHdy5uFeJpC7yasu0tlrtHwAZXC8P2Jq+/BScYU=
X-Gm-Gg: ASbGncu12LAPQ5VYRh90SYQrP33Ztn24SpJFuKS/fmi8U9XWbrFNCBnBm0S6HVhG1kp
	CuXhESajA35oTAdk3glICCzPhIY/CzKF5t65ZCt2KhC3+9cVcI7OvvbI47LihRUjjAbRbIik4cG
	uXEwXeqEZfR+/hxf1zMdiGdLHqp3JirhgHfMk/i7IRv4b6Mna21L2BlvOHCtFHGstyhMgddEAXK
	KTGpvxjmSG4S/oa00sOEdwE0euOUic/zcVJxqdmc9tr/fivbyjga/86bJcl5+ihxfT1BEZZVXBZ
	FZRqyUFE5wIVCIWmmVe4HpL4mHlvx9d56bp68kHUmkFwUqkQbVizZhwRXn1TUFrjSJkRgIGOe8g
	+uAgW0rdpyjN46jKv8GRfwkj8LQ==
X-Google-Smtp-Source: AGHT+IHWcPo2T5oWAHxVCtrvEXenhjJ10/Omq5VoGqBDmOSNSjGENAvaM/GRXOOcD2Yi8BQMsG2wZQ==
X-Received: by 2002:a17:902:d48c:b0:234:b743:c7a4 with SMTP id d9443c01a7336-236426b4fbcmr25446925ad.38.1749623177773;
        Tue, 10 Jun 2025 23:26:17 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:26:17 -0700 (PDT)
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
Subject: [PATCH v5 23/23] MAINTAINERS: Add entry for RISC-V RPMI and MPXY drivers
Date: Wed, 11 Jun 2025 11:52:38 +0530
Message-ID: <20250611062238.636753-24-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611062238.636753-1-apatel@ventanamicro.com>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
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
index a92290fffa16..5ac1746f3086 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21361,6 +21361,21 @@ F:	drivers/perf/riscv_pmu.c
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


