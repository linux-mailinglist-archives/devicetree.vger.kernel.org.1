Return-Path: <devicetree+bounces-248842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FC9CD61FB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3DADA309EB3B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 674982ECEB9;
	Mon, 22 Dec 2025 13:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xyC++OPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA132EC090
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408925; cv=none; b=ryI5+41wKoLNTQe2IoKmq7jEK64IILKONmLbrAKLPNgmZBpTjJbvxF6iTj2mJnI9crWSOdspbweDphu6Ww2+C3RLslIdVr+y1t1IPmgt2XGPuVPuqfGZC3FWT1BWOrSZug6F/35kTUZ0hTocL2ohUMqRz6052wXdvrccZQcP49g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408925; c=relaxed/simple;
	bh=BDrE6CA1Qn9fgNQNXNAcSn19sHUGzVo0ZZdQlJwveko=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pgYBkL8IVz4sW6eYMSYEVvihraSM3GXYKyZnpDoTm8S8A/r54mc+KMp9M7awf8bx7VVNMFn386xhZJBCYUVQMYNnoX0YiDDLQHtfvlJv+aK1n/7HjCRL7eGZGuModxZU9aNKWFblR+BL3cbw7TQHN5sjlLrhrOAU9JPmDhRowFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xyC++OPr; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-34c868b197eso4124112a91.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408922; x=1767013722; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y5UDvIvaVjkkZfBeEFqY4CPR1+ruUJV7ueKVcAIMjEo=;
        b=xyC++OPrm5cxcHCSi219vKmwvgY4D7FFV9f11zbLQX1i621pxRHVUW2lNMpudGQQJB
         lMmw+hyXdqfp0meUjACsmKQL9u7eyHg5l1jSejNZsR3hcvsLTkQKEFN6FTrEsAXGc+kt
         Bvh1jFa8Ri90sB9OGQ5ei5Q65+GiKggRILpOuWnC4R8Wg+lxf/hfbxLq2kn5LUmpyHQr
         HKaPu/UqYHE2WLf/gYJjSsUNl23MeUaXtyn5wJjDgRocnVvirHYQPI0YXI1lpWAgzHQi
         v1TfgSqQt+cAXnpAPj7bYNR73ooknU/idHhEU9QSakwCN0yAyqcqvcM6kwsL5C1d6Wdr
         HihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408922; x=1767013722;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y5UDvIvaVjkkZfBeEFqY4CPR1+ruUJV7ueKVcAIMjEo=;
        b=Si0QBSYPhmGfT/u1VJoSXyj6IqKNcOQp2CIfNb+2RMxNCBnCz8iIXJqWewJeaGzDa0
         o1L3ir1RRZcBeZQ+gkK2+9gU457Ld8nqTQ+vVZqdXrDXiUT41cD6gLGE7Q9S6MDQ/i5E
         5tVJpC7JBWqrDdl3VcxuKMEV3q+iuNx9AITBfw3Ay4fbeXBLIYu2RoMTbx/UXbvw7a/1
         CsPX8VRa+5i2tVugkn20cc3syl7ayVxsDKsYTz7TJkyR5gD6/Gcau4Qm8/KihK9bmPvA
         zGnFKjY/5VhsxYbvrBzsNUnbtaLbeXOaxNI3Y36ncw3N2u1ziYcaNLqpNxlwv+NmxN23
         /hug==
X-Forwarded-Encrypted: i=1; AJvYcCV8uIUwV4PetEZ8ab1/KyfyBUmmckRK4i7jWtHVuypJwKxUk6MplXmRDUmFRIMy/m447GzohIw3NgxA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9bo7+BrXUpMEP/u7oWnD2xe4eMsD+SsP8gKk8qHXu0YnJ3QnL
	JixCqBrTPup5H6nGtm+Ov4TL5BYno1R0JnO6zZu+GxtmH66UO7fky6W+HwHLAjdwmmQ=
X-Gm-Gg: AY/fxX4wPvlwotNNnO0x5hOCmyB6cMBZwMi+WLIRQr4R4KjUB14syiyeZvobyrEiSXz
	IzNtysy0F2pcXROOY+2lPiZRjdtbUQU3gD1IBdDHZNj72i9f3f7KXirrx+1o9sHUHKqK1L7EDnR
	26edkBEBUoIsqz4DtyV1BuklD5tfFGSDHDGMa498I8pIWwegPlZbTFeDGLyAr2mb+ury25WEqJm
	MkpFsP+I9S2/b8Hwv2xnbMlzzZBNcQv52ilTKDypYfMxp7QS4CfxxcMf1nO8g7tAHep9iYwhuS1
	nTmgU4IWEn2I/EC8jthIVtwByBHAAp2WlEUYwMBVZeowxNuznFmFtS28TeeEonYpqsQSJPdMYzw
	cMaouYm8ayOn92iiKMtA8uFWznStzJMd8ZlECS4XDspBuotpfYRo0v/7uZrHUDxIa+O2gv7IUEq
	wKLjac7ZgLowG39YfPEfZwbSTZbA+Dfv4=
X-Google-Smtp-Source: AGHT+IGmybiO9VXGvZFmDwf5i2jOPeKNvQUkXJaS7Qo1wDtRYA343Aqy0CAvztutucUMXstFcLQIPA==
X-Received: by 2002:a17:90b:4988:b0:34c:2db6:57d6 with SMTP id 98e67ed59e1d1-34e921be64fmr9184464a91.19.1766408921894;
        Mon, 22 Dec 2025 05:08:41 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:08:41 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:23 +0800
Subject: [PATCH v2 13/13] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX
 board device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-13-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
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


