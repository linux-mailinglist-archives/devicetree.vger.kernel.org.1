Return-Path: <devicetree+bounces-146763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8AA3615B
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 16:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6666F16EAD5
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 15:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206ED2673BD;
	Fri, 14 Feb 2025 15:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dCDFsbzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5662627ED
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739546262; cv=none; b=KwudhIC9R6ndvwCUb04Clujq4JRRMn4bjCIJ1s77jiA7j1jgScQj7bpfsS3ALfVQ6ZVK8HdvBwG71HCD8y5Bj3EMiDA2fnuOZ12wEQnI7S5x/yWOwHrpyfJ2LCTBaS0cxvGyLpRvSN+cUduS32cV8d3T4jcCAYuYEn7xR+vibrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739546262; c=relaxed/simple;
	bh=JW1oohGJWsBc3d6n5iD7RAtqQIWyKDAHKpAXb1hkGTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N9MtcKRN7cq9N8hgPf/KUwraKYYJvU2eUJarPc7xmNhzO0q5SkSOrmQ8jSkkdddFl88GJW3utKAD+dxgg7/wUmbKuBMcoSnI64cYLIGgXncKLLGwsnxqCx0qoJQOXq7MmzP7amJFehC2G20dTUT/JpEbCXnzFe4eW9L+R0HH7kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dCDFsbzQ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739546259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0SshwRt8Gl3GApBo9RGajwM4sy4zKiOT3YLnoVCQViY=;
	b=dCDFsbzQsMaiaANgdCrZ9vth1e4YxdGiCLlcs3575EHsmKTlq09R+KCI4PHShiTIf66blW
	EWJkSGSUQIKLBv48YN3ZJ/fftHN4RKAFz0xUYW1F5XcfsJMi/0nMJqxwcRfHlG3coh6rbf
	vI5fDdX+9pczuA4fi//Qv0KBsYpZtHg=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-uF1exI47Nli0NLn-AlMPcA-1; Fri, 14 Feb 2025 10:17:38 -0500
X-MC-Unique: uF1exI47Nli0NLn-AlMPcA-1
X-Mimecast-MFC-AGG-ID: uF1exI47Nli0NLn-AlMPcA_1739546257
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43933bdcce0so17421495e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 07:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739546257; x=1740151057;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SshwRt8Gl3GApBo9RGajwM4sy4zKiOT3YLnoVCQViY=;
        b=NWwqLeOUWNaBhggYBSX7hip0r9SpdGay7OM6AXAyqu7pNyVwe2f/TSsWgo4r9Mkm7H
         UIUEvdZpR/itJpVlGYyfE8riyg7qFllinU0988RWZua9PBtvAjAtkarDyyL1sVsDM58S
         Gd2tsMr6N1BMs2fXPePHQcDaM0vynD6hYzGDIeG4VlAMrlmu22Dym5X0Yl+5JYjvURq4
         j+/jN7X2O5lXWEcsnHeyEt5z9urC81wT+xpHb4ck5oI1eXSGQXOCFOvf174aC10rM/Xq
         FZBXK+qqLWBjhOLIBf86WO9V9mE45pR8aDmMRudCuO2Bu5wKA6NJxk18MJRaEu+XolQH
         A38g==
X-Forwarded-Encrypted: i=1; AJvYcCW1MBG1cfDjDo35EVN/SohrGs/eHXVlPeGDiL2KZi7OWTcQV3v+HFnQrwflvDe9XYUnfPl/P72ZGKn/@vger.kernel.org
X-Gm-Message-State: AOJu0YwmN7Q39k6qjBWAsJKbZcZ6T9jjxYHclTESla2WaYwa73bsChlW
	RMbYbgyQ2SpUQDWbT9/p3lm4edNSrIqIbQ2cjxr6E8LsA4YEZkOAC5T76QX/jVdrZiDhsyBdqqR
	0NEi9q1FUS2i7RJGLNAPmTXbZh8A1SKwFPGA9k7LiBtducNDDTPb0ILQUmzg=
X-Gm-Gg: ASbGncsp9yn3uCVL0C/lM+rasQGVDgt4VPIYdzwZK+Aun1ujgwEb/9QYH8uwwzXwnyv
	697hSYdtM1gHnEAhyX0Vq+8sJFuXc+6UBTXG4+aZmPicB0WhJxt3pMu8+qYdMAGqvt81Wxk6YDZ
	+TPNXDbOTm6h1Ok71nIRIVBsVOgwIsW38bfC8YizOJjO+iTJgQ1CtOvLjJo0C/uxMU0qeRQqqZu
	vG7q05mcZR0fYVmetKWPvx9Z7uk471Sjh8SnGKRwq70dYz3K76My4vjP+yIZ/6QMBQYEQKmPvmc
	ANUwAvupHOS1sUeAXINjx0uftqAppA==
X-Received: by 2002:a05:600c:3542:b0:439:6e12:fdb4 with SMTP id 5b1f17b1804b1-4396e13034cmr4325e9.14.1739546256891;
        Fri, 14 Feb 2025 07:17:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3/3JFKYy9eGyD7IGPX1BVb9PSRrb5ZVdMvOU2CUr5TK3oN3GiUFe6oGPOq5SoYQYtuJNygg==
X-Received: by 2002:a05:600c:3542:b0:439:6e12:fdb4 with SMTP id 5b1f17b1804b1-4396e13034cmr3705e9.14.1739546256365;
        Fri, 14 Feb 2025 07:17:36 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d5ef9sm4841762f8f.76.2025.02.14.07.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 07:17:35 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: javier@dowhile0.org,
	rjones@redhat.com,
	abologna@redhat.com,
	spacemit@lists.linux.dev,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 2/2] riscv: dts: spacemit: Add Milk-V Jupiter board device tree
Date: Fri, 14 Feb 2025 16:16:38 +0100
Message-ID: <20250214151700.666544-3-javierm@redhat.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250214151700.666544-1-javierm@redhat.com>
References: <20250214151700.666544-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial support for the Milk-V Jupiter board [1], which is a Mini ITX
computer based on the SpacemiT K1/M1 Octa-Core X60 64-bit RISC-V SoC [2].

There are two variant for this board, one using the K1 chip and another
using the M1 chip. The main difference is that the M1 can run at a higher
frequency than the K1, thanks to its packaging.

For now, only a DTS for the K1 variant is added since there isn't support
yet for the X60 cores operating performance and thermal trip points.

The support is minimal, but at least allows to boot into a serial console.

Link: https://milkv.io/jupiter [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts

diff --git a/arch/riscv/boot/dts/spacemit/Makefile b/arch/riscv/boot/dts/spacemit/Makefile
index ac617319a574..92e13ce1c16d 100644
--- a/arch/riscv/boot/dts/spacemit/Makefile
+++ b/arch/riscv/boot/dts/spacemit/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SPACEMIT) += k1-bananapi-f3.dtb
+dtb-$(CONFIG_ARCH_SPACEMIT) += k1-milkv-jupiter.dtb
diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
new file mode 100644
index 000000000000..448319214104
--- /dev/null
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (C) 2024 Yangyu Chen <cyy@cyyself.name>
+ * Copyright (C) 2025 Javier Martinez Canillas <javierm@redhat.com>
+ */
+
+#include "k1.dtsi"
+#include "k1-pinctrl.dtsi"
+
+/ {
+	model = "Milk-V Jupiter (K1)";
+	compatible = "milkv,jupiter", "spacemit,k1";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0";
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_2_cfg>;
+	status = "okay";
+};
-- 
2.48.1


