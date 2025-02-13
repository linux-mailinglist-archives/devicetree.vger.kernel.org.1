Return-Path: <devicetree+bounces-146425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F8A34D88
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 19:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CC643A98BC
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47274245037;
	Thu, 13 Feb 2025 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HZVWM8Kw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20857241679
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 18:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739470942; cv=none; b=OLB6ZAEevn4JdMm5U8Xakcxf5SuDQXOm5vXcnl9ettEa+RyW7gVr6yKIWrbhJjDujOw7dwP6tK7Ah41lMHollulRLfnjECR/hug/VPp8dxiwWIafV642ikApx0r0YnHyTPZeik7cj7fIAsuRNAcfCFDGa11kjEhX/SO6qBJhOC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739470942; c=relaxed/simple;
	bh=ZbogGnUyLo0ojfyQJ8VfJpq6IKIV960LhBdBwM98lOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sm6H2mZAk4ClO1l/j8rzojsChJJqNkc+wzds7jz85iyeShGlF+KTZ48mWHq0+9DlTNLRfqymxWoKRC+71RRqn5+DNT9LnVNObQE9t0+/LOa1+9pguRzfuZ8nWfIcAHEhw7yOIF7dArmPJzRBIwifpzX1Ubf9wn5YucpShgALd2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HZVWM8Kw; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so2357243a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 10:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739470938; x=1740075738; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rniZbZT42cTz1JQWgzCA6pN/tKGxiseo1y9AAMtwRAw=;
        b=HZVWM8KwCX3PdGy50yGUzQCv8gsGFsDVhUAjCoNQmlHlVDOwGfwaq240Sbz1OjmvPI
         s/YEmF8t2cZ8TqEr81TR4A25ghOAr33tN7PM8cmDxqaP1R7ufU+SFsVKNcp+q+F0ndlj
         gJBp0YkV1coidFZT69pWH1dYqTs9BlOEQpre/7FFkpMjjOjyYRas9D2gta3q/SSaPanv
         9a1eicq/Km/G7IT8aXGwWiJxtYMYCeRcBDoOlfWCCW0VsB5GFsSv60Zwteb0POCNZZU/
         XmrtYZU3j5E4UJyltgUirGIl1a+mqemn9CXVuuvgSEuvwZ+K8SPQLIXJ51uJ/v9fv1DI
         7YVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739470938; x=1740075738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rniZbZT42cTz1JQWgzCA6pN/tKGxiseo1y9AAMtwRAw=;
        b=vYRWj4JP3/nPXQFDqUAJ7aXl6rtcEm5SK3ZIdIUAQWetScy2pZpZtq3YYpvoGIpyGu
         crYGMRBvcjvuO3nzSyaMJ3S0fCwhDSuOeBP6UfggXqqkSwRPPEZkkhiynMWCNC0C+njn
         UlL4Y5LfowZuzUm88K91w2xeMuZJgkKtA8uCKDgTBefd9Wm0Wq4x44lbHBsQRmrmYFD8
         qoLhSAm8khiWCAAMOa79sZb/YhCpRIa1NlK7v5CRbitvmhrl0YH3UlZqb8qGI44nY1Sv
         CXcSbFIDNRbqQxeQ1gPjSLR+GPNjaNC6Nw6BvkH95HJNNETzpQ+ce5rqCDteJsuxbhMy
         TmEA==
X-Forwarded-Encrypted: i=1; AJvYcCUj5S0/y0dG8vUWT/1Pmc19XNnnTifQDgbRp+auV6aSmXVJqaeYLIhylKqdPb6424B7ZaMPSUwLVqvb@vger.kernel.org
X-Gm-Message-State: AOJu0YyNkvFOtr+eleM7XbXDxzdeX4Lb48+tKg9WZ+ceWWvJYWaKdWs0
	uXyxX//HTU1kqakQxZZaVZ8n4PsLeRNtARA00jb9I3HTvw8IKBPr
X-Gm-Gg: ASbGncsvspRCAV8yXHl2gncJr6qFEttc/ghQ/+ixJ4ebVD2qLvYmFWmYFBTU3GWIXom
	fJZ1VM7OzUn9/NT2TvizpJWp5K79MpKb7gaeyC7Gyr0CCjwlbFwba90CgdkXKKdJ8Vcx0DX28PZ
	+7x+1+zPex1SMakN3KPX6J6rf6t0GgfGEK1V7HjUz8bjOF9PCbzaBr20wokp2I1x2PMDE+82GGQ
	i/3iZ+1CKGUKsc++z4TgPY9wLiYqNvHyn0TjgNf3lBDRJyIw4wnXHAnhh4B0Dd7iJUoPu/J64z9
	1HuGocOrq0hYCF9Iz/mEdFAbWhi/
X-Google-Smtp-Source: AGHT+IG14L6TdSqETaLgX75QTQs9yCsm1539oykljYLZ36UNUJDCWIIy/ccFKlFu4aXniv6qdFMP7A==
X-Received: by 2002:a05:6402:1f13:b0:5dc:db58:a1c6 with SMTP id 4fb4d7f45d1cf-5decba3555dmr3843296a12.1.1739470938037;
        Thu, 13 Feb 2025 10:22:18 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270a66sm1559230a12.52.2025.02.13.10.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 10:22:17 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 3/7] arm64: dts: sophgo: Add initial SG2000 SoC device tree
Date: Thu, 13 Feb 2025 19:22:04 +0100
Message-ID: <20250213182210.2098718-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
References: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v4:
v3:
v2:
- relocated "memory" node according to DT coding style;
- moved GIC node into "soc";
- referring "soc" by label;

 arch/arm64/boot/dts/sophgo/sg2000.dtsi | 75 ++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
new file mode 100644
index 000000000000..98c8d300347c
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#define SOC_PERIPHERAL_IRQ(nr)		GIC_SPI (nr)
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <riscv/sophgo/cv18xx.dtsi>
+#include <riscv/sophgo/cv181x.dtsi>
+
+/ {
+	compatible = "sophgo,sg2000";
+	interrupt-parent = <&gic>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0>;
+			i-cache-size = <32768>;
+			d-cache-size = <32768>;
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x20000>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;	/* 512MiB */
+	};
+
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+		always-on;
+		clock-frequency = <25000000>;
+	};
+};
+
+&soc {
+	gic: interrupt-controller@1f01000 {
+		compatible = "arm,cortex-a15-gic";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		reg = <0x01f01000 0x1000>,
+		      <0x01f02000 0x2000>;
+	};
+
+	pinctrl: pinctrl@3001000 {
+		compatible = "sophgo,sg2000-pinctrl";
+		reg = <0x03001000 0x1000>,
+		      <0x05027000 0x1000>;
+		reg-names = "sys", "rtc";
+	};
+};
+
+&clk {
+	compatible = "sophgo,sg2000-clk";
+};
-- 
2.48.1


