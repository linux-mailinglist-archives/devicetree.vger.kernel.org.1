Return-Path: <devicetree+bounces-247049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2C9CC36C3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:07:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB51A30D5855
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738833A4EC7;
	Tue, 16 Dec 2025 13:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WcV1nUQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53753A4EA2
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892070; cv=none; b=irNjNsFldAGuu37jC4su3VeNrAnUEF3EurBeNzXI0dOoXRuGSgiZ8bQ4GD81w2reivncNa+L8nf+cHSaSBbivcgkBGSL5HABtCzqAHryK21lmMUVITIPdIfsbRhylGewvk8XjafQGy6Lsrw5iARarxeZLUFj8zL8bxljMIoMFag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892070; c=relaxed/simple;
	bh=KjhTJTkDXnNRFpIPUaoSGbev6YIGfYkMTsBBPhzGvcE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nl/wawHDhL1po+e4Slj1gadI3gfxPj0Ro+hXULdm/kQ2ibzWnOpNAhCTe+tQs5bBc0mMo2Jyn3a5U9l/fBTBLcXrCaZVra5nPzs+XBhoGoJ1OiZ9+1nQTAOcB13obXohltA6QRQRerLZn0jvQhb+47OTAlJfG/0CabBXe2B6n6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WcV1nUQR; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a137692691so10679335ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 05:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765892066; x=1766496866; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IjtsZDFBVTJEjQk/WUDeFopXVBua3qA0F4qJMc77ff0=;
        b=WcV1nUQRebnfRO4g3dAsas2NloUn5XuVDdVFazmX6tT7whCI1tEKcWJjAlMiDqtSbX
         Dh+g+eLg8nyoEc17FpmQH7JI7GgU8qZ/6lb4eJ8r/fKUIHepKG/XgUwkErfiGOpsNjO7
         QxmWWNaiUlUVq5pF6uO3o+u2LUuCYUH8uMy4Szi58nps9qFwGb8/4Ypnt3cGnNkBtyFn
         KOP2IQfuGS+AvWAIr9RjI98+MmJ2uNzHqT0g8C6XrMBfmD0pBPwqUZxJbpFgZDcBjHF/
         quaZNJ69Ke2iK4PmmNlbeDRodWd6aMtUtAlMeK0u+aNl3p6leSe0JDM+SGI3UWK7ZgFH
         0i9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765892066; x=1766496866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IjtsZDFBVTJEjQk/WUDeFopXVBua3qA0F4qJMc77ff0=;
        b=Dg3GuCrNfWEBoNpuj11WpvuzOgN8Nj91WYUjOlaPLC4JpSZb9XefmxVLrvecXx+7xg
         Y+5uZKQ40gnft96sa2Zaf5k1MNhnMjDnTLl246KShq7xLCyCSV1UyLeruIjXsXWrEe9a
         4FkORrftupa+wfb0crJE178nirvrx5ZMCKFAQ7Au6TfeTNuXJL5lIjM6KFx9GuNcD/fW
         X9Tr4/5ymMWrGKRoZCHx4c10wHpYhmorF1jA9vl/MwaCEjiNyDskwuSdEUf0fwQRvn5q
         IJDl3sbfc4/At2GPFxDzzx6LyCK0A3qPNIfKZblBYmpFUSelpzkB/gKJImOGxk0tfCvz
         R6Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUySJv8JySaboI8iy7hFC6KDSQjzl/sW8UdcqSdYPrMuOBxwfenE9ytV0DqKwWROBGt3hIFyNn/1+8u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7dUnXlRLQE+7hbZYd4UHLlA54m0G+6iumMOkZAf0TZO214B3s
	QKTVm9RIA0PIArj0NoT+ZTxXSyf6U55D3MtEK4Z2ZPFn+IkTzK4UQcloETt3LhBmtaQ=
X-Gm-Gg: AY/fxX5lhpNzB6yiftwGgOzJa+/NScBqG8kzAKq85EUjufAg3AgVu2LNRR0k47fZfQs
	zzB5OeoYw0vfvV5hg9wvxke51CQFs2+cMM8RpvkT183HcKGkfetytbZPnPQ71ZFd7nJxRKy3Wgx
	KocXj+iK2d9tSZIxcd3tZQHc4rzmZsPxbM8u6uDpJP1ZaVlMUjMYHKIqdg6DbKXGtdGoc55q3/F
	2ipjtRO48Zn401HkfLJ5cltJFISIEiTdlgBP5uU7wl5ka1zuFlDWi0umc45lT7aFrCvt8khqQcC
	BQQ0+bW7/bvhtIlPbqWKRdPls/MVYNjk/GHxMhMwlNEl6iXU7Bjq8J0RPFvGr/BDP1V+qbtkobk
	PISkU4ccafUKIZ3nMBMIqBSb/DYGyWYM8o9bhiIvfqDeUp2GP9fox3NTII0OcT3KMgcYTIledql
	0HyVo7x+N/iv72uHlyOKDOxQfjM21w7cZRoIfvMMrtSw==
X-Google-Smtp-Source: AGHT+IGVOxm+/QKyxHcc5Grjn3kteFx1uRcmQu8o0lO93tndrJa8YJKE/y22hloJlPWLdYElnvZGNQ==
X-Received: by 2002:a17:902:ef44:b0:2a0:a9f8:48f7 with SMTP id d9443c01a7336-2a0a9f849f9mr99550055ad.55.1765892065830;
        Tue, 16 Dec 2025 05:34:25 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4029])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a14625add8sm15829525ad.61.2025.12.16.05.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 05:34:25 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 16 Dec 2025 21:32:32 +0800
Subject: [PATCH 8/8] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX board
 device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251216-k3-basic-dt-v1-8-a0d256c9dc92@riscstar.com>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
In-Reply-To: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
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
 arch/riscv/boot/dts/spacemit/Makefile        |  1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+)

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
index 0000000000000000000000000000000000000000..0f9d04dd352f5331e82599285113b86af5b09ebe
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -0,0 +1,25 @@
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
+	chosen {
+		stdout-path = "serial0";
+	};
+
+	memory@100200000 {
+		device_type = "memory";
+		reg = <0x1 0x00200000 0x3 0xffe00000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};

-- 
2.43.0


