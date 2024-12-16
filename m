Return-Path: <devicetree+bounces-131287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D189F2C34
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D73D18845BF
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 274E8200105;
	Mon, 16 Dec 2024 08:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ZJNGpFmu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4241FFC46
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734338918; cv=none; b=m2783uDmBnJ1+FNWZXXOkX9rEOl5ZyptUiEv91+urcKeRmTCJYPwqaWRAcNiHBmpH2AqzvJQg8D/a0gLpyVaQkD53Nxi6bmHuOVymmIgtp2OQuWs8+gf0ObPOQV9idtnxKdt+w+Aqu8LP3jYT+q/V/uTfyl3jUm3/Tv39XSCQzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734338918; c=relaxed/simple;
	bh=6OMK+HsK+VbnZzby8IXvMCez2+AxPVQkeAi81ytIO6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bMzn6FyqambwTLozxuPuoG1xy9/a5PJYWiq+e6qng/UftGCQr1gtP6Opdl8Bm6xe8GZRcA07RqSJUbOqrNuRM88YHbI0uDKLL36xJQjt0+U/qfWHLb53i1Jrr2zErmy47WG/c3gG7OoAF5KHTCWygXGsYAc2+HL75Q5npg1bOZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ZJNGpFmu; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2156e078563so28458495ad.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1734338914; x=1734943714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZPlunLBlln7QYb6AUUO3djXlFosdjLIQj/QlK3o4jU=;
        b=ZJNGpFmuSuPQ+lV2BcWW3IYmQRj3MV8+hB0yIM4wLf8NHHEL+cYi0NUpOCX7R+qyrl
         XjgyfWi0CXQ+aZiYGUdioqp/Q3AVNYwduw/l5IJUzmJOyCQDFFT3G6GBjwDrV5QBZ/oG
         EsgYR3Y4dgjQ9bbnwjhZanFGOOgqvwwmolxlj02EqyPcUFuCZaXdTG+VJHkRfnrrWuFo
         ctcL7NKyjiplRaaKQiYOQ1dbzAXmZgCiIHsbJT+b8socoA+T7w6T47Vk2x+vOxeBBWec
         7/g7zfI8Hwd5V6uT7cWgTJq5OjLy2u9xRjvkTiU/T4vwoK8ut6wGFCKgR7ksNsv+CqRq
         v31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734338914; x=1734943714;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ZPlunLBlln7QYb6AUUO3djXlFosdjLIQj/QlK3o4jU=;
        b=PrMX3IQtqH06pKXdH0FP6C2I9TMXC8qSBAYbYqzuUDpNgtkQiGXCOdLFVywtXID8Vt
         8a/god2ESCi2bn2Dpa6IL2VEZtXINToE3vRKgpbT/T1hvkGrTAFb2QYHWmQo6HrDHehW
         WKGbxoK+LieqZ+NX6pjl3Hu5WI0UdTKBI04JLsrTjJqwCSaRvf/kYMPUTB7zhJweWxCQ
         hiKS47XhGe9hqzC4fPNOdwT08P5shu+Yv2XEHZW6qs6uIKlqsWnFnkpkOW8rKXkKcuM5
         NrlxYTfaWlsRxUVIGA2dNE3dRG1s1XuHTxZXW27WSK7+MfrIxAcB2/cjplkS6xOVWP78
         p9kA==
X-Forwarded-Encrypted: i=1; AJvYcCWutbsTpaoJ9u0dVkr5ugqWu9QLaz4a0GNM4Wz+vuWp0oF3PIPAaoZr3PYTBdfo6bq2EO9Ah3bejGa7@vger.kernel.org
X-Gm-Message-State: AOJu0YzmSjDHIdvqqwep8SAxXcpeI5VGXjDW0wMFgGahxvXmlb9flIbh
	hzqNYS1v5QNIl4+pVdAdWnieehQWiZfbJse3Nw7vlsl3AIg2vYMSGgNVe+NssDc=
X-Gm-Gg: ASbGnctQ1gv41ArKoDKAM33yDe7Oux4WgsmQHueKJYYs98sBdm6JQGtv7udOMfJG/Xa
	kxQ40aYWYxdZpoS/ZycEcmzRPfKq2oeMCrrj35XF0H9Fk5kplQkGetCHQ1pSjikvWpeXZRjbDfb
	cvPAiI+axj/6pKWn8txA2OEsEKVDlvU/XIZ+/qx9bZHK2ipTOXwqD9RQpmgua4FlK7El3tEUy8R
	VJs3wM9ryXXMktgut2ZDzabVnh7fUJTOkh9mWiKEX+1f1xfI1Qd+7B1LYwVzk2hYUU0/PIZ6MDj
	87pcPz87C/CN6wM=
X-Google-Smtp-Source: AGHT+IFoNCn1xjwdvfD5tU8wcob3LmcqUZZYdSpRKH7XSPi+k1Q2z7DhQmm+kma0y1vvzp+aMNnp1w==
X-Received: by 2002:a17:902:e84f:b0:212:514:b30a with SMTP id d9443c01a7336-218929808c8mr181238975ad.12.1734338914542;
        Mon, 16 Dec 2024 00:48:34 -0800 (PST)
Received: from localhost.localdomain ([223.185.130.105])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e501d0sm37711495ad.116.2024.12.16.00.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:48:33 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH 0/8] Linux SBI MPXY and RPMI drivers
Date: Mon, 16 Dec 2024 14:18:09 +0530
Message-ID: <20241216084817.373131-1-apatel@ventanamicro.com>
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
for Linux only has SBI MPXY mailbox controller driver and RPMI clock
driver. This series will be expanded in the future to include some
more RPMI drivers and ACPI support.

These patches can be found in the riscv_sbi_mpxy_mailbox_v1 branch at:
https://github.com/avpatel/linux.git

To test these patches, boot Linux on "virt,rpmi=on" machine with
latest OpenSBI and QEMU from the dev-upstream QEMU branch at:
https://github.com/ventanamicro/qemu.git

[1] https://github.com/riscv-non-isa/riscv-sbi-doc/releases
[2] https://github.com/riscv-non-isa/riscv-rpmi/releases

Anup Patel (7):
  riscv: Add new error codes defined by SBI v3.0
  dt-bindings: mailbox: Add bindings for RPMI shared memory transport
  dt-bindings: mailbox: Add bindings for RISC-V SBI MPXY extension
  RISC-V: Add defines for the SBI message proxy extension
  mailbox: Add common header for RPMI messages sent via mailbox
  mailbox: Add RISC-V SBI message proxy (MPXY) based mailbox driver
  dt-bindings: clock: Add bindings for RISC-V RPMI clock service group

Rahul Pathak (1):
  clk: Add clock driver for the RISC-V RPMI clock service group

 .../bindings/clock/riscv,rpmi-clock.yaml      |  78 ++
 .../mailbox/riscv,rpmi-shmem-mbox.yaml        | 135 +++
 .../bindings/mailbox/riscv,sbi-mpxy-mbox.yaml |  54 +
 arch/riscv/include/asm/sbi.h                  |  69 ++
 drivers/clk/Kconfig                           |   8 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-rpmi.c                        | 588 +++++++++++
 drivers/mailbox/Kconfig                       |  11 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/riscv-sbi-mpxy-mbox.c         | 979 ++++++++++++++++++
 include/linux/mailbox/riscv-rpmi-message.h    | 218 ++++
 11 files changed, 2143 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,rpmi-shmem-mbox.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/riscv,sbi-mpxy-mbox.yaml
 create mode 100644 drivers/clk/clk-rpmi.c
 create mode 100644 drivers/mailbox/riscv-sbi-mpxy-mbox.c
 create mode 100644 include/linux/mailbox/riscv-rpmi-message.h

-- 
2.43.0


