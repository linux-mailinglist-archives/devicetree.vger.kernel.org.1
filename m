Return-Path: <devicetree+bounces-255400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D1734D22AC0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:55:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4AD3E301FD49
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DD530FC27;
	Thu, 15 Jan 2026 06:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="pR/gJgZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A64F307AE3
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768460000; cv=none; b=d6sCQJsnlHxu8dHADErsHJZqB8i42hiFjY0ReIDxG0BHUVLQlZkLJJLcwW7UmCSDStUenO+eSQ0bb6XIpZ3gzG3dpthcoBS5eUBSp1jBQPgNSGZYFr0vSqjWuhORajq1G6ZtGeahwvjE2iRUUECyvhpNmY8OY0YOP2WeivZRNrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768460000; c=relaxed/simple;
	bh=QjJKkTUz/26FCCJorplE27fDB3J4K9QRmD2HajPhw84=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KblrWYDokpyTZu5SZ7+nvKP99Vn16lo1uLiUasegOBarOSJb4FMNfYODtsWdj1gzGmyW3FDdk/mkAGQXBlwZpJFVOeWWEHX9fJdiR7aBx3p3K/bQWUgsbwjy6vqAzHyGb+m0P/zZ2EA71PswcqgDccFzjbMk7YAm9TSmy7KfQro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=pR/gJgZf; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-29f0f875bc5so4318395ad.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459995; x=1769064795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JN4w43030nBMnmCgDRIi09REyeuq/cQHIYBn+3h/zwU=;
        b=pR/gJgZf1JlBwf1zTjdLX4m9r5KoWEsfGcbEJ12GjIA2G9fhf4WRBJBQxmmiBLDJIm
         9Y3HH1c7oeIdtcX55CrFa4znvhmE/Lp3OCmflqu80anlKbHaifKjRpGQrFVCP24LdF8Q
         h5eUmEYsfZkDRF07NVi9ay9hm50tbXwXJi4jkk0AAoaDSxQSKrSpY8WoMHq1kw0xIL98
         i6morGR/JErc1kSqVyHk/LoqfFPIEG+4tEkItfdafeSQsea7+KKmjxQ2leUsZSPyHGAW
         8aRy1guERQQy/FMZ0WlI9pQX4e5ANANb36gqOvVfDZzHHXhuPemttn5ypajzpCbf4GdX
         Y9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459995; x=1769064795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JN4w43030nBMnmCgDRIi09REyeuq/cQHIYBn+3h/zwU=;
        b=Y264Nn+NvDM8BQsMBG2LqT6TWatBIwKPl1j4EqXeSIQWO25ZsXuRGD8r1nxOMJ2WOC
         awWK8GIZ7pGxGAyBAsN8TGWCuljt6Ccm0VQOPO51ieaTiQIG8dBjG801/IsTjr4GDW9P
         bdpv6y+tCVUpZMiVtFBPqZj4u7PjKGloOLXJJ7PwFso9wiQuiY+KQ+aUEjgyn/BDCxCv
         sClJxxhkMCKL6okq+ucNbjE1XUAVUEEQoAMFN3x9pHT4ILP7W/MTOV1WehReGWeKuPeU
         NWoqe8DAKQpaTlqZqENZFJv2glychALgaxlci5qn28VLW1q0WEbbnyPL6MAMUfchQSpo
         uYkw==
X-Forwarded-Encrypted: i=1; AJvYcCUlX3qXSK9bp1GJp9VgYI7yFTP+bDSjoCauN/qxbqsP8AGpwHxTHKZuP22MLrL+QAREwUFey5y1MbCo@vger.kernel.org
X-Gm-Message-State: AOJu0YzEpURLCnlRrIW6O74JtC/zNLgFRyleGv21KqBptE2Wbgw9Kd9D
	VmcZuU1cUQfXeTnzZy2vaplNG/nB77oClSn8eUG84mHlu4zKAoQ2E8bhMjx4MOIKmJY=
X-Gm-Gg: AY/fxX6v/ka8D2MSmxGiqU21FfAH9u5KjUYGYa3mqW9/VoBk2OqvrJrZNbCFfqX0tAt
	2rO/xcW3Swz/1ReO6NZzof631QjvWZLq8UHy7MuW8VtHQGQkAh5rD80MvidrnvGeKC0vVsCJ2d6
	cR9Tlw9WixtTOfb02Cd01UFPGOIUT9F5FeWtR/UCPBTTBmL26lxB4Q0CMZaw88HYGP9Vn7xiPbx
	stJvbGii4YIbAB0GQbcaXBWYV1OAkHhdXcSsV01lp5DDelovIBsJDuEd4G+18q6LGtN9wvjVG+i
	X45TLKWC12KLfJ7yVZ0AobZ2cwG+/y16nfAlQf8+v50FgXYNzWae+w+vM672AE9qS6VNr/Vejs6
	cnftuu1CzUMGhD5nHZpM21ALQCu2EGZO1oZ4Bb4PaDNSD/URFqwLGa3awOOIxmjoAiXeGQIOU0z
	0jwxq2XOmhV/lpBEyBEMuHg0QSoNeweJ72aW7sX7k2RnwDmltX+fDfjQ==
X-Received: by 2002:a17:902:e94c:b0:2a0:c5b6:67de with SMTP id d9443c01a7336-2a59bc43586mr44946485ad.52.1768459994844;
        Wed, 14 Jan 2026 22:53:14 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:53:14 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:46 +0800
Subject: [PATCH v5 7/7] riscv: dts: spacemit: add K3 Pico-ITX board support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-7-6990ac9f4308@riscstar.com>
References: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
In-Reply-To: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>, Thomas Gleixner <tglx@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

K3 Pico-ITX is a 2.5-inch single-board computer equipted with a SpacemiT
K3 SoC.

This minimal device tree enables booting into a serial console with UART
output.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: Update the commit message subject per Yixun's suggestion.
    Remove the unused aliases.
    Update the copyright year to 2026.
v4: No change.
v3: No change.
v2: Add aliases node in this board DT.
    Update the memory node to reflect the hardware truth. Address
     starts at 0x100000000 (4G) boundary.
---
 arch/riscv/boot/dts/spacemit/Makefile        |  1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 29 ++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
index 95889e7269d1..7e2b87702571 100644
--- a/arch/riscv/boot/dts/spacemit/Makefile
+++ b/arch/riscv/boot/dts/spacemit/Makefile
@@ -4,3 +4,4 @@ dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-musepi-pro.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-r2s.dtb
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-orangepi-rv2.dtb
+dtb-$(CONFIG_ARCH_SPACEMIT) += k3-pico-itx.dtb
diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
new file mode 100644
index 000000000000..b691304d4b74
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (c) 2026 SpacemiT (Hangzhou) Technology Co. Ltd
+ * Copyright (c) 2026 Guodong Xu <guodong@riscstar.com>
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


