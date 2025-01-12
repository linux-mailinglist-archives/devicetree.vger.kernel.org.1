Return-Path: <devicetree+bounces-137715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6FDA0A6C5
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 01:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F6253A02BA
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 00:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E0E42563;
	Sun, 12 Jan 2025 00:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BG07Oj8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC121392
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 00:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736643365; cv=none; b=qwdRW8vdHsVV/4z7Ds8+2HQbFZclRAR8pl3m31ACymRzw0mhcvWmbjLvFNI5l5ONxsxVu25t0M9bdjPHvOPjy2wfy8KfQtVinRSE5PDL/zwTwjL1YXi7HQZN2oKbf8efuR58fGY2vQ7ywQhLxx24MnwEK2YLWiPwkReC2IQANUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736643365; c=relaxed/simple;
	bh=AMMghnTJmcZ/im/cs83Pf0d65dI6Cx0T2/EcLj2gId0=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=joJav+Qnu76LTAk2tyZx2csYXBx67ENxJk21dRJ4LriGxBuBWLWIt6MU5g0gipeTVjYfuBwOiunL6Xjmzcs8puox3gEEqkD9gBiNQKY28iNwvMh8cjAt/6HPqLHVayy/z6ds65X0Y6RJrAAbdo8ZVyC1TrGht8jeb13bxzSqwsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BG07Oj8V; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43622267b2eso34672675e9.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 16:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736643362; x=1737248162; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ksY3pTe5FhYmC9XNvS9bCw4xuSS2jCyI26cxeF8DOk0=;
        b=BG07Oj8VuA0FXFYTC5LACKXj4so4CGuOTCERrrjukiZQlENBNUvG41g28AmA+MY+5p
         2APEwND2FQaz+IgdU+fg7ftobPuRA2c9c+pdxLUTPdc8ZVP4w23qWBa+TRqoiPuzPRcX
         wyzXBBlAzMhLnkKZEf0w1Xs9yr3HImLxh86S5N9lk/b9evLIznIgA0lUzcuQPVPfuMIl
         N77snIy+QoSwSs7YD3P4g/5H0vg8e1n/CxsK1Z7ihOMB6JbGU6VD5sqPCnzyRS5Y/wZN
         wNssl+paRwXL5IrsZamXB1lQThjFBcaWhtEuftEUndBBQOyn5/odYxnhI+hvYl24Kkvq
         QtJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736643362; x=1737248162;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksY3pTe5FhYmC9XNvS9bCw4xuSS2jCyI26cxeF8DOk0=;
        b=eAKk56WORaQs1sgg5neqNVkqeOqWgXLj3aXvIv1SsZhyeSfNBUt39eDiPH3QTq0sz5
         B9HAJXDMY8dEQIq/JmdiLx2aHQ2sydtuBi2Udwv5Vg2hFampAgf3WwIPWOF+FQ8OihmI
         kIS+OybUiQkCWYum2gLiovPr3V5lkYPX+YEC/UfQe3/FaQcklIo4VxSEd+rOmwFMxj8T
         LAMDgvCQr0NT7iSmrzFFXVuontZDdFy1jy6ULhQTb6o0sbOJ+eUecziCmYwS6PCMJJa0
         voxLWFgRDsG5pF9CqutRQPSYWbXEkH3jr/3sZgZyUrXpnEoYz3EjOfZmXW+W5g1AJMyZ
         8rmg==
X-Forwarded-Encrypted: i=1; AJvYcCXnhEIJl3p2BBnUEzfxLG74YCGm6rXFbhmeld71vb4qplpFFTBq5wkOkSMwmBdtn/ysNa6RqF8mEZDr@vger.kernel.org
X-Gm-Message-State: AOJu0YxMGrtovuR1oan0RGaGTDjj3rijLw88sfnYzXRBgw0p6Zum3klY
	9wk+HfpBlyU4pTjbJZkBNyLNTKMLUIUS9yrJdfGmBWACGMIcOkHd
X-Gm-Gg: ASbGnctuu6aih0dlH3xbPpYDG7GRhRDAQQ0N1HQ0qGasp5vWLH4InKa9PW5eLCwScpe
	5ylbDUKEY8EG8FecFIp1fW+MDRJB310nCstK2E0KngJI8YprolyMKF0kgwkB5uCoOfGpplZZ2RL
	AF+HSPC+2eCRGNhfGoiJ/Ev/GtaZ77E9/gBsH45mOH2Cc+DCJrKkebdKGMPMrs1DJnoCjDo4bo3
	7+U75oVBwyL84BhRjtGANf+IxyHC3T5lCYXZY8jv1SefGHPDl6++ItCsltqYY26h42/n7l3lLGl
X-Google-Smtp-Source: AGHT+IFfjQRmPA7J1JcMDYWuV7GNTmDNiwa2bTfjh+WvuUJzhBu0MLn6yi9lwFvEz/AIlXAd0TJJkQ==
X-Received: by 2002:a05:6000:1445:b0:385:df6d:6fc7 with SMTP id ffacd0b85a97d-38a8730ce5amr15436211f8f.25.1736643361723;
        Sat, 11 Jan 2025 16:56:01 -0800 (PST)
Received: from giga-mm-1.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38bf78sm8305800f8f.48.2025.01.11.16.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jan 2025 16:56:01 -0800 (PST)
Message-ID: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>
Subject: [PATCH RFC] arm64: dts: sophgo: Add initial SG2000 SoC device tree
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>,
 Inochi Amaoto	 <inochiama@outlook.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Date: Sun, 12 Jan 2025 01:55:05 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).

---
Dear ARM, RISCV, DT maintainers, I'd like to ask your opinion on the
below patch, which I plan as a base for ARM64 BSP for dual-arch (RISCV or
ARM64) Cvitek SoC SG2000. The main motivation for ARM64 support is the
ARCH support in the upstream gcc, which is not that mature for RISCV.

I believe it's the first time we already have quite some base in the
tree for a SoC, so it would be advantageous to re-use it and not
duplicate the same SoC structures in two places, especially having
in mind that Cvitek/Sophgo are still working on upstreaming and by
far not all HW blocks are populated in the SoC DTs. They focus primarely
on RISCV, so ARM64 would be dragging behind in this case if it would be
forked.

On the other hand, including SoC dtsi from RISCV into ARM64 poses
some technical challenges by itself, obviously CPU cores have to be
deleted, same is true for interrupt controller. And the interrupt
numbers are of course difference for ARM GIC, so they have to be
overwritten.

Alternatively I can split existing .dtsi included below into their
RISCV-specific and generic parts, so that both ARM64 and RISCV would
include generic part and their corresponding ARCH-specific parts
bringing CPU cores + interrupt controller + IRQ numbers for each and
every device separately.

The below example isactually booting (being included into board-level
DT), so it's a real example I'd be ready to submit if there will be
no objections of the cross-ARCH include approach in general.

What are your thoughts?

=C2=A0arch/arm64/boot/dts/sophgo/sg2000.dtsi | 164 ++++++++++++++++++++++++=
+
=C2=A01 file changed, 164 insertions(+)
=C2=A0create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/s=
ophgo/sg2000.dtsi
new file mode 100644
index 000000000000..96afd342bde5
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include "../../../../riscv/boot/dts/sophgo/cv18xx.dtsi"
+#include "../../../../riscv/boot/dts/sophgo/cv181x.dtsi"
+
+/delete-node/ &cpu0;
+/delete-node/ &plic;
+/delete-node/ &clint;
+
+/ {
+	compatible =3D "sophgo,sg2000";
+	interrupt-parent =3D <&gic>;
+
+	memory@80000000 {
+		device_type =3D "memory";
+		reg =3D <0x80000000 0x20000000>;	/* 512MiB */
+	};
+
+	pmu {
+		compatible =3D "arm,cortex-a53-pmu";
+		interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			=C2=A0=C2=A0=C2=A0=C2=A0 <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible =3D "arm,armv8-timer";
+		interrupts =3D <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)=
>,
+			=C2=A0=C2=A0=C2=A0=C2=A0 <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE=
_LEVEL_LOW)>,
+			=C2=A0=C2=A0=C2=A0=C2=A0 <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE=
_LEVEL_LOW)>,
+			=C2=A0=C2=A0=C2=A0=C2=A0 <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE=
_LEVEL_LOW)>;
+		always-on;
+		clock-frequency =3D <25000000>;
+	};
+
+	gic: interrupt-controller@1f01000 {
+		compatible =3D "arm,cortex-a15-gic";
+		interrupt-controller;
+		#interrupt-cells =3D <3>;
+		reg =3D <0x01f01000 0x1000>,
+		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x01f02000 0x2000>;
+	};
+
+	soc {
+		/delete-property/ interrupt-parent;
+
+		pinctrl: pinctrl@3001000 {
+			compatible =3D "sophgo,sg2000-pinctrl";
+			reg =3D <0x03001000 0x1000>,
+			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x05027000 0x1000>;
+			reg-names =3D "sys", "rtc";
+		};
+	};
+};
+
+&cpus {
+	cpu0: cpu@0 {
+		compatible =3D "arm,cortex-a53";
+		device_type =3D "cpu";
+		reg =3D <0>;
+		enable-method =3D "psci";
+		next-level-cache =3D <&l2>;
+	};
+
+	l2: l2-cache {
+		compatible =3D "cache";
+	};
+};
+
+&clk {
+	compatible =3D "sophgo,sg2000-clk";
+};
+
+&saradc {
+	interrupts =3D <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
+};
+
+&dmac {
+	interrupts =3D <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi0 {
+	interrupts =3D <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi1 {
+	interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi2 {
+	interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&spi3 {
+	interrupts =3D <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart0 {
+	interrupts =3D <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart1 {
+	interrupts =3D <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart2 {
+	interrupts =3D <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart3 {
+	interrupts =3D <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&uart4 {
+	interrupts =3D <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&porta {
+	interrupts =3D <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&portb {
+	interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&portc {
+	interrupts =3D <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&portd {
+	interrupts =3D <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c0 {
+	interrupts =3D <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c1 {
+	interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c2 {
+	interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c3 {
+	interrupts =3D <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c4 {
+	interrupts =3D <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&emmc {
+	interrupts =3D <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhci0 {
+	interrupts =3D <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&sdhci1 {
+	interrupts =3D <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+};

--=20
Alexander Sverdlin.


