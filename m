Return-Path: <devicetree+bounces-250137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A2BCE6720
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2EC7230123DC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38242F5487;
	Mon, 29 Dec 2025 11:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="E3YHwhHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D3A2D0C66
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006277; cv=none; b=RvCOFg84a9dxGFkKNYxQTsnlsRdjtAEct3z5q1wZB8R/Hg64ZXsT3tS6LEgKawqYxxgqCDVXIA5/Vpxw/+LupEipGubdL5nIFFVbiU9RrGMqmYzhcsqvrQkNVHgCVI6j/0j6hvjbQwfgVoPx9Uruiwn3VsWs6B2aJGkdSKpQJEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006277; c=relaxed/simple;
	bh=VGGGcRCIUVxzkWMETn6PNZUzkC3pAjQmUfW65HhgBts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g9ZUwYZOdxP2uyszqLiyOOuD+oym0JpPgJch+JZ7WnGC7vMe0yYRFPsSpfPnLFKHj1FJsFJhS4tCV/PlLYdePXq9kBHLyJ93eMBtkFU4eQr0K+kDdfX8jFvXWZ22Bc7P/7rbzveh6OShmij290Wlaem+93IWuvJKkqAXejuJB3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=E3YHwhHJ; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b8e49d8b35so10956618b3a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767006275; x=1767611075; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KAntNEpArzSlcAAGRMjvdDnMb9wpchgIKOFTgm4WfoE=;
        b=E3YHwhHJujJCM0M7Scw729eqR4ghOYcFM00ZAoxybHIF2tiugU8pce9t/sUU6AcsmD
         7i+sOXDv1NyamthiOvzMg/wQ1smpVy6h3Yhcnx7zuiNiPARm+n8sMwD8KvAfeCKC+10h
         mG99/Fnk+YSwdQodQmfvgrbIkwwyoY37NQvJJrIVdLJYsT8eL6OuPkVMADyHS5VgOgTv
         lo9y+R9KdAGn/VWwTlia6O+/g6moxbwNRrC7OfmQNkxB1afo0CxvUyIPX7OXvW54fzlR
         jcpZ/lAa313P4DT38L9O9R4Ry2aUuHUabOOsQX2/hoUMwarezvwqiE2B2VULhLN5jsgK
         dGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767006275; x=1767611075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KAntNEpArzSlcAAGRMjvdDnMb9wpchgIKOFTgm4WfoE=;
        b=aUxfIyXcdiUANHNNeTSJn8dzD+sI2sAaAwoyM12XBKzBZy3CvmV1PUqgsrCGNsBUj5
         dDMpAfVXc+GntZ6dcwnwDhlIk/MLs2hWk9JEMgMvXNFHwcKcyYDkKD2YFUDs+GlkofLV
         1sXsaUUfzuiiQLySFAVEEs1mNpJR9DUQhAw7Tpo25H9uTvkke3sGlN58GXiuEgawTRNu
         24CTgLJgl9J/iW7hCPts6F6mbGOVqIb6a+BlZ0AzcMoQ2rs17nNj8k8Ov2qnwdhqEK5W
         /g7Tp/zdAN3xwWqQvzYhJfoWhU/HpOXqyNcE72Rb1d3MYvhaunM2T4KCFcEzCLhfuj1W
         Ariw==
X-Forwarded-Encrypted: i=1; AJvYcCUB+hEi1oJwQNRiOAgv0f+BtkHANIMrbXlYMz/wWDnrT821bCrXgrqv7t9soF7IFBjqsmRQ4RywEE22@vger.kernel.org
X-Gm-Message-State: AOJu0YypBzR0FfCkV2q5sdTCOpOa9NJRU7xo+uh+BHy6B5/Bk9NuBD68
	7EJRCQrI8KW5pxohYiIjbo6hxhZxNAf/QfheqCHpcG+/lqIqZEOQxWLVjQ+gjuBA0vs=
X-Gm-Gg: AY/fxX6GmZvvHRPblm81gz3wP5cJhR48jhiHDR0OjEaag7aY9dWd88Owdz/OwHqtb+A
	kApUNFuKyZVt57Kp8IOvCx7tOMoUf63mn1S6M/3tQ9A9yvH4PWb7WYD9sCDu+U4XtT+JEosbTIw
	AGMoS+OIZgZPaFECiYZocKt9vWyz/xFNQ8A3TShyzos2m0N/fblQ/FjWij53hdhMJDmn1w3sSIx
	dsZflMZZv/kcvu1LFu7BBS96SaZhkreKVTD4vuAP4zemzMQqiPTSFdg5LJ0jZl0qo8IMSguawkr
	LfhXZnoDQoofL75MgDx6ttnNTzc4kW00FrYJNVmQS58BDR4MVBN4C6sPz47tvz+Dzss+XkLYUhf
	raTXBZ/e7ruKMUM6wmTWmCslAMgiGAwgD8uc40WYZFzFzIsoCsUX5qXHS6B8/JNOU8l8j7EhAtc
	7X2yNY3HHkTjqpdgHCjka1isofyBGKzc9XPodSCRY2lQ==
X-Google-Smtp-Source: AGHT+IGxV3R1g7dAVVcT92rBapwrsIWptN0T742A8OO1aZUzgYn9fWWWA5QnwUnP9SD8OJK+En90Hw==
X-Received: by 2002:a05:6a00:e17:b0:7a2:84f3:cefc with SMTP id d2e1a72fcca58-7ff61b8e615mr28076555b3a.0.1767006274915;
        Mon, 29 Dec 2025 03:04:34 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40d7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7aa32916sm29338817b3a.8.2025.12.29.03.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 03:04:34 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 29 Dec 2025 19:04:05 +0800
Subject: [PATCH 2/4] reset: Create subdirectory for SpacemiT drivers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-k3-reset-v1-2-eda0747bded3@riscstar.com>
References: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
In-Reply-To: <20251229-k3-reset-v1-0-eda0747bded3@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Create a dedicated subdirectory for SpacemiT reset drivers to allow
for better organization as support for more SoCs is added.

Move the existing K1 reset driver into this new directory and rename
it to reset-spacemit-k1.c.

Rename the Kconfig symbol to RESET_SPACEMIT_K1 and update its default
from ARCH_SPACEMIT to SPACEMIT_K1_CCU. The reset driver depends on the
clock driver to register reset devices as an auxiliary device, so the
default should reflect this dependency.

Also sort the drivers/reset/Kconfig entries alphabetically.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/reset/Kconfig                                      | 12 ++----------
 drivers/reset/Makefile                                     |  2 +-
 drivers/reset/spacemit/Kconfig                             | 14 ++++++++++++++
 drivers/reset/spacemit/Makefile                            |  3 +++
 .../{reset-spacemit.c => spacemit/reset-spacemit-k1.c}     |  0
 5 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d..b110f0fa7bb1 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -299,15 +299,6 @@ config RESET_SOCFPGA
 	  This enables the reset driver for the SoCFPGA ARMv7 platforms. This
 	  driver gets initialized early during platform init calls.
 
-config RESET_SPACEMIT
-	tristate "SpacemiT reset driver"
-	depends on ARCH_SPACEMIT || COMPILE_TEST
-	select AUXILIARY_BUS
-	default ARCH_SPACEMIT
-	help
-	  This enables the reset controller driver for SpacemiT SoCs,
-	  including the K1.
-
 config RESET_SUNPLUS
 	bool "Sunplus SoCs Reset Driver" if COMPILE_TEST
 	default ARCH_SUNPLUS
@@ -406,9 +397,10 @@ config RESET_ZYNQMP
 	  This enables the reset controller driver for Xilinx ZynqMP SoCs.
 
 source "drivers/reset/amlogic/Kconfig"
+source "drivers/reset/hisilicon/Kconfig"
+source "drivers/reset/spacemit/Kconfig"
 source "drivers/reset/starfive/Kconfig"
 source "drivers/reset/sti/Kconfig"
-source "drivers/reset/hisilicon/Kconfig"
 source "drivers/reset/tegra/Kconfig"
 
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 9c3e484dfd81..fc0cc99f8514 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -2,6 +2,7 @@
 obj-y += core.o
 obj-y += amlogic/
 obj-y += hisilicon/
+obj-y += spacemit/
 obj-y += starfive/
 obj-y += sti/
 obj-y += tegra/
@@ -38,7 +39,6 @@ obj-$(CONFIG_RESET_RZV2H_USB2PHY) += reset-rzv2h-usb2phy.o
 obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
-obj-$(CONFIG_RESET_SPACEMIT) += reset-spacemit.o
 obj-$(CONFIG_RESET_SUNPLUS) += reset-sunplus.o
 obj-$(CONFIG_RESET_SUNXI) += reset-sunxi.o
 obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
new file mode 100644
index 000000000000..552884e8b72a
--- /dev/null
+++ b/drivers/reset/spacemit/Kconfig
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config RESET_SPACEMIT_K1
+	tristate "SpacemiT K1 reset driver"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on SPACEMIT_K1_CCU
+	select AUXILIARY_BUS
+	default SPACEMIT_K1_CCU
+	help
+	  Support for reset controller in SpacemiT K1 SoC.
+	  This driver works with the SpacemiT K1 clock controller
+	  unit (CCU) driver to provide reset control functionality
+	  for various peripherals and subsystems in the SoC.
+
diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
new file mode 100644
index 000000000000..de7e358c74fd
--- /dev/null
+++ b/drivers/reset/spacemit/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
+
diff --git a/drivers/reset/reset-spacemit.c b/drivers/reset/spacemit/reset-spacemit-k1.c
similarity index 100%
rename from drivers/reset/reset-spacemit.c
rename to drivers/reset/spacemit/reset-spacemit-k1.c

-- 
2.43.0


