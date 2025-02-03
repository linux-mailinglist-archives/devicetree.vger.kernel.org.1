Return-Path: <devicetree+bounces-142413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4B1A254C5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:49:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 545453A6678
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABB131FC118;
	Mon,  3 Feb 2025 08:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CEHwPyEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A717BD3
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572568; cv=none; b=Kcap0yUmLaiZ5DT0xEtJqLgO5feCWHVH54doJhrX+SG+ZDOnCMtJAs8M3z7JPeh7peNhgce+ySucbyBsXF2d3s13/PGxctOysZGTWGBDBgjle5h+Q9bDIQ0lCsjQKjZTm1NQ+ViC1z3aPUyqvbbg0m6Q4N5iICxndq38HGRwSng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572568; c=relaxed/simple;
	bh=QX7jvlQtJHPQQYG8K+ZSemcwjKxBQzn04tV2KwSSgSA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WIFTJwud8rSyOYgyJpzgWeGLvWKNGCBcYOsR5EJNo3jOoEzzGv1GlGwELWlSITy+Gk4OF0A5MS5toDocKwiIDw5beIWiyM3YYJhmfNhJUNY52ZAkASDegoKj8DfhaG4EDYHNgW2WEXBgCMeWg1i4m7P7DKhFtP+9zIHAXroFWRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CEHwPyEk; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-467b955e288so45733121cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572565; x=1739177365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qYXXlTk5HduQbMTIlt80IsYvDUjFzMF5KSYRQGJL3Uk=;
        b=CEHwPyEkB32JXlqIMEVtUcOgmxV3oBMYDqRJ+3WCpyMsy3bTYxoj+Y18cGmPY017QQ
         B9RQRAmYEvhEPG+j8PAoIi30aGU/n2FKBKiv8SBVyWBRhJHriZC9KIE0OsIEi5cAEEnH
         CbtT+hhfGDh8QtXAfUEDkER0teao1imyUSnMbuG5wcF94fVrLpFNwPpcermhFPfobemq
         jmZP5wVZ4HcoOK6ZG/b0rC9Jz20eTqBmMf0OX24xRj+KU7Q1g/rEJ6wtn2xO15lK5Q6F
         PQEGqchkp9IwtXOoekcZAcFPrSiOgcyjJTiO8tT6pCFCpPttB0oe34MgDe4DtZ0FlNT9
         vnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572565; x=1739177365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYXXlTk5HduQbMTIlt80IsYvDUjFzMF5KSYRQGJL3Uk=;
        b=tKpwKhtU8sx507qBItqUMfvqoY2ckNw9WTR6IDii+CgOx/aM9xBQNyUWm8mPVN2CG5
         zb/mR8Gp+FubCrJHT/2L06+tdq2uxtYsVEevJn/5C9o45X+w2nut6TtZR7s8uVo4KZ9L
         I/U+kUyKfzsJ8tpgJz/4buWQoeZ4yYzHoAcuvYukePLxOcZ8HDNTTRLoLjEQNkV6f0A6
         VES6946Yn1/HvHYB0IkUDUOYIOeMexL7IizVZwrVYolcGsGMmZDxMIgywAdG9IlEXrmL
         fT+pSQaO0tHC/07fTGnP9pHaeQsHgQ+iNET95z5XzqfSIhoQ2OBJDdpexNYNWj/objwX
         KK4g==
X-Forwarded-Encrypted: i=1; AJvYcCW4ulGKK9icxIdOmDALzJqy9fx8mthUGay6lOuhGs3ciu5tCkeG/2wV7fJ0rbHgRbxBmO1NzM6hEGTz@vger.kernel.org
X-Gm-Message-State: AOJu0YydSSSahunOZbxdoEGy+7tqMnVjFnkvgGhVwxrbKGiJvSYZFomd
	JoKFxaMpYiXsZ0dTHCvIN+OnEdpnmFHjeFpYdE6x0zJGR/n8wgUKiI1LkGrcy0g=
X-Gm-Gg: ASbGncsPJuE1Uqw4eoIpw6+syb5UAvYTLe6+SCiYisH6n1F3L+B3aWDX96HNSiAwtF4
	5gjO8JElaFfs+BPI2lnQLUeIcF6BAABW7w8drKRsRlwy4HMy+454qAbzWT70aTaJDhlKDHiwFoH
	JNcOWoK+PxIbZT8hoNlC7mlKRATiK/G3CBW3i6s94ziNiYY8wJCFBkq4KlwauPHXPAcmcm1lp3b
	qX3vMYPR4hU4rYTHNpQuYCA40/kX6zPcRU/Dc+0wbuEPuwEGV04HnLeM10hxvXMzyiNDv9bv9TM
	ePITsumb81fLg4jYtYFtskSEt/PDmCYCFhHVg5NBji+u/yZ57yZ07wk=
X-Google-Smtp-Source: AGHT+IGH0XTcN/X29iLH8kRSIgCwIt85vlSYKgmJJ/8YJqUZ2p1KY2bxWsy8EAgScZgVFzZwv6JhNQ==
X-Received: by 2002:ac8:584f:0:b0:467:5e4f:3d1 with SMTP id d75a77b69052e-46fd0b924b4mr302004001cf.33.1738572564583;
        Mon, 03 Feb 2025 00:49:24 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:49:23 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 00/17] Linux SBI MPXY and RPMI drivers
Date: Mon,  3 Feb 2025 14:18:49 +0530
Message-ID: <20250203084906.681418-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SBI v3.0 MPXY extension [1] and RPMI v1.0 [2] specifications are
in stable state and under ARC review at the RISC-V International so
as part of the RVI process we would like to receive an early feedback
on the device tree bindings and mailbox drivers hence this series.

Currently, most of the RPMI and MPXY drivers are in OpenSBI whereas
for Linux only has SBI MPXY mailbox controller driver, RPMI clock
driver.and RPMI system MSI driver This series also includes ACPI
support for SBI MPXY mailbox controller and RPMI system MSI drivers.

These patches can be found in the riscv_sbi_mpxy_mailbox_v2 branch at:
https://github.com/avpatel/linux.git

To test these patches, boot Linux on "virt,rpmi=on,aia=aplic-imsic"
machine with OpenSBI and QEMU from the dev-upstream QEMU branch at:
https://github.com/ventanamicro/opensbi.git
https://github.com/ventanamicro/qemu.git

[1] https://github.com/riscv-non-isa/riscv-sbi-doc/releases
[2] https://github.com/riscv-non-isa/riscv-rpmi/releases

Changes since v1:
 - Addressed DT bindings related comments in PATCH2, PATCH3, and
   PATCH7 of v1 series
 - Addressed comments in PATCH6 and PATCH8 of v1 series
 - New PATCH6 in v2 series to allow fwnode based mailbox channel
   request
 - New PATCH10 and PATCH11 to add RPMI system MSI based interrupt
   controller driver
 - New PATCH12 to PATCH16 which adds ACPI support in SBI MPXY
   mailbox driver and RPMI system MSI driver
 - New PATCH17 to enable required kconfig option to allow graceful
   shutdown on QEMU virt machine

Anup Patel (11):
  riscv: Add new error codes defined by SBI v3.0
  dt-bindings: mailbox: Add bindings for RPMI shared memory transport
  dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
  RISC-V: Add defines for the SBI message proxy extension
  mailbox: Add common header for RPMI messages sent via mailbox
  mailbox: Allow controller specific mapping using fwnode
  mailbox: Add RISC-V SBI message proxy (MPXY) based mailbox driver
  dt-bindings: clock: Add bindings for RISC-V RPMI clock service group
  dt-bindings: interrupt-controller: Add bindings for RISC-V RPMI system
    MSI
  irqchip: Add driver for the RISC-V RPMI system MSI service group
  RISC-V: Enable GPIO keyboard and event device in RV64 defconfig

Rahul Pathak (1):
  clk: Add clock driver for the RISC-V RPMI clock service group

Sunil V L (5):
  ACPI: property: Add support for nargs_prop in
    acpi_fwnode_get_reference_args()
  ACPI: scan: Update honor list for RPMI System MSI
  ACPI: RISC-V: Add RPMI System MSI to GSI mapping
  mailbox/riscv-sbi-mpxy: Add ACPI support
  irqchip/riscv-rpmi-sysmsi: Add ACPI support

 .../bindings/clock/riscv,rpmi-clock.yaml      |   77 ++
 .../riscv,rpmi-system-msi.yaml                |   89 ++
 .../mailbox/riscv,rpmi-shmem-mbox.yaml        |  150 +++
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml |   54 +
 arch/riscv/configs/defconfig                  |    2 +
 arch/riscv/include/asm/irq.h                  |    1 +
 arch/riscv/include/asm/sbi.h                  |   70 ++
 drivers/acpi/property.c                       |   15 +-
 drivers/acpi/riscv/irq.c                      |   33 +
 drivers/acpi/scan.c                           |    2 +
 drivers/clk/Kconfig                           |    8 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/clk-rpmi.c                        |  601 ++++++++++
 drivers/gpio/gpiolib-acpi.c                   |    2 +-
 drivers/irqchip/Kconfig                       |    7 +
 drivers/irqchip/Makefile                      |    1 +
 drivers/irqchip/irq-riscv-rpmi-sysmsi.c       |  315 +++++
 drivers/mailbox/Kconfig                       |   11 +
 drivers/mailbox/Makefile                      |    2 +
 drivers/mailbox/mailbox.c                     |   44 +-
 drivers/mailbox/riscv-sbi-mpxy-mbox.c         | 1027 +++++++++++++++++
 drivers/pwm/core.c                            |    2 +-
 include/linux/acpi.h                          |   12 +-
 include/linux/mailbox/riscv-rpmi-message.h    |  235 ++++
 include/linux/mailbox_controller.h            |    3 +
 25 files changed, 2737 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,rpmi-system-msi.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
 create mode 100644 drivers/clk/clk-rpmi.c
 create mode 100644 drivers/irqchip/irq-riscv-rpmi-sysmsi.c
 create mode 100644 drivers/mailbox/riscv-sbi-mpxy-mbox.c
 create mode 100644 include/linux/mailbox/riscv-rpmi-message.h

-- 
2.43.0


