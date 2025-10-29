Return-Path: <devicetree+bounces-232403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C258AC177CE
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 93927355FA1
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 447891E9919;
	Wed, 29 Oct 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BIh/bHDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6D41E1A05
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696713; cv=none; b=XJVwuN5lCulTlGbt+qHmNInn6lH3M9Wbjrjh6UUhQtIAiXJ5ettQeOvz2EVrbVcvkQ+HJSzJQwJE/rvYk7MLQqwbUZMPmuhS8kuzolqVw0BSsJgrEdxnRq0dJb3r88kU4/cjTZZWARSwqSr8p/DPR2T1eYBZu6n/YvhwIdpKWaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696713; c=relaxed/simple;
	bh=zldgFnw0AZINZXAWWKci4rcuZmofOiJT+xwC3f1wbqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HHYoSQvHxRatxwXJYzytBUqc9/wOBvbBZYc2C7IJDs+3e3aUmBXSFQwd6MrOUH3F01AsJBtKH6qfG87Jgk9IRpCTImLcRzqf7bb9rF0eVbLobbvg/Cnektl6+6RDUEhnOS/TnahZIENq5lqRHS1Ypp5pbt+4UnXJn8g64SAToSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BIh/bHDI; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-87c1f61ba98so94224276d6.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696710; x=1762301510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVnVAo31Qk9BfTF6wZceGmP4C2BUIBcQwu7HUQHA8Lo=;
        b=BIh/bHDIqAFiuX6HVp0q6DIagShhGi7oTjwNAZMq24BeOWNvLK5y2dVxhUZOmsJ3Ml
         uHEdChMhlwovrNXO4Sbl5nOtkdF6kiTS+wpq4iGupo/QnOMZw8SQRh8eb+hzFsQw0BYw
         dXx0xUO5vcVmI7gR1NAdkESWGd+pLrowXzS7lvol0IISxp8KcgPDr9v34/bs2wlo51wz
         XVhjCn4nY0J4g+KeANlRio9gPs5YbiIHM/uIxccXNkd80C9TFppspI569zqQ8jNtrdJT
         LVmTHBkvuH2m1ig4vKYzMjXe9Q5N9kJ+KiZDxrDIS9E0926T3ZXksodcZrSTAPgIrHey
         o+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696710; x=1762301510;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jVnVAo31Qk9BfTF6wZceGmP4C2BUIBcQwu7HUQHA8Lo=;
        b=NWpOZvPa7YLXXTkOveglWMlVoBcG/gFfFDAjCTtP1TqO/nbNIAaLo3xoau2t5iduUl
         3VVy2fx0o3OxApjE4QxZIW9B9P053WZe5e4nas9N5mf3d4Bmsk7XmM1TGN0ZNH9l5ljY
         ydH2vKlwybY+oSxjvhiADNKJqY7BPEJidEdoYMdWk2eR99FwmVjRX8NiOdAcSkEf71O5
         DK/szc5zSxVsSDzVqTz4sE2KrJOWPYXsKBi8EGWjupYaACpv+s2bI8VKDtJ7jxT2s536
         0e/sHt4mE3no+G3AMEWc++25Bna2ybReykrfcSjg94YN+Ka6EFMDPG7g2M/Ocd8cDtL2
         JfWw==
X-Forwarded-Encrypted: i=1; AJvYcCVMVc65mFB3f4kwW3su0xQPgctfYuIu3EiBM+l1hyRSOdI/YZkhhEtCLTqEU1V5pUap+QmGtEYMnqx8@vger.kernel.org
X-Gm-Message-State: AOJu0YzH25t0GKX4x5U5o0dvUVyU79b6hlcREqaKDmkdXRcM1o2ke8rh
	1RjeZAKP4pKhWXLoEmfhen+hGoq4eEI9MN68PFgzBRNoI61qhPWz+XT/
X-Gm-Gg: ASbGncs5AneHaKaSVaTzrRWe1u7GmV8VLPZCE1TeAWEm6svTr+BaiUxAuKuD3Ic7Fju
	+x7Y78A9lnTtZG3o0vpGUcjKJ5hbRF2NlmXtV080O0r4wM+ZDL5aMBiuM3DKz1bKXh9w42Ii3ln
	124RwsRn5DOfE7YYARet4eGqDfM9ZfD/W3TMEWhjSJVYteBjxI+8vAQ7rhxzIU++nqYEMQYOaMQ
	8Uxk107K0MzvCBqB3wf2tS2pd8/9YHgJyAA/0LWPYUQJu6r/9rLWoVxNqtIXebG4jPEkCdDOvYp
	ja9QBsYizFF18pvGTqi5xghgJuKkM/9nguv+zqW/NxrqjSXrIranIQgK6xNafaE/rtbKkRGjgTe
	vp4HmBUf2dxJ6ENdTBLBU4hm3L4oYA5HZx6UinYbdiX6EMRcpMV675rf3pU0Yow/N+J3vG5NpQn
	UcCCPCp5LlmYXKRZhl7/hZGSUSq8liyx2vtg==
X-Google-Smtp-Source: AGHT+IGIc6sh+oNl05iSSCfx3miJfIAzo70BjFfgaGOYdbW/vkSvtUIPlil1z/1rfFLSdusZMiyOhw==
X-Received: by 2002:a05:6214:1d01:b0:87c:16e7:892e with SMTP id 6a1803df08f44-88009c2f115mr14442296d6.62.1761696710612;
        Tue, 28 Oct 2025 17:11:50 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:50 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	paul.walmsley@sifive.com,
	samuel.holland@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com,
	liujingqi@lanxincomputing.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 5/5] riscv64: dts: sophgo: add initial Milk-V Duo S board support
Date: Tue, 28 Oct 2025 20:10:52 -0400
Message-ID: <20251029001052.36774-6-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251029001052.36774-1-josh.milas@gmail.com>
References: <20251029001052.36774-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds initial riscv support for the Milk-V Duo S board
[1] making it possible to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/riscv/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 80 +++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts

diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
index 6f65526d4193b..58cc6b70d8de4 100644
--- a/arch/riscv/boot/dts/sophgo/Makefile
+++ b/arch/riscv/boot/dts/sophgo/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SOPHGO) += cv1800b-milkv-duo.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += cv1812h-huashan-pi.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2002-licheerv-nano-b.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-evb-v1.dtb
diff --git a/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
new file mode 100644
index 0000000000000..174c194e1301d
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V Duo S";
+	compatible = "milkv,duo-s", "sophgo,sg2000";
+
+	aliases {
+		i2c4 = &i2c4;
+		mmc0 = &sdhci0;
+		serial0 = &uart0;
+		spi3 = &spi3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&dmac {
+	status = "okay";
+};
+
+&emmc {
+	bus-width = <4>;
+	no-1-8-v;
+	cap-mmc-hw-reset;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&gmac0 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
+
+&mdio {
+	status = "okay";
+};
+
+&saradc {
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <4>;
+	no-1-8-v;
+	disable-wp;
+	status = "okay";
+};
+
+&sdhci1 {
+	bus-width = <4>;
+	cap-sdio-irq;
+	no-mmc;
+	no-sd;
+	non-removable;
+	status = "okay";
+};
+
+&spi3 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
-- 
2.51.1


