Return-Path: <devicetree+bounces-228370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BED6FBECF1E
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D46619C4F13
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206A32D6E49;
	Sat, 18 Oct 2025 12:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lrBhx+lj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8E29D26D
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789525; cv=none; b=SD1GVsk3BbvDAroXrm1QrUgQ3IrP3UnoqjDGPZlrj/w94DkU7gnDzye1mT7dokjldCWQgrtv4ulA/BmH9b1+S+/cugPsUrKvePvUofDynjHnxmpYa4H2hmX0XqxQ7v0OxsgxqTrD/rmJXATfTITAE2vIa3l3d0V7zVet0Sa79zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789525; c=relaxed/simple;
	bh=gdXtc2fH7Fyw0MfgnqxFQ0cKYBFkYfBr+/WJv43AoYU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tu2Vf3UCW0qaPrMByvBxlIu1HT30pe9hz8Ln25z8y5qqXav7d9BthvfUFnHCBKaoWZXqnXqLVnNCoi17VYnUyP3O/Hfc3oISeMAK+4vk2iZnO/rB/Ke1HbjCUnpssJFO7vA1Ti0TOjK4TfgZuKc4MKNOKIa6b59mjiniAEp4YZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lrBhx+lj; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-471810a77c1so837915e9.2
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789521; x=1761394321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aAseuQrGI9nO9oAcToUjoPa5MvV1yHsA/LNt97b5lY=;
        b=lrBhx+ljb3OKxPLpfroWCi9fXLIGgqBIFmf+tNPgZc/Zmb8U4j9GLK3oSgYIh6IVZu
         Sd3oW0JDOKZopilv3RreDVENAc2VIeG+g2eFu+7O8Nu8L/Zu4d7FNm2t6/LkkEXSY1cy
         Glyj+lDY6ln5R9AIr0HbLRM29a8vsFtdFSMy8j66ZeHPFNw0u2UBm9Ttc38qgKPYzPKt
         cUiF+VAt2oJj5QwjgcSAfXQs9ORK2apYXJDQ3IMMtAEajWS9F0Pt5HzgeZq0uIKc2uKA
         OrLTQnh4aNwBTH6UpP6U0dfNzwhm0JXT9Ptqk46sYzbYNk2J/g/bYaivhrKUo9wvLmHw
         8Y5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789521; x=1761394321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aAseuQrGI9nO9oAcToUjoPa5MvV1yHsA/LNt97b5lY=;
        b=QiMCFDDQDJ/suZXCSV+Z9Tg0sW7uMSmiAGvAh3XDFh98xEtLESrDX5NiBYSMrzGKQn
         NZFpXD2to8y+2xOTTmMjXVCBDXC7dBG33bJS/xc/8NHqng/xdy/RocBMWzxuPvDd6q/a
         boU5SVtXZ6xGGWLsoV8FrOyspizMz+3px5M6Y5hyMCn20z4e8BvrA4dMEzTGuictgaN6
         Csj+Y1jUt1xzWlwCTWllwlSvRKmFDLPVMCHNqFUc8Is/eMAxlH303cmPqTxCcHdjw30q
         qPehJ7xKGgJE/n/XmFNv9VmsMyD9Wm7ycMJV+QgrnU/BgkFCl+X6b8DhjX3MBXQvgfOo
         Oa/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUA7C/wKmwUhJVnNDASgVjfx18W9go/JaFFKBo6mk5bBeuCUCJw3MDxMdDb0llLzcQ5v6PIb1C1qj0w@vger.kernel.org
X-Gm-Message-State: AOJu0YyIxFuXc2syPm0+b8q1cgSmhr8Mvw48cW6hnQ8/OYGY22fpXfyj
	Y/6aE08eA2hL6kPJaIcHzUkDUfMcEACDeK0hCVtgbWUua9M62Aysj1ug
X-Gm-Gg: ASbGncsIauqf8hOe9xnz4jE8h30On92Hszx29J65OsMUbfgX8DMJDAD6rDj1uVfyI3H
	WYIA75onwyJZHw7+07suAbCwPAZhgTUIBZumEd6wUKIdZdNTOGTpVY2+Vq6wOm66U6W2+TQb8sy
	RPamxLFm8946A99QUtFuqHU/gYJKTlZ7EPSWj829GUJezEHhd80AfT7RlqW0n0Qf2ixVW9uyGCS
	rFKfH1UZ8PEzsM5mTZJKChi5rjV8qF38v92JIDfkjfB5nuJ64NuU+nCWpOt3h8bQlWicKcCJ44e
	SamqRfLp3Jq5Slb/D2ocxilr5Ah9WOwCVcNwseZNr+RH1Mm7q9ihvcOw9OCC1CBZA9UvqcBU8LW
	qmgqc+e5bZGHZySqiOR73qK2ZAn+gL5zsEHGRhMgsCwOzZuXyHwKwh6XoesamaP27Zh0ZY1EFBv
	xkZ4NTsTGwh3BT9fa/4djTW0JO10gL1jVGUhoekAtr
X-Google-Smtp-Source: AGHT+IHp4aW/LC99XRnz+vzdjoRAZ1xsDA7hVOImEH+NXfsX7IjCmkqpOBGaoAmreY1mOE++mz/hEQ==
X-Received: by 2002:a5d:5f49:0:b0:3ee:1125:fb68 with SMTP id ffacd0b85a97d-42704d855ccmr2798930f8f.2.1760789521331;
        Sat, 18 Oct 2025 05:12:01 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:01 -0700 (PDT)
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
Subject: [PATCH v7 02/11] ARM: dts: socfpga: add Enclustra base-board dtsi
Date: Sat, 18 Oct 2025 12:11:46 +0000
Message-Id: <20251018121155.7743-3-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
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


