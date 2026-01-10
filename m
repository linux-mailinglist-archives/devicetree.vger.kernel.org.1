Return-Path: <devicetree+bounces-253454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E72C4D0CFCA
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F76B3016DE8
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A84338591;
	Sat, 10 Jan 2026 05:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UhD4eBUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7287030E0FC
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022451; cv=none; b=ZCDZGTTb5hAG+J59rSOh0UbJuPx83I9zeelCUS7dwiDHSKTpt+R3ZGssU7qFg4SkURNXAKO//5etWOiXWJ9HUizJwUmyyjliO+ktMukbHe7UTIsUuwdLL4ZFbzzKt+zzBvr9wudO6tDE/7iOFFjZUJ9xA9IZ4+UDtJR24ELzbbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022451; c=relaxed/simple;
	bh=RpX/YUsP57yYRCsMuPjhWD/AM3yMIl5MNE+TunhwMLY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t2XquA3btus1Asx0BX2rAMuEamF9uGcUQ4s7Rc9U4nEi2keDepK4wMqDCeQlzM2sKrejn+g7BB/rlbyEyAO2wp1gC+9Sq69I+jLaVXN/G/VlyGsDwtl6FKaqpIf4iJPF3HG31tMK99YbF700dM2UxV6iih0GbCQEd8EXcWu/nOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UhD4eBUG; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a137692691so34106845ad.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022449; x=1768627249; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31DgMKkz4Cjgbg70+PADLl7ySardk8pduReCpk77D9U=;
        b=UhD4eBUGyV4AmGNXtMuKur1e5RuF/HR3mndgtmG/WfLKNWwx/HhD25W6izaUJdgk32
         Y1AYGKeiLwib5hDBR36H7C6aB0tH7D3KXNR38CKgBqI62a/0AQ3ptQkmzKZnB7Ej+v2w
         gAfbg5jQRrzEqKnPTVxHx8xYZN9si4l1R4yNzhQXtSEhjAdkkwHPWx6eWumZMsn+oA1w
         DK3xjT8Euv36a+w8vuXAjRXb/KuCOX2EHoCDA+oddTBoUCMhStqknWHw++ka75LbSur9
         0vEAxrLGrujVKU+h7oCe1UK0jEjDjWj2RlK2Z+zNjXAy4kf31zxbugftD1QfP9uo5Lnr
         ZEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022449; x=1768627249;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=31DgMKkz4Cjgbg70+PADLl7ySardk8pduReCpk77D9U=;
        b=vVUAQyhmCj2JFWqV4+sjQYHW6fR4vmyySBjb+dOOKNM4S7ET4kGiOSLN9r3G77w97e
         dPywbsnva45XMmq5ICQiXVOEg9mMTZo1CjwphfnXgQTNra039dyOmjoa4Mxfnf5RCOhi
         epDNU7ll9NH2UYvGxU4lVaWEuO/nxLgnouTVWE7bYtG3Ax44nIYZRqaIEzIzAsCHJ3MJ
         3NeMQUCrtHu1yWko3vAblVnSqXbpxpr2aCenWh9jjyyKKBBHtF/WI7Gp04ZNePCqFtP1
         GUNk91txJuIfCMKpZn9Oy9wZOOLgI9oSMBjxqPOliJkW8n7UTteq16LODXkEoLIwbmtj
         AHTA==
X-Forwarded-Encrypted: i=1; AJvYcCViWkC+GuTdoRtcgmDWZSF1zU5DqPWlImbqgRGU2daTVIclC4W2dP1NlLL2Mr2pDbOkhmREyJRNH05l@vger.kernel.org
X-Gm-Message-State: AOJu0YwKm7S5ohgGLMotCUOeAMM9iyb9M30A+THa4rS/i06KkISSVzMp
	4WNZbn2mHLuzfp4T7a8lKsH41uiwdpZ8d1zJPlu6jxm0dK41F3y3yjA/oq2AiRRS35E=
X-Gm-Gg: AY/fxX7+aiRHyuZQDCYRU3Vguhn7TqZ1LHQT+MqG+uFM5b8H5cHzf2Nw//9ACA00IHD
	+n+EwCc/+NmHkq0CtkvxycCCOFQhfZH+JYPcrB63jSG9wIIH05WH54K9/MR9zi/K8vXGVxHnhs9
	zwgnEFvCRDEQ7QVPZ8rbclQFs0onl9p90pJnaBWwD/pAPMt05scvaE393wkbw7aNBsiMs06Du/1
	MbrBAiHP0a3wmosQkctOxGHyL9X85z2kme+gBMyr49BvvMgr1CO47JOFxSsKFRndcxp06oxBoXx
	frIi9YxLCaI6pYZMm7zmmaJc+fr61X3Wsql5SCuNb3zZ9ejTB6KZBzqnCIunbjMzQ3nnsoDm9e0
	FrOznBAY/j3PXihJ/0lFsNxZ5AFKJ49e96uJ+6EuEC3xauS7OASvKU5/Q2abAs3HReNKkTW5xIg
	p/HjkerSRDhiO4yLe8rHfjLsk9R9UCzELdspQ4C9Vk7BR9kZ5XbZZ5Yw==
X-Google-Smtp-Source: AGHT+IHYGojnyw/X9+Sa4CxlCr/3Vn3pURVbolq+Xy03kMkgcsYibAap3C0WizH8w95DkH1bsHgxGQ==
X-Received: by 2002:a17:903:2309:b0:2a0:d46d:f990 with SMTP id d9443c01a7336-2a3ee4e81c6mr120164655ad.31.1768022448640;
        Fri, 09 Jan 2026 21:20:48 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:20:48 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:23 +0800
Subject: [PATCH v4 11/11] riscv: dts: spacemit: add SpacemiT K3 Pico-ITX
 board device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-11-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
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
X-Mailer: b4 0.14.3

K3 Pico-ITX is a 2.5-inch single-board computer equipted with a SpacemiT
K3 SoC.

This minimal device tree enables booting into a serial console with UART
output.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: No change.
v2: Add aliases node in this board DT.
    Update the memory node to reflect the hardware truth. Address
     starts at 0x100000000 (4G) boundary.
---
 arch/riscv/boot/dts/spacemit/Makefile        |  1 +
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 38 ++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

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
index 000000000000..037ce757e5bc
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


