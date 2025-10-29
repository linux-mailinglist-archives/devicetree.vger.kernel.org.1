Return-Path: <devicetree+bounces-232402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB79BC177D9
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 01:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC12018889CC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 00:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2951A1EA7F4;
	Wed, 29 Oct 2025 00:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i1g4ZYRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6271E3762
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696711; cv=none; b=nwQFbo+sTBOaO30d4EZ4T56n5JJWJI0J1KBYo3LEw5iECGll2e2h6rmpqI3ktAi+mhd6Srs3JO6Ib6tFkFiTP1Bq4kV+Qzuu+UfiWT+2D0/GLGU95h1BzJl5CVptIrY5vipdcAPV6B0rdxhKmXQDXHGk+ywVkmt0S5Exa9xTSKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696711; c=relaxed/simple;
	bh=8+c9C1dgyZPtOWEjKCHXXV4k3oa2GtS2iE6OQIMTaDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nD7bPh/30q/k219Hn38I2D3GLjBv6Uo8/dh6MiUI0B9c6LKZajwRsB1UuVKVvOi6vieUDCEmKrjnae6UstftdymIhp9lpu0HmQf1Fh3BRG+QMMyYNZV8KgdpA5OCsqCxBNJbkMewUd8IzQ6J5fJM+wRvHhvu4a6uLkO4NNksyHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i1g4ZYRr; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-78ea15d3489so57977836d6.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761696708; x=1762301508; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9pgIB4Tz67zjDEuCaou8T/MZSYRwlTrfA6jaD1u7do=;
        b=i1g4ZYRrvBYXRvO4p0K/3BHJCpUwfFr45FqM6+Xhj5+j+4GA0OX5KqLz5Ngd1GR0SZ
         2kMyPSU3H/sU4xwS9eecLw8VvZuHXL10g+/UWx7iohTNuyPo4Bg7HC8WneupPdsOPo0+
         9mmubi9JhH1SQdoenkZMHYamXLT/cdDWoA2kgGZb/lM584TfAGxpGVX1DyYhiFXOQzLa
         /5PbAu9xd68pVVL6ccU8wTLU5EBQYKEiS78L0eD3ck73m5MxRMhUs15e2YFjDko7hzRb
         5h89+G/H2C4QpaVJEjX5JXTkLSCfd35vQ54CE5f1IscVSc4AvTremAQ49rQ4iX1oeoqn
         cZrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761696708; x=1762301508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J9pgIB4Tz67zjDEuCaou8T/MZSYRwlTrfA6jaD1u7do=;
        b=e5kvqi0dDyFC9gEzsDwmuEvbl2K6okxObfvGi58STu44s739zLoqJFFHqh+BItwkms
         0Dn+5Cl98YZjbiOC0NvyXV1Z4tLCQfZ8hN4VHZF0yJz2PRDjN6KeAnDJWjZK5wkYag6A
         XdXqnFHAls+h1mDt/nQJxGx0pF3/IXWemt6XitOOdBKON/ij7KXzs0JjJpivnimwvsu6
         STadkQazW3pqCjOxExeP2rmCkm6jV38YFtisbHmCqAK3YJb3yP7IQfDUD5IpHMhld+y7
         uq8h0b47v39BUYNTerQVL0c4NFymXJcTr2jef+Aceu+Z/Yr5UnDmQ/rMRSmCOSHxs6XY
         Lrzg==
X-Forwarded-Encrypted: i=1; AJvYcCXQJy9IhgGwB2Ls8pdow3zVi0YBFD+L1rHfFrPtwjW+D871kDT40sVFBN9Bi5XhJ38++YyIhSXvvef6@vger.kernel.org
X-Gm-Message-State: AOJu0YwXAD2rakE4uTXBtRlTWn+LAyZebCGcd+9M6SDvdhlrG8f3Dy14
	6nEeAlkNJZiTUUVm2l/0mXfsK56HwUqlUmsQk7TsurKkWGzJYiRfJ1sn
X-Gm-Gg: ASbGncuSlieTVVs1ACjHx9q3jLiB35R2Trpnm3LSm18OGia8ebfu94TcxuZCH8QCBu1
	gTAqp8zW8sNnhOl2ks2L+K78YHoQd55O23EaDyUe5oYkWZ6ZQPdrwhVRUl6giUft2OPLPFU0vCL
	nRmYa6g7NGVDtZ89gsbIBIW6fGLMXJVpuyQo8j32AZLyy+aipol0H2OSatt8RvB2Tgp/xGZwWYu
	HRiSsimKfOgHhuExC8UIxjpjhrhR0ZOxm6PYXeyqdDNt5LSm/r3+niL5Jr0v+n8J9qQilpPcjJI
	ZR6li1BB8o3PVhuMRYxIMJrRqIVffePEiwG9QCSiad13YmVQqnSGrzGBS+D59Jicc6Amys+bsCi
	nkMymOtA3rOyOuxfip7avahqFwamobl4ZH8SLDsVFQjJUCIkEFTY7ob4+BfDzH3MzZfHGVAQfIx
	67xkbkSRQnPPxw/tEBbiGa5iq7SMLVc9I0Yw==
X-Google-Smtp-Source: AGHT+IFyKyBOAZv1RmAbtR9z53jqxuAJGXNiIM7ALtSRjvdVP7EE2a6cy6IFhiNFKgBsewKzfhE7HA==
X-Received: by 2002:a0c:f118:0:b0:87d:fc3e:6d9b with SMTP id 6a1803df08f44-88009bd6efbmr10961316d6.42.1761696708384;
        Tue, 28 Oct 2025 17:11:48 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48dee2esm87255906d6.23.2025.10.28.17.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 17:11:48 -0700 (PDT)
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
Subject: [PATCH v3 4/5] riscv64: dts: sophgo: add SG2000 dtsi
Date: Tue, 28 Oct 2025 20:10:51 -0400
Message-ID: <20251029001052.36774-5-josh.milas@gmail.com>
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

Adds sg2000.dtsi on the RISCV side.

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2000.dtsi | 53 ++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/riscv/boot/dts/sophgo/sg2000.dtsi b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
new file mode 100644
index 0000000000000..412adacc00576
--- /dev/null
+++ b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#define SOC_PERIPHERAL_IRQ(nr)	((nr) + 16)
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "cv180x-cpus.dtsi"
+#include "cv180x.dtsi"
+#include "cv181x.dtsi"
+
+/ {
+	compatible = "sophgo,sg2000";
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	soc {
+		interrupt-parent = <&plic>;
+		dma-noncoherent;
+
+		pinctrl: pinctrl@3001000 {
+			compatible = "sophgo,sg2000-pinctrl";
+			reg = <0x03001000 0x1000>,
+			      <0x05027000 0x1000>;
+			reg-names = "sys", "rtc";
+		};
+
+		clk: clock-controller@3002000 {
+			compatible = "sophgo,sg2000-clk";
+			reg = <0x03002000 0x1000>;
+			clocks = <&osc>;
+			#clock-cells = <1>;
+		};
+
+		plic: interrupt-controller@70000000 {
+			compatible = "sophgo,sg2000-plic", "thead,c900-plic";
+			reg = <0x70000000 0x4000000>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <2>;
+			riscv,ndev = <101>;
+		};
+
+		clint: timer@74000000 {
+			compatible = "sophgo,sg2000-clint", "thead,c900-clint";
+			reg = <0x74000000 0x10000>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>;
+		};
+	};
+};
-- 
2.51.1


