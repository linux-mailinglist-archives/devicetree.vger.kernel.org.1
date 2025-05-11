Return-Path: <devicetree+bounces-175998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA37AB28A4
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23360171C0B
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5081C2571BA;
	Sun, 11 May 2025 13:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="I79657+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F98257446
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970883; cv=none; b=Lo+kML1/982//tlKvoOzqajmg36ljEXFmOHbJrG/UEYTeiaILLwTn1uEXz/Nlkky6r4sQ+XVMY/uHjxhXA9+ncT3ri3a+ymB/Yl++q2sGgKCl0HC6QaTry9dBCuPITVGoQxEyCoQdxqqyLgNrfI6e1B2tMmaoTsx40nMZ1d2ElQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970883; c=relaxed/simple;
	bh=Q274OnfG3podIQmVKmeGWN09V8KF3qj8jlwfrCOnBJY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UF8rdO3/Rq/LPcvWSrhkwcgdcdxTsCBMhitkG8qMDWqHfqSqDbCMydvYX2ZYxkQKTxnBYLWbw/5nydqbEHXx/iR91T/D2qJwkKAbvEUeLHW4qEKYaY7vYnbx+lkyIwV52eMwpvyIa9g0s0/IZ4xorPupj2JvZQ7JxloTolAigOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=I79657+L; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-22d95f0dda4so42240665ad.2
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970881; x=1747575681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYmzV5+laFQZlY1OUMxuPLa7G32W7v4o4U3ZvBmHKpM=;
        b=I79657+L7FHHckxaYP7Ok+1u7fp79kSOVZWXujF2d9aqYHbeQptoKvyhYXJHmnqXvp
         6xPKJu4KFB+Ts7sH8dncOnfl+Vr7eW1RxY5uNEs8NnX7sUd0IW6//Q20ugUXo+nM/vkP
         TQyc8Sc/D/ESOfjxUhoNq0qnxuNL3kAlFxFBP78aARbA55eEAlpQ1MT+7u73Ffi2ViVT
         RIdyJglRPzCG7I1/GAtO3UMm80TTGG9LkP9BiJzisghnNQcj5pZuKYo69jmH7+bP6H+P
         +G75rx/DGTap8AE0UzOEOZjCzBgt2FBxiYumlGcFc48J7BgV5sXyspNhNjfuB8ua+n6v
         I0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970881; x=1747575681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYmzV5+laFQZlY1OUMxuPLa7G32W7v4o4U3ZvBmHKpM=;
        b=HMpS/JLTdx+cqgCsNZgGOTGQZtD2QP0sUwC/pX13ZVmUuORS5QIptMLaXX1y9/a+se
         45KAuIqJqYUA39E9moApVrlPIO8JFf6hn9wNrTMkLROVnr+rHO9o+aT38jvXRREBol8A
         9XlZDHImHVlSfGXqE7XJJ5OqW1VHqvV6Q2iLbNS6am7iAgrsV5K8v1BKDFBZzb8f61+o
         EhlcUcVcgp7VgUbFqiVYCl8QTX3mKIgH6z3DHRhlWvcoX5KDzIPfwd8m6V/kKBpvh5E3
         IgAHAfWoQm/8YNn73UZZ7mWVaoCOSvbhWxqjswpuzgn8JLi1i/ORCWbn3ChLFcZih49/
         eoYg==
X-Forwarded-Encrypted: i=1; AJvYcCVZXIpjEgSYnrlRrPgO9oiepXbAE1+GQSY6NSgFiRa1G6zUVPCXbqo51UTYulSP5e5k3dg9FUvahYpf@vger.kernel.org
X-Gm-Message-State: AOJu0YzGqJeXXr1HzQYqVuCSX2YjBsJe7AIoQxjSHvBXR7KX6ImnrIsW
	z4NQ3+hAQffscknTyyiRQnf/lPo72eQ9zQ1cHmhcp8oDrtjcJXoWCcw8Mrru8HA=
X-Gm-Gg: ASbGnctIhVrukbsMA6l7aWJX/RoJVAL5tTfQjvZ4xv4QBER+Os54/zIEMaagzTMFaZt
	nKKJAZZwBhtr2NyLTZZzUb3PvyT85ICI/0o8kW4pohJ0e2edpm8siReqDrO9AEQkbN5rbxbG+li
	FwpTD4YMDh7kEGTNjsZ4/A8HH9LV6VapWhRdXcc/eb1UjXAmel9SskMVv5bee8b/5PB+1xvSP0V
	CNYFs/zSSFdXS6ursmEX6suZi0oxSnVklv0RkBsGSRmtqfIRIphfO8XbjXwgAQyuZfhTOwyIA0d
	5PcuELb64VahBs2eDoG3RTd/XPhiKRAXkRxplJy43vjIoA8rHCJGm0rOR88BtbU5Wk7+cW4E4D5
	IajOU/AD35vtffMKy/a3ofCOL
X-Google-Smtp-Source: AGHT+IEfaxgrqbXpWtZS2d6T+EevRdeE0WEhWEel3ocGJ+bMO5Ii2RhRjdLhMu2s/pa8PLRyJHchMQ==
X-Received: by 2002:a17:902:ea01:b0:224:10a2:cad5 with SMTP id d9443c01a7336-22fc8aff172mr172444685ad.10.1746970880653;
        Sun, 11 May 2025 06:41:20 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:41:20 -0700 (PDT)
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
Subject: [PATCH v3 09/23] dt-bindings: clock: Add RPMI clock service controller bindings
Date: Sun, 11 May 2025 19:09:25 +0530
Message-ID: <20250511133939.801777-10-apatel@ventanamicro.com>
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

Add device tree bindings for the RPMI clock service group based
controller for the supervisor software.

The RPMI clock service group is defined by the RISC-V platform
management interface (RPMI) specification.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 .../bindings/clock/riscv,rpmi-clock.yaml      | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
new file mode 100644
index 000000000000..9c672a38595a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/riscv,rpmi-clock.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/riscv,rpmi-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RISC-V RPMI clock service group based clock controller
+
+maintainers:
+  - Anup Patel <anup@brainfault.org>
+
+description: |
+  The RISC-V Platform Management Interface (RPMI) [1] defines a
+  messaging protocol which is modular and extensible. The supervisor
+  software can send/receive RPMI messages via SBI MPXY extension [2]
+  or some dedicated supervisor-mode RPMI transport.
+
+  The RPMI specification [1] defines clock service group for accessing
+  system clocks managed by a platform microcontroller. The supervisor
+  software can access RPMI clock service group via SBI MPXY channel or
+  some dedicated supervisor-mode RPMI transport.
+
+  ===========================================
+  References
+  ===========================================
+
+  [1] RISC-V Platform Management Interface (RPMI)
+      https://github.com/riscv-non-isa/riscv-rpmi/releases
+
+  [2] RISC-V Supervisor Binary Interface (SBI)
+      https://github.com/riscv-non-isa/riscv-sbi-doc/releases
+
+properties:
+  compatible:
+    description:
+      Intended for use by the supervisor software.
+    const: riscv,rpmi-clock
+
+  mboxes:
+    maxItems: 1
+    description:
+      Mailbox channel of the underlying RPMI transport or SBI message proxy channel.
+
+  "#clock-cells":
+    const: 1
+
+required:
+  - compatible
+  - mboxes
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller {
+        compatible = "riscv,rpmi-clock";
+        mboxes = <&mpxy_mbox 0x1000 0x0>;
+        #clock-cells = <1>;
+    };
+...
-- 
2.43.0


