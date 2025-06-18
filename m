Return-Path: <devicetree+bounces-187120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB576ADEC1F
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:28:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C255404628
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF99C2E7166;
	Wed, 18 Jun 2025 12:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="iAt/AJPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B7F2E9EBA
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249055; cv=none; b=d24cEHpGIW0xJhItPVkfB+RXdV2PsDPPMe4BJDZ7VrxIXbZjLpGbyizvFhSKvoSumberQVJUfHjMjh6CO7TgdanqawGJN4LtLAfESBLkZAN+iJqTuofBDQX1bf4ZK2D/xbVj9LFwTwCJQoFW0VTvrWvSx4X19Wb9Nomvmzt+ack=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249055; c=relaxed/simple;
	bh=9kK418IxmIiVXeyQBBKgdXjSPQQoBgr3AO66/gZokjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ktn6U2E1pYj8SxKvOLV6N4UqJQnLPTMZDJX/f6i1WdzJn+jrSdY/C0HKHf+Ly/3B1tPc9KDLDrnAaIhmq2zVdTq6PjNNA1N8aM3iVeNxqKnOGpTrETunvN9SSVAII2O0BUK8aoYE5OlVMnSYEL56Q4Vfr6TBnKzibeMelaLIIE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=iAt/AJPp; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7406c6dd2b1so587019b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750249053; x=1750853853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8tBKVX30NLoa4br+Bk4w/D/MRgyFgU//5djHLJDdbc=;
        b=iAt/AJPpdBD8nRGQOJCDUSNggD3pG0XlCzXE6qe0lMj8Epvq4J83PgWbY9tArEMlth
         jzE34FRDPygtFCT2hgmEre9getN/lTjKheMdMfOgaqGCXuoROjd04HTogOzzCgSd4xR9
         4hTleJo9x5RebMiJfNN4GCm8aerxWQGjjKYa/4vwp0bv/lPxH3rSyhIiPnQlMX40QzKJ
         NhOVM4NHTLhFDkm1kwtTS3Rotn+BMwwg9K5nNHdxjN6FKV7TWxWC2ZRqkuhE9BXKUYBh
         nwrvG2NytoWaFtenTPHjyk1u3Fyuj+Bi0GHEUS6ZEouPV0AdCvu+wnQB5lNVKH0ci3mE
         KJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249053; x=1750853853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8tBKVX30NLoa4br+Bk4w/D/MRgyFgU//5djHLJDdbc=;
        b=ONbJyCaXDhh1kS04iQ5zKdWYNvlAhciAcZLuB70T8GFJ7uriba6y70T7VvMM1IkUAT
         bRGzFbSZvInUwaY9V8b4E1p3OMddP/R1TDa0KwSSGvBUnMfDaTkgQb86xCipO4eAd8BT
         rQc0fp80j7go/KRtZRHU2+NOqRV/2sJe1zFxTN5wkvGYT1i8fVRYj43a0AoIQZZiPkvA
         J4NNdK6+JeTyejrCCFqgmqdCQEeTZvoDWRJJWsZWkH0ddDqFNJNUufrrcz7IIbubuSm/
         bf4jZgg3U7HtrOe3qg7s32WTTzEXqYL/MDn4BsVvpBiqKFWqT/T2F+DinXQs6ZDkZ21I
         4CKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH25oQmZ9CtVYe17loRsySom8pNyUxvGQS0eiqwiIMXY/MQd2mQy0WAOhYsNv5d7447NslvjylkLrF@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj0Ytu0A4yse/at16yFBf2zHKGXQkCP4XTm8hWZADm7XQlVsRX
	IvcO4W3Z5Tvsl8PRcKGUEbkGYLdy28krMgjDOEt8xLsV5YZT77Ui0yZejHjSw+OfPGo=
X-Gm-Gg: ASbGncvpea+cXMFQd8smiYJYIx/iHIgefO7D7Dn12IwhdDhdIRevJXHmFI6WYR2jIl/
	mKVhX4adQfP4rHnDWGoeGQ+GyksricMuKMctbPeD4E+3eSwVAb0IGK4gbwnCQbQYNx+8KLjZqWP
	K5qveNTUAEB60q5atLMAg2Xb+znqr91MbtPEDpfcW7s5SRg0B8q7pRm92AsumRT7hgHhYz+xHMs
	ERu9Z1KWcmj2D6JjZMMSl+Mw+fnmoh6lW6GU6R3U5zUlLAyBulnyGovSAnDQ0+517bcSfF9VJM6
	LxuEBwW2vvCR85/SJouTkBeE49yKDUXr0Ekx1F/1tWfVRgBimErTyGQqrZEh6SIY3uvjHtjkPGD
	QCUwFSxGm0NlKIn5UKw==
X-Google-Smtp-Source: AGHT+IEWGi/cAL/pfhnuBa+HjvvoDBVM4CSi/muR85WOt2UwTAsiTGP0+QbukmJ4eBCotN/31dgHnQ==
X-Received: by 2002:a05:6a20:2d12:b0:21f:53e4:1919 with SMTP id adf61e73a8af0-22003652154mr4644799637.3.1750249053381;
        Wed, 18 Jun 2025 05:17:33 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:17:32 -0700 (PDT)
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
Subject: [PATCH v6 23/23] MAINTAINERS: Add entry for RISC-V RPMI and MPXY drivers
Date: Wed, 18 Jun 2025 17:43:58 +0530
Message-ID: <20250618121358.503781-24-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250618121358.503781-1-apatel@ventanamicro.com>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
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
index 0c1d245bf7b8..688bdaff566a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21364,6 +21364,21 @@ F:	drivers/perf/riscv_pmu.c
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


