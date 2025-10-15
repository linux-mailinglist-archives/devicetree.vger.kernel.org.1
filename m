Return-Path: <devicetree+bounces-227318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C958ABE083A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:47:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC5C13AADFD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A6830DEA3;
	Wed, 15 Oct 2025 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kDKvYCoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203E6306486
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557473; cv=none; b=FUAoZL3Y5PZs3DTu4hzcCa+brvIaMHXtVFH1/2Tt3GN35NdwAB84t460PYTuqkwtwwX9AaC67UoqW3lnrdeRud/ODTo7jYveNgT0uIPUYSU/CByT0sc1gvF0rnd/SKuEDtEBgAAkXBHZCvP91/XWla7iDMwYtA86qwxmbzpJMfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557473; c=relaxed/simple;
	bh=gdXtc2fH7Fyw0MfgnqxFQ0cKYBFkYfBr+/WJv43AoYU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F11Mt2DkWMN8uSFlHPHLf8A1oiwXOiOFmzPY7sjqyF7Jul/slpLVJlO63ROr94ThG5cQoVdsqwRomr3lVxhoFzHD6egeHvSDVDJKfWyUdEEtDEbqJITNBpiFzQFueRbB+l4ZJ9ezFPZN7ecx8FFF489nCrQ+Bx2i/iagDkBimE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kDKvYCoA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47105eb92d8so1699255e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557469; x=1761162269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aAseuQrGI9nO9oAcToUjoPa5MvV1yHsA/LNt97b5lY=;
        b=kDKvYCoAMMVInsFvZT2xyDCJR41q/nkbmLbL9sh9V2QLaEJepHNlJC9StH29/Ywt3r
         kNBiQNILolsS4EBTQTfO8T/l4h2ndD0gtMh68JKZJQL08rCOj0bCPGC2T797IpJxY38M
         MtYnSfHfzsFuc8HEbVgsvIHNczcSWFVOj7g8ZB42N+T8IoFylXFjGk0dG4t8Y44NAV6r
         Zxr2SqF6CjvlRdS041bRCBGnVUv89y2LWuBEUEjAhJrQnVL/U1L+QEbQ3VW6HWqB+NDC
         MFqvCaGp/0AEqcri6w3P2vl2OE0zzcbPj9D7ac12o2fkbtK3t5e60y2bhZInIc6RfIkf
         arXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557469; x=1761162269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aAseuQrGI9nO9oAcToUjoPa5MvV1yHsA/LNt97b5lY=;
        b=N00/oR/SrUqtwxTQFihqtIz77Y1djUOuFPvPwQUYteV0FnuVU4uY7t/lhLMYRf5Vj8
         msks5XqK0s4v+iuL6BMR+1ITtpMd3W5yVx7QA3FQCq6QuIq70+DIOa07srDBlOiXn3Cb
         Sa8nFulD+mbjAMyxQyWlykx+Otj7ihJF+fMyHxnU5ihtbY5G+vEyARjj8PJF6P3bZesm
         m+BGuVQzujhgkdpN8WD7hPzFqKyzvuq+C0nTOZopzF8LWM+eAVhj59hwea8vC4D6xVQK
         sx5tPmYVppH6zTjr1KQI8Qry0/rMm+4rrg7Yy+uaOPdD3YuadXp1jRssdSCyEG9VStXf
         2Xyw==
X-Forwarded-Encrypted: i=1; AJvYcCUyQiY6yzRbHmKKgayYtSH55QL+2FjzsZQ9+6eLQFjYLK8wa+qCJw79b30WM1TgRbRm66AAXfUVoVzz@vger.kernel.org
X-Gm-Message-State: AOJu0YxcLaaoIZOy5FKSLIUMpnChW/w5GsHmCA2pr5R9qZU8pXW3nAZb
	EIbwL5cbNmXTsIWxMn8GvvRG0XMVctrXMZbLqkB0lKdu1lm/NL4Zbldy
X-Gm-Gg: ASbGncsXO8jlrLuDmx68ilCWaAK8WLMt4xUfJVdixFyBpA7OCkDUIXdWFjbBbhJcH+C
	AwA1DgAec+4nfGCZlFIbN1mqIDiyEsYFVNz67e7jsFT/luU1mF3+5OQ5DNnHsF9fu8u7lR4LqGn
	uRIu/PnOlDTP70cqfVEA2wQ8Qml1sbSEqTQcC6G+JAbv3YgQhv+LVyZMG1vHI4plzKJWiKdlyRl
	JUZJabZgz0DVOngRDqSAFFwEC+VumGieWhTy1rV8VrLMX1sAy5zeMzhd0cDVHrQlbivwSwuucrh
	E4OtZv65eeFKVQWhuyhBDQ0ldv47EhKdhPmD6ZvpcxnCIT+LjmIjhR2FKSKd2BbHhSc8N0Kwtm1
	CRT2SLuI1AwnXyh47hnROF0EtZ7zU51NTT1z1jYyeXKzR5SghpzHFbmsxaVFi8wX4D4pxmIbqs9
	KnY2OOKakGM0wOn4jP3d4ghDIN
X-Google-Smtp-Source: AGHT+IEZ8RxK1XFMhwlV7jPIAmb/ZqIJRSoxrVrpH234m6Cwa0B6fUlYLvmmpRuxEeAw525/j/Lc9A==
X-Received: by 2002:a05:6000:22c1:b0:3e6:270e:3f64 with SMTP id ffacd0b85a97d-426f51c15f0mr1702563f8f.8.1760557469235;
        Wed, 15 Oct 2025 12:44:29 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:28 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 02/11] ARM: dts: socfpga: add Enclustra base-board dtsi
Date: Wed, 15 Oct 2025 19:44:07 +0000
Message-Id: <20251015194416.33502-3-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add generic Enclustra base-board support for the Mercury+ PE1, the
Mercury+ PE3 and the Mercury+ ST1 board. The carrier boards can be
freely combined with the SoMs Mercury+ AA1, Mercury SA1 and
Mercury+ SA2.

Signed-off-by: Andreas Buerkler <andreas.buerkler@enclustra.com>
Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
---
 .../socfpga_enclustra_mercury_pe1.dtsi        | 33 +++++++++++
 .../socfpga_enclustra_mercury_pe3.dtsi        | 55 +++++++++++++++++++
 .../socfpga_enclustra_mercury_st1.dtsi        | 15 +++++
 3 files changed, 103 insertions(+)
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe1.dtsi
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe3.dtsi
 create mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_st1.dtsi

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe1.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe1.dtsi
new file mode 100644
index 000000000000..abc4bfb7fccf
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe1.dtsi
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&i2c_encl {
+	status = "okay";
+
+	eeprom@57 {
+		status = "okay";
+		compatible = "microchip,24c128";
+		reg = <0x57>;
+		pagesize = <64>;
+		label = "user eeprom";
+		address-width = <16>;
+	};
+
+	lm96080: temperature-sensor@2f {
+		status = "okay";
+		compatible = "national,lm80";
+		reg = <0x2f>;
+	};
+
+	si5338: clock-controller@70 {
+		compatible = "silabs,si5338";
+		reg = <0x70>;
+	};
+
+};
+
+&i2c_encl_fpga {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe3.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe3.dtsi
new file mode 100644
index 000000000000..bc57b0680878
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_pe3.dtsi
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&i2c_encl {
+	i2c-mux@74 {
+		status = "okay";
+		compatible = "nxp,pca9547";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x74>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			eeprom@56 {
+				status = "okay";
+				compatible = "microchip,24c128";
+				reg = <0x56>;
+				pagesize = <64>;
+				label = "user eeprom";
+				address-width = <16>;
+			};
+
+			lm96080: temperature-sensor@2f {
+				status = "okay";
+				compatible = "national,lm80";
+				reg = <0x2f>;
+			};
+
+			pcal6416: gpio@20 {
+				status = "okay";
+				compatible = "nxp,pcal6416";
+				reg = <0x20>;
+				gpio-controller;
+				#gpio-cells = <2>;
+			};
+		};
+	};
+};
+
+&i2c_encl_fpga {
+	status = "okay";
+
+	i2c-mux@75 {
+		status = "okay";
+		compatible = "nxp,pca9547";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x75>;
+	};
+};
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_st1.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_st1.dtsi
new file mode 100644
index 000000000000..4c00475f4303
--- /dev/null
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_enclustra_mercury_st1.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ */
+
+&i2c_encl {
+	si5338: clock-controller@70 {
+		compatible = "silabs,si5338";
+		reg = <0x70>;
+	};
+};
+
+&i2c_encl_fpga {
+	status = "okay";
+};
-- 
2.39.5


