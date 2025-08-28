Return-Path: <devicetree+bounces-210018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E5CB39E78
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:16:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DDB37B2A2E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF753126C3;
	Thu, 28 Aug 2025 13:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Mgyj2ff1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090DC311973
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386932; cv=none; b=u7d4DMLHDOqxjSd7SIIQQU6+FQfJqv0vVAtPVMt1cf2Ndc/RmgXBN3EUpaMDp6uXJYwPitOdhB6gPxU7hMUD6V7N1JsNsIPWz1rGLqCO6qQ6OLnxgLkDaSlpl198BaxnRI2DVl0no6+kDXjYmWPx0vqEAYxoqDn+nu2s1kDC6Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386932; c=relaxed/simple;
	bh=7tzlDwbCU000uIS22b9GF1Z4Cn4FUZZpaRhqWJq/YAA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XXv+vedKUG7N20xAgvUpDFFN1o4NLMDuFHgR9j9H/BS5sAied3zw/nV5hDUx0zk1zvl/EmTZIQsMYpYeP+H0L05t0G//GdWFIy4TJj4eYegsHnNNE4a5zbCL8GIB7FJPFsmnhvPW/V+MSE908UJJVI6qHP5vnKXnkfUE6NfO7SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Mgyj2ff1; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afe9358fe77so63540166b.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756386928; x=1756991728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AuvwZFkQA9C7qsU3a5Mf07+vt99ZB7O1MdQDYloQZeU=;
        b=Mgyj2ff1AKN+CDHqNPTL+df30XR5P9+2RteyMpi0iT6Zdeut/hAMgvAso7Lg/FWW8A
         HMOeJi2rKd84PVBXAYFr4hI44eoG2lxmuXo/5TCqTzu3QwO7PzLGTpAULn5mNWTTQ+2g
         cZSW1W3tEy2doxIyVMWaEpIPHe14TvNgLDqcsJ+zsO6hskREGfLteVNbJE6IGQl90DIS
         Qk/yymMulf+Xck8oNiaj/RpvUKV7xXBFIqow9oF2SK0wYENtL8eNfvf1X+LVLysBTZeO
         MaW+S5TbN+83Ow6mlnPSAyE1uEmAHv9R1UgxJ2by1eFpOFfMDkh0J56EfGN5Wjn2QrgE
         Q2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756386928; x=1756991728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AuvwZFkQA9C7qsU3a5Mf07+vt99ZB7O1MdQDYloQZeU=;
        b=HY1F5Qssco1g/r2x2MeN3//VX8/MxRIGgS/1beTloB8BmqL3uZ8nojQNndVPEgK7Sr
         iu6/EOmPToLGAsxHSWCIB3ckoWpEOmTbuijz8vrLnEP3KkgGBFG+RjuPLCsyDlt9xiNa
         +Cm916HhLWQsTHo1iOtttnPZDMBjwWGV/pcBYw05JBZQqAjEfQclv8Q/E3kP3BHVXuut
         rw3/W4zEy5Qy9o+8QVF9yrDdPnt98hKfyeWpK8gsqk9O+Bbpf2N4eDVJ5W7ZvfZ/jctX
         s4i949j1UNivfvQWI1d7eXVySNWtgaB0MB3Z7RFoYZcaw9/C2UrNWqm2Y8Lsy38AVra3
         zuaw==
X-Forwarded-Encrypted: i=1; AJvYcCVMK5FYJO0txqw/vOXlls+GnC7hFLP9arUKZX7QQJJMTQYMaDHd9jN8JCXnPkMGN7avfUrM42opgRgi@vger.kernel.org
X-Gm-Message-State: AOJu0YwUI9BafCbmya++5S2KjK+vKrWtWNysnsdYWsNLST055MeLjnNF
	t+czUL1l/YBfax5qy9h2DUM4+0xHV9vPTprWvnBb6+041dRIBDmfiq1MRaXVf4W9x7M=
X-Gm-Gg: ASbGncvOBWZmjcmzLtLfZi1bLSXwG4V830ufPyly9G7AFJ6q13nA0aFJRSf8m8z3wgU
	FdGRmmbsxNH9gzXpwToFcnhpsvRdYBlIZHif32dTDTj4l6cuYtauCBUxd6OF62XPwnKKw3L5w34
	2hJRBL++ax/5Ri0/X99q2tskRn39V8Kmlpyn65Sgky5JPjmiwoNiycfKGoFUFI55AUFhOPQ6vLz
	i31nPk1uKMRQncu/bZ9Z3/riLVZRe8FUtR/3o/QcWM94oCUeGFQrycU0t/aXL6PVmQirUZKfGqd
	/NVwUzunVAzfsVOzQQwnfFLWlZaLG0lSuiv+cpBCe+XxFpQz3zDGUuLhKuTYwmcUM3UewQuTP44
	tAw/jJM+0ShU6jPGxvH9Q5WHV3YXf9tdQ6p90v0HZfoVYQEEJQWk7SY+DA9/Ts9Yve3W8emTy8K
	f6Mveo05uy52VfkEC/0vmFKi5kD6A=
X-Google-Smtp-Source: AGHT+IGSKrLVAbeLo7wxrnx0s+JZT41mA3nP6tlZKBKQmBHaVFPv7RQF2CH2aqOCAJNVh+pwQ/4NwA==
X-Received: by 2002:a17:907:7e8a:b0:afe:c459:e663 with SMTP id a640c23a62f3a-afec459f209mr508631966b.21.1756386928087;
        Thu, 28 Aug 2025 06:15:28 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe7e3f63e9sm885782266b.98.2025.08.28.06.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:15:27 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 3/5] arm64: dts: broadcom: bcm2712: Add one more GPIO node
Date: Thu, 28 Aug 2025 15:17:12 +0200
Message-ID: <6d311b2f629bbc0e1dd9821e4aa8e5af9f8e5362.1756386531.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756386531.git.andrea.porta@suse.com>
References: <cover.1756386531.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

Add GPIO and related interrupt controller nodes and wire one
of the lines to power button.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 21 +++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     | 12 +++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index 6091a1ff365c..f0883c903527 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -2,6 +2,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include "bcm2712.dtsi"
 
 / {
@@ -29,6 +30,20 @@ memory@0 {
 		reg = <0 0 0 0x28000000>;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwr_button_default>;
+		status = "okay";
+
+		power_button: power-button {
+			label = "pwr_button";
+			linux,code = <KEY_POWER>;
+			gpios = <&gio 20 GPIO_ACTIVE_LOW>;
+			debounce-interval = <50>;
+		};
+	};
+
 	sd_io_1v8_reg: sd-io-1v8-reg {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
@@ -58,6 +73,12 @@ emmc_sd_default: emmc-sd-default-state {
 		pins = "emmc_cmd", "emmc_dat0", "emmc_dat1", "emmc_dat2", "emmc_dat3";
 		bias-pull-up;
 	};
+
+	pwr_button_default: pwr-button-default-state {
+		function = "gpio";
+		pins = "gpio20";
+		bias-pull-up;
+	};
 };
 
 &pinctrl_aon {
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 8a517261841d..f70ec8d3dc4d 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -248,6 +248,18 @@ pinctrl: pinctrl@7d504100 {
 			reg = <0x7d504100 0x30>;
 		};
 
+		gio: gpio@7d508500 {
+			compatible = "brcm,bcm7445-gpio", "brcm,brcmstb-gpio";
+			reg = <0x7d508500 0x40>;
+			interrupt-parent = <&main_irq>;
+			interrupts = <0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			brcm,gpio-bank-widths = <32 22>;
+		};
+
 		pinctrl_aon: pinctrl@7d510700 {
 			compatible = "brcm,bcm2712c0-aon-pinctrl";
 			reg = <0x7d510700 0x20>;
-- 
2.35.3


