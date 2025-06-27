Return-Path: <devicetree+bounces-190390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C376EAEB9C1
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0EEA13A5A21
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DFB2E541D;
	Fri, 27 Jun 2025 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bo3+biOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4601E2E4243
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751034205; cv=none; b=cPB2Qd420qTRgbzPFngevojBnqMSYuvHRar7xjTg9jEAgecQUTS7kq70Q2Ir2Ync1s86u72pQlgTyGwChU8w91PkgK3zw+3kixDgOPfWeubzq3bADjDOCP3Cga8z3nD91tCEnyRF2pjqxEm7VPuMzC7vK91Pyhy3hIgVQD+Jho0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751034205; c=relaxed/simple;
	bh=PfwZzjjqJBdpG245rW9fZ43Yt8RFpe6Kf9hR0M/wvXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WKVNOAZWVi2uknomEbtuZKqBSaludoGBFKaS23ewMX1rQJm8M1A+eP/VRj4B9lZjaruckBbqOokd+pHq0msGB+CuwKlYrF/Ix0e+9fliok50Cb98cjAMHag3kKfOP+pAWb71b64rS7Sc2BOGahKTyVcMJqk3VvkaEY+z52UIFXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bo3+biOD; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7d3dd14a7edso306736785a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751034201; x=1751639001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=bo3+biODD7LGhBMJw9JZexn307AmIA2AtUnAF5Cjl/lX8LYCg5ZkdIWaU4QrG7VtoU
         kHjewxGKCQ0YfPzX/9YwY0H8HmFsQXGIMcCfgfSYmgubfPoN+1iejl6NxOqQUYQqmY1C
         Y3vqwah+1m/vS9f2ASOFSBkhPJA+x9eAIXCCNaOZH/g8dTxICtfkQ6gwtlqpxW9sTQWs
         PUeugbP9/KDQSKWMxtgfv+8PnONY3zFt+s4QievGN8KAn1IWZNxR1J75wyI5HV/d8sTI
         KHZR4ObeKzMg0bJ6C6U1/6xtcd75TYRLNfQDtYlwR+uUWeTjMVnoHnQ/tNLJUZZCqwN+
         L3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751034201; x=1751639001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=PFg3RlcCxh011BbS6daRn3vSCFXj3xLL7ibWBDGn7kMy6jXnj5LF0dCnr2w6mlwMn3
         Y/Y/iKiSQYs5jkvBIgN4Ds4kdiVeawzUwrPaxVL20W7x9PtQF7x6fo+ySbJrJFMzVDH+
         NkmryxrV7JdtCE5c7ydCs1SlceOLFLBcEJNPLK9Rwqo8sgvuKsOVTbDhqlOfLlsTPr4b
         GC5guQNoVFZcOHIKXNV2pa4hktUqB24rD/6z43ZxjF+G2w5eFiUyGls78U1FsqzU4ECZ
         Z2l+6tve1PtjgM16E43ZVo4c98ozx2pAkElPGzvC6BnRZO7EoD740/zrxrhxG3ZAt8BA
         64mQ==
X-Forwarded-Encrypted: i=1; AJvYcCUia9YbS2AsBdDMGbjJjuOxsU4cbU7N0s59hJrbRN6Z0s1KeafknC+S5NVpeilms1GM5Gv9XLR+HIpp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4+DphiQoVcrLjwSew7uP7ARwbk/geo+iC+X1JjQai9uJkp49T
	LtmDHatAuv/4bwMq1tahocEPJwN0ihRe1asAivm/ouX/YikQIHzeysTJGDmGiJvR/Gc=
X-Gm-Gg: ASbGncvTIbRMjdU8jFDcBFNEgUxQI46UF9vCmbPGxGP+JY4mYsbAoTIGPmk45WIIUnf
	40f2DfCU2hPGsyhWqIwauH52zPD1E4SBrQa0mmTtTyG4TTYc4doTXGnwzENNw4Wtz48AQQ5JQwk
	c+AHfJHY/J6AYs2a5i5SsRm7fmJbDwgAzS3o3IqgSeHiEtCsU/VxQyp+ybVZ44rHeSb3zsCEcye
	nCU/HeeQFVuMJCZI3ugf6LNnCtw1O/NBue5momTCSFeLi/0CwZpChoaLcJXwVPYojYoEXpd07kx
	aOSxSNdbK+s/D6lteYzEbd/gyO3/HenI3TumdZ0FQBvrEFgGY//OneZUoCRfOpxuM+CeK5XGat9
	FV43Rr440Nk4hSqNZ7nbEFjMQVRg0nj9GHj0=
X-Google-Smtp-Source: AGHT+IGbR8LfUszD/aEIdWwkUQ61eynSIqFyVoyDA8206vPOUxXJejP9vRZ618fRX8/VdY8/tjO/YQ==
X-Received: by 2002:a05:620a:198b:b0:7d3:9113:7902 with SMTP id af79cd13be357-7d44397f5e8mr481566285a.38.1751034201091;
        Fri, 27 Jun 2025 07:23:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d44323b4c4sm135708785a.106.2025.06.27.07.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 07:23:20 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 6/8] riscv: dts: spacemit: enable the i2c8 adapter
Date: Fri, 27 Jun 2025 09:23:05 -0500
Message-ID: <20250627142309.1444135-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250627142309.1444135-1-elder@riscstar.com>
References: <20250627142309.1444135-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define properties for the I2C adapter that provides access to the
SpacemiT P1 PMIC.  Enable this adapter on the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 15 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi    |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 11 +++++++++++
 3 files changed, 33 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index fe22c747c5012..7c9f91c88e01a 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,21 @@ &emmc {
 	status = "okay";
 };
 
+&i2c8 {
+	pinctrl-0 = <&i2c8_cfg>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		status = "okay";
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 283663647a86f..9d6d4503fe751 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -11,6 +11,13 @@
 #define K1_GPIO(x)	(x / 32) (x % 32)
 
 &pinctrl {
+	i2c8_cfg: i2c8-cfg {
+		i2c8-0-pins {
+			pinmux = <K1_PADCONF(93, 0)>,	/* PWR_SCL */
+				 <K1_PADCONF(94, 0)>;	/* PWR_SDA */
+		};
+	};
+
 	uart0_2_cfg: uart0-2-cfg {
 		uart0-2-pins {
 			pinmux = <K1_PADCONF(68, 2)>,
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 14097f1f6f447..a85239e8e430b 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -483,6 +483,17 @@ gpio: gpio@d4019000 {
 				      <&pinctrl 3 0 96 32>;
 		};
 
+		i2c8: i2c@d401d800 {
+			compatible = "spacemit,k1-i2c";
+			reg = <0x0 0xd401d800 0x0 0x38>;
+			interrupts = <19>;
+			clocks = <&syscon_apbc CLK_TWSI8>,
+				 <&syscon_apbc CLK_TWSI8_BUS>;
+			clock-names = "func", "bus";
+			clock-frequency = <400000>;
+			status = "disabled";
+		};
+
 		pinctrl: pinctrl@d401e000 {
 			compatible = "spacemit,k1-pinctrl";
 			reg = <0x0 0xd401e000 0x0 0x400>;
-- 
2.45.2


