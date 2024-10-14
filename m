Return-Path: <devicetree+bounces-111137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3C899D5EC
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 900EA1F21061
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09891CC177;
	Mon, 14 Oct 2024 17:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="OatMa3VH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F691C7603
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 17:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728928482; cv=none; b=gFDLuPATwvflANsdZCOpd9mUK9Ul2+riSuXlDbD0BOOiAqwGzAtRkUe8jKv/rymhSL2nZdtlJkSf9ztCO+3dUmbN3Ow2rFlOYdZIFFfe/XVkRt2PPzxsieoapiPETyzVUmRB3Tgy9cojGctr3V2jIMSXTehtc61MUSjLcwtV4qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728928482; c=relaxed/simple;
	bh=JpFY7ctyaJguQQj7Z5xydJgNhEwmlBIeoSAlkJTpn/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y6geEYX1rNXnlIpQxVF4SaV4XnxINj34cKtfVcPf0B+N1Hp/OgwVfbZjkIof4mERenKxIBPNky3mTIIC95gCLdEGpJYcizTGVGjD04fOvmIqWqkMOcYuy09buOzd2UDlOt9M3Sw9o5uFwsXcHog+Z70Xwh2E6E1tAtdAyDcVoLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=OatMa3VH; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7ea7ad1e01fso1055364a12.0
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1728928481; x=1729533281; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7m8GT3iOgjI/IPeeAm/PS7DBYs1L+bHOJpi9gTXeTlU=;
        b=OatMa3VHLdGfzl8ogUmF45ILd8iJfNULt8VN6kGAnBQTc2eYvfnq4A4BUpEYdbpWu0
         b855PPMhMesbTsxuDuCKlJ9M0PacH3apXhUJDvLGZaY+gsuiJG0y0zuq79sxzRcTze5I
         p8aV8feVf8PASZJjmgi57aFgYGRkrY79W9A1vVxWOefNxEdf0CT2cUucYlEy1liWPHmw
         uhucNWscpve8/S4Q4kuIWq0qeQVX2zih35SsI4q7wH7OeTBhfC71rM2oTyCxr3N1toSW
         icJ72i6iipf1yriftU/sIaH4TeAQMtNRrre4DPz/+G7fbTOcpzQ5QxbT5NGwQ9Z9Dy2g
         rMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928481; x=1729533281;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7m8GT3iOgjI/IPeeAm/PS7DBYs1L+bHOJpi9gTXeTlU=;
        b=C8qHWSqp5RdRy0gUS2VnvSBk0HrWigCfy7wYK5ZVdtWdTPrwyWqoGsIxhQ352tDHhQ
         QGxtmIxE+yZybr7GC4IrmYcUfWbZXA5eaJX2U+5CoL/f9HBDcmtuZ0DWX99XDo6g8OEt
         7aGK8V1pSdWNAehGTaVmDT0PV4U+KkJtdTxHi6cpTPYWz8tRzo4U9IiG78oLWN1H0V9B
         TAcgoqwKPr4X6uz0U35mIzsNYDH7cI9urkgLURHzja0kd1ssNt5vRxCLJ1am+UXLhHr8
         LiaBPsfQCL0pjEVXXH1MI4l/bc6SKwcSJQB/G0pb1PJX4PgaKmWS5csRmNqV/gGXmSl7
         14FQ==
X-Forwarded-Encrypted: i=1; AJvYcCWp25XsdxzcDO7Wq444fY1D/sQAM3HCfVDKhoBpoCP+90M6tccU2zdM/GmlCLL0sNGQsi3WjTbsN4VX@vger.kernel.org
X-Gm-Message-State: AOJu0YyH2+EnaqA1tL5m7D42VO3FLfTvMm5zBhG6V/YQ2at5rUtp/i0K
	0R9jXycwJugpItlmKvpYdL/VacsaX6bAeyZMMUxuPoUBhppcEY9P4UU3QJfVy0M=
X-Google-Smtp-Source: AGHT+IFubZZsgfE7zPBcM+amVvU61DR9WiXpW7a/nxs9sPE09jRp+jNHKlzxRB5yg+eKUqCa8ihbtA==
X-Received: by 2002:a05:6a21:3942:b0:1cf:1250:80a7 with SMTP id adf61e73a8af0-1d8bc85d2abmr19634037637.12.1728928480675;
        Mon, 14 Oct 2024 10:54:40 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e49a7e5e7sm5611109b3a.179.2024.10.14.10.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 10:54:39 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 14 Oct 2024 10:54:22 -0700
Subject: [PATCH 5/8] riscv: dts: thead: Add TH1520 pinctrl settings for
 UART0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-th1520-pinctrl-dts-v1-5-268592ca786e@tenstorrent.com>
References: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
In-Reply-To: <20241014-th1520-pinctrl-dts-v1-0-268592ca786e@tenstorrent.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add pinctrl settings for UART0 used as the default debug console on
both the Lichee Pi 4A and BeagleV Ahead boards.

Acked-by: Linus Walleij <linus.walleij@linaro.org>
Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 26 ++++++++++++++++++++++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 26 ++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 1a4154a6ff3b..0484fb390be4 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -61,6 +61,30 @@ &emmc {
 	status = "okay";
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-pull-up;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &sdio0 {
 	bus-width = <4>;
 	max-frequency = <198000000>;
@@ -68,6 +92,8 @@ &sdio0 {
 };
 
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 58ad381fc1c3..f60b1879192d 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -30,7 +30,33 @@ chosen {
 	};
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 

-- 
2.34.1


