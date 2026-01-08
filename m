Return-Path: <devicetree+bounces-252810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B85BDD03CEE
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B0FD307C2BB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E682C4A571B;
	Thu,  8 Jan 2026 12:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="LGFo2/fR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2DD48A2C8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875298; cv=none; b=flp3jVONr9ImG96twC5rpquXxodETXhOnPf6knq35z328KfBrPK6oMEtBkfLheiLzmxHXsKuc6Lg6sSXmegXKPG9HKqLPbhteJUbNfWo3Sa8jg+oJPAGYkCZ9DOjw3cd4hGlBDiBCx2hO9bqhAliKcFAAVOfFtpDvy/CpriBj3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875298; c=relaxed/simple;
	bh=B/xJC06ouJTSzqoVe1zpf/ArcrN3kkBBh4pRafmC2q0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K3+2OCDQBVgW7BAebyEUBtWEQEssVMK8naJDeCN/nNBo6rB04GM6wvTQbWuuoxtH805rms3w3KxNy4fznFhTv/JUFOokyshcP1fyfDz4vmsd45mxzMUJt647MuJPzu2AT7eYd6VsQ4WpE4x5a1UKRd0aYxgs5NwNRnoicXn0Atk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=LGFo2/fR; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7aab7623f42so2733254b3a.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875296; x=1768480096; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vr6lqGLFQ3xLUl/SLHoUY02BcAcuWIW3ayvn+T++ix8=;
        b=LGFo2/fRBmL5A6dlnvfDDmng5HIJHiDGpUisu28uSY07QrHT/tocdpGwS94Gk3FWZp
         +1CWEu4nNaa+p1Y9l0Usu98yca9nkL3q3QFWsXiuPz164+l+AHVKzmMgTWc13oPu75Gy
         2XqiMMxgwpLYDw7bQchMh+Is4EhJ3P1Mu5N4MVDhP7GuihEkf2D6waVxCoS/+s/hTSL0
         LxIFeQsQg/eo+1hRBhVBXDJZB9GfGzr5WI/ZvcXGpAzHm8rVxpg1RfBw6lAKYTAUr/h9
         QuxCxiZ542+CYXt6RBCAXlKAicmUHEfYS523iZGYonGgaXDVcpYW5Q9HPxeljqhuQ+Nw
         SBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875296; x=1768480096;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vr6lqGLFQ3xLUl/SLHoUY02BcAcuWIW3ayvn+T++ix8=;
        b=wTDqEgIqWdt4c9DrMlb7+HumYwQ5YZUeIBHXS97prWbQgr/68ldFNLP520uM+Uv04n
         yDcWE4lSwvgU5XAZE/uJ0wzuxKqpOMsDU9pWJ8krl+5PAdWuNRaVJDboYdDrh5YcJ1hc
         ON8KZMzyuxx8qG4grjJOw61MI5pttKBJsRks4QW5jFKr+0GxZ0YJFOaGcJ/srpvPKDrw
         KoIYaJoPfUhrwKpMMG7bu2N5Hq3QYfCuLmbGsKb5MuRqmH9fvQYBhwx9dKE2xi5S6yWk
         IK8b4QJKJrLbr9nzfNG4bmujxM6P/IYoWXRnH8+TpJqclk1ZyxH0nAsRx6L5WZyjUFOV
         jtBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAnVDp3jFZp8gc1bcPbRm7zI3sJ0GD72IXQf1fP1KjmZz4kSS9+fgz2dVqD/8h4FzUybPQVG1oxuta@vger.kernel.org
X-Gm-Message-State: AOJu0YyYd8qmoXvOYZ0ryDWAOFhu6LE6sKMEX+gDuLaUTz4jl5AR8q8v
	k5FLrQSYsSh0UXAPcFfC38opY5wXEMorfSotgJ2EGzt8w8wtF2+Vx9FgR7OXHk2nWHc=
X-Gm-Gg: AY/fxX5WKxiRIEyOx3q+nnQ2F/w/uoiKCLQ/ei1JnpoD3s0ffX3KzQLGDs+MKi2J3CB
	vg82xaszQ6+uVjigrzluYdvam8N10AIRiHGa7L64yrxx9sF3FVvH9FIdmmxiy++c9HJiN9v92B3
	TxS3pkbL0wW6odHCdZGHnMjijxaDDLlYuXergownUoOZ88kxOuhMOqw7sRbA/HQD2418j5x/Xo6
	b8fgzL5okhEuG2TVMRCP6LQ2bNoKw2u60OrbZMX89wcrRDaxdSqw27EJqGmZfvX8P4+/gKIqW1t
	yxpsTgm9fKhgI2tYWnAYOQXgTkJjW6BSYca2G7SYb0VwCbM6Ajw37jY+/l09YPIxoPQjQc6mkvu
	8/Wo+Aus9Bp7EkbQfkLuY4jYwARPeV2nimk2H35T+NndNHXFejZfSNBP0L2/QSKuJyEFq6XeBLy
	tlFB6/j2e06a11lwpf5apudhmRnkrh0sI=
X-Google-Smtp-Source: AGHT+IEp3lIqQRQ8F/+xV31qGFYy3RxmeX8QufC32EgJpFKkC8v8rt/OnKylZz/xtgAcQ5aWbSQxCQ==
X-Received: by 2002:a05:6a00:3688:b0:819:bad0:1002 with SMTP id d2e1a72fcca58-81b801ce2e1mr5550278b3a.66.1767875295662;
        Thu, 08 Jan 2026 04:28:15 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:28:15 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:26:02 +0800
Subject: [PATCH v3 11/11] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX
 board device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-11-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

K3 Pico-ITX is a 2.5-inch single-board computer equipted with a SpacemiT
K3 SoC.

This minimal device tree enables booting into a serial console with UART
output.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: Add aliases node in this board DT.
    Update the memory node to reflect the hardware truth. Address
     starts at 0x100000000 (4G) boundary.
---
 arch/riscv/boot/dts/spacemit/Makefile        |  1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 38 ++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
index 95889e7269d1bae679b28cd053e1b0a23ae6de68..7e2b877025718113a0e31917eadf7562f488d825 100644
--- a/arch/riscv/boot/dts/spacemit/Makefile
+++ b/arch/riscv/boot/dts/spacemit/Makefile
@@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-musepi-pro.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-r2s.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
+dtb-$(CONFIG_ARCH_SPACEMIT) += k3-pico-itx.dtb
diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
new file mode 100644
index 0000000000000000000000000000000000000000..037ce757e5bcae0258a326ea6265185d761f2b52
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2025 SpacemiT (Hangzhou) Technology Co. Ltd
+ * Copyright (c) 2025 Guodong Xu <guodong@riscstar.com>
+ */
+
+#include "k3.dtsi"
+
+/ {
+	model = "SpacemiT K3 Pico-ITX";
+	compatible = "spacemit,k3-pico-itx", "spacemit,k3";
+
+	aliases {
+		serial0 = &uart0;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
+		serial6 = &uart6;
+		serial7 = &uart7;
+		serial8 = &uart8;
+		serial9 = &uart9;
+		serial10 = &uart10;
+	};
+
+	chosen {
+		stdout-path = "serial0";
+	};
+
+	memory@100000000 {
+		device_type = "memory";
+		reg = <0x1 0x00000000 0x4 0x00000000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};

-- 
2.43.0


